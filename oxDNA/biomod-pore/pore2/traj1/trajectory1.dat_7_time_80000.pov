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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.369827, 17.026314, -2.329130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612427, 17.310886, -2.187129>,  <22.757986, 17.481630, -2.101929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612427, 17.310886, -2.187129>,  <22.369827, 17.026314, -2.329130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612427, 17.310886, -2.187129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467313, -0.042267, 0.883081,
		0.643256, -0.701483, 0.306826,
		0.606498, 0.711431, 0.355001,
		22.794376, 17.524315, -2.080629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653223, 16.889191, -1.668725>,  <22.369827, 17.026314, -2.329130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653223, 16.889191, -1.668725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659733, 17.285900, -1.719509>,  <22.663639, 17.523926, -1.749979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659733, 17.285900, -1.719509>,  <22.653223, 16.889191, -1.668725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.659733, 17.285900, -1.719509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550039, 0.114917, 0.827195,
		0.834980, 0.056370, 0.547385,
		0.016275, 0.991774, -0.126959,
		22.664616, 17.583433, -1.757597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.790359, 17.173336, -0.987619>,  <22.653223, 16.889191, -1.668725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.790359, 17.173336, -0.987619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.604794, 17.452736, -1.205566>,  <22.493454, 17.620377, -1.336334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.604794, 17.452736, -1.205566>,  <22.790359, 17.173336, -0.987619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.604794, 17.452736, -1.205566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554922, 0.250301, 0.793354,
		0.690538, 0.670409, 0.271494,
		-0.463917, 0.698499, -0.544867,
		22.465618, 17.662285, -1.369027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811268, 17.905638, -0.658968>,  <22.790359, 17.173336, -0.987619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811268, 17.905638, -0.658968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491287, 17.826275, -0.885493>,  <22.299299, 17.778658, -1.021407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491287, 17.826275, -0.885493>,  <22.811268, 17.905638, -0.658968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491287, 17.826275, -0.885493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599991, 0.278982, 0.749787,
		0.009229, 0.939576, -0.342215,
		-0.799954, -0.198406, -0.566312,
		22.251301, 17.766752, -1.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.293575, 18.186758, -0.288307>,  <22.811268, 17.905638, -0.658968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.293575, 18.186758, -0.288307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069305, 17.949772, -0.519694>,  <21.934744, 17.807579, -0.658526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069305, 17.949772, -0.519694>,  <22.293575, 18.186758, -0.288307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069305, 17.949772, -0.519694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824336, 0.333416, 0.457498,
		-0.078182, 0.733360, -0.675330,
		-0.560677, -0.592467, -0.578468,
		21.901102, 17.772032, -0.693234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.740856, 18.652176, -0.463828>,  <22.293575, 18.186758, -0.288307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.740856, 18.652176, -0.463828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.643795, 18.267937, -0.518036>,  <21.585558, 18.037392, -0.550562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.643795, 18.267937, -0.518036>,  <21.740856, 18.652176, -0.463828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.643795, 18.267937, -0.518036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927178, 0.188541, 0.323719,
		-0.285413, 0.204204, -0.936397,
		-0.242654, -0.960600, -0.135522,
		21.570999, 17.979757, -0.558693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147844, 18.629404, -0.745401>,  <21.740856, 18.652176, -0.463828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147844, 18.629404, -0.745401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.197243, 18.285553, -0.547093>,  <21.226881, 18.079243, -0.428108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.197243, 18.285553, -0.547093>,  <21.147844, 18.629404, -0.745401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.197243, 18.285553, -0.547093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861265, 0.155312, 0.483840,
		-0.492921, -0.486742, -0.721187,
		0.123497, -0.859628, 0.495770,
		21.234291, 18.027664, -0.398362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534922, 18.173395, -0.751348>,  <21.147844, 18.629404, -0.745401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534922, 18.173395, -0.751348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.743233, 18.108200, -0.416152>,  <20.868219, 18.069084, -0.215035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.743233, 18.108200, -0.416152>,  <20.534922, 18.173395, -0.751348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.743233, 18.108200, -0.416152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827163, 0.146472, 0.542539,
		-0.211169, -0.975695, -0.058537,
		0.520778, -0.162987, 0.837989,
		20.899466, 18.059305, -0.164755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265772, 17.509111, -0.445110>,  <20.534922, 18.173395, -0.751348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265772, 17.509111, -0.445110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.395615, 17.810314, -0.216159>,  <20.473520, 17.991035, -0.078789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.395615, 17.810314, -0.216159>,  <20.265772, 17.509111, -0.445110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.395615, 17.810314, -0.216159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847746, -0.036756, 0.529127,
		0.419474, -0.656987, 0.626426,
		0.324605, 0.753005, 0.572377,
		20.492996, 18.036215, -0.044446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096508, 17.388632, 0.337903>,  <20.265772, 17.509111, -0.445110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096508, 17.388632, 0.337903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.120556, 17.773148, 0.230340>,  <20.134985, 18.003857, 0.165802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.120556, 17.773148, 0.230340>,  <20.096508, 17.388632, 0.337903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120556, 17.773148, 0.230340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873040, 0.181242, 0.452716,
		0.483928, 0.207550, 0.850139,
		0.060120, 0.961288, -0.268907,
		20.138592, 18.061535, 0.149668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146441, 17.917356, 0.868544>,  <20.096508, 17.388632, 0.337903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146441, 17.917356, 0.868544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986118, 18.099174, 0.550363>,  <19.889925, 18.208265, 0.359454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986118, 18.099174, 0.550363>,  <20.146441, 17.917356, 0.868544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986118, 18.099174, 0.550363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848664, 0.142886, 0.509267,
		0.345143, 0.879189, 0.328486,
		-0.400806, 0.454544, -0.795452,
		19.865877, 18.235538, 0.311727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883364, 18.497616, 1.177500>,  <20.146441, 17.917356, 0.868544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883364, 18.497616, 1.177500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663170, 18.405491, 0.856521>,  <19.531054, 18.350216, 0.663934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663170, 18.405491, 0.856521>,  <19.883364, 18.497616, 1.177500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663170, 18.405491, 0.856521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757362, -0.266626, 0.596082,
		-0.351239, 0.935877, -0.027658,
		-0.550486, -0.230315, -0.802447,
		19.498024, 18.336397, 0.615787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289097, 19.043987, 1.029923>,  <19.883364, 18.497616, 1.177500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289097, 19.043987, 1.029923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.233639, 18.663628, 0.919242>,  <19.200363, 18.435411, 0.852834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.233639, 18.663628, 0.919242>,  <19.289097, 19.043987, 1.029923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233639, 18.663628, 0.919242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701354, -0.102983, 0.705335,
		-0.699199, 0.291858, -0.652640,
		-0.138647, -0.950901, -0.276701,
		19.192045, 18.378357, 0.836232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598742, 19.132158, 1.074006>,  <19.289097, 19.043987, 1.029923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598742, 19.132158, 1.074006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772823, 18.775539, 1.124187>,  <18.877272, 18.561567, 1.154296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772823, 18.775539, 1.124187>,  <18.598742, 19.132158, 1.074006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772823, 18.775539, 1.124187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606145, -0.187109, 0.773032,
		-0.665723, -0.412468, -0.621838,
		0.435202, -0.891549, 0.125453,
		18.903383, 18.508074, 1.161823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851458, 19.178114, 1.258185>,  <18.598742, 19.132158, 1.074006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851458, 19.178114, 1.258185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547520, 19.400509, 1.392951>,  <17.365156, 19.533945, 1.473811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547520, 19.400509, 1.392951>,  <17.851458, 19.178114, 1.258185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547520, 19.400509, 1.392951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421764, 0.027212, 0.906297,
		0.494722, 0.830745, -0.255172,
		-0.759846, 0.555987, 0.336916,
		17.319567, 19.567305, 1.494026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125370, 19.676447, 1.613900>,  <17.851458, 19.178114, 1.258185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125370, 19.676447, 1.613900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751137, 19.651642, 1.752946>,  <17.526596, 19.636759, 1.836374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751137, 19.651642, 1.752946>,  <18.125370, 19.676447, 1.613900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751137, 19.651642, 1.752946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326574, 0.222407, 0.918632,
		-0.134279, 0.972980, -0.187829,
		-0.935585, -0.062012, 0.347615,
		17.470461, 19.633038, 1.857231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.036572, 20.285542, 1.994532>,  <18.125370, 19.676447, 1.613900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.036572, 20.285542, 1.994532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788158, 19.996052, 2.114892>,  <17.639111, 19.822357, 2.187109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788158, 19.996052, 2.114892>,  <18.036572, 20.285542, 1.994532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788158, 19.996052, 2.114892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405685, 0.031668, 0.913464,
		-0.670626, 0.689361, 0.273938,
		-0.621031, -0.723725, 0.300901,
		17.601849, 19.778934, 2.205163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586596, 20.558750, 2.609625>,  <18.036572, 20.285542, 1.994532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.586596, 20.558750, 2.609625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.693802, 20.176197, 2.563143>,  <17.758125, 19.946665, 2.535253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.693802, 20.176197, 2.563143>,  <17.586596, 20.558750, 2.609625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.693802, 20.176197, 2.563143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407413, 0.003209, 0.913238,
		-0.873031, -0.292104, 0.390502,
		0.268014, -0.956381, -0.116206,
		17.774206, 19.889282, 2.528281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314478, 20.038673, 3.172292>,  <17.586596, 20.558750, 2.609625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314478, 20.038673, 3.172292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669010, 19.951992, 3.008604>,  <17.881729, 19.899982, 2.910391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669010, 19.951992, 3.008604>,  <17.314478, 20.038673, 3.172292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669010, 19.951992, 3.008604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402888, -0.074736, 0.912193,
		-0.228260, -0.973372, 0.021067,
		0.886329, -0.216705, -0.409220,
		17.934910, 19.886982, 2.885838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586170, 19.308685, 3.541502>,  <17.314478, 20.038673, 3.172292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.586170, 19.308685, 3.541502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843777, 19.566456, 3.376597>,  <17.998341, 19.721119, 3.277655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843777, 19.566456, 3.376597>,  <17.586170, 19.308685, 3.541502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843777, 19.566456, 3.376597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571203, -0.046586, 0.819486,
		0.508893, -0.763245, -0.398101,
		0.644015, 0.644427, -0.412261,
		18.036982, 19.759785, 3.252919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.323931, 19.027393, 3.463485>,  <17.586170, 19.308685, 3.541502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.323931, 19.027393, 3.463485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305607, 19.420300, 3.536213>,  <18.294613, 19.656042, 3.579851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305607, 19.420300, 3.536213>,  <18.323931, 19.027393, 3.463485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305607, 19.420300, 3.536213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605893, -0.117391, 0.786838,
		0.794226, 0.146209, -0.589769,
		-0.045809, 0.982264, 0.181822,
		18.291864, 19.714979, 3.590760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979628, 19.085260, 3.679095>,  <18.323931, 19.027393, 3.463485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979628, 19.085260, 3.679095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.718681, 19.354565, 3.818314>,  <18.562113, 19.516148, 3.901845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.718681, 19.354565, 3.818314>,  <18.979628, 19.085260, 3.679095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.718681, 19.354565, 3.818314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403235, -0.080511, 0.911548,
		0.641732, 0.735008, -0.218960,
		-0.652366, 0.673262, 0.348048,
		18.522972, 19.556543, 3.922728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444830, 19.392801, 4.166284>,  <18.979628, 19.085260, 3.679095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444830, 19.392801, 4.166284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076385, 19.543121, 4.206943>,  <18.855320, 19.633312, 4.231338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076385, 19.543121, 4.206943>,  <19.444830, 19.392801, 4.166284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076385, 19.543121, 4.206943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210389, 0.260836, 0.942179,
		0.327556, 0.889236, -0.319322,
		-0.921110, 0.375799, 0.101647,
		18.800053, 19.655861, 4.237437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340487, 20.136803, 4.295171>,  <19.444830, 19.392801, 4.166284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340487, 20.136803, 4.295171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060875, 19.918842, 4.480403>,  <18.893108, 19.788067, 4.591542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060875, 19.918842, 4.480403>,  <19.340487, 20.136803, 4.295171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060875, 19.918842, 4.480403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202225, 0.470512, 0.858908,
		-0.685905, 0.694047, -0.218708,
		-0.699028, -0.544901, 0.463080,
		18.851166, 19.755371, 4.619327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908480, 20.601341, 4.635297>,  <19.340487, 20.136803, 4.295171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908480, 20.601341, 4.635297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.959068, 20.231880, 4.780004>,  <18.989422, 20.010204, 4.866828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.959068, 20.231880, 4.780004>,  <18.908480, 20.601341, 4.635297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959068, 20.231880, 4.780004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276204, 0.383062, 0.881462,
		-0.952742, -0.011559, 0.303562,
		0.126472, -0.923650, 0.361766,
		18.997009, 19.954784, 4.888534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520315, 20.555296, 5.243631>,  <18.908480, 20.601341, 4.635297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520315, 20.555296, 5.243631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.833355, 20.308281, 5.275085>,  <19.021179, 20.160072, 5.293958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.833355, 20.308281, 5.275085>,  <18.520315, 20.555296, 5.243631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833355, 20.308281, 5.275085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197462, 0.366042, 0.909408,
		-0.590378, -0.696175, 0.408404,
		0.782600, -0.617538, 0.078635,
		19.068134, 20.123020, 5.298676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.601450, 20.181658, 5.897613>,  <18.520315, 20.555296, 5.243631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.601450, 20.181658, 5.897613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973125, 20.206085, 5.751804>,  <19.196131, 20.220741, 5.664319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973125, 20.206085, 5.751804>,  <18.601450, 20.181658, 5.897613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973125, 20.206085, 5.751804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331081, 0.300862, 0.894353,
		0.164287, -0.951711, 0.259339,
		0.929191, 0.061068, -0.364521,
		19.251883, 20.224405, 5.642448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163637, 19.655973, 6.177879>,  <18.601450, 20.181658, 5.897613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163637, 19.655973, 6.177879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.309807, 20.012360, 6.070071>,  <19.397509, 20.226192, 6.005386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.309807, 20.012360, 6.070071>,  <19.163637, 19.655973, 6.177879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309807, 20.012360, 6.070071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132709, 0.236721, 0.962472,
		0.921332, -0.387480, -0.031736,
		0.365426, 0.890967, -0.269520,
		19.419434, 20.279650, 5.989215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853006, 19.774586, 6.612170>,  <19.163637, 19.655973, 6.177879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853006, 19.774586, 6.612170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678974, 20.120342, 6.511346>,  <19.574554, 20.327795, 6.450851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678974, 20.120342, 6.511346>,  <19.853006, 19.774586, 6.612170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678974, 20.120342, 6.511346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132975, 0.338562, 0.931501,
		0.890517, 0.371762, -0.262245,
		-0.435082, 0.864390, -0.252060,
		19.548449, 20.379660, 6.435728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372683, 20.330397, 6.712101>,  <19.853006, 19.774586, 6.612170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372683, 20.330397, 6.712101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986820, 20.387024, 6.801002>,  <19.755302, 20.421000, 6.854342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986820, 20.387024, 6.801002>,  <20.372683, 20.330397, 6.712101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986820, 20.387024, 6.801002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243553, 0.157038, 0.957090,
		0.100591, 0.977393, -0.185967,
		-0.964657, 0.141568, 0.222250,
		19.697424, 20.429495, 6.867677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278580, 21.053682, 7.141213>,  <20.372683, 20.330397, 6.712101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278580, 21.053682, 7.141213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.003101, 20.771103, 7.206489>,  <19.837814, 20.601555, 7.245654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.003101, 20.771103, 7.206489>,  <20.278580, 21.053682, 7.141213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.003101, 20.771103, 7.206489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198739, 0.032522, 0.979513,
		-0.697280, 0.707019, 0.118001,
		-0.688697, -0.706446, 0.163189,
		19.796492, 20.559170, 7.255445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835188, 21.188946, 7.671853>,  <20.278580, 21.053682, 7.141213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835188, 21.188946, 7.671853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850964, 20.789272, 7.675375>,  <19.860428, 20.549469, 7.677488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850964, 20.789272, 7.675375>,  <19.835188, 21.188946, 7.671853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850964, 20.789272, 7.675375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177478, 0.015677, 0.984000,
		-0.983334, -0.037244, 0.177952,
		0.039437, -0.999183, 0.008806,
		19.862795, 20.489517, 7.678017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.394468, 20.747725, 8.271086>,  <19.835188, 21.188946, 7.671853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.394468, 20.747725, 8.271086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739361, 20.589111, 8.145023>,  <19.946297, 20.493944, 8.069386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739361, 20.589111, 8.145023>,  <19.394468, 20.747725, 8.271086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739361, 20.589111, 8.145023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311189, -0.076229, 0.947286,
		-0.399653, -0.914850, 0.057669,
		0.862229, -0.396532, -0.315157,
		19.998030, 20.470152, 8.050476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507456, 20.147675, 8.658312>,  <19.394468, 20.747725, 8.271086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507456, 20.147675, 8.658312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.839489, 20.343716, 8.551908>,  <20.038710, 20.461340, 8.488065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.839489, 20.343716, 8.551908>,  <19.507456, 20.147675, 8.658312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839489, 20.343716, 8.551908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340793, -0.068275, 0.937656,
		0.441384, -0.868988, -0.223697,
		0.830084, 0.490101, -0.266010,
		20.088514, 20.490746, 8.472105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996851, 19.749063, 9.058125>,  <19.507456, 20.147675, 8.658312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996851, 19.749063, 9.058125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.153507, 20.108116, 8.977249>,  <20.247501, 20.323547, 8.928724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.153507, 20.108116, 8.977249>,  <19.996851, 19.749063, 9.058125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153507, 20.108116, 8.977249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535177, -0.043476, 0.843620,
		0.748469, -0.438601, -0.497418,
		0.391638, 0.897630, -0.202189,
		20.270998, 20.377405, 8.916593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.781588, 19.714960, 8.995284>,  <19.996851, 19.749063, 9.058125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.781588, 19.714960, 8.995284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.672180, 20.078270, 9.121920>,  <20.606537, 20.296255, 9.197901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.672180, 20.078270, 9.121920>,  <20.781588, 19.714960, 8.995284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.672180, 20.078270, 9.121920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593325, -0.099743, 0.798760,
		0.757070, 0.406313, -0.511620,
		-0.273516, 0.908273, 0.316588,
		20.590126, 20.350752, 9.216896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378000, 20.143763, 9.126272>,  <20.781588, 19.714960, 8.995284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378000, 20.143763, 9.126272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078068, 20.289402, 9.347245>,  <20.898108, 20.376785, 9.479829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078068, 20.289402, 9.347245>,  <21.378000, 20.143763, 9.126272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078068, 20.289402, 9.347245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612403, 0.065908, 0.787793,
		0.250425, 0.929025, -0.272396,
		-0.749833, 0.364099, 0.552433,
		20.853117, 20.398632, 9.512975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702715, 20.598110, 9.578648>,  <21.378000, 20.143763, 9.126272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702715, 20.598110, 9.578648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347416, 20.516644, 9.743348>,  <21.134237, 20.467764, 9.842168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347416, 20.516644, 9.743348>,  <21.702715, 20.598110, 9.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347416, 20.516644, 9.743348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428058, -0.041722, 0.902788,
		-0.166690, 0.978151, 0.124241,
		-0.888246, -0.203668, 0.411751,
		21.080942, 20.455544, 9.866874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615877, 21.037415, 10.165715>,  <21.702715, 20.598110, 9.578648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615877, 21.037415, 10.165715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.361050, 20.740318, 10.248153>,  <21.208153, 20.562059, 10.297615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.361050, 20.740318, 10.248153>,  <21.615877, 21.037415, 10.165715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.361050, 20.740318, 10.248153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353855, -0.044278, 0.934252,
		-0.684783, 0.668111, 0.291031,
		-0.637070, -0.742743, 0.206094,
		21.169930, 20.517496, 10.309981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318237, 21.204456, 10.849953>,  <21.615877, 21.037415, 10.165715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318237, 21.204456, 10.849953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209263, 20.820778, 10.819686>,  <21.143879, 20.590570, 10.801526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209263, 20.820778, 10.819686>,  <21.318237, 21.204456, 10.849953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209263, 20.820778, 10.819686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165980, -0.124313, 0.978262,
		-0.947750, 0.253955, 0.193075,
		-0.272436, -0.959194, -0.075667,
		21.127533, 20.533020, 10.796986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802942, 21.069267, 11.386207>,  <21.318237, 21.204456, 10.849953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802942, 21.069267, 11.386207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989410, 20.731731, 11.279910>,  <21.101292, 20.529209, 11.216132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989410, 20.731731, 11.279910>,  <20.802942, 21.069267, 11.386207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989410, 20.731731, 11.279910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157655, -0.216331, 0.963507,
		-0.870535, -0.491052, 0.032189,
		0.466169, -0.843842, -0.265741,
		21.129261, 20.478579, 11.200188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.592030, 20.707277, 11.904535>,  <20.802942, 21.069267, 11.386207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.592030, 20.707277, 11.904535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.881710, 20.474380, 11.756737>,  <21.055517, 20.334642, 11.668057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.881710, 20.474380, 11.756737>,  <20.592030, 20.707277, 11.904535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881710, 20.474380, 11.756737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257899, -0.268257, 0.928184,
		-0.639548, -0.767484, -0.044111,
		0.724200, -0.582243, -0.369497,
		21.098970, 20.299707, 11.645887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480762, 20.088732, 12.243568>,  <20.592030, 20.707277, 11.904535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480762, 20.088732, 12.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857418, 20.112774, 12.111081>,  <21.083410, 20.127199, 12.031589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857418, 20.112774, 12.111081>,  <20.480762, 20.088732, 12.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857418, 20.112774, 12.111081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328604, -0.377666, 0.865672,
		-0.073059, -0.923989, -0.375376,
		0.941638, 0.060105, -0.331218,
		21.139910, 20.130806, 12.011716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735128, 19.437407, 12.442986>,  <20.480762, 20.088732, 12.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735128, 19.437407, 12.442986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067459, 19.658478, 12.416848>,  <21.266857, 19.791121, 12.401166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067459, 19.658478, 12.416848>,  <20.735128, 19.437407, 12.442986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067459, 19.658478, 12.416848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407337, -0.523894, 0.748072,
		0.379212, -0.648135, -0.660393,
		0.830828, 0.552680, -0.065343,
		21.316708, 19.824282, 12.397245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162479, 19.071606, 12.799834>,  <20.735128, 19.437407, 12.442986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162479, 19.071606, 12.799834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.418396, 19.374718, 12.748552>,  <21.571945, 19.556585, 12.717783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.418396, 19.374718, 12.748552>,  <21.162479, 19.071606, 12.799834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418396, 19.374718, 12.748552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484274, -0.267962, 0.832872,
		0.596779, -0.594951, -0.538413,
		0.639792, 0.757779, -0.128205,
		21.610334, 19.602051, 12.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.829311, 18.809679, 12.863556>,  <21.162479, 19.071606, 12.799834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.829311, 18.809679, 12.863556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861221, 19.202274, 12.933207>,  <21.880367, 19.437832, 12.974997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861221, 19.202274, 12.933207>,  <21.829311, 18.809679, 12.863556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.861221, 19.202274, 12.933207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354644, -0.191200, 0.915243,
		0.931592, -0.011261, -0.363331,
		0.079775, 0.981487, 0.174127,
		21.885155, 19.496719, 12.985444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.481991, 18.943523, 13.114645>,  <21.829311, 18.809679, 12.863556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.481991, 18.943523, 13.114645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.264156, 19.245132, 13.261549>,  <22.133455, 19.426098, 13.349691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.264156, 19.245132, 13.261549>,  <22.481991, 18.943523, 13.114645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.264156, 19.245132, 13.261549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352790, -0.191324, 0.915934,
		0.760899, 0.628369, -0.161819,
		-0.544585, 0.754021, 0.367260,
		22.100780, 19.471338, 13.371727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039553, 19.324341, 13.477957>,  <22.481991, 18.943523, 13.114645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039553, 19.324341, 13.477957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.684536, 19.448360, 13.614273>,  <22.471525, 19.522772, 13.696063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.684536, 19.448360, 13.614273>,  <23.039553, 19.324341, 13.477957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684536, 19.448360, 13.614273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330439, -0.087078, 0.939802,
		0.321060, 0.946724, -0.025167,
		-0.887542, 0.310049, 0.340792,
		22.418274, 19.541376, 13.716511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171721, 19.809439, 14.014583>,  <23.039553, 19.324341, 13.477957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171721, 19.809439, 14.014583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790722, 19.718216, 14.095318>,  <22.562122, 19.663483, 14.143759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790722, 19.718216, 14.095318>,  <23.171721, 19.809439, 14.014583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.790722, 19.718216, 14.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194365, 0.055011, 0.979385,
		-0.234460, 0.972092, -0.008072,
		-0.952497, -0.228058, 0.201839,
		22.504972, 19.649799, 14.155869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.940073, 20.238895, 14.489471>,  <23.171721, 19.809439, 14.014583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.940073, 20.238895, 14.489471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673077, 19.945396, 14.540173>,  <22.512878, 19.769297, 14.570593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673077, 19.945396, 14.540173>,  <22.940073, 20.238895, 14.489471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.673077, 19.945396, 14.540173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212628, -0.024685, 0.976821,
		-0.713612, 0.678972, 0.172493,
		-0.667493, -0.733749, 0.126753,
		22.472828, 19.725271, 14.578198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.662336, 20.450788, 15.049052>,  <22.940073, 20.238895, 14.489471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.662336, 20.450788, 15.049052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.597416, 20.057827, 15.012083>,  <22.558464, 19.822050, 14.989902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.597416, 20.057827, 15.012083>,  <22.662336, 20.450788, 15.049052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597416, 20.057827, 15.012083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219591, -0.127275, 0.967254,
		-0.961997, 0.136689, 0.236384,
		-0.162299, -0.982404, -0.092423,
		22.548727, 19.763105, 14.984356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156700, 20.279152, 15.490942>,  <22.662336, 20.450788, 15.049052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156700, 20.279152, 15.490942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.325005, 19.924160, 15.415745>,  <22.425987, 19.711164, 15.370626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.325005, 19.924160, 15.415745>,  <22.156700, 20.279152, 15.490942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325005, 19.924160, 15.415745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333452, -0.041419, 0.941857,
		-0.843665, -0.458982, 0.278504,
		0.420760, -0.887480, -0.187993,
		22.451233, 19.657917, 15.359347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.019758, 19.872587, 16.018555>,  <22.156700, 20.279152, 15.490942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.019758, 19.872587, 16.018555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357491, 19.721245, 15.866791>,  <22.560131, 19.630440, 15.775733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357491, 19.721245, 15.866791>,  <22.019758, 19.872587, 16.018555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.357491, 19.721245, 15.866791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389898, -0.051861, 0.919396,
		-0.367536, -0.924206, 0.103732,
		0.844332, -0.378356, -0.379408,
		22.610790, 19.607738, 15.752969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147963, 19.352175, 16.464777>,  <22.019758, 19.872587, 16.018555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147963, 19.352175, 16.464777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.497066, 19.397728, 16.274906>,  <22.706530, 19.425060, 16.160984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.497066, 19.397728, 16.274906>,  <22.147963, 19.352175, 16.464777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497066, 19.397728, 16.274906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483466, -0.067307, 0.872772,
		0.067445, -0.991212, -0.113801,
		0.872761, 0.113884, -0.474677,
		22.758896, 19.431892, 16.132504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499613, 18.831558, 16.719173>,  <22.147963, 19.352175, 16.464777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499613, 18.831558, 16.719173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790642, 19.070805, 16.584772>,  <22.965260, 19.214352, 16.504131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790642, 19.070805, 16.584772>,  <22.499613, 18.831558, 16.719173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.790642, 19.070805, 16.584772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472740, -0.082187, 0.877361,
		0.497148, -0.797185, -0.342550,
		0.727572, 0.598115, -0.336002,
		23.008913, 19.250238, 16.483971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.112583, 18.570503, 16.941103>,  <22.499613, 18.831558, 16.719173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.112583, 18.570503, 16.941103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.190933, 18.958797, 16.885521>,  <23.237944, 19.191774, 16.852171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.190933, 18.958797, 16.885521>,  <23.112583, 18.570503, 16.941103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.190933, 18.958797, 16.885521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495575, 0.024287, 0.868225,
		0.846191, -0.238926, -0.476315,
		0.195873, 0.970734, -0.138957,
		23.249695, 19.250017, 16.843834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.724077, 18.663433, 17.144789>,  <23.112583, 18.570503, 16.941103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.724077, 18.663433, 17.144789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.597420, 19.041622, 17.175304>,  <23.521425, 19.268536, 17.193613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.597420, 19.041622, 17.175304>,  <23.724077, 18.663433, 17.144789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.597420, 19.041622, 17.175304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466234, 0.085094, 0.880559,
		0.826052, 0.314393, -0.467756,
		-0.316645, 0.945471, 0.076288,
		23.502426, 19.325264, 17.198191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.321970, 19.135502, 17.482363>,  <23.724077, 18.663433, 17.144789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.321970, 19.135502, 17.482363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988522, 19.355511, 17.502581>,  <23.788452, 19.487516, 17.514711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988522, 19.355511, 17.502581>,  <24.321970, 19.135502, 17.482363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.988522, 19.355511, 17.502581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304705, 0.381621, 0.872651,
		0.460687, 0.742861, -0.485721,
		-0.833620, 0.550021, 0.050546,
		23.738436, 19.520517, 17.517744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580175, 19.742090, 17.556293>,  <24.321970, 19.135502, 17.482363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580175, 19.742090, 17.556293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207333, 19.742466, 17.701166>,  <23.983627, 19.742691, 17.788090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207333, 19.742466, 17.701166>,  <24.580175, 19.742090, 17.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207333, 19.742466, 17.701166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328589, 0.422781, 0.844562,
		-0.152331, 0.906231, -0.394386,
		-0.932108, 0.000938, 0.362180,
		23.927700, 19.742748, 17.809820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366978, 20.314301, 17.871529>,  <24.580175, 19.742090, 17.556293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366978, 20.314301, 17.871529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.107185, 20.078175, 18.063236>,  <23.951309, 19.936499, 18.178261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.107185, 20.078175, 18.063236>,  <24.366978, 20.314301, 17.871529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.107185, 20.078175, 18.063236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345852, 0.331990, 0.877593,
		-0.677169, 0.735738, -0.011461,
		-0.649483, -0.590315, 0.479270,
		23.912340, 19.901079, 18.207018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186218, 20.716686, 18.475521>,  <24.366978, 20.314301, 17.871529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186218, 20.716686, 18.475521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.017704, 20.372421, 18.589909>,  <23.916595, 20.165863, 18.658541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.017704, 20.372421, 18.589909>,  <24.186218, 20.716686, 18.475521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.017704, 20.372421, 18.589909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223229, 0.207211, 0.952487,
		-0.879025, 0.465108, 0.104829,
		-0.421288, -0.860661, 0.285970,
		23.891317, 20.114223, 18.675699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.653004, 20.820885, 18.989271>,  <24.186218, 20.716686, 18.475521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.653004, 20.820885, 18.989271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768681, 20.441784, 19.043133>,  <23.838087, 20.214323, 19.075449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768681, 20.441784, 19.043133>,  <23.653004, 20.820885, 18.989271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768681, 20.441784, 19.043133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023729, 0.133524, 0.990761,
		-0.956977, -0.289716, 0.016125,
		0.289192, -0.947753, 0.134654,
		23.855438, 20.157457, 19.083529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115871, 20.551323, 19.404121>,  <23.653004, 20.820885, 18.989271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115871, 20.551323, 19.404121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.443481, 20.326862, 19.451962>,  <23.640047, 20.192186, 19.480665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.443481, 20.326862, 19.451962>,  <23.115871, 20.551323, 19.404121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.443481, 20.326862, 19.451962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039555, 0.152735, 0.987475,
		-0.572392, -0.813498, 0.102897,
		0.819025, -0.561153, 0.119603,
		23.689190, 20.158516, 19.487843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037401, 20.091913, 20.060631>,  <23.115871, 20.551323, 19.404121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037401, 20.091913, 20.060631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.425533, 20.118080, 19.967522>,  <23.658413, 20.133780, 19.911655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.425533, 20.118080, 19.967522>,  <23.037401, 20.091913, 20.060631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.425533, 20.118080, 19.967522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218985, 0.170385, 0.960737,
		0.102505, -0.983204, 0.151005,
		0.970329, 0.065413, -0.232772,
		23.716633, 20.137705, 19.897690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.222288, 19.623611, 20.462309>,  <23.037401, 20.091913, 20.060631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.222288, 19.623611, 20.462309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.515656, 19.881378, 20.375751>,  <23.691675, 20.036037, 20.323816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.515656, 19.881378, 20.375751>,  <23.222288, 19.623611, 20.462309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.515656, 19.881378, 20.375751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105612, 0.206446, 0.972741,
		0.671523, -0.736280, 0.083354,
		0.733419, 0.644415, -0.216393,
		23.735682, 20.074703, 20.310833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.756241, 19.545462, 20.996824>,  <23.222288, 19.623611, 20.462309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.756241, 19.545462, 20.996824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.835407, 19.908955, 20.849834>,  <23.882908, 20.127050, 20.761641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.835407, 19.908955, 20.849834>,  <23.756241, 19.545462, 20.996824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.835407, 19.908955, 20.849834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100478, 0.354108, 0.929791,
		0.975055, -0.220945, -0.021223,
		0.197918, 0.908730, -0.367474,
		23.894783, 20.181574, 20.739592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211224, 19.807585, 21.459606>,  <23.756241, 19.545462, 20.996824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211224, 19.807585, 21.459606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082489, 20.131710, 21.263723>,  <24.005247, 20.326185, 21.146194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082489, 20.131710, 21.263723>,  <24.211224, 19.807585, 21.459606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082489, 20.131710, 21.263723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146490, 0.468380, 0.871298,
		0.935393, 0.352155, -0.032040,
		-0.321839, 0.810313, -0.489707,
		23.985937, 20.374804, 21.116812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494009, 20.377884, 21.793657>,  <24.211224, 19.807585, 21.459606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494009, 20.377884, 21.793657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166050, 20.504982, 21.603159>,  <23.969275, 20.581242, 21.488861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166050, 20.504982, 21.603159>,  <24.494009, 20.377884, 21.793657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.166050, 20.504982, 21.603159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337694, 0.403327, 0.850465,
		0.462313, 0.858117, -0.223385,
		-0.819896, 0.317745, -0.476245,
		23.920082, 20.600306, 21.460285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373060, 21.052378, 22.051502>,  <24.494009, 20.377884, 21.793657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373060, 21.052378, 22.051502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023521, 20.958153, 21.881372>,  <23.813797, 20.901619, 21.779295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023521, 20.958153, 21.881372>,  <24.373060, 21.052378, 22.051502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.023521, 20.958153, 21.881372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485833, 0.389213, 0.782610,
		-0.018811, 0.890519, -0.454557,
		-0.873849, -0.235560, -0.425322,
		23.761366, 20.887486, 21.753777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928188, 21.590670, 22.086584>,  <24.373060, 21.052378, 22.051502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928188, 21.590670, 22.086584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.691696, 21.268295, 22.074484>,  <23.549801, 21.074871, 22.067225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.691696, 21.268295, 22.074484>,  <23.928188, 21.590670, 22.086584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.691696, 21.268295, 22.074484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478141, 0.320065, 0.817888,
		-0.649482, 0.498024, -0.574583,
		-0.591231, -0.805935, -0.030249,
		23.514326, 21.026514, 22.065409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209150, 21.758577, 22.064297>,  <23.928188, 21.590670, 22.086584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209150, 21.758577, 22.064297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158295, 21.381336, 22.187193>,  <23.127781, 21.154991, 22.260931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158295, 21.381336, 22.187193>,  <23.209150, 21.758577, 22.064297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.158295, 21.381336, 22.187193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752246, 0.293575, 0.589864,
		-0.646499, -0.156124, -0.746769,
		-0.127140, -0.943101, 0.307239,
		23.120153, 21.098406, 22.279366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.450190, 21.724873, 22.250444>,  <23.209150, 21.758577, 22.064297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.450190, 21.724873, 22.250444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621746, 21.401653, 22.411991>,  <22.724680, 21.207722, 22.508919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621746, 21.401653, 22.411991>,  <22.450190, 21.724873, 22.250444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621746, 21.401653, 22.411991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497504, 0.161886, 0.852222,
		-0.754018, -0.566436, -0.332577,
		0.428889, -0.808049, 0.403869,
		22.750414, 21.159239, 22.533152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.915623, 21.400711, 22.678318>,  <22.450190, 21.724873, 22.250444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.915623, 21.400711, 22.678318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.255032, 21.253288, 22.830198>,  <22.458677, 21.164835, 22.921328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.255032, 21.253288, 22.830198>,  <21.915623, 21.400711, 22.678318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.255032, 21.253288, 22.830198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401841, 0.018062, 0.915531,
		-0.344285, -0.929429, -0.132776,
		0.848523, -0.368559, 0.379701,
		22.509588, 21.142721, 22.944109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809763, 20.699272, 23.052397>,  <21.915623, 21.400711, 22.678318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809763, 20.699272, 23.052397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128170, 20.902912, 23.183346>,  <22.319214, 21.025097, 23.261915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128170, 20.902912, 23.183346>,  <21.809763, 20.699272, 23.052397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128170, 20.902912, 23.183346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435575, 0.106263, 0.893858,
		0.420276, -0.854123, 0.306338,
		0.796017, 0.509100, 0.327375,
		22.366976, 21.055641, 23.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875824, 20.399803, 23.819168>,  <21.809763, 20.699272, 23.052397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875824, 20.399803, 23.819168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.101261, 20.729996, 23.806852>,  <22.236523, 20.928110, 23.799463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.101261, 20.729996, 23.806852>,  <21.875824, 20.399803, 23.819168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.101261, 20.729996, 23.806852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224908, 0.189205, 0.955834,
		0.794847, -0.531775, 0.292292,
		0.563591, 0.825480, -0.030789,
		22.270338, 20.977640, 23.797615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.366680, 20.320633, 24.307840>,  <21.875824, 20.399803, 23.819168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.366680, 20.320633, 24.307840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372719, 20.716320, 24.249577>,  <22.376341, 20.953733, 24.214619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372719, 20.716320, 24.249577>,  <22.366680, 20.320633, 24.307840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.372719, 20.716320, 24.249577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215151, 0.145477, 0.965685,
		0.976464, 0.016762, 0.215027,
		0.015095, 0.989220, -0.145659,
		22.377247, 21.013086, 24.205879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788551, 20.558485, 24.766043>,  <22.366680, 20.320633, 24.307840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788551, 20.558485, 24.766043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.551201, 20.866646, 24.672762>,  <22.408791, 21.051542, 24.616795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.551201, 20.866646, 24.672762>,  <22.788551, 20.558485, 24.766043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.551201, 20.866646, 24.672762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039889, 0.261218, 0.964455,
		0.803936, 0.581588, -0.124270,
		-0.593377, 0.770403, -0.233201,
		22.373188, 21.097767, 24.602802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037306, 21.253658, 25.029587>,  <22.788551, 20.558485, 24.766043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037306, 21.253658, 25.029587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639011, 21.231445, 25.000134>,  <22.400034, 21.218117, 24.982462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639011, 21.231445, 25.000134>,  <23.037306, 21.253658, 25.029587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639011, 21.231445, 25.000134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083615, 0.206715, 0.974822,
		-0.038913, 0.976824, -0.210477,
		-0.995738, -0.055532, -0.073633,
		22.340290, 21.214787, 24.978045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068949, 21.458143, 25.765085>,  <23.037306, 21.253658, 25.029587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068949, 21.458143, 25.765085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.949211, 21.178162, 26.024456>,  <22.877369, 21.010172, 26.180079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.949211, 21.178162, 26.024456>,  <23.068949, 21.458143, 25.765085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.949211, 21.178162, 26.024456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918484, 0.395448, 0.002854,
		-0.258416, -0.594715, -0.761272,
		-0.299346, -0.699953, 0.648426,
		22.859407, 20.968176, 26.218985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.565039, 21.012108, 25.520599>,  <23.068949, 21.458143, 25.765085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.565039, 21.012108, 25.520599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511608, 21.094036, 25.908457>,  <22.479549, 21.143194, 26.141171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511608, 21.094036, 25.908457>,  <22.565039, 21.012108, 25.520599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511608, 21.094036, 25.908457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895164, 0.394897, -0.206731,
		-0.425252, -0.895602, 0.130602,
		-0.133575, 0.204823, 0.969642,
		22.471535, 21.155483, 26.199348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.855505, 21.038872, 25.556940>,  <22.565039, 21.012108, 25.520599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.855505, 21.038872, 25.556940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988354, 21.216980, 25.889549>,  <22.068062, 21.323845, 26.089115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988354, 21.216980, 25.889549>,  <21.855505, 21.038872, 25.556940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988354, 21.216980, 25.889549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862548, 0.500127, 0.076701,
		-0.381714, -0.742703, 0.550170,
		0.332121, 0.445270, 0.831522,
		22.087990, 21.350561, 26.139006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.344753, 20.891584, 25.893671>,  <21.855505, 21.038872, 25.556940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.344753, 20.891584, 25.893671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.495468, 21.200191, 26.098722>,  <21.585897, 21.385355, 26.221754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.495468, 21.200191, 26.098722>,  <21.344753, 20.891584, 25.893671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.495468, 21.200191, 26.098722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886253, 0.461225, -0.042748,
		-0.269419, -0.438213, 0.857545,
		0.376788, 0.771518, 0.512630,
		21.608505, 21.431646, 26.252512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970373, 21.012537, 26.558853>,  <21.344753, 20.891584, 25.893671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970373, 21.012537, 26.558853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.095055, 21.347176, 26.378654>,  <21.169863, 21.547958, 26.270536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.095055, 21.347176, 26.378654>,  <20.970373, 21.012537, 26.558853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095055, 21.347176, 26.378654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839393, 0.464621, 0.282041,
		0.445264, 0.290230, 0.847058,
		0.311704, 0.836596, -0.450496,
		21.188566, 21.598154, 26.243505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.910048, 21.525423, 27.005621>,  <20.970373, 21.012537, 26.558853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.910048, 21.525423, 27.005621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.876366, 21.686420, 26.641005>,  <20.856155, 21.783018, 26.422235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.876366, 21.686420, 26.641005>,  <20.910048, 21.525423, 27.005621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.876366, 21.686420, 26.641005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887273, 0.386044, 0.252423,
		0.453493, 0.830042, 0.324615,
		-0.084206, 0.402494, -0.911542,
		20.851105, 21.807169, 26.367542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945759, 22.289860, 27.161627>,  <20.910048, 21.525423, 27.005621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945759, 22.289860, 27.161627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.734238, 22.192837, 26.836288>,  <20.607325, 22.134623, 26.641085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.734238, 22.192837, 26.836288>,  <20.945759, 22.289860, 27.161627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.734238, 22.192837, 26.836288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775564, 0.527366, 0.346967,
		0.344772, 0.814279, -0.466993,
		-0.528804, -0.242558, -0.813346,
		20.575596, 22.120070, 26.592285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676998, 22.885540, 26.930107>,  <20.945759, 22.289860, 27.161627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.676998, 22.885540, 26.930107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.427639, 22.593220, 26.818892>,  <20.278025, 22.417828, 26.752161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.427639, 22.593220, 26.818892>,  <20.676998, 22.885540, 26.930107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427639, 22.593220, 26.818892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749800, 0.457873, 0.477653,
		-0.221762, 0.506242, -0.833391,
		-0.623396, -0.730802, -0.278041,
		20.240620, 22.373980, 26.735479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566105, 23.189497, 26.230860>,  <20.676998, 22.885540, 26.930107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566105, 23.189497, 26.230860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.840332, 22.972916, 26.036201>,  <21.004868, 22.842966, 25.919407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.840332, 22.972916, 26.036201>,  <20.566105, 23.189497, 26.230860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840332, 22.972916, 26.036201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153049, 0.546331, -0.823467,
		0.711741, 0.639022, 0.291677,
		0.685566, -0.541454, -0.486648,
		21.046001, 22.810480, 25.890207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.926849, 23.604000, 25.871368>,  <20.566105, 23.189497, 26.230860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.926849, 23.604000, 25.871368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.032154, 23.261703, 25.693201>,  <21.095337, 23.056326, 25.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.032154, 23.261703, 25.693201>,  <20.926849, 23.604000, 25.871368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032154, 23.261703, 25.693201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050602, 0.448821, -0.892188,
		0.963397, 0.257417, 0.074855,
		0.263260, -0.855743, -0.445419,
		21.111132, 23.004980, 25.559576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.130037, 23.826368, 25.332012>,  <20.926849, 23.604000, 25.871368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.130037, 23.826368, 25.332012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109547, 23.445427, 25.211750>,  <21.097252, 23.216862, 25.139593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109547, 23.445427, 25.211750>,  <21.130037, 23.826368, 25.332012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109547, 23.445427, 25.211750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163522, 0.304988, -0.938213,
		0.985209, 0.001102, -0.171355,
		-0.051228, -0.952356, -0.300657,
		21.094179, 23.159719, 25.121553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679619, 23.740379, 24.861868>,  <21.130037, 23.826368, 25.332012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679619, 23.740379, 24.861868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.416161, 23.451374, 24.777811>,  <21.258085, 23.277971, 24.727377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.416161, 23.451374, 24.777811>,  <21.679619, 23.740379, 24.861868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.416161, 23.451374, 24.777811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016590, 0.293150, -0.955923,
		0.752269, -0.626130, -0.205069,
		-0.658647, -0.722513, -0.210140,
		21.218567, 23.234621, 24.714769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934385, 23.519205, 24.290930>,  <21.679619, 23.740379, 24.861868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934385, 23.519205, 24.290930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562714, 23.371426, 24.295576>,  <21.339710, 23.282757, 24.298365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562714, 23.371426, 24.295576>,  <21.934385, 23.519205, 24.290930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562714, 23.371426, 24.295576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151094, 0.350949, -0.924124,
		0.337326, -0.860437, -0.381915,
		-0.929183, -0.369436, 0.011622,
		21.283960, 23.260592, 24.299061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852087, 23.311312, 23.637047>,  <21.934385, 23.519205, 24.290930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852087, 23.311312, 23.637047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480274, 23.346905, 23.780188>,  <21.257187, 23.368261, 23.866072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480274, 23.346905, 23.780188>,  <21.852087, 23.311312, 23.637047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480274, 23.346905, 23.780188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313736, 0.319092, -0.894287,
		-0.193763, -0.943537, -0.268689,
		-0.929530, 0.088983, 0.357850,
		21.201416, 23.373600, 23.887543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.383953, 22.798965, 23.291758>,  <21.852087, 23.311312, 23.637047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.383953, 22.798965, 23.291758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167545, 23.107059, 23.426832>,  <21.037701, 23.291916, 23.507877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167545, 23.107059, 23.426832>,  <21.383953, 22.798965, 23.291758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167545, 23.107059, 23.426832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235058, 0.247037, -0.940064,
		-0.807493, -0.587970, 0.047398,
		-0.541020, 0.770236, 0.337688,
		21.005239, 23.338131, 23.528139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753269, 22.674767, 23.014740>,  <21.383953, 22.798965, 23.291758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753269, 22.674767, 23.014740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768089, 23.062569, 23.111643>,  <20.776981, 23.295250, 23.169785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768089, 23.062569, 23.111643>,  <20.753269, 22.674767, 23.014740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768089, 23.062569, 23.111643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414079, 0.235527, -0.879241,
		-0.909486, -0.067736, 0.410179,
		0.037052, 0.969504, 0.242256,
		20.779205, 23.353420, 23.184320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100748, 22.894884, 22.850843>,  <20.753269, 22.674767, 23.014740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100748, 22.894884, 22.850843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.344296, 23.212009, 22.861637>,  <20.490423, 23.402285, 22.868113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.344296, 23.212009, 22.861637>,  <20.100748, 22.894884, 22.850843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344296, 23.212009, 22.861637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205417, 0.190431, -0.959969,
		-0.766214, 0.578951, 0.278804,
		0.608868, 0.792812, 0.026985,
		20.526957, 23.449854, 22.869732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690666, 23.346756, 22.523642>,  <20.100748, 22.894884, 22.850843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.690666, 23.346756, 22.523642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061878, 23.495621, 22.517206>,  <20.284605, 23.584940, 22.513346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061878, 23.495621, 22.517206>,  <19.690666, 23.346756, 22.523642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061878, 23.495621, 22.517206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111657, 0.236705, -0.965144,
		-0.355380, 0.897479, 0.261223,
		0.928029, 0.372160, -0.016089,
		20.340286, 23.607269, 22.512379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561380, 23.950508, 22.209633>,  <19.690666, 23.346756, 22.523642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561380, 23.950508, 22.209633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952457, 23.880222, 22.163603>,  <20.187103, 23.838051, 22.135984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952457, 23.880222, 22.163603>,  <19.561380, 23.950508, 22.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952457, 23.880222, 22.163603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082781, 0.181163, -0.979963,
		0.193043, 0.967628, 0.162575,
		0.977692, -0.175717, -0.115073,
		20.245766, 23.827507, 22.129082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.790739, 24.354206, 21.654995>,  <19.561380, 23.950508, 22.209633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.790739, 24.354206, 21.654995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.106800, 24.109699, 21.637051>,  <20.296436, 23.962996, 21.626284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.106800, 24.109699, 21.637051>,  <19.790739, 24.354206, 21.654995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.106800, 24.109699, 21.637051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027422, 0.037863, -0.998907,
		0.612298, 0.790517, 0.013155,
		0.790151, -0.611268, -0.044861,
		20.343845, 23.926319, 21.623592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.330391, 24.766943, 21.241236>,  <19.790739, 24.354206, 21.654995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.330391, 24.766943, 21.241236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398666, 24.372868, 21.247766>,  <20.439632, 24.136421, 21.251686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398666, 24.372868, 21.247766>,  <20.330391, 24.766943, 21.241236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.398666, 24.372868, 21.247766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016389, -0.013730, -0.999771,
		0.985188, 0.170919, 0.013803,
		0.170690, -0.985189, 0.016328,
		20.449873, 24.077311, 21.252665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685944, 24.727905, 20.671114>,  <20.330391, 24.766943, 21.241236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685944, 24.727905, 20.671114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631226, 24.338318, 20.743420>,  <20.598394, 24.104567, 20.786802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631226, 24.338318, 20.743420>,  <20.685944, 24.727905, 20.671114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631226, 24.338318, 20.743420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062964, -0.190658, -0.979635,
		0.988596, -0.122628, 0.087406,
		-0.136795, -0.973967, 0.180763,
		20.590187, 24.046127, 20.797649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138000, 24.368017, 20.176926>,  <20.685944, 24.727905, 20.671114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138000, 24.368017, 20.176926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858372, 24.103676, 20.286158>,  <20.690594, 23.945072, 20.351696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858372, 24.103676, 20.286158>,  <21.138000, 24.368017, 20.176926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858372, 24.103676, 20.286158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158871, -0.228808, -0.960420,
		0.697179, -0.714787, 0.054963,
		-0.699072, -0.660853, 0.273079,
		20.648649, 23.905420, 20.368082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259270, 23.674160, 19.731083>,  <21.138000, 24.368017, 20.176926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259270, 23.674160, 19.731083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.875786, 23.672600, 19.844826>,  <20.645695, 23.671663, 19.913071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.875786, 23.672600, 19.844826>,  <21.259270, 23.674160, 19.731083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.875786, 23.672600, 19.844826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257748, -0.410574, -0.874640,
		0.120162, -0.911819, 0.392616,
		-0.958711, -0.003903, 0.284355,
		20.588173, 23.671429, 19.930132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.035570, 22.917822, 19.779606>,  <21.259270, 23.674160, 19.731083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.035570, 22.917822, 19.779606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710430, 23.142910, 19.719446>,  <20.515347, 23.277962, 19.683350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710430, 23.142910, 19.719446>,  <21.035570, 22.917822, 19.779606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710430, 23.142910, 19.719446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166689, -0.472140, -0.865620,
		-0.558110, -0.678550, 0.477579,
		-0.812851, 0.562719, -0.150399,
		20.466574, 23.311726, 19.674326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477060, 22.500153, 19.504248>,  <21.035570, 22.917822, 19.779606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477060, 22.500153, 19.504248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370758, 22.875847, 19.417337>,  <20.306976, 23.101263, 19.365191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370758, 22.875847, 19.417337>,  <20.477060, 22.500153, 19.504248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370758, 22.875847, 19.417337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327377, -0.299913, -0.896034,
		-0.906752, -0.166994, 0.387188,
		-0.265755, 0.939237, -0.217277,
		20.291031, 23.157618, 19.352154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747946, 22.464413, 19.247158>,  <20.477060, 22.500153, 19.504248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747946, 22.464413, 19.247158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958344, 22.782196, 19.125723>,  <20.084583, 22.972866, 19.052862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958344, 22.782196, 19.125723>,  <19.747946, 22.464413, 19.247158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958344, 22.782196, 19.125723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171985, -0.250222, -0.952791,
		-0.832916, 0.553377, 0.005018,
		0.525997, 0.794457, -0.303586,
		20.116142, 23.020533, 19.034647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266747, 22.725142, 18.626398>,  <19.747946, 22.464413, 19.247158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266747, 22.725142, 18.626398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627975, 22.896690, 18.617218>,  <19.844713, 22.999620, 18.611710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627975, 22.896690, 18.617218>,  <19.266747, 22.725142, 18.626398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627975, 22.896690, 18.617218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035931, -0.128695, -0.991033,
		-0.427981, 0.894151, -0.131631,
		0.903073, 0.428873, -0.022951,
		19.898897, 23.025352, 18.610332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311905, 23.199062, 18.025213>,  <19.266747, 22.725142, 18.626398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311905, 23.199062, 18.025213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696766, 23.126106, 18.106201>,  <19.927683, 23.082333, 18.154795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696766, 23.126106, 18.106201>,  <19.311905, 23.199062, 18.025213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696766, 23.126106, 18.106201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218073, 0.069788, -0.973434,
		0.163413, 0.980747, 0.106921,
		0.962154, -0.182388, 0.202470,
		19.985413, 23.071390, 18.166943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616783, 23.763367, 17.595657>,  <19.311905, 23.199062, 18.025213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616783, 23.763367, 17.595657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888401, 23.479908, 17.672304>,  <20.051373, 23.309834, 17.718292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888401, 23.479908, 17.672304>,  <19.616783, 23.763367, 17.595657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888401, 23.479908, 17.672304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203702, -0.068882, -0.976607,
		0.705269, 0.702193, 0.097579,
		0.679045, -0.708647, 0.191618,
		20.092113, 23.267313, 17.729790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230608, 23.962875, 17.214806>,  <19.616783, 23.763367, 17.595657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230608, 23.962875, 17.214806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252762, 23.570290, 17.288191>,  <20.266054, 23.334738, 17.332222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252762, 23.570290, 17.288191>,  <20.230608, 23.962875, 17.214806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252762, 23.570290, 17.288191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204941, -0.168660, -0.964133,
		0.977206, 0.090999, 0.191801,
		0.055386, -0.981465, 0.183465,
		20.269377, 23.275850, 17.343231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.719576, 23.801836, 16.735224>,  <20.230608, 23.962875, 17.214806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.719576, 23.801836, 16.735224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579781, 23.445015, 16.849834>,  <20.495903, 23.230923, 16.918600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579781, 23.445015, 16.849834>,  <20.719576, 23.801836, 16.735224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579781, 23.445015, 16.849834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423450, -0.423181, -0.801004,
		0.835791, -0.158613, 0.525637,
		-0.349489, -0.892054, 0.286526,
		20.474934, 23.177399, 16.935793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.104916, 23.216738, 16.572130>,  <20.719576, 23.801836, 16.735224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.104916, 23.216738, 16.572130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.771431, 22.999531, 16.612244>,  <20.571341, 22.869207, 16.636311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.771431, 22.999531, 16.612244>,  <21.104916, 23.216738, 16.572130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771431, 22.999531, 16.612244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208321, -0.477479, -0.853590,
		0.511397, -0.690757, 0.511202,
		-0.833712, -0.543018, 0.100282,
		20.521317, 22.836626, 16.642328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321159, 22.510201, 16.361998>,  <21.104916, 23.216738, 16.572130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321159, 22.510201, 16.361998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.922974, 22.540596, 16.339090>,  <20.684063, 22.558832, 16.325346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.922974, 22.540596, 16.339090>,  <21.321159, 22.510201, 16.361998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922974, 22.540596, 16.339090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032543, -0.293655, -0.955357,
		-0.089412, -0.952887, 0.289849,
		-0.995463, 0.075987, -0.057266,
		20.624334, 22.563393, 16.321911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101093, 21.936075, 16.006701>,  <21.321159, 22.510201, 16.361998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101093, 21.936075, 16.006701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.811623, 22.206139, 15.949497>,  <20.637939, 22.368177, 15.915175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.811623, 22.206139, 15.949497>,  <21.101093, 21.936075, 16.006701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811623, 22.206139, 15.949497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004456, -0.211783, -0.977307,
		-0.690125, -0.706617, 0.156271,
		-0.723677, 0.675160, -0.143008,
		20.594519, 22.408686, 15.906595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723522, 21.588367, 15.597956>,  <21.101093, 21.936075, 16.006701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723522, 21.588367, 15.597956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624306, 21.972538, 15.547268>,  <20.564775, 22.203039, 15.516855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624306, 21.972538, 15.547268>,  <20.723522, 21.588367, 15.597956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624306, 21.972538, 15.547268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155796, -0.168653, -0.973285,
		-0.956139, -0.221674, 0.191464,
		-0.248043, 0.960425, -0.126720,
		20.549892, 22.260666, 15.509252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199747, 21.534252, 15.065645>,  <20.723522, 21.588367, 15.597956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199747, 21.534252, 15.065645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.354485, 21.903103, 15.068079>,  <20.447327, 22.124413, 15.069539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.354485, 21.903103, 15.068079>,  <20.199747, 21.534252, 15.065645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.354485, 21.903103, 15.068079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096882, 0.047202, -0.994176,
		-0.917042, 0.384002, 0.107597,
		0.386844, 0.922125, 0.006083,
		20.470537, 22.179741, 15.069904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626020, 21.862837, 14.772560>,  <20.199747, 21.534252, 15.065645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626020, 21.862837, 14.772560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.980682, 22.044514, 14.737801>,  <20.193480, 22.153521, 14.716945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.980682, 22.044514, 14.737801>,  <19.626020, 21.862837, 14.772560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.980682, 22.044514, 14.737801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150090, 0.104911, -0.983090,
		-0.437396, 0.884704, 0.161190,
		0.886655, 0.454193, -0.086898,
		20.246679, 22.180771, 14.711731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462368, 22.379189, 14.268974>,  <19.626020, 21.862837, 14.772560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462368, 22.379189, 14.268974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.861271, 22.372589, 14.240101>,  <20.100613, 22.368629, 14.222776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.861271, 22.372589, 14.240101>,  <19.462368, 22.379189, 14.268974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861271, 22.372589, 14.240101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070173, 0.100550, -0.992454,
		0.023634, 0.994795, 0.099116,
		0.997255, -0.016500, -0.072184,
		20.160448, 22.367640, 14.218446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596857, 22.842369, 13.776680>,  <19.462368, 22.379189, 14.268974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596857, 22.842369, 13.776680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969460, 22.696911, 13.773708>,  <20.193022, 22.609636, 13.771925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969460, 22.696911, 13.773708>,  <19.596857, 22.842369, 13.776680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969460, 22.696911, 13.773708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075432, 0.213126, -0.974109,
		0.355816, 0.906828, 0.225959,
		0.931507, -0.363648, -0.007430,
		20.248911, 22.587816, 13.771480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115650, 23.291424, 13.480441>,  <19.596857, 22.842369, 13.776680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115650, 23.291424, 13.480441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254784, 22.917702, 13.449236>,  <20.338264, 22.693468, 13.430512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254784, 22.917702, 13.449236>,  <20.115650, 23.291424, 13.480441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.254784, 22.917702, 13.449236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127388, 0.129535, -0.983358,
		0.928862, 0.332107, 0.164075,
		0.347833, -0.934305, -0.078014,
		20.359133, 22.637411, 13.425832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663940, 23.329779, 13.028440>,  <20.115650, 23.291424, 13.480441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663940, 23.329779, 13.028440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.535225, 22.951885, 13.003349>,  <20.457996, 22.725149, 12.988295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.535225, 22.951885, 13.003349>,  <20.663940, 23.329779, 13.028440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.535225, 22.951885, 13.003349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002713, 0.067170, -0.997738,
		0.946808, -0.320891, -0.024177,
		-0.321789, -0.944731, -0.062726,
		20.438688, 22.668467, 12.984531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191111, 22.923101, 12.605934>,  <20.663940, 23.329779, 13.028440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191111, 22.923101, 12.605934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836754, 22.737846, 12.595356>,  <20.624140, 22.626694, 12.589009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836754, 22.737846, 12.595356>,  <21.191111, 22.923101, 12.605934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.836754, 22.737846, 12.595356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001383, 0.054373, -0.998520,
		0.463892, -0.884616, -0.047528,
		-0.885891, -0.463140, -0.026446,
		20.570986, 22.598904, 12.587422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170147, 22.564844, 12.012311>,  <21.191111, 22.923101, 12.605934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170147, 22.564844, 12.012311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783405, 22.526123, 12.106817>,  <20.551361, 22.502892, 12.163521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783405, 22.526123, 12.106817>,  <21.170147, 22.564844, 12.012311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783405, 22.526123, 12.106817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222261, -0.136345, -0.965407,
		0.125667, -0.985921, 0.110310,
		-0.966855, -0.096802, 0.236265,
		20.493349, 22.497084, 12.177697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923748, 22.032957, 11.580602>,  <21.170147, 22.564844, 12.012311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923748, 22.032957, 11.580602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.607273, 22.240402, 11.710256>,  <20.417389, 22.364870, 11.788048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.607273, 22.240402, 11.710256>,  <20.923748, 22.032957, 11.580602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607273, 22.240402, 11.710256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337994, 0.070913, -0.938473,
		-0.509690, -0.852063, 0.119183,
		-0.791186, 0.518614, 0.324135,
		20.369917, 22.395987, 11.807496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522291, 21.737638, 11.186026>,  <20.923748, 22.032957, 11.580602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522291, 21.737638, 11.186026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.313381, 22.049282, 11.324713>,  <20.188034, 22.236269, 11.407926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.313381, 22.049282, 11.324713>,  <20.522291, 21.737638, 11.186026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313381, 22.049282, 11.324713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482473, 0.065286, -0.873474,
		-0.703169, -0.623478, 0.341803,
		-0.522276, 0.779110, 0.346719,
		20.156698, 22.283014, 11.428728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919807, 21.560486, 11.023613>,  <20.522291, 21.737638, 11.186026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919807, 21.560486, 11.023613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930882, 21.958950, 11.056828>,  <19.937525, 22.198029, 11.076757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930882, 21.958950, 11.056828>,  <19.919807, 21.560486, 11.023613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930882, 21.958950, 11.056828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307004, 0.087529, -0.947675,
		-0.951306, 0.000743, 0.308248,
		0.027684, 0.996162, 0.083039,
		19.939186, 22.257799, 11.081740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311378, 21.872507, 10.664154>,  <19.919807, 21.560486, 11.023613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311378, 21.872507, 10.664154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.579082, 22.167503, 10.700368>,  <19.739704, 22.344501, 10.722096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.579082, 22.167503, 10.700368>,  <19.311378, 21.872507, 10.664154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.579082, 22.167503, 10.700368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133436, 0.239159, -0.961768,
		-0.730948, 0.631593, 0.258468,
		0.669261, 0.737491, 0.090536,
		19.779861, 22.388750, 10.727529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.012438, 22.390429, 10.327915>,  <19.311378, 21.872507, 10.664154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.012438, 22.390429, 10.327915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.390236, 22.518597, 10.356926>,  <19.616915, 22.595497, 10.374332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.390236, 22.518597, 10.356926>,  <19.012438, 22.390429, 10.327915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390236, 22.518597, 10.356926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047674, 0.352106, -0.934745,
		-0.325050, 0.879404, 0.347838,
		0.944494, 0.320422, 0.072527,
		19.673584, 22.614723, 10.378684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302765, 22.731617, 10.386102>,  <19.012438, 22.390429, 10.327915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302765, 22.731617, 10.386102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940289, 22.563381, 10.368570>,  <17.722803, 22.462440, 10.358051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940289, 22.563381, 10.368570>,  <18.302765, 22.731617, 10.386102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940289, 22.563381, 10.368570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081888, 0.072854, 0.993975,
		-0.414862, 0.904321, -0.100461,
		-0.906192, -0.420589, -0.043829,
		17.668430, 22.437204, 10.355422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845171, 23.183062, 10.740804>,  <18.302765, 22.731617, 10.386102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845171, 23.183062, 10.740804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691105, 22.814072, 10.751287>,  <17.598665, 22.592678, 10.757576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691105, 22.814072, 10.751287>,  <17.845171, 23.183062, 10.740804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691105, 22.814072, 10.751287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111097, 0.074540, 0.991010,
		-0.916137, 0.378789, -0.131194,
		-0.385163, -0.922476, 0.026206,
		17.575556, 22.537329, 10.759149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222095, 23.161724, 11.167779>,  <17.845171, 23.183062, 10.740804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222095, 23.161724, 11.167779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377270, 22.793976, 11.193908>,  <17.470375, 22.573328, 11.209585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377270, 22.793976, 11.193908>,  <17.222095, 23.161724, 11.167779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377270, 22.793976, 11.193908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074686, 0.101995, 0.991977,
		-0.918656, -0.379944, 0.108231,
		0.387935, -0.919369, 0.065322,
		17.493650, 22.518166, 11.213504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801491, 22.828651, 11.652552>,  <17.222095, 23.161724, 11.167779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801491, 22.828651, 11.652552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136944, 22.610775, 11.651570>,  <17.338215, 22.480049, 11.650982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136944, 22.610775, 11.651570>,  <16.801491, 22.828651, 11.652552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136944, 22.610775, 11.651570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055039, -0.089218, 0.994490,
		-0.541911, -0.833876, -0.104800,
		0.838632, -0.544694, -0.002453,
		17.388533, 22.447367, 11.650834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642704, 22.269094, 12.032352>,  <16.801491, 22.828651, 11.652552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642704, 22.269094, 12.032352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039631, 22.318172, 12.038649>,  <17.277788, 22.347620, 12.042426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039631, 22.318172, 12.038649>,  <16.642704, 22.269094, 12.032352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039631, 22.318172, 12.038649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002986, -0.103443, 0.994631,
		0.123666, -0.987039, -0.102282,
		0.992319, 0.122696, 0.015740,
		17.337326, 22.354980, 12.043370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868553, 21.717667, 12.514490>,  <16.642704, 22.269094, 12.032352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868553, 21.717667, 12.514490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183239, 21.962276, 12.480735>,  <17.372049, 22.109041, 12.460482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183239, 21.962276, 12.480735>,  <16.868553, 21.717667, 12.514490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183239, 21.962276, 12.480735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045517, 0.078865, 0.995846,
		0.615638, -0.787286, 0.034209,
		0.786713, 0.611524, -0.084387,
		17.419252, 22.145733, 12.455419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323906, 21.469307, 12.964021>,  <16.868553, 21.717667, 12.514490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323906, 21.469307, 12.964021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449135, 21.844734, 12.905949>,  <17.524273, 22.069990, 12.871105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449135, 21.844734, 12.905949>,  <17.323906, 21.469307, 12.964021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449135, 21.844734, 12.905949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226131, 0.074802, 0.971220,
		0.922415, -0.336893, -0.188821,
		0.313073, 0.938567, -0.145181,
		17.543056, 22.126305, 12.862394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054907, 21.642809, 13.288702>,  <17.323906, 21.469307, 12.964021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054907, 21.642809, 13.288702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.841778, 21.981125, 13.277819>,  <17.713900, 22.184114, 13.271289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.841778, 21.981125, 13.277819>,  <18.054907, 21.642809, 13.288702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841778, 21.981125, 13.277819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051015, 0.064199, 0.996632,
		0.844687, 0.529642, -0.077355,
		-0.532824, 0.845788, -0.027208,
		17.681931, 22.234861, 13.269656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326996, 21.914497, 13.902246>,  <18.054907, 21.642809, 13.288702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326996, 21.914497, 13.902246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.025024, 22.139114, 13.766747>,  <17.843842, 22.273886, 13.685447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.025024, 22.139114, 13.766747>,  <18.326996, 21.914497, 13.902246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025024, 22.139114, 13.766747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048796, 0.467009, 0.882905,
		0.653990, 0.683059, -0.325158,
		-0.754928, 0.561544, -0.338750,
		17.798546, 22.307577, 13.665122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453213, 22.561756, 14.268785>,  <18.326996, 21.914497, 13.902246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453213, 22.561756, 14.268785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069443, 22.543594, 14.157473>,  <17.839180, 22.532698, 14.090685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069443, 22.543594, 14.157473>,  <18.453213, 22.561756, 14.268785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069443, 22.543594, 14.157473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275485, 0.361274, 0.890836,
		0.060086, 0.931354, -0.359124,
		-0.959426, -0.045407, -0.278281,
		17.781614, 22.529972, 14.073988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243015, 23.205248, 14.555493>,  <18.453213, 22.561756, 14.268785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.243015, 23.205248, 14.555493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923794, 22.979504, 14.471014>,  <17.732260, 22.844057, 14.420326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923794, 22.979504, 14.471014>,  <18.243015, 23.205248, 14.555493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923794, 22.979504, 14.471014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338193, 0.129406, 0.932137,
		-0.498731, 0.815323, -0.294136,
		-0.798056, -0.564360, -0.211198,
		17.684378, 22.810196, 14.407655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.686132, 23.659773, 14.701875>,  <18.243015, 23.205248, 14.555493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.686132, 23.659773, 14.701875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553848, 23.283676, 14.734316>,  <17.474478, 23.058018, 14.753780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553848, 23.283676, 14.734316>,  <17.686132, 23.659773, 14.701875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553848, 23.283676, 14.734316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117672, 0.126351, 0.984982,
		-0.936367, 0.316200, -0.152426,
		-0.330711, -0.940241, 0.081104,
		17.454636, 23.001604, 14.758647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021055, 23.671543, 14.991795>,  <17.686132, 23.659773, 14.701875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021055, 23.671543, 14.991795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.167633, 23.307560, 15.069454>,  <17.255579, 23.089170, 15.116050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.167633, 23.307560, 15.069454>,  <17.021055, 23.671543, 14.991795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167633, 23.307560, 15.069454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241551, 0.108471, 0.964307,
		-0.898539, -0.400261, -0.180053,
		0.366444, -0.909959, 0.194149,
		17.277567, 23.034573, 15.127699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499126, 23.442730, 15.506222>,  <17.021055, 23.671543, 14.991795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499126, 23.442730, 15.506222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832333, 23.225292, 15.547380>,  <17.032257, 23.094830, 15.572076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832333, 23.225292, 15.547380>,  <16.499126, 23.442730, 15.506222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832333, 23.225292, 15.547380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134266, -0.018208, 0.990778,
		-0.536709, -0.839150, -0.088154,
		0.833016, -0.543596, 0.102896,
		17.082237, 23.062214, 15.578249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372456, 22.933777, 16.018316>,  <16.499126, 23.442730, 15.506222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372456, 22.933777, 16.018316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771416, 22.924519, 15.991024>,  <17.010792, 22.918962, 15.974648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771416, 22.924519, 15.991024>,  <16.372456, 22.933777, 16.018316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771416, 22.924519, 15.991024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062732, -0.186796, 0.980394,
		-0.035439, -0.982126, -0.184858,
		0.997401, -0.023148, -0.068230,
		17.070637, 22.917574, 15.970555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.528175, 22.423132, 16.454718>,  <16.372456, 22.933777, 16.018316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.528175, 22.423132, 16.454718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.857544, 22.648773, 16.430172>,  <17.055164, 22.784159, 16.415445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.857544, 22.648773, 16.430172>,  <16.528175, 22.423132, 16.454718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857544, 22.648773, 16.430172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128835, -0.080543, 0.988390,
		0.552614, -0.821765, -0.138998,
		0.823419, 0.564105, -0.061363,
		17.104570, 22.818005, 16.411762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075224, 21.983002, 16.812366>,  <16.528175, 22.423132, 16.454718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075224, 21.983002, 16.812366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232250, 22.350807, 16.804533>,  <17.326466, 22.571491, 16.799833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232250, 22.350807, 16.804533>,  <17.075224, 21.983002, 16.812366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232250, 22.350807, 16.804533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387396, -0.146003, 0.910279,
		0.834157, -0.364930, -0.413532,
		0.392565, 0.919516, -0.019583,
		17.350019, 22.626661, 16.798658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622646, 21.904083, 17.251286>,  <17.075224, 21.983002, 16.812366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622646, 21.904083, 17.251286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.594425, 22.302776, 17.235577>,  <17.577492, 22.541992, 17.226152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.594425, 22.302776, 17.235577>,  <17.622646, 21.904083, 17.251286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594425, 22.302776, 17.235577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347806, 0.061479, 0.935549,
		0.934908, 0.052347, -0.351007,
		-0.070553, 0.996735, -0.039271,
		17.573259, 22.601797, 17.223795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261133, 22.234848, 17.348427>,  <17.622646, 21.904083, 17.251286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261133, 22.234848, 17.348427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990406, 22.506992, 17.460873>,  <17.827971, 22.670279, 17.528339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990406, 22.506992, 17.460873>,  <18.261133, 22.234848, 17.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990406, 22.506992, 17.460873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452963, 0.083873, 0.887575,
		0.580295, 0.728061, -0.364945,
		-0.676818, 0.680362, 0.281114,
		17.787361, 22.711102, 17.545206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665874, 22.631176, 17.835474>,  <18.261133, 22.234848, 17.348427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665874, 22.631176, 17.835474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.284172, 22.732899, 17.898375>,  <18.055151, 22.793932, 17.936115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.284172, 22.732899, 17.898375>,  <18.665874, 22.631176, 17.835474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284172, 22.732899, 17.898375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186467, 0.095039, 0.977854,
		0.233730, 0.962443, -0.138111,
		-0.954254, 0.254307, 0.157250,
		17.997896, 22.809191, 17.945549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665808, 23.120163, 18.376095>,  <18.665874, 22.631176, 17.835474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665808, 23.120163, 18.376095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.276638, 23.028824, 18.361795>,  <18.043137, 22.974020, 18.353216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.276638, 23.028824, 18.361795>,  <18.665808, 23.120163, 18.376095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.276638, 23.028824, 18.361795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054997, 0.078493, 0.995396,
		-0.224491, 0.970410, -0.088927,
		-0.972923, -0.228348, -0.035749,
		17.984760, 22.960320, 18.351070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498699, 23.567209, 18.914728>,  <18.665808, 23.120163, 18.376095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.498699, 23.567209, 18.914728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201355, 23.300392, 18.894855>,  <18.022947, 23.140303, 18.882933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201355, 23.300392, 18.894855>,  <18.498699, 23.567209, 18.914728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201355, 23.300392, 18.894855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052354, -0.016022, 0.998500,
		-0.666837, 0.744848, -0.023012,
		-0.743362, -0.667042, -0.049679,
		17.978346, 23.100279, 18.879951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.929161, 23.707916, 19.420488>,  <18.498699, 23.567209, 18.914728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.929161, 23.707916, 19.420488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898319, 23.313808, 19.359432>,  <17.879814, 23.077343, 19.322798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898319, 23.313808, 19.359432>,  <17.929161, 23.707916, 19.420488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898319, 23.313808, 19.359432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012036, -0.154007, 0.987996,
		-0.996951, 0.074340, 0.023733,
		-0.077103, -0.985269, -0.152643,
		17.875189, 23.018229, 19.313639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.455107, 23.386459, 19.885281>,  <17.929161, 23.707916, 19.420488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.455107, 23.386459, 19.885281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686962, 23.072521, 19.797615>,  <17.826077, 22.884157, 19.745016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686962, 23.072521, 19.797615>,  <17.455107, 23.386459, 19.885281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686962, 23.072521, 19.797615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160645, -0.153615, 0.974985,
		-0.798881, -0.600347, 0.037040,
		0.579640, -0.784848, -0.219163,
		17.860853, 22.837067, 19.731867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250475, 22.890657, 20.425943>,  <17.455107, 23.386459, 19.885281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250475, 22.890657, 20.425943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568115, 22.745316, 20.231056>,  <17.758699, 22.658112, 20.114124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568115, 22.745316, 20.231056>,  <17.250475, 22.890657, 20.425943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568115, 22.745316, 20.231056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265454, -0.513785, 0.815818,
		-0.546760, -0.777172, -0.311539,
		0.794095, -0.363358, -0.487221,
		17.806345, 22.636311, 20.084890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213917, 22.164751, 20.444288>,  <17.250475, 22.890657, 20.425943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213917, 22.164751, 20.444288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598949, 22.260918, 20.394276>,  <17.829969, 22.318619, 20.364269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598949, 22.260918, 20.394276>,  <17.213917, 22.164751, 20.444288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598949, 22.260918, 20.394276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250200, -0.611280, 0.750824,
		0.104083, -0.754013, -0.648561,
		0.962583, 0.240419, -0.125030,
		17.887724, 22.333044, 20.356766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.583723, 21.486858, 20.524523>,  <17.213917, 22.164751, 20.444288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.583723, 21.486858, 20.524523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.863461, 21.765400, 20.589033>,  <18.031303, 21.932526, 20.627739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.863461, 21.765400, 20.589033>,  <17.583723, 21.486858, 20.524523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863461, 21.765400, 20.589033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455751, -0.608224, 0.649888,
		0.550645, -0.380992, -0.742722,
		0.699343, 0.696354, 0.161278,
		18.073263, 21.974306, 20.637417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204334, 21.069748, 20.610327>,  <17.583723, 21.486858, 20.524523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204334, 21.069748, 20.610327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306644, 21.434780, 20.737936>,  <18.368031, 21.653799, 20.814503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306644, 21.434780, 20.737936>,  <18.204334, 21.069748, 20.610327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306644, 21.434780, 20.737936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588360, -0.408792, 0.697654,
		0.767081, 0.009260, -0.641484,
		0.255773, 0.912581, 0.319024,
		18.383377, 21.708555, 20.833643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889702, 21.056419, 20.626505>,  <18.204334, 21.069748, 20.610327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889702, 21.056419, 20.626505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795151, 21.368263, 20.858482>,  <18.738420, 21.555370, 20.997669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795151, 21.368263, 20.858482>,  <18.889702, 21.056419, 20.626505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795151, 21.368263, 20.858482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655352, -0.312746, 0.687535,
		0.717384, 0.542585, -0.436992,
		-0.236378, 0.779610, 0.579943,
		18.724237, 21.602146, 21.032465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563410, 21.456165, 20.872198>,  <18.889702, 21.056419, 20.626505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563410, 21.456165, 20.872198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.271084, 21.504604, 21.140898>,  <19.095688, 21.533669, 21.302116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.271084, 21.504604, 21.140898>,  <19.563410, 21.456165, 20.872198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271084, 21.504604, 21.140898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620319, -0.292800, 0.727648,
		0.284805, 0.948474, 0.138863,
		-0.730815, 0.121098, 0.671748,
		19.051840, 21.540934, 21.342422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.866615, 21.835590, 21.299339>,  <19.563410, 21.456165, 20.872198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.866615, 21.835590, 21.299339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.564480, 21.670158, 21.502678>,  <19.383198, 21.570900, 21.624681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.564480, 21.670158, 21.502678>,  <19.866615, 21.835590, 21.299339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564480, 21.670158, 21.502678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596101, -0.111340, 0.795152,
		-0.272258, 0.903635, 0.330635,
		-0.755340, -0.413578, 0.508345,
		19.337877, 21.546085, 21.655182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.024273, 22.010458, 22.101000>,  <19.866615, 21.835590, 21.299339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.024273, 22.010458, 22.101000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.749611, 21.720135, 22.117552>,  <19.584814, 21.545940, 22.127483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.749611, 21.720135, 22.117552>,  <20.024273, 22.010458, 22.101000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.749611, 21.720135, 22.117552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372736, -0.302619, 0.877206,
		-0.624160, 0.617759, 0.478329,
		-0.686653, -0.725806, 0.041378,
		19.543615, 21.502394, 22.129965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914492, 22.060841, 22.792667>,  <20.024273, 22.010458, 22.101000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914492, 22.060841, 22.792667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.772903, 21.700191, 22.693247>,  <19.687950, 21.483801, 22.633595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.772903, 21.700191, 22.693247>,  <19.914492, 22.060841, 22.792667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.772903, 21.700191, 22.693247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331576, -0.369476, 0.868070,
		-0.874507, 0.224857, 0.429740,
		-0.353971, -0.901625, -0.248552,
		19.666712, 21.429705, 22.618681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.657463, 21.677479, 23.457973>,  <19.914492, 22.060841, 22.792667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.657463, 21.677479, 23.457973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.690933, 21.372334, 23.201525>,  <19.711016, 21.189247, 23.047655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.690933, 21.372334, 23.201525>,  <19.657463, 21.677479, 23.457973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.690933, 21.372334, 23.201525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254885, -0.605593, 0.753851,
		-0.963344, -0.226493, 0.143768,
		0.083678, -0.762862, -0.641124,
		19.716036, 21.143475, 23.009188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288290, 21.177465, 23.685137>,  <19.657463, 21.677479, 23.457973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288290, 21.177465, 23.685137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544712, 20.985146, 23.445845>,  <19.698566, 20.869753, 23.302269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544712, 20.985146, 23.445845>,  <19.288290, 21.177465, 23.685137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544712, 20.985146, 23.445845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292784, -0.567313, 0.769697,
		-0.709453, -0.668572, -0.222909,
		0.641056, -0.480799, -0.598229,
		19.737030, 20.840906, 23.266376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214235, 20.421572, 23.888391>,  <19.288290, 21.177465, 23.685137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214235, 20.421572, 23.888391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.570190, 20.456184, 23.709234>,  <19.783764, 20.476952, 23.601740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.570190, 20.456184, 23.709234>,  <19.214235, 20.421572, 23.888391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.570190, 20.456184, 23.709234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410259, -0.581115, 0.702847,
		-0.199459, -0.809209, -0.552628,
		0.889890, 0.086532, -0.447894,
		19.837158, 20.482143, 23.574865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.548439, 19.702496, 23.777906>,  <19.214235, 20.421572, 23.888391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.548439, 19.702496, 23.777906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.861027, 19.952057, 23.780838>,  <20.048580, 20.101793, 23.782597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.861027, 19.952057, 23.780838>,  <19.548439, 19.702496, 23.777906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861027, 19.952057, 23.780838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463380, -0.588195, 0.662801,
		0.417835, -0.514561, -0.748760,
		0.781469, 0.623902, 0.007331,
		20.095467, 20.139227, 23.783037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215347, 19.290319, 23.951393>,  <19.548439, 19.702496, 23.777906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215347, 19.290319, 23.951393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.331631, 19.669136, 24.005953>,  <20.401400, 19.896425, 24.038689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.331631, 19.669136, 24.005953>,  <20.215347, 19.290319, 23.951393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.331631, 19.669136, 24.005953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619883, -0.295007, 0.727128,
		0.728858, -0.126830, -0.672815,
		0.290707, 0.947040, 0.136399,
		20.418842, 19.953249, 24.046873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885380, 18.685850, 23.837849>,  <20.215347, 19.290319, 23.951393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885380, 18.685850, 23.837849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560925, 18.495003, 23.973146>,  <19.366251, 18.380493, 24.054325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560925, 18.495003, 23.973146>,  <19.885380, 18.685850, 23.837849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560925, 18.495003, 23.973146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471094, 0.190286, -0.861314,
		0.346586, -0.857991, -0.379116,
		-0.811140, -0.477119, 0.338244,
		19.317583, 18.351868, 24.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711100, 18.211544, 23.292454>,  <19.885380, 18.685850, 23.837849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711100, 18.211544, 23.292454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.373051, 18.264107, 23.499722>,  <19.170221, 18.295645, 23.624083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.373051, 18.264107, 23.499722>,  <19.711100, 18.211544, 23.292454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373051, 18.264107, 23.499722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518521, 0.034230, -0.854380,
		-0.130007, -0.990738, 0.039208,
		-0.845124, 0.131405, 0.518168,
		19.119514, 18.303528, 23.655172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161753, 17.793194, 22.934128>,  <19.711100, 18.211544, 23.292454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161753, 17.793194, 22.934128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949772, 18.036076, 23.170923>,  <18.822582, 18.181805, 23.313000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949772, 18.036076, 23.170923>,  <19.161753, 17.793194, 22.934128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949772, 18.036076, 23.170923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654023, 0.151717, -0.741104,
		-0.539818, -0.779925, 0.316724,
		-0.529953, 0.607206, 0.591988,
		18.790787, 18.218237, 23.348520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556932, 17.456881, 22.836718>,  <19.161753, 17.793194, 22.934128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556932, 17.456881, 22.836718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.523445, 17.828907, 22.979807>,  <18.503353, 18.052124, 23.065660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.523445, 17.828907, 22.979807>,  <18.556932, 17.456881, 22.836718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.523445, 17.828907, 22.979807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723162, 0.190276, -0.663951,
		-0.685586, -0.314276, 0.656660,
		-0.083717, 0.930068, 0.357723,
		18.498329, 18.107927, 23.087124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869780, 17.616821, 22.879730>,  <18.556932, 17.456881, 22.836718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869780, 17.616821, 22.879730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036041, 17.980206, 22.897324>,  <18.135798, 18.198236, 22.907881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036041, 17.980206, 22.897324>,  <17.869780, 17.616821, 22.879730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036041, 17.980206, 22.897324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826560, 0.397476, -0.398512,
		-0.379515, 0.129286, 0.916108,
		0.415653, 0.908459, 0.043986,
		18.160738, 18.252743, 22.910519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313499, 18.157162, 23.006004>,  <17.869780, 17.616821, 22.879730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313499, 18.157162, 23.006004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.629124, 18.356876, 22.862841>,  <17.818499, 18.476706, 22.776941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.629124, 18.356876, 22.862841>,  <17.313499, 18.157162, 23.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.629124, 18.356876, 22.862841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590591, 0.456181, -0.665659,
		-0.169081, 0.736623, 0.654827,
		0.789059, 0.499285, -0.357911,
		17.865841, 18.506662, 22.755466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159210, 18.898537, 23.023472>,  <17.313499, 18.157162, 23.006004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159210, 18.898537, 23.023472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439144, 18.874111, 22.738796>,  <17.607105, 18.859457, 22.567991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439144, 18.874111, 22.738796>,  <17.159210, 18.898537, 23.023472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439144, 18.874111, 22.738796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562595, 0.566795, -0.601855,
		0.440132, 0.821592, 0.362311,
		0.699836, -0.061062, -0.711689,
		17.649096, 18.855793, 22.525290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297121, 19.585186, 22.706015>,  <17.159210, 18.898537, 23.023472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297121, 19.585186, 22.706015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417164, 19.311691, 22.439949>,  <17.489189, 19.147594, 22.280310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417164, 19.311691, 22.439949>,  <17.297121, 19.585186, 22.706015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417164, 19.311691, 22.439949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483287, 0.492203, -0.723995,
		0.822417, 0.538741, -0.182727,
		0.300107, -0.683736, -0.665163,
		17.507196, 19.106571, 22.240400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527805, 20.009094, 22.139391>,  <17.297121, 19.585186, 22.706015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527805, 20.009094, 22.139391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.479195, 19.637756, 21.998875>,  <17.450029, 19.414953, 21.914566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.479195, 19.637756, 21.998875>,  <17.527805, 20.009094, 22.139391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479195, 19.637756, 21.998875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522826, 0.360705, -0.772363,
		0.843732, 0.089802, -0.529199,
		-0.121525, -0.928346, -0.351289,
		17.442738, 19.359253, 21.893488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895327, 20.047705, 21.579969>,  <17.527805, 20.009094, 22.139391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.895327, 20.047705, 21.579969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.645618, 19.738701, 21.533466>,  <17.495794, 19.553299, 21.505564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.645618, 19.738701, 21.533466>,  <17.895327, 20.047705, 21.579969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645618, 19.738701, 21.533466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322860, 0.390642, -0.862067,
		0.711373, -0.500625, -0.493278,
		-0.624268, -0.772511, -0.116260,
		17.458338, 19.506948, 21.498589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938572, 19.817734, 20.977642>,  <17.895327, 20.047705, 21.579969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938572, 19.817734, 20.977642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.575298, 19.682587, 21.076469>,  <17.357334, 19.601498, 21.135765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.575298, 19.682587, 21.076469>,  <17.938572, 19.817734, 20.977642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.575298, 19.682587, 21.076469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351588, 0.295488, -0.888298,
		0.227119, -0.893607, -0.387148,
		-0.908187, -0.337865, 0.247070,
		17.302843, 19.581226, 21.150591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738325, 19.433809, 20.420862>,  <17.938572, 19.817734, 20.977642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738325, 19.433809, 20.420862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364204, 19.466759, 20.558516>,  <17.139732, 19.486528, 20.641108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364204, 19.466759, 20.558516>,  <17.738325, 19.433809, 20.420862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.364204, 19.466759, 20.558516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295984, 0.350862, -0.888420,
		-0.193927, -0.932797, -0.303779,
		-0.935300, 0.082374, 0.344135,
		17.083614, 19.491470, 20.661757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371250, 19.173992, 19.891031>,  <17.738325, 19.433809, 20.420862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.371250, 19.173992, 19.891031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125130, 19.414249, 20.095240>,  <16.977457, 19.558403, 20.217766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125130, 19.414249, 20.095240>,  <17.371250, 19.173992, 19.891031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125130, 19.414249, 20.095240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425910, 0.291658, -0.856467,
		-0.663327, -0.744423, 0.076362,
		-0.615302, 0.600641, 0.510522,
		16.940538, 19.594442, 20.248396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758682, 18.894480, 19.780008>,  <17.371250, 19.173992, 19.891031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758682, 18.894480, 19.780008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662693, 19.266098, 19.892641>,  <16.605101, 19.489069, 19.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662693, 19.266098, 19.892641>,  <16.758682, 18.894480, 19.780008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662693, 19.266098, 19.892641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602305, 0.084995, -0.793728,
		-0.761342, -0.360072, 0.539172,
		-0.239972, 0.929044, 0.281583,
		16.590702, 19.544811, 19.977116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023926, 18.946653, 19.778372>,  <16.758682, 18.894480, 19.780008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023926, 18.946653, 19.778372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.163269, 19.318050, 19.726908>,  <16.246874, 19.540888, 19.696030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.163269, 19.318050, 19.726908>,  <16.023926, 18.946653, 19.778372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.163269, 19.318050, 19.726908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641064, 0.135849, -0.755369,
		-0.683874, 0.345617, 0.642545,
		0.348357, 0.928490, -0.128659,
		16.267776, 19.596598, 19.688311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397223, 19.296787, 19.600664>,  <16.023926, 18.946653, 19.778372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397223, 19.296787, 19.600664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.705642, 19.536606, 19.514843>,  <15.890693, 19.680496, 19.463350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.705642, 19.536606, 19.514843>,  <15.397223, 19.296787, 19.600664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705642, 19.536606, 19.514843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392307, 0.181856, -0.901678,
		-0.501580, 0.779406, 0.375426,
		0.771047, 0.599545, -0.214551,
		15.936955, 19.716469, 19.450478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089053, 19.727589, 19.134615>,  <15.397223, 19.296787, 19.600664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089053, 19.727589, 19.134615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475701, 19.812824, 19.077707>,  <15.707690, 19.863966, 19.043564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475701, 19.812824, 19.077707>,  <15.089053, 19.727589, 19.134615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475701, 19.812824, 19.077707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204253, 0.305642, -0.929980,
		-0.154685, 0.927996, 0.338964,
		0.966619, 0.213089, -0.142268,
		15.765687, 19.876751, 19.035027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998082, 20.313183, 18.793625>,  <15.089053, 19.727589, 19.134615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998082, 20.313183, 18.793625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362418, 20.176430, 18.701117>,  <15.581019, 20.094378, 18.645611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362418, 20.176430, 18.701117>,  <14.998082, 20.313183, 18.793625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362418, 20.176430, 18.701117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082713, 0.397757, -0.913755,
		0.404387, 0.851414, 0.334015,
		0.910840, -0.341883, -0.231271,
		15.635671, 20.073864, 18.631735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441013, 20.894596, 18.443922>,  <14.998082, 20.313183, 18.793625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441013, 20.894596, 18.443922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.585385, 20.538750, 18.331984>,  <15.672009, 20.325243, 18.264820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.585385, 20.538750, 18.331984>,  <15.441013, 20.894596, 18.443922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.585385, 20.538750, 18.331984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137234, 0.347472, -0.927594,
		0.922440, 0.296393, 0.247499,
		0.360931, -0.889615, -0.279847,
		15.693665, 20.271866, 18.248030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027685, 21.069616, 18.122631>,  <15.441013, 20.894596, 18.443922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.027685, 21.069616, 18.122631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001534, 20.696819, 17.980019>,  <15.985843, 20.473141, 17.894451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001534, 20.696819, 17.980019>,  <16.027685, 21.069616, 18.122631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001534, 20.696819, 17.980019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309722, 0.320695, -0.895113,
		0.948577, -0.168947, 0.267692,
		-0.065379, -0.931993, -0.356531,
		15.981919, 20.417221, 17.873060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708073, 20.926291, 17.763378>,  <16.027685, 21.069616, 18.122631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708073, 20.926291, 17.763378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439621, 20.666470, 17.620457>,  <16.278549, 20.510576, 17.534704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439621, 20.666470, 17.620457>,  <16.708073, 20.926291, 17.763378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439621, 20.666470, 17.620457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242068, 0.263541, -0.933782,
		0.700706, -0.713180, -0.019633,
		-0.671129, -0.649555, -0.357302,
		16.238283, 20.471603, 17.513266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133446, 20.497522, 17.198231>,  <16.708073, 20.926291, 17.763378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133446, 20.497522, 17.198231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738838, 20.457829, 17.146187>,  <16.502073, 20.434013, 17.114960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738838, 20.457829, 17.146187>,  <17.133446, 20.497522, 17.198231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738838, 20.457829, 17.146187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120934, 0.093505, -0.988247,
		0.110246, -0.990660, -0.080243,
		-0.986520, -0.099246, -0.130113,
		16.442883, 20.428059, 17.107153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078226, 20.242191, 16.539948>,  <17.133446, 20.497522, 17.198231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078226, 20.242191, 16.539948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691307, 20.338863, 16.570736>,  <16.459156, 20.396868, 16.589209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691307, 20.338863, 16.570736>,  <17.078226, 20.242191, 16.539948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691307, 20.338863, 16.570736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098748, -0.079312, -0.991947,
		-0.233630, -0.967109, 0.100584,
		-0.967298, 0.241681, 0.076971,
		16.401117, 20.411367, 16.593826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760849, 19.730576, 16.118000>,  <17.078226, 20.242191, 16.539948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760849, 19.730576, 16.118000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551498, 20.069042, 16.158152>,  <16.425888, 20.272123, 16.182241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551498, 20.069042, 16.158152>,  <16.760849, 19.730576, 16.118000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551498, 20.069042, 16.158152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241159, -0.034110, -0.969886,
		-0.817263, -0.531822, 0.221913,
		-0.523376, 0.846169, 0.100377,
		16.394485, 20.322893, 16.188265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172659, 19.648624, 15.787447>,  <16.760849, 19.730576, 16.118000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172659, 19.648624, 15.787447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.172459, 20.047825, 15.812729>,  <16.172338, 20.287346, 15.827898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.172459, 20.047825, 15.812729>,  <16.172659, 19.648624, 15.787447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.172459, 20.047825, 15.812729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228183, 0.061424, -0.971679,
		-0.973618, -0.014909, 0.227696,
		-0.000500, 0.998001, 0.063206,
		16.172308, 20.347225, 15.831691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580489, 19.842955, 15.461059>,  <16.172659, 19.648624, 15.787447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580489, 19.842955, 15.461059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825574, 20.159077, 15.461618>,  <15.972625, 20.348749, 15.461954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825574, 20.159077, 15.461618>,  <15.580489, 19.842955, 15.461059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825574, 20.159077, 15.461618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165963, 0.130401, -0.977472,
		-0.772683, 0.598677, 0.211060,
		0.612713, 0.790305, 0.001400,
		16.009388, 20.396168, 15.462038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269075, 20.270409, 14.956968>,  <15.580489, 19.842955, 15.461059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269075, 20.270409, 14.956968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630181, 20.437302, 14.998796>,  <15.846845, 20.537437, 15.023893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630181, 20.437302, 14.998796>,  <15.269075, 20.270409, 14.956968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630181, 20.437302, 14.998796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094739, 0.044270, -0.994517,
		-0.419572, 0.907722, 0.000437,
		0.902764, 0.417230, 0.104571,
		15.901011, 20.562471, 15.030168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245286, 20.831915, 14.636760>,  <15.269075, 20.270409, 14.956968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245286, 20.831915, 14.636760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629788, 20.722416, 14.649721>,  <15.860490, 20.656715, 14.657498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629788, 20.722416, 14.649721>,  <15.245286, 20.831915, 14.636760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629788, 20.722416, 14.649721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028835, -0.017051, -0.999439,
		0.274148, 0.961650, -0.008497,
		0.961255, -0.273749, 0.032404,
		15.918165, 20.640291, 14.659442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532589, 21.339453, 14.179422>,  <15.245286, 20.831915, 14.636760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532589, 21.339453, 14.179422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800912, 21.047001, 14.229172>,  <15.961905, 20.871531, 14.259021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800912, 21.047001, 14.229172>,  <15.532589, 21.339453, 14.179422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800912, 21.047001, 14.229172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250942, 0.065953, -0.965753,
		0.697887, 0.679044, 0.227713,
		0.670807, -0.731129, 0.124373,
		16.002153, 20.827662, 14.266483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098253, 21.549898, 13.797075>,  <15.532589, 21.339453, 14.179422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098253, 21.549898, 13.797075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142994, 21.158867, 13.868443>,  <16.169838, 20.924248, 13.911263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142994, 21.158867, 13.868443>,  <16.098253, 21.549898, 13.797075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142994, 21.158867, 13.868443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286566, -0.140186, -0.947749,
		0.951509, 0.157137, 0.264460,
		0.111853, -0.977576, 0.178418,
		16.176550, 20.865593, 13.921968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701637, 21.350555, 13.359639>,  <16.098253, 21.549898, 13.797075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701637, 21.350555, 13.359639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486721, 21.016315, 13.405415>,  <16.357771, 20.815771, 13.432879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486721, 21.016315, 13.405415>,  <16.701637, 21.350555, 13.359639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486721, 21.016315, 13.405415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107899, -0.202674, -0.973284,
		0.836468, -0.510586, 0.199055,
		-0.537288, -0.835598, 0.114439,
		16.325535, 20.765636, 13.439746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066092, 20.791988, 12.970119>,  <16.701637, 21.350555, 13.359639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066092, 20.791988, 12.970119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689091, 20.663433, 13.006775>,  <16.462891, 20.586300, 13.028769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689091, 20.663433, 13.006775>,  <17.066092, 20.791988, 12.970119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689091, 20.663433, 13.006775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048565, -0.403010, -0.913906,
		0.330650, -0.856909, 0.395447,
		-0.942503, -0.321388, 0.091639,
		16.406340, 20.567017, 13.034266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108999, 20.095415, 12.773795>,  <17.066092, 20.791988, 12.970119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108999, 20.095415, 12.773795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719620, 20.180622, 12.740272>,  <16.485992, 20.231747, 12.720158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719620, 20.180622, 12.740272>,  <17.108999, 20.095415, 12.773795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719620, 20.180622, 12.740272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010687, -0.408010, -0.912915,
		-0.228663, -0.887779, 0.399452,
		-0.973447, 0.213019, -0.083809,
		16.427586, 20.244528, 12.715129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750463, 19.457975, 12.459126>,  <17.108999, 20.095415, 12.773795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750463, 19.457975, 12.459126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513966, 19.776173, 12.406034>,  <16.372066, 19.967091, 12.374179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513966, 19.776173, 12.406034>,  <16.750463, 19.457975, 12.459126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513966, 19.776173, 12.406034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201707, -0.305203, -0.930680,
		-0.780860, -0.523488, 0.340907,
		-0.591246, 0.795494, -0.132730,
		16.336592, 20.014820, 12.366216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150656, 19.173880, 12.149997>,  <16.750463, 19.457975, 12.459126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150656, 19.173880, 12.149997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111336, 19.567348, 12.089695>,  <16.087744, 19.803431, 12.053514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111336, 19.567348, 12.089695>,  <16.150656, 19.173880, 12.149997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111336, 19.567348, 12.089695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263431, -0.171804, -0.949256,
		-0.959657, -0.053600, 0.276018,
		-0.098301, 0.983672, -0.150753,
		16.081846, 19.862450, 12.044469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484788, 19.337729, 11.766172>,  <16.150656, 19.173880, 12.149997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484788, 19.337729, 11.766172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.753985, 19.627430, 11.706120>,  <15.915504, 19.801250, 11.670090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.753985, 19.627430, 11.706120>,  <15.484788, 19.337729, 11.766172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753985, 19.627430, 11.706120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138498, -0.075992, -0.987443,
		-0.726566, 0.685335, 0.049165,
		0.672993, 0.724252, -0.150130,
		15.955883, 19.844706, 11.661081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167074, 19.798473, 11.309745>,  <15.484788, 19.337729, 11.766172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167074, 19.798473, 11.309745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.560712, 19.866505, 11.289227>,  <15.796894, 19.907324, 11.276916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.560712, 19.866505, 11.289227>,  <15.167074, 19.798473, 11.309745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560712, 19.866505, 11.289227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040945, -0.063818, -0.997121,
		-0.172864, 0.983362, -0.055839,
		0.984094, 0.170081, -0.051295,
		15.855940, 19.917528, 11.273838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189591, 20.199730, 10.742889>,  <15.167074, 19.798473, 11.309745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189591, 20.199730, 10.742889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574571, 20.102379, 10.790992>,  <15.805558, 20.043968, 10.819853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574571, 20.102379, 10.790992>,  <15.189591, 20.199730, 10.742889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574571, 20.102379, 10.790992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112810, -0.044352, -0.992626,
		0.246917, 0.968917, -0.015231,
		0.962448, -0.243378, 0.120255,
		15.863305, 20.029366, 10.827068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491052, 20.628748, 10.320309>,  <15.189591, 20.199730, 10.742889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491052, 20.628748, 10.320309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744847, 20.325130, 10.378655>,  <15.897124, 20.142960, 10.413663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744847, 20.325130, 10.378655>,  <15.491052, 20.628748, 10.320309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744847, 20.325130, 10.378655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121498, -0.088428, -0.988645,
		0.763324, 0.645006, 0.036115,
		0.634488, -0.759044, 0.145866,
		15.935194, 20.097418, 10.422416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942003, 20.666256, 9.717620>,  <15.491052, 20.628748, 10.320309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942003, 20.666256, 9.717620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013622, 20.296295, 9.851784>,  <16.056593, 20.074318, 9.932282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013622, 20.296295, 9.851784>,  <15.942003, 20.666256, 9.717620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013622, 20.296295, 9.851784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043200, -0.333200, -0.941866,
		0.982892, 0.183128, -0.019702,
		0.179047, -0.924901, 0.335410,
		16.067337, 20.018826, 9.952407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501389, 20.275402, 9.339123>,  <15.942003, 20.666256, 9.717620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501389, 20.275402, 9.339123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242950, 20.020962, 9.507853>,  <16.087887, 19.868298, 9.609091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242950, 20.020962, 9.507853>,  <16.501389, 20.275402, 9.339123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242950, 20.020962, 9.507853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221358, -0.372748, -0.901143,
		0.730453, -0.675599, 0.100025,
		-0.646095, -0.636102, 0.421824,
		16.049122, 19.830132, 9.634399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614899, 19.562672, 9.202432>,  <16.501389, 20.275402, 9.339123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614899, 19.562672, 9.202432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228241, 19.662041, 9.227359>,  <15.996246, 19.721663, 9.242315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228241, 19.662041, 9.227359>,  <16.614899, 19.562672, 9.202432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228241, 19.662041, 9.227359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123023, -0.236950, -0.963701,
		-0.224642, -0.939222, 0.259609,
		-0.966644, 0.248426, 0.062317,
		15.938248, 19.736567, 9.246055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145424, 19.014563, 8.916713>,  <16.614899, 19.562672, 9.202432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145424, 19.014563, 8.916713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978934, 19.375961, 8.875820>,  <15.879041, 19.592800, 8.851285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978934, 19.375961, 8.875820>,  <16.145424, 19.014563, 8.916713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978934, 19.375961, 8.875820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106316, -0.160019, -0.981372,
		-0.903026, -0.397601, 0.162660,
		-0.416223, 0.903497, -0.102230,
		15.854068, 19.647011, 8.845151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540339, 18.962088, 8.555010>,  <16.145424, 19.014563, 8.916713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540339, 18.962088, 8.555010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656234, 19.340202, 8.495026>,  <15.725771, 19.567070, 8.459035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656234, 19.340202, 8.495026>,  <15.540339, 18.962088, 8.555010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656234, 19.340202, 8.495026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183179, -0.099017, -0.978080,
		-0.939413, 0.310857, 0.144467,
		0.289738, 0.945285, -0.149961,
		15.743155, 19.623787, 8.450037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048768, 19.219606, 8.083467>,  <15.540339, 18.962088, 8.555010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048768, 19.219606, 8.083467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.372313, 19.454296, 8.068002>,  <15.566441, 19.595110, 8.058722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.372313, 19.454296, 8.068002>,  <15.048768, 19.219606, 8.083467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.372313, 19.454296, 8.068002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229954, 0.255129, -0.939165,
		-0.541165, 0.768548, 0.341284,
		0.808865, 0.586722, -0.038664,
		15.614973, 19.630312, 8.056402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894536, 19.891235, 7.765080>,  <15.048768, 19.219606, 8.083467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894536, 19.891235, 7.765080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.288354, 19.837509, 7.720121>,  <15.524645, 19.805273, 7.693146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.288354, 19.837509, 7.720121>,  <14.894536, 19.891235, 7.765080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288354, 19.837509, 7.720121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052066, 0.388283, -0.920068,
		0.167221, 0.911700, 0.375288,
		0.984544, -0.134315, -0.112397,
		15.583717, 19.797215, 7.686402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050719, 20.041622, 7.543442>,  <14.894536, 19.891235, 7.765080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050719, 20.041622, 7.543442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.326644, 20.200405, 7.301257>,  <14.492199, 20.295675, 7.155946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.326644, 20.200405, 7.301257>,  <14.050719, 20.041622, 7.543442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326644, 20.200405, 7.301257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145284, -0.743378, -0.652902,
		-0.709261, 0.538344, -0.455120,
		0.689812, 0.396956, -0.605462,
		14.533587, 20.319492, 7.119618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793472, 20.307772, 6.829267>,  <14.050719, 20.041622, 7.543442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793472, 20.307772, 6.829267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159604, 20.146824, 6.835843>,  <14.379283, 20.050255, 6.839789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159604, 20.146824, 6.835843>,  <13.793472, 20.307772, 6.829267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159604, 20.146824, 6.835843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301761, -0.712346, -0.633643,
		0.266671, 0.575031, -0.773451,
		0.915329, -0.402372, 0.016440,
		14.434203, 20.026112, 6.840775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.899772, 20.068857, 6.260551>,  <13.793472, 20.307772, 6.829267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.899772, 20.068857, 6.260551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145503, 19.853264, 6.491063>,  <14.292942, 19.723907, 6.629370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145503, 19.853264, 6.491063>,  <13.899772, 20.068857, 6.260551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145503, 19.853264, 6.491063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353312, -0.840938, -0.409870,
		0.705529, 0.048189, -0.707041,
		0.614329, -0.538981, 0.576280,
		14.329802, 19.691570, 6.663947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.245715, 19.543486, 5.855386>,  <13.899772, 20.068857, 6.260551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.245715, 19.543486, 5.855386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166493, 19.436642, 6.232624>,  <14.118960, 19.372536, 6.458967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166493, 19.436642, 6.232624>,  <14.245715, 19.543486, 5.855386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166493, 19.436642, 6.232624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403663, -0.854550, -0.326803,
		0.893214, -0.445417, 0.061425,
		-0.198054, -0.267110, 0.943094,
		14.107077, 19.356508, 6.515553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362859, 18.832083, 5.887365>,  <14.245715, 19.543486, 5.855386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362859, 18.832083, 5.887365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132203, 18.908604, 6.205080>,  <13.993810, 18.954515, 6.395709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132203, 18.908604, 6.205080>,  <14.362859, 18.832083, 5.887365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132203, 18.908604, 6.205080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362184, -0.931305, -0.038638,
		0.732332, -0.309958, 0.606313,
		-0.576639, 0.191301, 0.794287,
		13.959211, 18.965994, 6.443366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293015, 18.248207, 6.331129>,  <14.362859, 18.832083, 5.887365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293015, 18.248207, 6.331129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965335, 18.468941, 6.393593>,  <13.768726, 18.601381, 6.431071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965335, 18.468941, 6.393593>,  <14.293015, 18.248207, 6.331129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965335, 18.468941, 6.393593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565243, -0.822945, -0.057113,
		0.096995, -0.135055, 0.986079,
		-0.819202, 0.551835, 0.156160,
		13.719574, 18.634491, 6.440441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883358, 17.919317, 6.868025>,  <14.293015, 18.248207, 6.331129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883358, 17.919317, 6.868025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650910, 18.116310, 6.608869>,  <13.511442, 18.234507, 6.453375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650910, 18.116310, 6.608869>,  <13.883358, 17.919317, 6.868025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.650910, 18.116310, 6.608869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405300, -0.865496, -0.294363,
		-0.705715, 0.091531, 0.702559,
		-0.581118, 0.492483, -0.647890,
		13.476575, 18.264055, 6.414502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137304, 17.589748, 6.936714>,  <13.883358, 17.919317, 6.868025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137304, 17.589748, 6.936714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168252, 17.762718, 6.577376>,  <13.186820, 17.866501, 6.361773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168252, 17.762718, 6.577376>,  <13.137304, 17.589748, 6.936714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168252, 17.762718, 6.577376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542650, -0.737626, -0.401796,
		-0.836388, 0.518573, 0.177586,
		0.077368, 0.432424, -0.898345,
		13.191463, 17.892445, 6.307873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362220, 17.404867, 6.785981>,  <13.137304, 17.589748, 6.936714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362220, 17.404867, 6.785981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665286, 17.532032, 6.557989>,  <12.847126, 17.608330, 6.421194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665286, 17.532032, 6.557989>,  <12.362220, 17.404867, 6.785981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665286, 17.532032, 6.557989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179650, -0.941192, -0.286152,
		-0.627431, 0.114410, -0.770221,
		0.757665, 0.317911, -0.569979,
		12.892586, 17.627405, 6.386995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352568, 17.160990, 6.036593>,  <12.362220, 17.404867, 6.785981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352568, 17.160990, 6.036593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728599, 17.263470, 6.126586>,  <12.954217, 17.324957, 6.180582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728599, 17.263470, 6.126586>,  <12.352568, 17.160990, 6.036593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728599, 17.263470, 6.126586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293892, -0.943397, -0.153719,
		0.172865, 0.210628, -0.962161,
		0.940077, 0.256199, 0.224983,
		13.010622, 17.340330, 6.194081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954505, 17.252077, 5.569596>,  <12.352568, 17.160990, 6.036593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954505, 17.252077, 5.569596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.675176, 17.050201, 5.366566>,  <12.507578, 16.929077, 5.244747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.675176, 17.050201, 5.366566>,  <12.954505, 17.252077, 5.569596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.675176, 17.050201, 5.366566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701128, 0.625055, 0.343113,
		0.144098, 0.595480, -0.790341,
		-0.698323, -0.504688, -0.507577,
		12.465678, 16.898794, 5.214293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575857, 17.573868, 4.838351>,  <12.954505, 17.252077, 5.569596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575857, 17.573868, 4.838351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329097, 17.352142, 5.061839>,  <12.181041, 17.219107, 5.195932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329097, 17.352142, 5.061839>,  <12.575857, 17.573868, 4.838351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329097, 17.352142, 5.061839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716521, 0.689262, -0.107308,
		-0.325622, -0.466533, -0.822385,
		-0.616902, -0.554314, 0.558720,
		12.144026, 17.185848, 5.229455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.993998, 17.200188, 4.567789>,  <12.575857, 17.573868, 4.838351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.993998, 17.200188, 4.567789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.887383, 17.326260, 4.932123>,  <11.823415, 17.401903, 5.150723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.887383, 17.326260, 4.932123>,  <11.993998, 17.200188, 4.567789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.887383, 17.326260, 4.932123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768044, 0.501480, -0.398280,
		-0.582295, -0.805718, 0.108408,
		-0.266536, 0.315179, 0.910835,
		11.807423, 17.420813, 5.205374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228272, 17.298166, 4.572893>,  <11.993998, 17.200188, 4.567789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228272, 17.298166, 4.572893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.332759, 17.499611, 4.902289>,  <11.395451, 17.620478, 5.099927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.332759, 17.499611, 4.902289>,  <11.228272, 17.298166, 4.572893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.332759, 17.499611, 4.902289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721405, 0.668683, -0.180105,
		-0.641359, -0.547025, 0.537980,
		0.261216, 0.503613, 0.823492,
		11.411124, 17.650696, 5.149337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815675, 17.064741, 5.225379>,  <11.228272, 17.298166, 4.572893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815675, 17.064741, 5.225379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.700118, 16.761971, 5.459850>,  <10.630784, 16.580309, 5.600533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.700118, 16.761971, 5.459850>,  <10.815675, 17.064741, 5.225379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.700118, 16.761971, 5.459850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951091, -0.156946, 0.266071,
		-0.109397, 0.634376, 0.765245,
		-0.288892, -0.756925, 0.586179,
		10.613451, 16.534893, 5.635704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.064242, 17.020239, 5.985093>,  <10.815675, 17.064741, 5.225379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.064242, 17.020239, 5.985093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.023908, 16.649536, 5.840344>,  <10.999706, 16.427114, 5.753495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.023908, 16.649536, 5.840344>,  <11.064242, 17.020239, 5.985093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.023908, 16.649536, 5.840344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868638, -0.259348, 0.422145,
		-0.485077, -0.271768, 0.831169,
		-0.100837, -0.926758, -0.361872,
		10.993656, 16.371510, 5.731783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955843, 16.745840, 6.783884>,  <11.064242, 17.020239, 5.985093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955843, 16.745840, 6.783884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.246352, 17.001259, 6.885695>,  <11.420658, 17.154510, 6.946781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.246352, 17.001259, 6.885695>,  <10.955843, 16.745840, 6.783884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.246352, 17.001259, 6.885695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184593, 0.537839, -0.822590,
		-0.662156, 0.550442, 0.508491,
		0.726274, 0.638547, 0.254526,
		11.464234, 17.192823, 6.962052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.788270, 17.366440, 6.712842>,  <10.955843, 16.745840, 6.783884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.788270, 17.366440, 6.712842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180463, 17.433720, 6.672121>,  <11.415778, 17.474087, 6.647689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180463, 17.433720, 6.672121>,  <10.788270, 17.366440, 6.712842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180463, 17.433720, 6.672121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167704, 0.445255, -0.879558,
		-0.102613, 0.879464, 0.464773,
		0.980482, 0.168199, -0.101801,
		11.474607, 17.484179, 6.641581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.827102, 17.764967, 6.073971>,  <10.788270, 17.366440, 6.712842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.827102, 17.764967, 6.073971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.768064, 18.157333, 6.023342>,  <10.732641, 18.392754, 5.992965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.768064, 18.157333, 6.023342>,  <10.827102, 17.764967, 6.073971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.768064, 18.157333, 6.023342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363677, -0.172833, -0.915351,
		-0.919758, -0.089069, 0.382246,
		-0.147594, 0.980915, -0.126573,
		10.723785, 18.451609, 5.985370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.071888, 17.970247, 6.005076>,  <10.827102, 17.764967, 6.073971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.071888, 17.970247, 6.005076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312015, 18.200756, 5.783255>,  <10.456090, 18.339062, 5.650162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312015, 18.200756, 5.783255>,  <10.071888, 17.970247, 6.005076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.312015, 18.200756, 5.783255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518053, -0.248067, -0.818586,
		-0.609296, 0.778698, 0.149623,
		0.600315, 0.576274, -0.554553,
		10.492109, 18.373638, 5.616889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.650087, 18.550724, 5.726252>,  <10.071888, 17.970247, 6.005076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.650087, 18.550724, 5.726252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957643, 18.476959, 5.481366>,  <10.142176, 18.432701, 5.334435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957643, 18.476959, 5.481366>,  <9.650087, 18.550724, 5.726252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.957643, 18.476959, 5.481366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635033, -0.108733, -0.764794,
		0.074469, 0.976816, -0.200710,
		0.768887, -0.184410, -0.612213,
		10.188309, 18.421637, 5.297702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.566999, 18.916807, 5.103587>,  <9.650087, 18.550724, 5.726252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.566999, 18.916807, 5.103587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.475986, 18.999355, 4.722927>,  <9.421377, 19.048883, 4.494531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.475986, 18.999355, 4.722927>,  <9.566999, 18.916807, 5.103587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.475986, 18.999355, 4.722927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960956, -0.205610, 0.185173,
		-0.157455, 0.956627, 0.245097,
		-0.227536, 0.206371, -0.951650,
		9.407724, 19.061266, 4.437431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.929889, 19.363684, 5.166150>,  <9.566999, 18.916807, 5.103587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.929889, 19.363684, 5.166150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.978879, 19.208752, 4.800642>,  <9.008273, 19.115793, 4.581337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.978879, 19.208752, 4.800642>,  <8.929889, 19.363684, 5.166150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.978879, 19.208752, 4.800642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992445, -0.054566, -0.109890,
		-0.007297, 0.920325, -0.391086,
		0.122475, -0.387329, -0.913771,
		9.015621, 19.092552, 4.526511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.559300, 19.697613, 4.705751>,  <8.929889, 19.363684, 5.166150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.559300, 19.697613, 4.705751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.590802, 19.321804, 4.572429>,  <8.609703, 19.096319, 4.492435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.590802, 19.321804, 4.572429>,  <8.559300, 19.697613, 4.705751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.590802, 19.321804, 4.572429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986655, -0.121257, 0.108671,
		-0.142515, 0.320301, -0.936534,
		0.078754, -0.939523, -0.333307,
		8.614429, 19.039948, 4.472436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.110229, 19.489315, 4.119182>,  <8.559300, 19.697613, 4.705751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.110229, 19.489315, 4.119182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180806, 19.171253, 4.351250>,  <8.223153, 18.980415, 4.490491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180806, 19.171253, 4.351250>,  <8.110229, 19.489315, 4.119182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.180806, 19.171253, 4.351250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980039, -0.196767, 0.028374,
		0.091597, -0.573596, -0.814001,
		0.176444, -0.795154, 0.580170,
		8.233740, 18.932707, 4.525301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.219319, 19.446138, 3.389729>,  <8.110229, 19.489315, 4.119182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.219319, 19.446138, 3.389729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.088855, 19.619888, 3.053887>,  <8.010576, 19.724138, 2.852382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.088855, 19.619888, 3.053887>,  <8.219319, 19.446138, 3.389729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.088855, 19.619888, 3.053887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592301, -0.786121, -0.176616,
		-0.736749, 0.439693, 0.513685,
		-0.326162, 0.434378, -0.839604,
		7.991006, 19.750202, 2.802006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.431295, 19.528170, 3.340255>,  <8.219319, 19.446138, 3.389729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.431295, 19.528170, 3.340255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.659877, 19.450893, 3.021227>,  <7.797026, 19.404528, 2.829810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.659877, 19.450893, 3.021227>,  <7.431295, 19.528170, 3.340255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.659877, 19.450893, 3.021227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346195, -0.937931, -0.020858,
		-0.744036, 0.288034, -0.602866,
		0.571454, -0.193190, -0.797570,
		7.831313, 19.392937, 2.781956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.957133, 20.221706, 3.297678>,  <7.431295, 19.528170, 3.340255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.957133, 20.221706, 3.297678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.600127, 20.043144, 3.323414>,  <6.385924, 19.936007, 3.338856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.600127, 20.043144, 3.323414>,  <6.957133, 20.221706, 3.297678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.600127, 20.043144, 3.323414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048967, 0.237720, 0.970099,
		-0.448353, 0.862677, -0.234028,
		-0.892514, -0.446406, 0.064340,
		6.332373, 19.909222, 3.342716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.336486, 20.684320, 3.521082>,  <6.957133, 20.221706, 3.297678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.336486, 20.684320, 3.521082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.292214, 20.311329, 3.658623>,  <6.265651, 20.087534, 3.741148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.292214, 20.311329, 3.658623>,  <6.336486, 20.684320, 3.521082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.292214, 20.311329, 3.658623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149386, 0.357656, 0.921828,
		-0.982565, 0.050660, -0.178884,
		-0.110679, -0.932478, 0.343853,
		6.259011, 20.031586, 3.761779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.099108, 17.038651, 18.114643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.366295, 17.312565, 17.998102>,  <21.526608, 17.476913, 17.928177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.366295, 17.312565, 17.998102>,  <21.099108, 17.038651, 18.114643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366295, 17.312565, 17.998102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327890, -0.080638, -0.941268,
		-0.668061, 0.724269, 0.170671,
		0.667969, 0.684786, -0.291352,
		21.566685, 17.518002, 17.910696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679886, 17.280443, 17.610016>,  <21.099108, 17.038651, 18.114643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679886, 17.280443, 17.610016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.060955, 17.386818, 17.551109>,  <21.289597, 17.450644, 17.515764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.060955, 17.386818, 17.551109>,  <20.679886, 17.280443, 17.610016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.060955, 17.386818, 17.551109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116957, -0.126513, -0.985046,
		-0.280591, 0.955653, -0.089423,
		0.952675, 0.265936, -0.147268,
		21.346758, 17.466599, 17.506929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694679, 17.930750, 17.119814>,  <20.679886, 17.280443, 17.610016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694679, 17.930750, 17.119814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.051762, 17.750816, 17.109037>,  <21.266010, 17.642857, 17.102571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.051762, 17.750816, 17.109037>,  <20.694679, 17.930750, 17.119814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051762, 17.750816, 17.109037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043037, -0.025592, -0.998746,
		0.448579, 0.892746, -0.042206,
		0.892706, -0.449833, -0.026941,
		21.319574, 17.615866, 17.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118595, 18.383974, 16.807673>,  <20.694679, 17.930750, 17.119814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118595, 18.383974, 16.807673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.290398, 18.025249, 16.765240>,  <21.393478, 17.810015, 16.739780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.290398, 18.025249, 16.765240>,  <21.118595, 18.383974, 16.807673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.290398, 18.025249, 16.765240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033553, 0.101539, -0.994266,
		0.902441, 0.430602, 0.013521,
		0.429506, -0.896812, -0.106081,
		21.419249, 17.756207, 16.733416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688004, 18.494122, 16.291254>,  <21.118595, 18.383974, 16.807673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688004, 18.494122, 16.291254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.597679, 18.104485, 16.296270>,  <21.543484, 17.870703, 16.299280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.597679, 18.104485, 16.296270>,  <21.688004, 18.494122, 16.291254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597679, 18.104485, 16.296270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053713, -0.025302, -0.998236,
		0.972689, -0.224739, 0.058035,
		-0.225810, -0.974091, 0.012540,
		21.529936, 17.812258, 16.300032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063192, 18.190704, 15.782280>,  <21.688004, 18.494122, 16.291254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063192, 18.190704, 15.782280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.785740, 17.911514, 15.853508>,  <21.619268, 17.743999, 15.896245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.785740, 17.911514, 15.853508>,  <22.063192, 18.190704, 15.782280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785740, 17.911514, 15.853508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217489, -0.032743, -0.975514,
		0.686715, -0.715373, -0.129090,
		-0.693629, -0.697975, 0.178070,
		21.577652, 17.702122, 15.906929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056807, 17.617929, 15.214449>,  <22.063192, 18.190704, 15.782280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056807, 17.617929, 15.214449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.698963, 17.599705, 15.392256>,  <21.484257, 17.588770, 15.498940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.698963, 17.599705, 15.392256>,  <22.056807, 17.617929, 15.214449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698963, 17.599705, 15.392256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446614, 0.059102, -0.892772,
		0.014392, -0.997212, -0.073215,
		-0.894611, -0.045548, 0.444519,
		21.430580, 17.586037, 15.525611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734283, 17.135658, 14.879326>,  <22.056807, 17.617929, 15.214449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734283, 17.135658, 14.879326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.409042, 17.310684, 15.032896>,  <21.213898, 17.415699, 15.125038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.409042, 17.310684, 15.032896>,  <21.734283, 17.135658, 14.879326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409042, 17.310684, 15.032896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447646, -0.048393, -0.892901,
		-0.372123, -0.897884, 0.235222,
		-0.813104, 0.437565, 0.383926,
		21.165112, 17.441954, 15.148074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225601, 16.810673, 14.646597>,  <21.734283, 17.135658, 14.879326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225601, 16.810673, 14.646597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.040020, 17.146442, 14.759817>,  <20.928671, 17.347904, 14.827749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.040020, 17.146442, 14.759817>,  <21.225601, 16.810673, 14.646597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.040020, 17.146442, 14.759817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405141, 0.083085, -0.910471,
		-0.787787, -0.537091, 0.301537,
		-0.463953, 0.839422, 0.283051,
		20.900833, 17.398270, 14.844732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570562, 16.806423, 14.381510>,  <21.225601, 16.810673, 14.646597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570562, 16.806423, 14.381510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.597675, 17.192535, 14.482420>,  <20.613943, 17.424202, 14.542966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.597675, 17.192535, 14.482420>,  <20.570562, 16.806423, 14.381510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.597675, 17.192535, 14.482420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485321, 0.252825, -0.836985,
		-0.871705, -0.065702, 0.485607,
		0.067782, 0.965279, 0.252275,
		20.618010, 17.482119, 14.558103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943310, 17.049173, 14.416298>,  <20.570562, 16.806423, 14.381510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943310, 17.049173, 14.416298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.176468, 17.367786, 14.352089>,  <20.316362, 17.558954, 14.313563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.176468, 17.367786, 14.352089>,  <19.943310, 17.049173, 14.416298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176468, 17.367786, 14.352089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537823, 0.230126, -0.811041,
		-0.609082, 0.559084, 0.562534,
		0.582894, 0.796534, -0.160522,
		20.351336, 17.606747, 14.303932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544579, 17.631500, 14.255223>,  <19.943310, 17.049173, 14.416298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544579, 17.631500, 14.255223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.886272, 17.753746, 14.086992>,  <20.091290, 17.827093, 13.986053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.886272, 17.753746, 14.086992>,  <19.544579, 17.631500, 14.255223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886272, 17.753746, 14.086992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499585, 0.258668, -0.826744,
		-0.143873, 0.916347, 0.373642,
		0.854234, 0.305612, -0.420577,
		20.142542, 17.845430, 13.960819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331070, 18.203423, 13.858999>,  <19.544579, 17.631500, 14.255223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.331070, 18.203423, 13.858999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.678246, 18.087555, 13.697618>,  <19.886551, 18.018034, 13.600790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.678246, 18.087555, 13.697618>,  <19.331070, 18.203423, 13.858999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678246, 18.087555, 13.697618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330766, 0.268857, -0.904605,
		0.370508, 0.918589, 0.137538,
		0.867939, -0.289670, -0.403452,
		19.938627, 18.000654, 13.576583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613831, 18.798651, 13.443752>,  <19.331070, 18.203423, 13.858999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613831, 18.798651, 13.443752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.741226, 18.444614, 13.307999>,  <19.817663, 18.232193, 13.226546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.741226, 18.444614, 13.307999>,  <19.613831, 18.798651, 13.443752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741226, 18.444614, 13.307999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239836, 0.271140, -0.932181,
		0.917084, 0.378287, -0.125921,
		0.318490, -0.885089, -0.339385,
		19.836773, 18.179089, 13.206183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930328, 19.003605, 12.861477>,  <19.613831, 18.798651, 13.443752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.930328, 19.003605, 12.861477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.888779, 18.607719, 12.822134>,  <19.863850, 18.370188, 12.798529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.888779, 18.607719, 12.822134>,  <19.930328, 19.003605, 12.861477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888779, 18.607719, 12.822134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165428, 0.114706, -0.979529,
		0.980736, -0.085475, -0.175641,
		-0.103872, -0.989715, -0.098356,
		19.857616, 18.310804, 12.792627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282978, 18.877687, 12.418990>,  <19.930328, 19.003605, 12.861477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282978, 18.877687, 12.418990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.049728, 18.554901, 12.381518>,  <19.909779, 18.361229, 12.359035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.049728, 18.554901, 12.381518>,  <20.282978, 18.877687, 12.418990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049728, 18.554901, 12.381518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133393, 0.208860, -0.968805,
		0.801357, -0.552437, -0.229434,
		-0.583124, -0.806964, -0.093680,
		19.874792, 18.312813, 12.353415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.434155, 18.622257, 11.726439>,  <20.282978, 18.877687, 12.418990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.434155, 18.622257, 11.726439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.097614, 18.439449, 11.841861>,  <19.895691, 18.329763, 11.911114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.097614, 18.439449, 11.841861>,  <20.434155, 18.622257, 11.726439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097614, 18.439449, 11.841861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443707, 0.279165, -0.851582,
		0.308636, -0.844511, -0.437658,
		-0.841349, -0.457020, 0.288555,
		19.845209, 18.302343, 11.928428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223772, 18.393299, 11.102674>,  <20.434155, 18.622257, 11.726439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223772, 18.393299, 11.102674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.905327, 18.372753, 11.343858>,  <19.714260, 18.360426, 11.488568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.905327, 18.372753, 11.343858>,  <20.223772, 18.393299, 11.102674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905327, 18.372753, 11.343858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595727, 0.241628, -0.765980,
		-0.106349, -0.969009, -0.222962,
		-0.796115, -0.051363, 0.602961,
		19.666492, 18.357344, 11.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837475, 18.002617, 10.731802>,  <20.223772, 18.393299, 11.102674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837475, 18.002617, 10.731802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.573833, 18.171307, 10.980874>,  <19.415648, 18.272520, 11.130318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.573833, 18.171307, 10.980874>,  <19.837475, 18.002617, 10.731802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573833, 18.171307, 10.980874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588623, 0.226059, -0.776157,
		-0.468086, -0.878093, 0.099239,
		-0.659104, 0.421723, 0.622681,
		19.376102, 18.297823, 11.167678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160860, 17.765692, 10.524039>,  <19.837475, 18.002617, 10.731802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160860, 17.765692, 10.524039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.072968, 18.094910, 10.733540>,  <19.020231, 18.292440, 10.859240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.072968, 18.094910, 10.733540>,  <19.160860, 17.765692, 10.524039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072968, 18.094910, 10.733540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605288, 0.306018, -0.734833,
		-0.765077, -0.478487, 0.430937,
		-0.219734, 0.823045, 0.523750,
		19.007048, 18.341824, 10.890665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440321, 17.874063, 10.437810>,  <19.160860, 17.765692, 10.524039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440321, 17.874063, 10.437810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.586769, 18.233303, 10.535280>,  <18.674637, 18.448847, 10.593762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.586769, 18.233303, 10.535280>,  <18.440321, 17.874063, 10.437810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586769, 18.233303, 10.535280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486208, 0.407889, -0.772806,
		-0.793447, 0.164462, 0.585998,
		0.366119, 0.898097, 0.243676,
		18.696606, 18.502731, 10.608383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928001, 18.308813, 10.636918>,  <18.440321, 17.874063, 10.437810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928001, 18.308813, 10.636918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.223587, 18.502285, 10.449306>,  <18.400938, 18.618368, 10.336739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.223587, 18.502285, 10.449306>,  <17.928001, 18.308813, 10.636918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223587, 18.502285, 10.449306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645884, 0.310435, -0.697469,
		-0.191747, 0.818343, 0.541800,
		0.738963, 0.483678, -0.469030,
		18.445276, 18.647388, 10.308597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178400, 18.298477, 10.705159>,  <17.928001, 18.308813, 10.636918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178400, 18.298477, 10.705159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.821613, 18.163963, 10.826030>,  <16.607542, 18.083256, 10.898552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.821613, 18.163963, 10.826030>,  <17.178400, 18.298477, 10.705159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.821613, 18.163963, 10.826030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384934, -0.214345, 0.897709,
		-0.237114, 0.917044, 0.320634,
		-0.891966, -0.336282, 0.302177,
		16.554024, 18.063078, 10.916683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923893, 18.601984, 11.429452>,  <17.178400, 18.298477, 10.705159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923893, 18.601984, 11.429452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.729778, 18.256001, 11.378318>,  <16.613310, 18.048410, 11.347637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.729778, 18.256001, 11.378318>,  <16.923893, 18.601984, 11.429452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729778, 18.256001, 11.378318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342756, -0.322697, 0.882261,
		-0.804372, 0.384334, 0.453070,
		-0.485287, -0.864959, -0.127836,
		16.584192, 17.996513, 11.339967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600363, 18.544411, 12.035958>,  <16.923893, 18.601984, 11.429452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600363, 18.544411, 12.035958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.607403, 18.173702, 11.885875>,  <16.611628, 17.951277, 11.795825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.607403, 18.173702, 11.885875>,  <16.600363, 18.544411, 12.035958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607403, 18.173702, 11.885875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439779, -0.329841, 0.835344,
		-0.897934, -0.179710, 0.401771,
		0.017599, -0.926774, -0.375208,
		16.612682, 17.895670, 11.773313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277697, 18.175125, 12.558228>,  <16.600363, 18.544411, 12.035958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277697, 18.175125, 12.558228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.442280, 17.874866, 12.351448>,  <16.541029, 17.694712, 12.227381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.442280, 17.874866, 12.351448>,  <16.277697, 18.175125, 12.558228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442280, 17.874866, 12.351448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363836, -0.384757, 0.848284,
		-0.835660, -0.537116, 0.114801,
		0.411457, -0.750645, -0.516948,
		16.565718, 17.649673, 12.196363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932823, 17.630928, 12.699128>,  <16.277697, 18.175125, 12.558228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932823, 17.630928, 12.699128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.292786, 17.481720, 12.608773>,  <16.508762, 17.392195, 12.554560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.292786, 17.481720, 12.608773>,  <15.932823, 17.630928, 12.699128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292786, 17.481720, 12.608773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084218, -0.359581, 0.929306,
		-0.427874, -0.855312, -0.292174,
		0.899906, -0.373019, -0.225888,
		16.562757, 17.369814, 12.541007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127905, 16.966824, 12.988046>,  <15.932823, 17.630928, 12.699128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127905, 16.966824, 12.988046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.495480, 17.094345, 12.895163>,  <16.716024, 17.170858, 12.839433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.495480, 17.094345, 12.895163>,  <16.127905, 16.966824, 12.988046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495480, 17.094345, 12.895163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326763, -0.285692, 0.900892,
		0.220870, -0.903738, -0.366707,
		0.918936, 0.318806, -0.232207,
		16.771160, 17.189987, 12.825500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636463, 16.441067, 13.199603>,  <16.127905, 16.966824, 12.988046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636463, 16.441067, 13.199603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826988, 16.791355, 13.168015>,  <16.941303, 17.001528, 13.149061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826988, 16.791355, 13.168015>,  <16.636463, 16.441067, 13.199603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826988, 16.791355, 13.168015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617750, -0.269377, 0.738797,
		0.625707, -0.400685, -0.669285,
		0.476315, 0.875721, -0.078972,
		16.969883, 17.054071, 13.144323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221600, 16.195066, 13.191426>,  <16.636463, 16.441067, 13.199603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221600, 16.195066, 13.191426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.226589, 16.580833, 13.297060>,  <17.229584, 16.812294, 13.360440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.226589, 16.580833, 13.297060>,  <17.221600, 16.195066, 13.191426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226589, 16.580833, 13.297060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570267, -0.223804, 0.790384,
		0.821364, 0.140738, -0.552769,
		0.012475, 0.964419, 0.264083,
		17.230331, 16.870159, 13.376285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813169, 16.241079, 13.383969>,  <17.221600, 16.195066, 13.191426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813169, 16.241079, 13.383969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.641788, 16.567574, 13.538988>,  <17.538960, 16.763470, 13.631999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.641788, 16.567574, 13.538988>,  <17.813169, 16.241079, 13.383969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641788, 16.567574, 13.538988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603235, -0.060931, 0.795233,
		0.672709, 0.574500, -0.466275,
		-0.428451, 0.816234, 0.387547,
		17.513254, 16.812443, 13.655252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436083, 16.637445, 13.780086>,  <17.813169, 16.241079, 13.383969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436083, 16.637445, 13.780086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.078365, 16.738327, 13.927938>,  <17.863735, 16.798855, 14.016650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.078365, 16.738327, 13.927938>,  <18.436083, 16.637445, 13.780086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078365, 16.738327, 13.927938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355947, -0.099652, 0.929178,
		0.271176, 0.962530, -0.000652,
		-0.894296, 0.252203, 0.369633,
		17.810076, 16.813988, 14.038828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614244, 17.289993, 14.174232>,  <18.436083, 16.637445, 13.780086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614244, 17.289993, 14.174232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.265244, 17.145561, 14.305904>,  <18.055843, 17.058901, 14.384909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.265244, 17.145561, 14.305904>,  <18.614244, 17.289993, 14.174232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265244, 17.145561, 14.305904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330985, 0.058825, 0.941801,
		-0.359431, 0.930677, 0.068188,
		-0.872501, -0.361081, 0.329183,
		18.003492, 17.037237, 14.404659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456978, 17.699396, 14.729446>,  <18.614244, 17.289993, 14.174232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456978, 17.699396, 14.729446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.259281, 17.353088, 14.760857>,  <18.140663, 17.145304, 14.779703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.259281, 17.353088, 14.760857>,  <18.456978, 17.699396, 14.729446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259281, 17.353088, 14.760857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251039, -0.055660, 0.966375,
		-0.832288, 0.497337, 0.244852,
		-0.494243, -0.865770, 0.078526,
		18.111008, 17.093357, 14.784414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206673, 17.746195, 15.427964>,  <18.456978, 17.699396, 14.729446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206673, 17.746195, 15.427964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.083378, 17.374081, 15.348412>,  <18.009399, 17.150812, 15.300680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.083378, 17.374081, 15.348412>,  <18.206673, 17.746195, 15.427964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083378, 17.374081, 15.348412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042763, -0.222400, 0.974017,
		-0.950347, 0.291726, 0.108334,
		-0.308240, -0.930287, -0.198882,
		17.990906, 17.094994, 15.288747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524195, 17.531630, 15.741048>,  <18.206673, 17.746195, 15.427964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524195, 17.531630, 15.741048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.776611, 17.223461, 15.704737>,  <17.928061, 17.038561, 15.682950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.776611, 17.223461, 15.704737>,  <17.524195, 17.531630, 15.741048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776611, 17.223461, 15.704737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030561, -0.092238, 0.995268,
		-0.775148, -0.630828, -0.034661,
		0.631039, -0.770421, -0.090777,
		17.965923, 16.992334, 15.677504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294300, 17.048763, 16.113091>,  <17.524195, 17.531630, 15.741048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294300, 17.048763, 16.113091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.674667, 16.937916, 16.058006>,  <17.902887, 16.871407, 16.024956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.674667, 16.937916, 16.058006>,  <17.294300, 17.048763, 16.113091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674667, 16.937916, 16.058006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068727, -0.244769, 0.967143,
		-0.301723, -0.929135, -0.213709,
		0.950915, -0.277122, -0.137709,
		17.959942, 16.854780, 16.016693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274191, 16.495991, 16.483700>,  <17.294300, 17.048763, 16.113091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274191, 16.495991, 16.483700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.659130, 16.590195, 16.429411>,  <17.890095, 16.646717, 16.396837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.659130, 16.590195, 16.429411>,  <17.274191, 16.495991, 16.483700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659130, 16.590195, 16.429411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194735, -0.248999, 0.948724,
		0.189638, -0.939433, -0.285486,
		0.962349, 0.235508, -0.135721,
		17.947834, 16.660847, 16.388695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623808, 16.087172, 16.861820>,  <17.274191, 16.495991, 16.483700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623808, 16.087172, 16.861820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.910450, 16.358253, 16.795862>,  <18.082436, 16.520903, 16.756289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.910450, 16.358253, 16.795862>,  <17.623808, 16.087172, 16.861820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.910450, 16.358253, 16.795862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230656, -0.007153, 0.973009,
		0.658234, -0.735298, -0.161442,
		0.716607, 0.677706, -0.164893,
		18.125433, 16.561565, 16.746395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389994, 15.853724, 16.874783>,  <17.623808, 16.087172, 16.861820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389994, 15.853724, 16.874783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.323406, 16.226612, 17.003317>,  <18.283453, 16.450344, 17.080437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.323406, 16.226612, 17.003317>,  <18.389994, 15.853724, 16.874783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323406, 16.226612, 17.003317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187216, -0.290073, 0.938514,
		0.968111, 0.216392, -0.126238,
		-0.166468, 0.932219, 0.321335,
		18.273466, 16.506277, 17.099718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.268681, 16.013035, 17.161667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.030464, 16.314396, 17.273174>,  <18.887533, 16.495213, 17.340078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.030464, 16.314396, 17.273174>,  <19.268681, 16.013035, 17.161667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030464, 16.314396, 17.273174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362561, -0.057584, 0.930179,
		0.716853, 0.655031, -0.238861,
		-0.595542, 0.753404, 0.278768,
		18.851801, 16.540417, 17.356804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789492, 16.561131, 17.498270>,  <19.268681, 16.013035, 17.161667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789492, 16.561131, 17.498270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410965, 16.590172, 17.624266>,  <19.183849, 16.607595, 17.699863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410965, 16.590172, 17.624266>,  <19.789492, 16.561131, 17.498270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410965, 16.590172, 17.624266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322251, 0.135503, 0.936906,
		0.025340, 0.988113, -0.151624,
		-0.946315, 0.072602, 0.314987,
		19.127071, 16.611952, 17.718761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.851627, 17.192657, 17.900841>,  <19.789492, 16.561131, 17.498270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.851627, 17.192657, 17.900841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.519463, 16.999329, 18.011703>,  <19.320164, 16.883331, 18.078220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.519463, 16.999329, 18.011703>,  <19.851627, 17.192657, 17.900841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519463, 16.999329, 18.011703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298430, 0.034216, 0.953818,
		-0.470485, 0.874774, 0.115824,
		-0.830411, -0.483323, 0.277157,
		19.270340, 16.854332, 18.094851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632801, 17.498163, 18.520596>,  <19.851627, 17.192657, 17.900841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632801, 17.498163, 18.520596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.465256, 17.134953, 18.523247>,  <19.364729, 16.917027, 18.524837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.465256, 17.134953, 18.523247>,  <19.632801, 17.498163, 18.520596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465256, 17.134953, 18.523247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185594, -0.078460, 0.979489,
		-0.888882, 0.411501, 0.201388,
		-0.418861, -0.908026, 0.006630,
		19.339598, 16.862545, 18.525236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094109, 17.529444, 19.037550>,  <19.632801, 17.498163, 18.520596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094109, 17.529444, 19.037550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.206886, 17.148441, 18.991520>,  <19.274553, 16.919840, 18.963902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.206886, 17.148441, 18.991520>,  <19.094109, 17.529444, 19.037550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206886, 17.148441, 18.991520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311791, -0.022469, 0.949885,
		-0.907356, -0.303693, 0.290648,
		0.281942, -0.952505, -0.115077,
		19.291470, 16.862690, 18.956997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947380, 17.195324, 19.587799>,  <19.094109, 17.529444, 19.037550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947380, 17.195324, 19.587799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.212933, 16.926338, 19.456923>,  <19.372265, 16.764948, 19.378397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.212933, 16.926338, 19.456923>,  <18.947380, 17.195324, 19.587799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212933, 16.926338, 19.456923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399639, -0.050788, 0.915264,
		-0.632098, -0.738387, 0.235025,
		0.663883, -0.672462, -0.327191,
		19.412098, 16.724600, 19.358765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026636, 16.810469, 20.086832>,  <18.947380, 17.195324, 19.587799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026636, 16.810469, 20.086832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.343250, 16.695152, 19.871292>,  <19.533218, 16.625963, 19.741968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.343250, 16.695152, 19.871292>,  <19.026636, 16.810469, 20.086832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343250, 16.695152, 19.871292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439116, -0.344930, 0.829579,
		-0.425026, -0.893259, -0.146431,
		0.791536, -0.288292, -0.538848,
		19.580711, 16.608665, 19.709639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135860, 16.118444, 20.223766>,  <19.026636, 16.810469, 20.086832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135860, 16.118444, 20.223766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.481270, 16.257824, 20.077938>,  <19.688515, 16.341452, 19.990440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.481270, 16.257824, 20.077938>,  <19.135860, 16.118444, 20.223766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481270, 16.257824, 20.077938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481093, -0.352352, 0.802744,
		0.151259, -0.868580, -0.471901,
		0.863522, 0.348450, -0.364571,
		19.740326, 16.362358, 19.968567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626129, 15.554445, 20.357010>,  <19.135860, 16.118444, 20.223766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626129, 15.554445, 20.357010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.834911, 15.893963, 20.323275>,  <19.960180, 16.097673, 20.303034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.834911, 15.893963, 20.323275>,  <19.626129, 15.554445, 20.357010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834911, 15.893963, 20.323275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446011, -0.187305, 0.875209,
		0.727074, -0.494436, -0.476336,
		0.521955, 0.848793, -0.084339,
		19.991497, 16.148602, 20.297974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319414, 15.351770, 20.428623>,  <19.626129, 15.554445, 20.357010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319414, 15.351770, 20.428623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.340744, 15.745586, 20.495361>,  <20.353542, 15.981876, 20.535404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.340744, 15.745586, 20.495361>,  <20.319414, 15.351770, 20.428623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340744, 15.745586, 20.495361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331442, -0.175063, 0.927092,
		0.941968, 0.005864, -0.335653,
		0.053324, 0.984540, 0.166847,
		20.356741, 16.040949, 20.545416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027929, 15.520511, 20.683868>,  <20.319414, 15.351770, 20.428623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027929, 15.520511, 20.683868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.781868, 15.810501, 20.807800>,  <20.634232, 15.984495, 20.882160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.781868, 15.810501, 20.807800>,  <21.027929, 15.520511, 20.683868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.781868, 15.810501, 20.807800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417059, -0.034268, 0.908233,
		0.669064, 0.687922, -0.281277,
		-0.615155, 0.724975, 0.309831,
		20.597321, 16.027994, 20.900749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414286, 15.803381, 21.213037>,  <21.027929, 15.520511, 20.683868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414286, 15.803381, 21.213037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.067570, 15.981773, 21.302280>,  <20.859541, 16.088810, 21.355825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.067570, 15.981773, 21.302280>,  <21.414286, 15.803381, 21.213037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067570, 15.981773, 21.302280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362029, 0.255102, 0.896581,
		0.342944, 0.857918, -0.382579,
		-0.866789, 0.445982, 0.223105,
		20.807533, 16.115568, 21.369211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535912, 16.473825, 21.570044>,  <21.414286, 15.803381, 21.213037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535912, 16.473825, 21.570044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.151306, 16.394394, 21.645996>,  <20.920542, 16.346735, 21.691566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.151306, 16.394394, 21.645996>,  <21.535912, 16.473825, 21.570044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.151306, 16.394394, 21.645996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119854, 0.318720, 0.940241,
		-0.247232, 0.926813, -0.282654,
		-0.961515, -0.198581, 0.189880,
		20.862852, 16.334820, 21.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354916, 17.008844, 22.068800>,  <21.535912, 16.473825, 21.570044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354916, 17.008844, 22.068800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.061768, 16.746002, 22.139351>,  <20.885878, 16.588297, 22.181681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.061768, 16.746002, 22.139351>,  <21.354916, 17.008844, 22.068800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.061768, 16.746002, 22.139351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030651, 0.227089, 0.973392,
		-0.679676, 0.718778, -0.146286,
		-0.732872, -0.657107, 0.176378,
		20.841906, 16.548870, 22.192265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.851543, 17.375193, 22.511574>,  <21.354916, 17.008844, 22.068800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.851543, 17.375193, 22.511574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.772232, 16.985779, 22.557039>,  <20.724646, 16.752131, 22.584318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.772232, 16.985779, 22.557039>,  <20.851543, 17.375193, 22.511574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772232, 16.985779, 22.557039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302053, 0.171016, 0.937826,
		-0.932443, 0.151617, -0.327968,
		-0.198278, -0.973533, 0.113666,
		20.712749, 16.693720, 22.591139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229752, 17.352810, 22.866961>,  <20.851543, 17.375193, 22.511574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229752, 17.352810, 22.866961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.388706, 16.990330, 22.924768>,  <20.484079, 16.772842, 22.959454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.388706, 16.990330, 22.924768>,  <20.229752, 17.352810, 22.866961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388706, 16.990330, 22.924768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267425, 0.036289, 0.962895,
		-0.877819, -0.421291, -0.227920,
		0.397388, -0.906199, 0.144518,
		20.507923, 16.718470, 22.968124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.741890, 16.895975, 23.268982>,  <20.229752, 17.352810, 22.866961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.741890, 16.895975, 23.268982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.107185, 16.742893, 23.324888>,  <20.326363, 16.651045, 23.358431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.107185, 16.742893, 23.324888>,  <19.741890, 16.895975, 23.268982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.107185, 16.742893, 23.324888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163437, -0.029880, 0.986101,
		-0.373208, -0.923388, -0.089836,
		0.913238, -0.382703, 0.139764,
		20.381157, 16.628082, 23.366817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752464, 16.294235, 23.664740>,  <19.741890, 16.895975, 23.268982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752464, 16.294235, 23.664740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.134125, 16.400688, 23.719542>,  <20.363121, 16.464560, 23.752422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.134125, 16.400688, 23.719542>,  <19.752464, 16.294235, 23.664740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134125, 16.400688, 23.719542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141532, -0.002191, 0.989931,
		0.263755, -0.963934, 0.035576,
		0.954150, 0.266134, 0.137006,
		20.420370, 16.480528, 23.760643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085796, 15.841904, 24.143270>,  <19.752464, 16.294235, 23.664740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085796, 15.841904, 24.143270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332958, 16.155712, 24.164137>,  <20.481255, 16.343996, 24.176657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332958, 16.155712, 24.164137>,  <20.085796, 15.841904, 24.143270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332958, 16.155712, 24.164137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121547, 0.029758, 0.992140,
		0.776801, -0.619389, 0.113744,
		0.617905, 0.784520, 0.052168,
		20.518330, 16.391068, 24.179787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.446899, 15.745713, 24.723946>,  <20.085796, 15.841904, 24.143270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.446899, 15.745713, 24.723946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.503323, 16.135746, 24.655457>,  <20.537176, 16.369766, 24.614363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.503323, 16.135746, 24.655457>,  <20.446899, 15.745713, 24.723946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503323, 16.135746, 24.655457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054913, 0.164979, 0.984767,
		0.988477, -0.148312, -0.030273,
		0.141059, 0.975082, -0.171222,
		20.545641, 16.428270, 24.604090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961315, 15.917749, 25.158390>,  <20.446899, 15.745713, 24.723946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961315, 15.917749, 25.158390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.776310, 16.266090, 25.091820>,  <20.665306, 16.475096, 25.051878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.776310, 16.266090, 25.091820>,  <20.961315, 15.917749, 25.158390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776310, 16.266090, 25.091820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001414, 0.186986, 0.982362,
		0.886611, 0.454592, -0.085252,
		-0.462514, 0.870852, -0.166426,
		20.637556, 16.527346, 25.041891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336962, 16.446753, 25.417616>,  <20.961315, 15.917749, 25.158390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336962, 16.446753, 25.417616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.984188, 16.633511, 25.391691>,  <20.772524, 16.745565, 25.376137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.984188, 16.633511, 25.391691>,  <21.336962, 16.446753, 25.417616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.984188, 16.633511, 25.391691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070257, 0.266161, 0.961365,
		0.466107, 0.843308, -0.267539,
		-0.881935, 0.466895, -0.064811,
		20.719608, 16.773579, 25.372248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474667, 17.078939, 25.650724>,  <21.336962, 16.446753, 25.417616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474667, 17.078939, 25.650724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.085003, 17.008980, 25.707888>,  <20.851204, 16.967005, 25.742186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.085003, 17.008980, 25.707888>,  <21.474667, 17.078939, 25.650724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.085003, 17.008980, 25.707888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079123, 0.328368, 0.941230,
		-0.211545, 0.928216, -0.306045,
		-0.974160, -0.174897, 0.142908,
		20.792755, 16.956511, 25.750761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156115, 17.692839, 25.810509>,  <21.474667, 17.078939, 25.650724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156115, 17.692839, 25.810509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.003544, 17.370846, 25.992287>,  <20.912003, 17.177650, 26.101355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.003544, 17.370846, 25.992287>,  <21.156115, 17.692839, 25.810509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.003544, 17.370846, 25.992287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099771, 0.452891, 0.885966,
		-0.919000, 0.383270, -0.092430,
		-0.381425, -0.804980, 0.454446,
		20.889116, 17.129353, 26.128620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.646950, 18.287056, 25.733280>,  <21.156115, 17.692839, 25.810509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.646950, 18.287056, 25.733280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.008514, 18.454479, 25.768513>,  <22.225452, 18.554934, 25.789652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.008514, 18.454479, 25.768513>,  <21.646950, 18.287056, 25.733280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008514, 18.454479, 25.768513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093729, 0.007092, -0.995573,
		-0.417328, 0.908163, -0.032820,
		0.903910, 0.418556, 0.088081,
		22.279688, 18.580046, 25.794937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647457, 18.845383, 25.315483>,  <21.646950, 18.287056, 25.733280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647457, 18.845383, 25.315483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.024223, 18.721149, 25.366608>,  <22.250282, 18.646610, 25.397282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.024223, 18.721149, 25.366608>,  <21.647457, 18.845383, 25.315483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024223, 18.721149, 25.366608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120827, -0.041709, -0.991797,
		0.313365, 0.949631, -0.001759,
		0.941915, -0.310582, 0.127811,
		22.306797, 18.627975, 25.404951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.985929, 19.194231, 24.775063>,  <21.647457, 18.845383, 25.315483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.985929, 19.194231, 24.775063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.275768, 18.928154, 24.847145>,  <22.449671, 18.768507, 24.890394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.275768, 18.928154, 24.847145>,  <21.985929, 19.194231, 24.775063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275768, 18.928154, 24.847145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302642, 0.072204, -0.950365,
		0.619166, 0.743171, 0.253635,
		0.724598, -0.665194, 0.180209,
		22.493147, 18.728596, 24.901207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.601238, 19.474815, 24.477999>,  <21.985929, 19.194231, 24.775063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.601238, 19.474815, 24.477999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.674664, 19.083282, 24.514204>,  <22.718718, 18.848362, 24.535927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.674664, 19.083282, 24.514204>,  <22.601238, 19.474815, 24.477999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.674664, 19.083282, 24.514204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262927, -0.039831, -0.963993,
		0.947193, 0.200751, 0.250050,
		0.183562, -0.978832, 0.090511,
		22.729733, 18.789633, 24.541357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166357, 19.390543, 24.035051>,  <22.601238, 19.474815, 24.477999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166357, 19.390543, 24.035051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.029816, 19.016731, 24.075312>,  <22.947891, 18.792444, 24.099468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.029816, 19.016731, 24.075312>,  <23.166357, 19.390543, 24.035051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.029816, 19.016731, 24.075312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141109, -0.156823, -0.977494,
		0.929283, -0.319467, 0.185403,
		-0.341352, -0.934531, 0.100653,
		22.927410, 18.736372, 24.105507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.576601, 19.008404, 23.654552>,  <23.166357, 19.390543, 24.035051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.576601, 19.008404, 23.654552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.235813, 18.800224, 23.677450>,  <23.031340, 18.675316, 23.691189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.235813, 18.800224, 23.677450>,  <23.576601, 19.008404, 23.654552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.235813, 18.800224, 23.677450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053805, -0.195775, -0.979172,
		0.520818, -0.831145, 0.194798,
		-0.851970, -0.520451, 0.057243,
		22.980223, 18.644089, 23.694624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.704861, 18.351408, 23.290548>,  <23.576601, 19.008404, 23.654552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.704861, 18.351408, 23.290548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.307415, 18.392040, 23.310188>,  <23.068947, 18.416420, 23.321972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.307415, 18.392040, 23.310188>,  <23.704861, 18.351408, 23.290548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.307415, 18.392040, 23.310188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066203, -0.172519, -0.982779,
		-0.091356, -0.979755, 0.178143,
		-0.993615, 0.101577, 0.049102,
		23.009331, 18.422514, 23.324919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.480429, 17.767384, 22.863354>,  <23.704861, 18.351408, 23.290548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.480429, 17.767384, 22.863354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.185234, 18.034302, 22.903536>,  <23.008118, 18.194452, 22.927645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.185234, 18.034302, 22.903536>,  <23.480429, 17.767384, 22.863354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185234, 18.034302, 22.903536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250002, -0.132089, -0.959193,
		-0.626795, -0.732987, 0.264305,
		-0.737988, 0.667295, 0.100456,
		22.963837, 18.234489, 22.933672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.874638, 17.472561, 22.547394>,  <23.480429, 17.767384, 22.863354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.874638, 17.472561, 22.547394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.846088, 17.871475, 22.554636>,  <22.828959, 18.110825, 22.558981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.846088, 17.871475, 22.554636>,  <22.874638, 17.472561, 22.547394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.846088, 17.871475, 22.554636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246738, -0.000066, -0.969082,
		-0.966451, -0.073632, 0.246073,
		-0.071371, 0.997286, 0.018104,
		22.824677, 18.170660, 22.560068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130190, 17.642902, 22.267801>,  <22.874638, 17.472561, 22.547394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130190, 17.642902, 22.267801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.344288, 17.976151, 22.212057>,  <22.472748, 18.176100, 22.178612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.344288, 17.976151, 22.212057>,  <22.130190, 17.642902, 22.267801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344288, 17.976151, 22.212057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394735, 0.100840, -0.913244,
		-0.746791, 0.543820, 0.382837,
		0.535246, 0.833121, -0.139358,
		22.504862, 18.226088, 22.170250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678097, 18.082748, 21.908218>,  <22.130190, 17.642902, 22.267801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678097, 18.082748, 21.908218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.043682, 18.225582, 21.831112>,  <22.263033, 18.311283, 21.784849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.043682, 18.225582, 21.831112>,  <21.678097, 18.082748, 21.908218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.043682, 18.225582, 21.831112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222574, 0.043930, -0.973926,
		-0.339307, 0.933038, 0.119628,
		0.913965, 0.357086, -0.192764,
		22.317871, 18.332708, 21.773283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561449, 18.351643, 21.407961>,  <21.678097, 18.082748, 21.908218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561449, 18.351643, 21.407961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.960197, 18.352371, 21.376347>,  <22.199446, 18.352808, 21.357378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.960197, 18.352371, 21.376347>,  <21.561449, 18.351643, 21.407961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.960197, 18.352371, 21.376347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078976, 0.068408, -0.994527,
		0.003595, 0.997656, 0.068338,
		0.996870, 0.001822, -0.079037,
		22.259258, 18.352919, 21.352636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.690872, 18.947317, 21.017317>,  <21.561449, 18.351643, 21.407961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.690872, 18.947317, 21.017317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.006142, 18.707481, 20.961781>,  <22.195303, 18.563580, 20.928459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.006142, 18.707481, 20.961781>,  <21.690872, 18.947317, 21.017317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006142, 18.707481, 20.961781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295917, -0.171390, -0.939712,
		0.539647, 0.781739, -0.312514,
		0.788172, -0.599591, -0.138840,
		22.242594, 18.527605, 20.920128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.982351, 19.178602, 20.493366>,  <21.690872, 18.947317, 21.017317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.982351, 19.178602, 20.493366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.156776, 18.819256, 20.514490>,  <22.261431, 18.603647, 20.527164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.156776, 18.819256, 20.514490>,  <21.982351, 19.178602, 20.493366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156776, 18.819256, 20.514490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056255, -0.085779, -0.994725,
		0.898157, 0.430790, -0.087943,
		0.436061, -0.898366, 0.052809,
		22.287594, 18.549746, 20.530333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.511372, 19.119267, 19.919575>,  <21.982351, 19.178602, 20.493366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.511372, 19.119267, 19.919575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.390427, 18.755730, 20.034523>,  <22.317860, 18.537607, 20.103491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.390427, 18.755730, 20.034523>,  <22.511372, 19.119267, 19.919575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.390427, 18.755730, 20.034523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135990, -0.339526, -0.930714,
		0.943443, -0.242332, 0.226253,
		-0.302360, -0.908844, 0.287368,
		22.299719, 18.483076, 20.120733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931673, 18.631935, 19.675451>,  <22.511372, 19.119267, 19.919575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931673, 18.631935, 19.675451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.614494, 18.395615, 19.735039>,  <22.424187, 18.253822, 19.770790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.614494, 18.395615, 19.735039>,  <22.931673, 18.631935, 19.675451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.614494, 18.395615, 19.735039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032078, -0.284632, -0.958100,
		0.608448, -0.754943, 0.244650,
		-0.792946, -0.590802, 0.148966,
		22.376610, 18.218374, 19.779728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.098894, 18.095543, 19.333891>,  <22.931673, 18.631935, 19.675451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.098894, 18.095543, 19.333891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.711555, 18.005070, 19.376125>,  <22.479153, 17.950787, 19.401466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.711555, 18.005070, 19.376125>,  <23.098894, 18.095543, 19.333891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.711555, 18.005070, 19.376125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028647, -0.520904, -0.853134,
		0.247965, -0.823104, 0.510895,
		-0.968345, -0.226183, 0.105587,
		22.421051, 17.937216, 19.407801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999403, 17.442841, 18.994703>,  <23.098894, 18.095543, 19.333891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999403, 17.442841, 18.994703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.617771, 17.562107, 19.006243>,  <22.388792, 17.633667, 19.013166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.617771, 17.562107, 19.006243>,  <22.999403, 17.442841, 18.994703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.617771, 17.562107, 19.006243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117289, -0.283203, -0.951861,
		-0.275642, -0.911533, 0.305170,
		-0.954078, 0.298166, 0.028851,
		22.331549, 17.651558, 19.014898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590004, 16.869423, 18.647060>,  <22.999403, 17.442841, 18.994703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590004, 16.869423, 18.647060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.395832, 17.219059, 18.639833>,  <22.279329, 17.428841, 18.635498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.395832, 17.219059, 18.639833>,  <22.590004, 16.869423, 18.647060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395832, 17.219059, 18.639833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190439, -0.125883, -0.973595,
		-0.853283, -0.469170, 0.227568,
		-0.485428, 0.874090, -0.018065,
		22.250204, 17.481285, 18.634415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.955406, 16.772293, 18.282038>,  <22.590004, 16.869423, 18.647060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.955406, 16.772293, 18.282038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.982334, 17.170303, 18.252672>,  <21.998491, 17.409109, 18.235052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.982334, 17.170303, 18.252672>,  <21.955406, 16.772293, 18.282038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.982334, 17.170303, 18.252672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382169, -0.042251, -0.923126,
		-0.921637, 0.090203, 0.377424,
		0.067322, 0.995027, -0.073413,
		22.002531, 17.468811, 18.230648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.282997, 16.031898, 14.881808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.497101, 16.369762, 14.879206>,  <17.625563, 16.572481, 14.877644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.497101, 16.369762, 14.879206>,  <17.282997, 16.031898, 14.881808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497101, 16.369762, 14.879206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414955, 0.256230, -0.873017,
		-0.735737, 0.469992, 0.487647,
		0.535261, 0.844662, -0.006507,
		17.657679, 16.623161, 14.877254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778292, 16.607786, 14.711707>,  <17.282997, 16.031898, 14.881808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778292, 16.607786, 14.711707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155216, 16.711544, 14.627079>,  <17.381371, 16.773798, 14.576303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155216, 16.711544, 14.627079>,  <16.778292, 16.607786, 14.711707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155216, 16.711544, 14.627079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316747, 0.486583, -0.814192,
		-0.108249, 0.834238, 0.540675,
		0.942313, 0.259392, -0.211570,
		17.437910, 16.789362, 14.563608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688385, 17.252316, 14.461526>,  <16.778292, 16.607786, 14.711707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688385, 17.252316, 14.461526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.047848, 17.127319, 14.338392>,  <17.263525, 17.052322, 14.264512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.047848, 17.127319, 14.338392>,  <16.688385, 17.252316, 14.461526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047848, 17.127319, 14.338392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187575, 0.360617, -0.913658,
		0.396520, 0.878808, 0.265456,
		0.898659, -0.312491, -0.307835,
		17.317446, 17.033571, 14.246042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909796, 17.830147, 14.143021>,  <16.688385, 17.252316, 14.461526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909796, 17.830147, 14.143021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.123718, 17.523808, 14.000217>,  <17.252071, 17.340004, 13.914536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.123718, 17.523808, 14.000217>,  <16.909796, 17.830147, 14.143021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123718, 17.523808, 14.000217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055292, 0.389883, -0.919203,
		0.843163, 0.511337, 0.166168,
		0.534808, -0.765850, -0.357008,
		17.284161, 17.294052, 13.893115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348818, 18.152475, 13.733347>,  <16.909796, 17.830147, 14.143021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348818, 18.152475, 13.733347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.322289, 17.770451, 13.617794>,  <17.306372, 17.541235, 13.548462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.322289, 17.770451, 13.617794>,  <17.348818, 18.152475, 13.733347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322289, 17.770451, 13.617794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135914, 0.295469, -0.945635,
		0.988498, -0.023454, -0.149403,
		-0.066323, -0.955064, -0.288883,
		17.302391, 17.483931, 13.531129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590700, 18.198696, 13.024740>,  <17.348818, 18.152475, 13.733347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.590700, 18.198696, 13.024740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.416897, 17.841099, 13.068518>,  <17.312614, 17.626541, 13.094784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.416897, 17.841099, 13.068518>,  <17.590700, 18.198696, 13.024740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416897, 17.841099, 13.068518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282223, 0.019750, -0.959145,
		0.855308, -0.447646, -0.260887,
		-0.434510, -0.893993, 0.109444,
		17.286545, 17.572901, 13.101351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.892778, 17.801933, 12.573714>,  <17.590700, 18.198696, 13.024740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.892778, 17.801933, 12.573714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.548996, 17.610123, 12.644586>,  <17.342726, 17.495037, 12.687108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.548996, 17.610123, 12.644586>,  <17.892778, 17.801933, 12.573714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548996, 17.610123, 12.644586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200049, -0.003466, -0.979780,
		0.470443, -0.877521, -0.092949,
		-0.859455, -0.479525, 0.177178,
		17.291159, 17.466265, 12.697739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777271, 17.191225, 12.045318>,  <17.892778, 17.801933, 12.573714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777271, 17.191225, 12.045318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.420235, 17.233292, 12.220689>,  <17.206013, 17.258532, 12.325912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.420235, 17.233292, 12.220689>,  <17.777271, 17.191225, 12.045318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.420235, 17.233292, 12.220689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447111, -0.081261, -0.890779,
		-0.058047, -0.991130, 0.119552,
		-0.892593, 0.105160, 0.438428,
		17.152456, 17.264841, 12.352217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268505, 16.706005, 11.767505>,  <17.777271, 17.191225, 12.045318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268505, 16.706005, 11.767505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.053257, 17.025444, 11.875331>,  <16.924109, 17.217108, 11.940027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.053257, 17.025444, 11.875331>,  <17.268505, 16.706005, 11.767505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053257, 17.025444, 11.875331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524122, -0.066578, -0.849037,
		-0.660093, -0.598170, 0.454390,
		-0.538121, 0.798599, 0.269566,
		16.891821, 17.265024, 11.956201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704477, 16.730057, 11.313869>,  <17.268505, 16.706005, 11.767505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704477, 16.730057, 11.313869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.649200, 17.094753, 11.468599>,  <16.616034, 17.313570, 11.561438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.649200, 17.094753, 11.468599>,  <16.704477, 16.730057, 11.313869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649200, 17.094753, 11.468599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464306, 0.285354, -0.838447,
		-0.874827, -0.295473, 0.383892,
		-0.138193, 0.911739, 0.386826,
		16.607742, 17.368275, 11.584647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935215, 16.893145, 11.201306>,  <16.704477, 16.730057, 11.313869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935215, 16.893145, 11.201306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.162781, 17.220978, 11.228503>,  <16.299320, 17.417677, 11.244822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.162781, 17.220978, 11.228503>,  <15.935215, 16.893145, 11.201306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.162781, 17.220978, 11.228503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525517, 0.425890, -0.736512,
		-0.632588, 0.383281, 0.672999,
		0.568915, 0.819581, 0.067992,
		16.333456, 17.466852, 11.248900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458162, 17.320410, 11.183288>,  <15.935215, 16.893145, 11.201306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458162, 17.320410, 11.183288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.789666, 17.530624, 11.106380>,  <15.988568, 17.656754, 11.060234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.789666, 17.530624, 11.106380>,  <15.458162, 17.320410, 11.183288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789666, 17.530624, 11.106380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493514, 0.524404, -0.693862,
		-0.263823, 0.669933, 0.693965,
		0.828759, 0.525538, -0.192271,
		16.038294, 17.688286, 11.048698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293141, 18.002951, 11.132565>,  <15.458162, 17.320410, 11.183288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293141, 18.002951, 11.132565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.618829, 17.944252, 10.907882>,  <15.814241, 17.909033, 10.773072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.618829, 17.944252, 10.907882>,  <15.293141, 18.002951, 11.132565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618829, 17.944252, 10.907882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380210, 0.596388, -0.706938,
		0.438735, 0.789169, 0.429795,
		0.814218, -0.146746, -0.561706,
		15.863094, 17.900229, 10.739369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748021, 18.689444, 10.932285>,  <15.293141, 18.002951, 11.132565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748021, 18.689444, 10.932285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.764388, 18.394173, 10.662939>,  <15.774208, 18.217010, 10.501331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.764388, 18.394173, 10.662939>,  <15.748021, 18.689444, 10.932285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.764388, 18.394173, 10.662939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367232, 0.615651, -0.697220,
		0.929229, 0.275810, -0.245890,
		0.040918, -0.738176, -0.673366,
		15.776664, 18.172720, 10.460929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213352, 18.682539, 10.294030>,  <15.748021, 18.689444, 10.932285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213352, 18.682539, 10.294030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.196762, 19.075024, 10.218659>,  <16.186808, 19.310514, 10.173437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.196762, 19.075024, 10.218659>,  <16.213352, 18.682539, 10.294030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196762, 19.075024, 10.218659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009442, 0.188196, 0.982086,
		0.999095, 0.042512, 0.001459,
		-0.041476, 0.981211, -0.188427,
		16.184319, 19.369387, 10.162131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744801, 19.110703, 10.647519>,  <16.213352, 18.682539, 10.294030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744801, 19.110703, 10.647519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.494247, 19.410728, 10.562626>,  <16.343916, 19.590744, 10.511690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.494247, 19.410728, 10.562626>,  <16.744801, 19.110703, 10.647519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494247, 19.410728, 10.562626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066673, 0.322819, 0.944110,
		0.776658, 0.577225, -0.252218,
		-0.626384, 0.750067, -0.212234,
		16.306332, 19.635748, 10.498956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.150793, 19.680559, 10.824795>,  <16.744801, 19.110703, 10.647519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.150793, 19.680559, 10.824795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.765171, 19.786587, 10.832103>,  <16.533798, 19.850203, 10.836488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.765171, 19.786587, 10.832103>,  <17.150793, 19.680559, 10.824795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765171, 19.786587, 10.832103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059270, 0.147516, 0.987282,
		0.259001, 0.952879, -0.157925,
		-0.964057, 0.265067, 0.018270,
		16.475954, 19.866106, 10.837584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039200, 20.360750, 11.077435>,  <17.150793, 19.680559, 10.824795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039200, 20.360750, 11.077435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.679535, 20.199223, 11.144891>,  <16.463736, 20.102306, 11.185364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.679535, 20.199223, 11.144891>,  <17.039200, 20.360750, 11.077435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679535, 20.199223, 11.144891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049529, 0.476787, 0.877622,
		-0.434803, 0.780773, -0.448709,
		-0.899162, -0.403817, 0.168638,
		16.409786, 20.078077, 11.195482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782272, 20.845116, 11.507945>,  <17.039200, 20.360750, 11.077435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782272, 20.845116, 11.507945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.506268, 20.561264, 11.564958>,  <16.340666, 20.390953, 11.599165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.506268, 20.561264, 11.564958>,  <16.782272, 20.845116, 11.507945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506268, 20.561264, 11.564958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167875, 0.348455, 0.922170,
		-0.704062, 0.612380, -0.359566,
		-0.690011, -0.709627, 0.142531,
		16.299265, 20.348375, 11.607717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088055, 21.120419, 11.712900>,  <16.782272, 20.845116, 11.507945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088055, 21.120419, 11.712900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.086723, 20.735561, 11.821913>,  <16.085924, 20.504648, 11.887321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.086723, 20.735561, 11.821913>,  <16.088055, 21.120419, 11.712900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086723, 20.735561, 11.821913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303482, 0.260652, 0.916493,
		-0.952831, -0.079656, -0.292860,
		-0.003330, -0.962141, 0.272532,
		16.085724, 20.446918, 11.903672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549479, 21.028177, 12.141062>,  <16.088055, 21.120419, 11.712900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549479, 21.028177, 12.141062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.759896, 20.695496, 12.212109>,  <15.886147, 20.495886, 12.254737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.759896, 20.695496, 12.212109>,  <15.549479, 21.028177, 12.141062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759896, 20.695496, 12.212109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112876, 0.138721, 0.983878,
		-0.842935, -0.537609, -0.020907,
		0.526042, -0.831705, 0.177616,
		15.917709, 20.445984, 12.265393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212245, 20.576605, 12.565168>,  <15.549479, 21.028177, 12.141062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.212245, 20.576605, 12.565168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.586375, 20.451679, 12.631653>,  <15.810853, 20.376724, 12.671543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.586375, 20.451679, 12.631653>,  <15.212245, 20.576605, 12.565168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586375, 20.451679, 12.631653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195119, -0.063479, 0.978723,
		-0.295119, -0.947855, -0.120312,
		0.935325, -0.312315, 0.166210,
		15.866973, 20.357985, 12.681516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227592, 20.137268, 13.145845>,  <15.212245, 20.576605, 12.565168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227592, 20.137268, 13.145845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.598992, 20.282730, 13.115801>,  <15.821833, 20.370008, 13.097775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.598992, 20.282730, 13.115801>,  <15.227592, 20.137268, 13.145845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598992, 20.282730, 13.115801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037348, 0.109789, 0.993253,
		0.369450, -0.925040, 0.088357,
		0.928500, 0.363657, -0.075110,
		15.877542, 20.391827, 13.093267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723594, 19.674343, 13.560145>,  <15.227592, 20.137268, 13.145845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723594, 19.674343, 13.560145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.876544, 20.041580, 13.518394>,  <15.968314, 20.261923, 13.493343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.876544, 20.041580, 13.518394>,  <15.723594, 19.674343, 13.560145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876544, 20.041580, 13.518394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158206, 0.046244, 0.986323,
		0.910362, -0.393660, -0.127566,
		0.382377, 0.918092, -0.104378,
		15.991257, 20.317007, 13.487082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270411, 19.579788, 14.069116>,  <15.723594, 19.674343, 13.560145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270411, 19.579788, 14.069116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.238136, 19.973293, 14.004995>,  <16.218773, 20.209396, 13.966523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.238136, 19.973293, 14.004995>,  <16.270411, 19.579788, 14.069116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238136, 19.973293, 14.004995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181215, 0.172623, 0.968175,
		0.980128, 0.049068, -0.192201,
		-0.080685, 0.983765, -0.160300,
		16.213930, 20.268423, 13.956905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815514, 19.884144, 14.427099>,  <16.270411, 19.579788, 14.069116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815514, 19.884144, 14.427099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.571266, 20.194904, 14.365694>,  <16.424717, 20.381361, 14.328851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.571266, 20.194904, 14.365694>,  <16.815514, 19.884144, 14.427099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.571266, 20.194904, 14.365694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183454, 0.327346, 0.926925,
		0.770381, 0.537837, -0.342410,
		-0.610621, 0.776902, -0.153513,
		16.388081, 20.427975, 14.319640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122814, 20.343077, 14.776203>,  <16.815514, 19.884144, 14.427099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122814, 20.343077, 14.776203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.749809, 20.481533, 14.735003>,  <16.526007, 20.564608, 14.710282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.749809, 20.481533, 14.735003>,  <17.122814, 20.343077, 14.776203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749809, 20.481533, 14.735003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003447, 0.293729, 0.955883,
		0.361124, 0.891017, -0.275099,
		-0.932512, 0.346141, -0.103001,
		16.470057, 20.585375, 14.704103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098442, 21.049801, 15.072678>,  <17.122814, 20.343077, 14.776203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098442, 21.049801, 15.072678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.732052, 20.889420, 15.078640>,  <16.512217, 20.793190, 15.082217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.732052, 20.889420, 15.078640>,  <17.098442, 21.049801, 15.072678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732052, 20.889420, 15.078640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069702, 0.195602, 0.978203,
		-0.395130, 0.894973, -0.207114,
		-0.915977, -0.400954, 0.014907,
		16.457258, 20.769133, 15.083112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981546, 21.785551, 14.894195>,  <17.098442, 21.049801, 15.072678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.981546, 21.785551, 14.894195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.159298, 22.140213, 14.843023>,  <17.265949, 22.353010, 14.812321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.159298, 22.140213, 14.843023>,  <16.981546, 21.785551, 14.894195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159298, 22.140213, 14.843023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028359, -0.128806, -0.991264,
		-0.895389, 0.444127, -0.032094,
		0.444381, 0.886657, -0.127927,
		17.292612, 22.406210, 14.804646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634481, 22.055134, 14.260425>,  <16.981546, 21.785551, 14.894195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634481, 22.055134, 14.260425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.960285, 22.283844, 14.299711>,  <17.155767, 22.421070, 14.323283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.960285, 22.283844, 14.299711>,  <16.634481, 22.055134, 14.260425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960285, 22.283844, 14.299711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079183, 0.058146, -0.995163,
		-0.574723, 0.818346, 0.002085,
		0.814508, 0.571778, 0.098217,
		17.204638, 22.455378, 14.329176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555868, 22.536371, 13.747607>,  <16.634481, 22.055134, 14.260425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555868, 22.536371, 13.747607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.943928, 22.577847, 13.835299>,  <17.176764, 22.602732, 13.887914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.943928, 22.577847, 13.835299>,  <16.555868, 22.536371, 13.747607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943928, 22.577847, 13.835299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209521, 0.096847, -0.972996,
		-0.122122, 0.989883, 0.072231,
		0.970148, 0.103690, 0.219229,
		17.234972, 22.608953, 13.901067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750668, 23.062397, 13.401648>,  <16.555868, 22.536371, 13.747607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750668, 23.062397, 13.401648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.095421, 22.873196, 13.474779>,  <17.302273, 22.759674, 13.518658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.095421, 22.873196, 13.474779>,  <16.750668, 23.062397, 13.401648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.095421, 22.873196, 13.474779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308359, 0.202623, -0.929440,
		0.402584, 0.857445, 0.320492,
		0.861882, -0.473004, 0.182828,
		17.353985, 22.731295, 13.529628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281803, 23.440920, 13.117407>,  <16.750668, 23.062397, 13.401648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281803, 23.440920, 13.117407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.406872, 23.063969, 13.164997>,  <17.481915, 22.837797, 13.193551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.406872, 23.063969, 13.164997>,  <17.281803, 23.440920, 13.117407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406872, 23.063969, 13.164997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211981, -0.052867, -0.975843,
		0.925904, 0.330341, 0.183237,
		0.312674, -0.942380, 0.118976,
		17.500673, 22.781254, 13.200690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882431, 23.376869, 12.718245>,  <17.281803, 23.440920, 13.117407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882431, 23.376869, 12.718245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.774364, 22.994129, 12.761039>,  <17.709524, 22.764484, 12.786716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.774364, 22.994129, 12.761039>,  <17.882431, 23.376869, 12.718245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774364, 22.994129, 12.761039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362168, -0.203951, -0.909526,
		0.892101, -0.206976, 0.401642,
		-0.270165, -0.956851, 0.106985,
		17.693316, 22.707073, 12.793134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394056, 23.023466, 12.461312>,  <17.882431, 23.376869, 12.718245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394056, 23.023466, 12.461312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.088516, 22.765957, 12.443048>,  <17.905191, 22.611450, 12.432090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.088516, 22.765957, 12.443048>,  <18.394056, 23.023466, 12.461312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088516, 22.765957, 12.443048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195451, -0.163320, -0.967019,
		0.615085, -0.747583, 0.250579,
		-0.763852, -0.643775, -0.045660,
		17.859362, 22.572824, 12.429351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643543, 22.466293, 12.000113>,  <18.394056, 23.023466, 12.461312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.643543, 22.466293, 12.000113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.249931, 22.402660, 12.032066>,  <18.013765, 22.364481, 12.051238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.249931, 22.402660, 12.032066>,  <18.643543, 22.466293, 12.000113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249931, 22.402660, 12.032066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058752, -0.133368, -0.989323,
		0.168040, -0.978215, 0.121891,
		-0.984028, -0.159085, 0.079884,
		17.954723, 22.354935, 12.056031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493671, 21.746452, 11.703607>,  <18.643543, 22.466293, 12.000113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493671, 21.746452, 11.703607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.155777, 21.959534, 11.683023>,  <17.953039, 22.087381, 11.670673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.155777, 21.959534, 11.683023>,  <18.493671, 21.746452, 11.703607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155777, 21.959534, 11.683023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056467, -0.184331, -0.981241,
		-0.532195, -0.825985, 0.185791,
		-0.844737, 0.532702, -0.051459,
		17.902355, 22.119345, 11.667585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131279, 21.397179, 11.343356>,  <18.493671, 21.746452, 11.703607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131279, 21.397179, 11.343356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.952183, 21.750916, 11.290489>,  <17.844725, 21.963158, 11.258769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.952183, 21.750916, 11.290489>,  <18.131279, 21.397179, 11.343356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952183, 21.750916, 11.290489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070455, -0.182245, -0.980726,
		-0.891382, -0.429801, 0.143905,
		-0.447743, 0.884340, -0.132168,
		17.817860, 22.016218, 11.250839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433277, 21.380772, 11.049098>,  <18.131279, 21.397179, 11.343356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433277, 21.380772, 11.049098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.603230, 21.726406, 10.941152>,  <17.705202, 21.933786, 10.876384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.603230, 21.726406, 10.941152>,  <17.433277, 21.380772, 11.049098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603230, 21.726406, 10.941152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238426, -0.180768, -0.954188,
		-0.873285, 0.469761, 0.129215,
		0.424883, 0.864087, -0.269866,
		17.730694, 21.985632, 10.860192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922487, 21.705673, 10.640477>,  <17.433277, 21.380772, 11.049098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922487, 21.705673, 10.640477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.282661, 21.863312, 10.566820>,  <17.498766, 21.957895, 10.522626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.282661, 21.863312, 10.566820>,  <16.922487, 21.705673, 10.640477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.282661, 21.863312, 10.566820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238470, 0.093179, -0.966669,
		-0.363802, 0.914334, 0.177881,
		0.900433, 0.394096, -0.184142,
		17.552792, 21.981541, 10.511578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.770050, 22.522131, 18.545662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139755, 22.664307, 18.489943>,  <17.361578, 22.749613, 18.456511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139755, 22.664307, 18.489943>,  <16.770050, 22.522131, 18.545662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139755, 22.664307, 18.489943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228230, 0.221959, -0.947969,
		-0.306027, 0.907963, 0.286270,
		0.924261, 0.355440, -0.139299,
		17.417034, 22.770939, 18.448153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735241, 23.148298, 18.173546>,  <16.770050, 22.522131, 18.545662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.735241, 23.148298, 18.173546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119701, 23.063381, 18.102985>,  <17.350378, 23.012432, 18.060650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119701, 23.063381, 18.102985>,  <16.735241, 23.148298, 18.173546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119701, 23.063381, 18.102985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119654, 0.255448, -0.959390,
		0.248731, 0.943228, 0.220123,
		0.961154, -0.212291, -0.176399,
		17.408047, 22.999695, 18.050066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854696, 23.560280, 17.613188>,  <16.735241, 23.148298, 18.173546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854696, 23.560280, 17.613188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154263, 23.295334, 17.605207>,  <17.334002, 23.136366, 17.600420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154263, 23.295334, 17.605207>,  <16.854696, 23.560280, 17.613188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154263, 23.295334, 17.605207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072402, -0.051865, -0.996026,
		0.658700, 0.747382, -0.086799,
		0.748914, -0.662367, -0.019949,
		17.378937, 23.096624, 17.599222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.346075, 23.874920, 17.176117>,  <16.854696, 23.560280, 17.613188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.346075, 23.874920, 17.176117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408672, 23.480354, 17.196104>,  <17.446232, 23.243614, 17.208097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408672, 23.480354, 17.196104>,  <17.346075, 23.874920, 17.176117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408672, 23.480354, 17.196104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160957, -0.024446, -0.986659,
		0.974475, 0.162451, 0.154944,
		0.156496, -0.986414, 0.049970,
		17.455622, 23.184431, 17.211096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873180, 23.765505, 16.678928>,  <17.346075, 23.874920, 17.176117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873180, 23.765505, 16.678928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685917, 23.415730, 16.729813>,  <17.573559, 23.205864, 16.760344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685917, 23.415730, 16.729813>,  <17.873180, 23.765505, 16.678928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685917, 23.415730, 16.729813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125803, -0.208453, -0.969908,
		0.874644, -0.438066, 0.207596,
		-0.468158, -0.874440, 0.127212,
		17.545469, 23.153397, 16.767977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308451, 23.397274, 16.262671>,  <17.873180, 23.765505, 16.678928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308451, 23.397274, 16.262671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951618, 23.219173, 16.293507>,  <17.737518, 23.112312, 16.312008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951618, 23.219173, 16.293507>,  <18.308451, 23.397274, 16.262671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951618, 23.219173, 16.293507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080621, -0.324691, -0.942378,
		0.444628, -0.834461, 0.325547,
		-0.892080, -0.445254, 0.077092,
		17.683994, 23.085598, 16.316633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367441, 22.835052, 15.885116>,  <18.308451, 23.397274, 16.262671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.367441, 22.835052, 15.885116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968216, 22.856998, 15.896828>,  <17.728680, 22.870167, 15.903855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968216, 22.856998, 15.896828>,  <18.367441, 22.835052, 15.885116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968216, 22.856998, 15.896828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047903, -0.377970, -0.924578,
		-0.039660, -0.924191, 0.379867,
		-0.998064, 0.054865, 0.029281,
		17.668797, 22.873459, 15.905612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138083, 22.230179, 15.595140>,  <18.367441, 22.835052, 15.885116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138083, 22.230179, 15.595140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835247, 22.490471, 15.571947>,  <17.653545, 22.646646, 15.558031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835247, 22.490471, 15.571947>,  <18.138083, 22.230179, 15.595140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.835247, 22.490471, 15.571947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117750, -0.223215, -0.967631,
		-0.642611, -0.725757, 0.245618,
		-0.757091, 0.650732, -0.057983,
		17.608120, 22.685690, 15.554552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500031, 21.829472, 15.475539>,  <18.138083, 22.230179, 15.595140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500031, 21.829472, 15.475539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469219, 22.209740, 15.355347>,  <17.450731, 22.437901, 15.283231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469219, 22.209740, 15.355347>,  <17.500031, 21.829472, 15.475539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469219, 22.209740, 15.355347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216217, -0.310133, -0.925780,
		-0.973302, -0.006343, 0.229441,
		-0.077029, 0.950672, -0.300481,
		17.446110, 22.494942, 15.265203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804712, 21.458082, 15.572570>,  <17.500031, 21.829472, 15.475539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804712, 21.458082, 15.572570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543430, 21.156971, 15.539948>,  <16.386662, 20.976305, 15.520374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543430, 21.156971, 15.539948>,  <16.804712, 21.458082, 15.572570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543430, 21.156971, 15.539948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308467, 0.166192, 0.936605,
		-0.691499, 0.636952, -0.340764,
		-0.653205, -0.752776, -0.081557,
		16.347469, 20.931139, 15.515480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213486, 21.632185, 15.919599>,  <16.804712, 21.458082, 15.572570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213486, 21.632185, 15.919599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199554, 21.232986, 15.898487>,  <16.191195, 20.993467, 15.885820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199554, 21.232986, 15.898487>,  <16.213486, 21.632185, 15.919599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199554, 21.232986, 15.898487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117941, -0.048338, 0.991843,
		-0.992410, 0.040771, -0.116021,
		-0.034830, -0.997999, -0.052779,
		16.189106, 20.933586, 15.882653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707901, 21.460180, 16.370106>,  <16.213486, 21.632185, 15.919599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707901, 21.460180, 16.370106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891105, 21.108772, 16.315800>,  <16.001026, 20.897928, 16.283216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891105, 21.108772, 16.315800>,  <15.707901, 21.460180, 16.370106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891105, 21.108772, 16.315800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109584, -0.207362, 0.972107,
		-0.882167, -0.430356, -0.191245,
		0.458009, -0.878518, -0.135767,
		16.028507, 20.845217, 16.275070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331391, 20.989157, 16.771341>,  <15.707901, 21.460180, 16.370106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331391, 20.989157, 16.771341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680001, 20.806602, 16.699614>,  <15.889167, 20.697069, 16.656576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680001, 20.806602, 16.699614>,  <15.331391, 20.989157, 16.771341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680001, 20.806602, 16.699614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045199, -0.438914, 0.897392,
		-0.488266, -0.773993, -0.403152,
		0.871523, -0.456388, -0.179323,
		15.941459, 20.669687, 16.645817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114884, 20.294092, 16.970324>,  <15.331391, 20.989157, 16.771341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114884, 20.294092, 16.970324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514293, 20.314690, 16.977308>,  <15.753938, 20.327049, 16.981499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514293, 20.314690, 16.977308>,  <15.114884, 20.294092, 16.970324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514293, 20.314690, 16.977308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000108, -0.319243, 0.947673,
		0.054376, -0.946273, -0.318765,
		0.998520, 0.051496, 0.017462,
		15.813848, 20.330139, 16.982546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405588, 19.599718, 17.022247>,  <15.114884, 20.294092, 16.970324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.405588, 19.599718, 17.022247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666789, 19.860970, 17.175617>,  <15.823509, 20.017719, 17.267639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666789, 19.860970, 17.175617>,  <15.405588, 19.599718, 17.022247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666789, 19.860970, 17.175617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077414, -0.446052, 0.891653,
		0.753390, -0.611933, -0.240711,
		0.653001, 0.653128, 0.383424,
		15.862690, 20.056908, 17.290644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.872019, 19.223881, 17.445478>,  <15.405588, 19.599718, 17.022247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.872019, 19.223881, 17.445478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901711, 19.596760, 17.587179>,  <15.919527, 19.820488, 17.672199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901711, 19.596760, 17.587179>,  <15.872019, 19.223881, 17.445478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901711, 19.596760, 17.587179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100958, -0.360433, 0.927305,
		0.992117, -0.033070, -0.120868,
		0.074230, 0.932199, 0.354253,
		15.923981, 19.876419, 17.693455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350286, 19.181479, 17.931496>,  <15.872019, 19.223881, 17.445478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350286, 19.181479, 17.931496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143089, 19.507870, 18.034155>,  <16.018772, 19.703705, 18.095751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143089, 19.507870, 18.034155>,  <16.350286, 19.181479, 17.931496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143089, 19.507870, 18.034155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164181, -0.199616, 0.966022,
		0.839481, 0.542528, -0.030569,
		-0.517992, 0.815976, 0.256647,
		15.987692, 19.752663, 18.111149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832300, 19.607117, 18.406046>,  <16.350286, 19.181479, 17.931496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832300, 19.607117, 18.406046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455383, 19.722408, 18.474180>,  <16.229233, 19.791582, 18.515060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455383, 19.722408, 18.474180>,  <16.832300, 19.607117, 18.406046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.455383, 19.722408, 18.474180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189490, 0.039702, 0.981080,
		0.276011, 0.956739, -0.092027,
		-0.942290, 0.288227, 0.170334,
		16.172697, 19.808876, 18.525280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026413, 20.097223, 18.783447>,  <16.832300, 19.607117, 18.406046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026413, 20.097223, 18.783447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640625, 20.031239, 18.865995>,  <16.409153, 19.991648, 18.915524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640625, 20.031239, 18.865995>,  <17.026413, 20.097223, 18.783447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640625, 20.031239, 18.865995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174071, 0.190838, 0.966064,
		-0.198746, 0.967662, -0.155342,
		-0.964468, -0.164961, 0.206371,
		16.351284, 19.981750, 18.927906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946388, 20.607222, 19.278387>,  <17.026413, 20.097223, 18.783447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946388, 20.607222, 19.278387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648685, 20.342716, 19.315935>,  <16.470064, 20.184013, 19.338463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648685, 20.342716, 19.315935>,  <16.946388, 20.607222, 19.278387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648685, 20.342716, 19.315935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074506, 0.057466, 0.995564,
		-0.663726, 0.747948, 0.006499,
		-0.744256, -0.661266, 0.093869,
		16.425409, 20.144337, 19.344095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395350, 20.914778, 19.754967>,  <16.946388, 20.607222, 19.278387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395350, 20.914778, 19.754967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383602, 20.514961, 19.751947>,  <16.376553, 20.275072, 19.750135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383602, 20.514961, 19.751947>,  <16.395350, 20.914778, 19.754967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383602, 20.514961, 19.751947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328230, -0.016776, 0.944449,
		-0.944141, 0.025261, 0.328572,
		-0.029370, -0.999540, -0.007548,
		16.374792, 20.215099, 19.749683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298038, 20.736975, 20.476406>,  <16.395350, 20.914778, 19.754967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298038, 20.736975, 20.476406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407871, 20.389858, 20.310736>,  <16.473770, 20.181587, 20.211334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407871, 20.389858, 20.310736>,  <16.298038, 20.736975, 20.476406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407871, 20.389858, 20.310736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313925, -0.326229, 0.891642,
		-0.908876, -0.374848, 0.182845,
		0.274581, -0.867792, -0.414176,
		16.490246, 20.129520, 20.186483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004078, 20.264101, 21.057793>,  <16.298038, 20.736975, 20.476406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004078, 20.264101, 21.057793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244202, 20.038330, 20.831146>,  <16.388275, 19.902868, 20.695158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244202, 20.038330, 20.831146>,  <16.004078, 20.264101, 21.057793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244202, 20.038330, 20.831146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455688, -0.340833, 0.822302,
		-0.657251, -0.751833, 0.052599,
		0.600307, -0.564428, -0.566615,
		16.424294, 19.869001, 20.661161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<24.605780, 19.232410, 19.629560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.309891, 19.500542, 19.605997>,  <24.132359, 19.661421, 19.591858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.309891, 19.500542, 19.605997>,  <24.605780, 19.232410, 19.629560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309891, 19.500542, 19.605997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164217, -0.264726, -0.950238,
		-0.652569, -0.693237, 0.305903,
		-0.739721, 0.670330, -0.058911,
		24.087975, 19.701641, 19.588324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.123446, 18.942286, 19.249664>,  <24.605780, 19.232410, 19.629560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.123446, 18.942286, 19.249664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.007233, 19.322632, 19.206873>,  <23.937506, 19.550840, 19.181198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.007233, 19.322632, 19.206873>,  <24.123446, 18.942286, 19.249664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.007233, 19.322632, 19.206873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448945, -0.234188, -0.862325,
		-0.845009, -0.202505, 0.494926,
		-0.290531, 0.950867, -0.106977,
		23.920073, 19.607891, 19.174780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.425165, 18.924942, 19.000134>,  <24.123446, 18.942286, 19.249664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.425165, 18.924942, 19.000134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.550316, 19.292686, 18.904730>,  <23.625406, 19.513332, 18.847486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.550316, 19.292686, 18.904730>,  <23.425165, 18.924942, 19.000134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.550316, 19.292686, 18.904730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524134, -0.042295, -0.850585,
		-0.792081, 0.391138, 0.468635,
		0.312875, 0.919360, -0.238510,
		23.644178, 19.568495, 18.833178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923477, 19.198406, 18.593565>,  <23.425165, 18.924942, 19.000134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923477, 19.198406, 18.593565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.230556, 19.430542, 18.484865>,  <23.414804, 19.569822, 18.419645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.230556, 19.430542, 18.484865>,  <22.923477, 19.198406, 18.593565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.230556, 19.430542, 18.484865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311310, -0.032907, -0.949739,
		-0.560112, 0.813711, 0.155402,
		0.767698, 0.580338, -0.271748,
		23.460867, 19.604643, 18.403341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.675379, 19.688623, 18.191858>,  <22.923477, 19.198406, 18.593565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.675379, 19.688623, 18.191858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.057640, 19.710491, 18.076109>,  <23.286997, 19.723612, 18.006659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.057640, 19.710491, 18.076109>,  <22.675379, 19.688623, 18.191858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057640, 19.710491, 18.076109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284501, -0.082401, -0.955128,
		-0.076060, 0.995099, -0.063194,
		0.955654, 0.054668, -0.289374,
		23.344336, 19.726892, 17.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.597858, 20.089939, 17.651897>,  <22.675379, 19.688623, 18.191858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.597858, 20.089939, 17.651897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.971149, 19.953690, 17.606188>,  <23.195124, 19.871939, 17.578762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.971149, 19.953690, 17.606188>,  <22.597858, 20.089939, 17.651897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971149, 19.953690, 17.606188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079768, 0.113692, -0.990309,
		0.350316, 0.933300, 0.078929,
		0.933229, -0.340625, -0.114275,
		23.251118, 19.851501, 17.571905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.943483, 20.464796, 17.173889>,  <22.597858, 20.089939, 17.651897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.943483, 20.464796, 17.173889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.158165, 20.127308, 17.170227>,  <23.286974, 19.924814, 17.168030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.158165, 20.127308, 17.170227>,  <22.943483, 20.464796, 17.173889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.158165, 20.127308, 17.170227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068092, -0.032496, -0.997150,
		0.841020, 0.535796, -0.074891,
		0.536702, -0.843722, -0.009154,
		23.319176, 19.874191, 17.167480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606050, 20.497702, 16.619640>,  <22.943483, 20.464796, 17.173889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606050, 20.497702, 16.619640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.497688, 20.118038, 16.683775>,  <23.432671, 19.890240, 16.722256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.497688, 20.118038, 16.683775>,  <23.606050, 20.497702, 16.619640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497688, 20.118038, 16.683775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177073, -0.114587, -0.977504,
		0.946180, -0.293202, -0.137029,
		-0.270905, -0.949159, 0.160338,
		23.416416, 19.833290, 16.731876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.929047, 20.103127, 16.101601>,  <23.606050, 20.497702, 16.619640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.929047, 20.103127, 16.101601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.653595, 19.836681, 16.216198>,  <23.488323, 19.676813, 16.284956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.653595, 19.836681, 16.216198>,  <23.929047, 20.103127, 16.101601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.653595, 19.836681, 16.216198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240379, -0.163050, -0.956887,
		0.684109, -0.727809, -0.047839,
		-0.688630, -0.666115, 0.286494,
		23.447006, 19.636847, 16.302147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932747, 19.559452, 15.609415>,  <23.929047, 20.103127, 16.101601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932747, 19.559452, 15.609415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.572937, 19.491970, 15.770607>,  <23.357050, 19.451481, 15.867322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.572937, 19.491970, 15.770607>,  <23.932747, 19.559452, 15.609415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.572937, 19.491970, 15.770607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425666, 0.130921, -0.895359,
		0.098287, -0.976934, -0.189577,
		-0.899527, -0.168699, 0.402980,
		23.303080, 19.441359, 15.891500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.598787, 19.003609, 15.228634>,  <23.932747, 19.559452, 15.609415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.598787, 19.003609, 15.228634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.295235, 19.190777, 15.409807>,  <23.113104, 19.303078, 15.518512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.295235, 19.190777, 15.409807>,  <23.598787, 19.003609, 15.228634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.295235, 19.190777, 15.409807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568203, -0.135933, -0.811583,
		-0.318189, -0.873254, 0.369031,
		-0.758882, 0.467921, 0.452933,
		23.067570, 19.331152, 15.545688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085367, 18.541555, 14.959422>,  <23.598787, 19.003609, 15.228634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085367, 18.541555, 14.959422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.893978, 18.867805, 15.089540>,  <22.779144, 19.063557, 15.167611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.893978, 18.867805, 15.089540>,  <23.085367, 18.541555, 14.959422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.893978, 18.867805, 15.089540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587614, -0.022124, -0.808839,
		-0.652514, -0.578154, 0.489860,
		-0.478472, 0.815627, 0.325295,
		22.750437, 19.112494, 15.187129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.392878, 18.427767, 15.006447>,  <23.085367, 18.541555, 14.959422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.392878, 18.427767, 15.006447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.401600, 18.827564, 14.997198>,  <22.406834, 19.067444, 14.991649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.401600, 18.827564, 14.997198>,  <22.392878, 18.427767, 15.006447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.401600, 18.827564, 14.997198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520259, -0.008406, -0.853967,
		-0.853730, 0.030651, 0.519813,
		0.021805, 0.999495, -0.023123,
		22.408142, 19.127413, 14.990261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.729959, 18.632328, 14.766880>,  <22.392878, 18.427767, 15.006447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.729959, 18.632328, 14.766880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.964828, 18.946404, 14.688181>,  <22.105749, 19.134850, 14.640962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.964828, 18.946404, 14.688181>,  <21.729959, 18.632328, 14.766880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964828, 18.946404, 14.688181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346751, 0.024356, -0.937641,
		-0.731433, 0.618778, 0.286566,
		0.587171, 0.785188, -0.196747,
		22.140980, 19.181959, 14.629157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894291, 18.698059, 14.828767>,  <21.729959, 18.632328, 14.766880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894291, 18.698059, 14.828767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.784458, 18.327194, 14.726803>,  <20.718559, 18.104675, 14.665625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.784458, 18.327194, 14.726803>,  <20.894291, 18.698059, 14.828767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784458, 18.327194, 14.726803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096788, -0.290403, 0.951997,
		-0.956680, 0.236729, 0.169478,
		-0.274582, -0.927160, -0.254910,
		20.702084, 18.049046, 14.650330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430674, 18.499285, 15.301850>,  <20.894291, 18.698059, 14.828767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430674, 18.499285, 15.301850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.571968, 18.151138, 15.164627>,  <20.656744, 17.942251, 15.082294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.571968, 18.151138, 15.164627>,  <20.430674, 18.499285, 15.301850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571968, 18.151138, 15.164627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222896, -0.277839, 0.934410,
		-0.908593, -0.406534, 0.095858,
		0.353236, -0.870365, -0.343057,
		20.677938, 17.890028, 15.061709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208166, 18.073633, 15.751651>,  <20.430674, 18.499285, 15.301850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208166, 18.073633, 15.751651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.503712, 17.875225, 15.569204>,  <20.681040, 17.756180, 15.459737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.503712, 17.875225, 15.569204>,  <20.208166, 18.073633, 15.751651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503712, 17.875225, 15.569204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335411, -0.316355, 0.887366,
		-0.584446, -0.808630, -0.067373,
		0.738865, -0.496020, -0.456116,
		20.725372, 17.726419, 15.432369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250826, 17.362494, 15.957320>,  <20.208166, 18.073633, 15.751651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250826, 17.362494, 15.957320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.624992, 17.435154, 15.835997>,  <20.849493, 17.478750, 15.763203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.624992, 17.435154, 15.835997>,  <20.250826, 17.362494, 15.957320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624992, 17.435154, 15.835997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352714, -0.420698, 0.835827,
		0.024229, -0.888828, -0.457600,
		0.935418, 0.181653, -0.303309,
		20.905617, 17.489651, 15.745004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706856, 16.701296, 16.027855>,  <20.250826, 17.362494, 15.957320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706856, 16.701296, 16.027855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.942822, 17.024223, 16.021620>,  <21.084400, 17.217979, 16.017879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.942822, 17.024223, 16.021620>,  <20.706856, 16.701296, 16.027855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.942822, 17.024223, 16.021620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382657, -0.262507, 0.885813,
		0.711039, -0.528517, -0.463781,
		0.589913, 0.807317, -0.015588,
		21.119795, 17.266418, 16.016943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350988, 16.509737, 16.417253>,  <20.706856, 16.701296, 16.027855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350988, 16.509737, 16.417253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.400955, 16.903648, 16.368916>,  <21.430935, 17.139996, 16.339912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.400955, 16.903648, 16.368916>,  <21.350988, 16.509737, 16.417253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400955, 16.903648, 16.368916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382250, 0.064627, 0.921796,
		0.915577, -0.161342, -0.368359,
		0.124918, 0.984780, -0.120843,
		21.438431, 17.199083, 16.332663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102732, 16.642437, 16.556667>,  <21.350988, 16.509737, 16.417253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102732, 16.642437, 16.556667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.894035, 16.978279, 16.617134>,  <21.768818, 17.179785, 16.653414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.894035, 16.978279, 16.617134>,  <22.102732, 16.642437, 16.556667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894035, 16.978279, 16.617134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221364, -0.037889, 0.974455,
		0.823885, 0.541874, -0.166090,
		-0.521739, 0.839605, 0.151168,
		21.737514, 17.230160, 16.662485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525293, 17.149839, 16.947966>,  <22.102732, 16.642437, 16.556667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525293, 17.149839, 16.947966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.150707, 17.286091, 16.981441>,  <21.925955, 17.367842, 17.001526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.150707, 17.286091, 16.981441>,  <22.525293, 17.149839, 16.947966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.150707, 17.286091, 16.981441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176092, 0.250209, 0.952044,
		0.303356, 0.906293, -0.294294,
		-0.936465, 0.340631, 0.083688,
		21.869768, 17.388281, 17.006548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.601971, 17.779757, 17.343002>,  <22.525293, 17.149839, 16.947966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.601971, 17.779757, 17.343002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.210400, 17.704792, 17.375443>,  <21.975456, 17.659813, 17.394907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.210400, 17.704792, 17.375443>,  <22.601971, 17.779757, 17.343002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210400, 17.704792, 17.375443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011676, 0.447865, 0.894025,
		-0.203869, 0.874240, -0.440616,
		-0.978929, -0.187409, 0.081098,
		21.916721, 17.648569, 17.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.373093, 18.439386, 17.570019>,  <22.601971, 17.779757, 17.343002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.373093, 18.439386, 17.570019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.136589, 18.134422, 17.675198>,  <21.994686, 17.951445, 17.738304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.136589, 18.134422, 17.675198>,  <22.373093, 18.439386, 17.570019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.136589, 18.134422, 17.675198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123695, 0.236455, 0.963737,
		-0.796938, 0.602346, -0.045500,
		-0.591261, -0.762410, 0.262947,
		21.959211, 17.905699, 17.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978485, 18.747421, 18.171312>,  <22.373093, 18.439386, 17.570019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978485, 18.747421, 18.171312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.979774, 18.347813, 18.188951>,  <21.980547, 18.108047, 18.199535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.979774, 18.347813, 18.188951>,  <21.978485, 18.747421, 18.171312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979774, 18.347813, 18.188951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125237, 0.044156, 0.991144,
		-0.992122, 0.002330, 0.125256,
		0.003222, -0.999022, 0.044100,
		21.980742, 18.048105, 18.202181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484875, 18.531990, 18.597546>,  <21.978485, 18.747421, 18.171312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484875, 18.531990, 18.597546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.719078, 18.207771, 18.603157>,  <21.859600, 18.013241, 18.606524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.719078, 18.207771, 18.603157>,  <21.484875, 18.531990, 18.597546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719078, 18.207771, 18.603157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049625, 0.053108, 0.997355,
		-0.809147, -0.583262, 0.071318,
		0.585507, -0.810546, 0.014028,
		21.894730, 17.964607, 18.607365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.140667, 18.104345, 18.990643>,  <21.484875, 18.531990, 18.597546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.140667, 18.104345, 18.990643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.519836, 17.977116, 18.997173>,  <21.747339, 17.900778, 19.001091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.519836, 17.977116, 18.997173>,  <21.140667, 18.104345, 18.990643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519836, 17.977116, 18.997173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008790, 0.077366, 0.996964,
		-0.318374, -0.944903, 0.076133,
		0.947924, -0.318076, 0.016325,
		21.804214, 17.881693, 19.002071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143167, 17.681824, 19.493382>,  <21.140667, 18.104345, 18.990643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143167, 17.681824, 19.493382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.529247, 17.783718, 19.469723>,  <21.760895, 17.844854, 19.455528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.529247, 17.783718, 19.469723>,  <21.143167, 17.681824, 19.493382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.529247, 17.783718, 19.469723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067227, -0.023122, 0.997470,
		0.252723, -0.966735, -0.039443,
		0.965200, 0.254735, -0.059147,
		21.818808, 17.860138, 19.451979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660873, 17.046810, 19.475515>,  <21.143167, 17.681824, 19.493382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660873, 17.046810, 19.475515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.413506, 16.783882, 19.647789>,  <20.265085, 16.626125, 19.751154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.413506, 16.783882, 19.647789>,  <20.660873, 17.046810, 19.475515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413506, 16.783882, 19.647789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490262, -0.105612, -0.865153,
		0.614167, -0.746176, -0.256946,
		-0.618419, -0.657319, 0.430685,
		20.227980, 16.586687, 19.776995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630930, 16.371790, 18.980698>,  <20.660873, 17.046810, 19.475515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630930, 16.371790, 18.980698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.302906, 16.415627, 19.205372>,  <20.106091, 16.441929, 19.340176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.302906, 16.415627, 19.205372>,  <20.630930, 16.371790, 18.980698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302906, 16.415627, 19.205372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572248, -0.166685, -0.802962,
		0.005627, -0.979901, 0.199405,
		-0.820061, 0.109591, 0.561685,
		20.056889, 16.448505, 19.373877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114050, 15.821002, 18.698723>,  <20.630930, 16.371790, 18.980698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114050, 15.821002, 18.698723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.912632, 16.112282, 18.884699>,  <19.791780, 16.287050, 18.996284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.912632, 16.112282, 18.884699>,  <20.114050, 15.821002, 18.698723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912632, 16.112282, 18.884699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651209, 0.033753, -0.758147,
		-0.567775, -0.684534, 0.457213,
		-0.503546, 0.728199, 0.464939,
		19.761568, 16.330742, 19.024181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501577, 15.604449, 18.528887>,  <20.114050, 15.821002, 18.698723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501577, 15.604449, 18.528887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.475483, 15.983257, 18.654678>,  <19.459826, 16.210543, 18.730154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.475483, 15.983257, 18.654678>,  <19.501577, 15.604449, 18.528887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.475483, 15.983257, 18.654678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595713, 0.215869, -0.773645,
		-0.800543, -0.237811, 0.550069,
		-0.065238, 0.947020, 0.314480,
		19.455912, 16.267363, 18.749022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826944, 15.716656, 18.481073>,  <19.501577, 15.604449, 18.528887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.826944, 15.716656, 18.481073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.984299, 16.083290, 18.509691>,  <19.078711, 16.303270, 18.526861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.984299, 16.083290, 18.509691>,  <18.826944, 15.716656, 18.481073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984299, 16.083290, 18.509691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584333, 0.309347, -0.750240,
		-0.709791, 0.253327, 0.657284,
		0.393384, 0.916586, 0.071544,
		19.102314, 16.358267, 18.531155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270199, 16.088636, 18.484131>,  <18.826944, 15.716656, 18.481073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270199, 16.088636, 18.484131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.574093, 16.325325, 18.376303>,  <18.756430, 16.467339, 18.311605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.574093, 16.325325, 18.376303>,  <18.270199, 16.088636, 18.484131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574093, 16.325325, 18.376303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507772, 0.280931, -0.814399,
		-0.406169, 0.755606, 0.513893,
		0.759733, 0.591724, -0.269570,
		18.802013, 16.502842, 18.295431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967045, 16.838110, 18.250875>,  <18.270199, 16.088636, 18.484131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967045, 16.838110, 18.250875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.327209, 16.789268, 18.083855>,  <18.543308, 16.759964, 17.983643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.327209, 16.789268, 18.083855>,  <17.967045, 16.838110, 18.250875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.327209, 16.789268, 18.083855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320395, 0.463154, -0.826338,
		0.294289, 0.877826, 0.377908,
		0.900412, -0.122102, -0.417552,
		18.597332, 16.752638, 17.958590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058937, 17.454441, 17.816633>,  <17.967045, 16.838110, 18.250875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058937, 17.454441, 17.816633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.290524, 17.163296, 17.669657>,  <18.429476, 16.988609, 17.581470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.290524, 17.163296, 17.669657>,  <18.058937, 17.454441, 17.816633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290524, 17.163296, 17.669657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190282, 0.317592, -0.928939,
		0.792836, 0.607744, 0.045376,
		0.578968, -0.727862, -0.367441,
		18.464214, 16.944937, 17.559425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502459, 17.726009, 17.248928>,  <18.058937, 17.454441, 17.816633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502459, 17.726009, 17.248928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.478989, 17.328156, 17.214840>,  <18.464907, 17.089443, 17.194387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.478989, 17.328156, 17.214840>,  <18.502459, 17.726009, 17.248928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.478989, 17.328156, 17.214840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052466, 0.088321, -0.994709,
		0.996898, -0.053892, -0.057367,
		-0.058673, -0.994633, -0.085219,
		18.461386, 17.029766, 17.189274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933741, 17.544476, 16.569952>,  <18.502459, 17.726009, 17.248928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933741, 17.544476, 16.569952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.693424, 17.234600, 16.648853>,  <18.549234, 17.048676, 16.696194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.693424, 17.234600, 16.648853>,  <18.933741, 17.544476, 16.569952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.693424, 17.234600, 16.648853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076837, -0.189644, -0.978842,
		0.795704, -0.603237, 0.054411,
		-0.600793, -0.774687, 0.197251,
		18.513187, 17.002193, 16.708029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214857, 16.941982, 16.294340>,  <18.933741, 17.544476, 16.569952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214857, 16.941982, 16.294340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.819679, 16.884258, 16.316740>,  <18.582573, 16.849623, 16.330181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.819679, 16.884258, 16.316740>,  <19.214857, 16.941982, 16.294340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.819679, 16.884258, 16.316740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014840, -0.271808, -0.962237,
		0.154084, -0.951469, 0.266390,
		-0.987946, -0.144313, 0.056001,
		18.523294, 16.840965, 16.333540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135145, 16.407597, 15.746451>,  <19.214857, 16.941982, 16.294340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135145, 16.407597, 15.746451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.773659, 16.532471, 15.863642>,  <18.556767, 16.607395, 15.933956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.773659, 16.532471, 15.863642>,  <19.135145, 16.407597, 15.746451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773659, 16.532471, 15.863642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361674, -0.190498, -0.912635,
		-0.229104, -0.930725, 0.285067,
		-0.903716, 0.312189, 0.292975,
		18.502544, 16.626127, 15.951534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704010, 16.000273, 15.382104>,  <19.135145, 16.407597, 15.746451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704010, 16.000273, 15.382104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.480953, 16.319756, 15.472530>,  <18.347118, 16.511444, 15.526786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.480953, 16.319756, 15.472530>,  <18.704010, 16.000273, 15.382104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.480953, 16.319756, 15.472530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425263, -0.041002, -0.904141,
		-0.712873, -0.600324, 0.362524,
		-0.557641, 0.798705, 0.226066,
		18.313662, 16.559366, 15.540350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006317, 15.853035, 15.117054>,  <18.704010, 16.000273, 15.382104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006317, 15.853035, 15.117054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.976311, 16.246483, 15.182615>,  <17.958307, 16.482552, 15.221951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.976311, 16.246483, 15.182615>,  <18.006317, 15.853035, 15.117054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.976311, 16.246483, 15.182615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392843, 0.121923, -0.911487,
		-0.916541, -0.132762, 0.377263,
		-0.075014, 0.983620, 0.163902,
		17.953806, 16.541569, 15.231786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.969676, 19.544201, 21.260685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.323616, 19.528259, 21.075018>,  <16.535980, 19.518694, 20.963617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.323616, 19.528259, 21.075018>,  <15.969676, 19.544201, 21.260685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323616, 19.528259, 21.075018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358204, -0.578842, 0.732552,
		-0.297875, -0.814465, -0.497912,
		0.884850, -0.039855, -0.464167,
		16.589071, 19.516302, 20.935768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141157, 18.917604, 21.275637>,  <15.969676, 19.544201, 21.260685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141157, 18.917604, 21.275637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.491905, 19.101818, 21.220497>,  <16.702354, 19.212347, 21.187414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.491905, 19.101818, 21.220497>,  <16.141157, 18.917604, 21.275637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491905, 19.101818, 21.220497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349127, -0.412967, 0.841171,
		0.330462, -0.785726, -0.522905,
		0.876872, 0.460536, -0.137848,
		16.754967, 19.239979, 21.179142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699863, 18.411222, 21.395212>,  <16.141157, 18.917604, 21.275637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699863, 18.411222, 21.395212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.935200, 18.734295, 21.410751>,  <17.076401, 18.928139, 21.420074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.935200, 18.734295, 21.410751>,  <16.699863, 18.411222, 21.395212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935200, 18.734295, 21.410751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529825, -0.421346, 0.736039,
		0.610852, -0.412458, -0.675824,
		0.588341, 0.807680, 0.038849,
		17.111702, 18.976599, 21.422405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462843, 18.193027, 21.243448>,  <16.699863, 18.411222, 21.395212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462843, 18.193027, 21.243448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.438179, 18.536259, 21.447369>,  <17.423382, 18.742197, 21.569721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.438179, 18.536259, 21.447369>,  <17.462843, 18.193027, 21.243448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438179, 18.536259, 21.447369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730554, -0.309221, 0.608830,
		0.680066, 0.409977, -0.607807,
		-0.061659, 0.858080, 0.509801,
		17.419682, 18.793682, 21.600309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160734, 18.314339, 21.420937>,  <17.462843, 18.193027, 21.243448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160734, 18.314339, 21.420937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.966915, 18.572350, 21.657293>,  <17.850624, 18.727156, 21.799107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.966915, 18.572350, 21.657293>,  <18.160734, 18.314339, 21.420937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.966915, 18.572350, 21.657293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659855, -0.173943, 0.730982,
		0.574285, 0.744099, -0.341340,
		-0.484549, 0.645028, 0.590890,
		17.821550, 18.765858, 21.834560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682678, 18.650536, 21.719521>,  <18.160734, 18.314339, 21.420937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682678, 18.650536, 21.719521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.361351, 18.723518, 21.946285>,  <18.168554, 18.767307, 22.082344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.361351, 18.723518, 21.946285>,  <18.682678, 18.650536, 21.719521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.361351, 18.723518, 21.946285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525471, -0.230853, 0.818894,
		0.280287, 0.955728, 0.089572,
		-0.803318, 0.182458, 0.566913,
		18.120356, 18.778255, 22.116360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934023, 19.033970, 22.160818>,  <18.682678, 18.650536, 21.719521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934023, 19.033970, 22.160818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.612328, 18.875156, 22.337708>,  <18.419310, 18.779869, 22.443842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.612328, 18.875156, 22.337708>,  <18.934023, 19.033970, 22.160818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612328, 18.875156, 22.337708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552863, -0.226820, 0.801807,
		-0.218038, 0.889336, 0.401922,
		-0.804240, -0.397033, 0.442225,
		18.371056, 18.756046, 22.470375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896400, 19.308676, 22.903059>,  <18.934023, 19.033970, 22.160818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896400, 19.308676, 22.903059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.661793, 18.984722, 22.899370>,  <18.521029, 18.790350, 22.897158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.661793, 18.984722, 22.899370>,  <18.896400, 19.308676, 22.903059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661793, 18.984722, 22.899370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449746, -0.335133, 0.827898,
		-0.673591, 0.481430, 0.560803,
		-0.586519, -0.809883, -0.009221,
		18.485838, 18.741756, 22.896605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447950, 19.365812, 23.500067>,  <18.896400, 19.308676, 22.903059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447950, 19.365812, 23.500067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.475285, 18.989555, 23.367088>,  <18.491686, 18.763802, 23.287302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.475285, 18.989555, 23.367088>,  <18.447950, 19.365812, 23.500067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.475285, 18.989555, 23.367088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461469, -0.265631, 0.846455,
		-0.884520, -0.211256, 0.415926,
		0.068336, -0.940644, -0.332445,
		18.495785, 18.707363, 23.267355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080292, 19.059559, 24.051901>,  <18.447950, 19.365812, 23.500067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080292, 19.059559, 24.051901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.300503, 18.807972, 23.832331>,  <18.432629, 18.657021, 23.700588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.300503, 18.807972, 23.832331>,  <18.080292, 19.059559, 24.051901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300503, 18.807972, 23.832331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296284, -0.467528, 0.832847,
		-0.780471, -0.621143, -0.071034,
		0.550528, -0.628966, -0.548927,
		18.465662, 18.619282, 23.667652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018621, 18.415974, 24.329762>,  <18.080292, 19.059559, 24.051901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.018621, 18.415974, 24.329762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.345753, 18.378178, 24.102701>,  <18.542032, 18.355499, 23.966465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.345753, 18.378178, 24.102701>,  <18.018621, 18.415974, 24.329762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345753, 18.378178, 24.102701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443052, -0.526103, 0.725893,
		-0.367233, -0.845155, -0.388398,
		0.817829, -0.094492, -0.567650,
		18.591101, 18.349831, 23.932405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.235226, 17.714682, 24.459236>,  <18.018621, 18.415974, 24.329762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.235226, 17.714682, 24.459236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.553543, 17.932133, 24.352518>,  <18.744534, 18.062603, 24.288488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.553543, 17.932133, 24.352518>,  <18.235226, 17.714682, 24.459236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553543, 17.932133, 24.352518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513036, -0.371177, 0.773965,
		0.321723, -0.752791, -0.574282,
		0.795794, 0.543629, -0.266793,
		18.792282, 18.095221, 24.272480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877789, 17.310671, 24.411592>,  <18.235226, 17.714682, 24.459236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877789, 17.310671, 24.411592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.964748, 17.688366, 24.510506>,  <19.016924, 17.914984, 24.569853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.964748, 17.688366, 24.510506>,  <18.877789, 17.310671, 24.411592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964748, 17.688366, 24.510506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427682, -0.319878, 0.845438,
		0.877396, -0.078041, -0.473376,
		0.217402, 0.944239, 0.247283,
		19.029968, 17.971638, 24.584690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.547958, 17.291885, 24.431387>,  <18.877789, 17.310671, 24.411592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.547958, 17.291885, 24.431387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.361687, 17.564297, 24.657427>,  <19.249924, 17.727743, 24.793051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.361687, 17.564297, 24.657427>,  <19.547958, 17.291885, 24.431387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361687, 17.564297, 24.657427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547499, -0.279971, 0.788582,
		0.695260, 0.676620, -0.242487,
		-0.465681, 0.681030, 0.565101,
		19.221983, 17.768606, 24.826958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646444, 17.494843, 25.169952>,  <19.547958, 17.291885, 24.431387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646444, 17.494843, 25.169952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.973667, 17.273602, 25.233017>,  <20.170002, 17.140858, 25.270857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.973667, 17.273602, 25.233017>,  <19.646444, 17.494843, 25.169952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973667, 17.273602, 25.233017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074948, -0.169274, -0.982715,
		0.570230, 0.815735, -0.097022,
		0.818059, -0.553102, 0.157663,
		20.219086, 17.107672, 25.280315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168692, 17.722401, 24.799963>,  <19.646444, 17.494843, 25.169952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168692, 17.722401, 24.799963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.283012, 17.345047, 24.867308>,  <20.351604, 17.118635, 24.907715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.283012, 17.345047, 24.867308>,  <20.168692, 17.722401, 24.799963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283012, 17.345047, 24.867308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260646, -0.092541, -0.960989,
		0.922161, 0.318538, 0.219440,
		0.285804, -0.943382, 0.168363,
		20.368753, 17.062033, 24.917816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.747860, 17.705999, 24.387653>,  <20.168692, 17.722401, 24.799963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.747860, 17.705999, 24.387653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.705616, 17.316181, 24.466755>,  <20.680269, 17.082291, 24.514215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.705616, 17.316181, 24.466755>,  <20.747860, 17.705999, 24.387653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705616, 17.316181, 24.466755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355055, -0.222711, -0.907929,
		0.928861, -0.025671, 0.369538,
		-0.105608, -0.974546, 0.197753,
		20.673933, 17.023817, 24.526081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441685, 17.338619, 24.179110>,  <20.747860, 17.705999, 24.387653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441685, 17.338619, 24.179110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.147518, 17.067860, 24.191566>,  <20.971018, 16.905403, 24.199041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.147518, 17.067860, 24.191566>,  <21.441685, 17.338619, 24.179110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147518, 17.067860, 24.191566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241161, -0.304405, -0.921509,
		0.633250, -0.670182, 0.387106,
		-0.735415, -0.676900, 0.031143,
		20.926893, 16.864790, 24.200909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.667486, 16.764059, 23.797596>,  <21.441685, 17.338619, 24.179110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.667486, 16.764059, 23.797596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.275223, 16.686008, 23.791462>,  <21.039865, 16.639179, 23.787783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.275223, 16.686008, 23.791462>,  <21.667486, 16.764059, 23.797596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275223, 16.686008, 23.791462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108279, -0.475582, -0.872982,
		0.163049, -0.857758, 0.487511,
		-0.980659, -0.195126, -0.015334,
		20.981026, 16.627470, 23.786861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536203, 16.049440, 23.445999>,  <21.667486, 16.764059, 23.797596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536203, 16.049440, 23.445999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.170296, 16.210835, 23.438030>,  <20.950750, 16.307671, 23.433249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.170296, 16.210835, 23.438030>,  <21.536203, 16.049440, 23.445999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170296, 16.210835, 23.438030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104478, -0.283931, -0.953136,
		-0.390230, -0.869819, 0.301887,
		-0.914770, 0.403482, -0.019921,
		20.895864, 16.331879, 23.432055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093811, 15.569948, 23.248251>,  <21.536203, 16.049440, 23.445999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093811, 15.569948, 23.248251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.945595, 15.917885, 23.117973>,  <20.856665, 16.126646, 23.039806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.945595, 15.917885, 23.117973>,  <21.093811, 15.569948, 23.248251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.945595, 15.917885, 23.117973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040838, -0.335059, -0.941312,
		-0.927918, -0.362095, 0.088631,
		-0.370541, 0.869840, -0.325695,
		20.834433, 16.178837, 23.020266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.464727, 15.415751, 22.919380>,  <21.093811, 15.569948, 23.248251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.464727, 15.415751, 22.919380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.567413, 15.777580, 22.783234>,  <20.629025, 15.994678, 22.701546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.567413, 15.777580, 22.783234>,  <20.464727, 15.415751, 22.919380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567413, 15.777580, 22.783234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125809, -0.317894, -0.939742,
		-0.958264, 0.284067, 0.032195,
		0.256716, 0.904571, -0.340365,
		20.644428, 16.048952, 22.681124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062996, 15.526523, 22.364340>,  <20.464727, 15.415751, 22.919380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062996, 15.526523, 22.364340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.304920, 15.839077, 22.302839>,  <20.450075, 16.026609, 22.265940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.304920, 15.839077, 22.302839>,  <20.062996, 15.526523, 22.364340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304920, 15.839077, 22.302839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213700, -0.026741, -0.976533,
		-0.767161, 0.623474, 0.150809,
		0.604810, 0.781387, -0.153751,
		20.486362, 16.073494, 22.256714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644638, 15.936075, 22.048294>,  <20.062996, 15.526523, 22.364340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644638, 15.936075, 22.048294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.008373, 16.071194, 21.951139>,  <20.226614, 16.152266, 21.892847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.008373, 16.071194, 21.951139>,  <19.644638, 15.936075, 22.048294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.008373, 16.071194, 21.951139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280336, 0.066091, -0.957624,
		-0.307430, 0.938896, 0.154795,
		0.909340, 0.337797, -0.242888,
		20.281176, 16.172533, 21.878273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571524, 16.494814, 21.506092>,  <19.644638, 15.936075, 22.048294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.571524, 16.494814, 21.506092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.950516, 16.368332, 21.486937>,  <20.177912, 16.292442, 21.475443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.950516, 16.368332, 21.486937>,  <19.571524, 16.494814, 21.506092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950516, 16.368332, 21.486937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046876, 0.010811, -0.998842,
		0.316357, 0.948629, -0.004579,
		0.947481, -0.316205, -0.047888,
		20.234760, 16.273470, 21.472570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853329, 17.079927, 21.206636>,  <19.571524, 16.494814, 21.506092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853329, 17.079927, 21.206636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.041191, 16.738342, 21.117044>,  <20.153908, 16.533390, 21.063290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.041191, 16.738342, 21.117044>,  <19.853329, 17.079927, 21.206636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041191, 16.738342, 21.117044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013912, 0.260828, -0.965285,
		0.882740, 0.450236, 0.134380,
		0.469656, -0.853965, -0.223980,
		20.182089, 16.482153, 21.049850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340321, 17.378777, 20.798450>,  <19.853329, 17.079927, 21.206636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340321, 17.378777, 20.798450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.329346, 16.982273, 20.746826>,  <20.322762, 16.744371, 20.715851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.329346, 16.982273, 20.746826>,  <20.340321, 17.378777, 20.798450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329346, 16.982273, 20.746826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031137, 0.129894, -0.991039,
		0.999139, -0.023173, -0.034428,
		-0.027438, -0.991257, -0.129061,
		20.321114, 16.684896, 20.708107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742710, 17.226727, 20.206320>,  <20.340321, 17.378777, 20.798450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742710, 17.226727, 20.206320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.507980, 16.903477, 20.226624>,  <20.367144, 16.709528, 20.238806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.507980, 16.903477, 20.226624>,  <20.742710, 17.226727, 20.206320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.507980, 16.903477, 20.226624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107013, 0.015265, -0.994140,
		0.802613, -0.588815, -0.095438,
		-0.586822, -0.808123, 0.050759,
		20.331934, 16.661039, 20.241852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.487326, 17.333038, 20.090406>,  <20.742710, 17.226727, 20.206320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.487326, 17.333038, 20.090406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.739902, 17.628296, 19.995392>,  <21.891449, 17.805450, 19.938383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.739902, 17.628296, 19.995392>,  <21.487326, 17.333038, 20.090406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739902, 17.628296, 19.995392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252689, 0.093733, 0.962996,
		0.733097, -0.668097, -0.127335,
		0.631440, 0.738146, -0.237537,
		21.929335, 17.849739, 19.924131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963753, 17.217787, 20.500683>,  <21.487326, 17.333038, 20.090406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963753, 17.217787, 20.500683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.046906, 17.592659, 20.388624>,  <22.096796, 17.817581, 20.321388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.046906, 17.592659, 20.388624>,  <21.963753, 17.217787, 20.500683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046906, 17.592659, 20.388624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336742, 0.200329, 0.920040,
		0.918363, -0.285594, -0.273943,
		0.207879, 0.937179, -0.280146,
		22.109270, 17.873814, 20.304581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.619978, 17.287386, 20.617725>,  <21.963753, 17.217787, 20.500683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.619978, 17.287386, 20.617725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.532516, 17.677227, 20.598391>,  <22.480040, 17.911133, 20.586790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.532516, 17.677227, 20.598391>,  <22.619978, 17.287386, 20.617725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532516, 17.677227, 20.598391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416105, 0.137931, 0.898794,
		0.882636, 0.176411, -0.435697,
		-0.218654, 0.974605, -0.048337,
		22.466921, 17.969608, 20.583889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239105, 17.690033, 20.799759>,  <22.619978, 17.287386, 20.617725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239105, 17.690033, 20.799759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.926453, 17.929134, 20.871023>,  <22.738861, 18.072596, 20.913782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.926453, 17.929134, 20.871023>,  <23.239105, 17.690033, 20.799759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.926453, 17.929134, 20.871023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307150, 0.120268, 0.944031,
		0.542873, 0.792606, -0.277606,
		-0.781631, 0.597756, 0.178159,
		22.691963, 18.108461, 20.924471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543406, 18.161207, 21.227350>,  <23.239105, 17.690033, 20.799759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543406, 18.161207, 21.227350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.146626, 18.193195, 21.266628>,  <22.908558, 18.212389, 21.290195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.146626, 18.193195, 21.266628>,  <23.543406, 18.161207, 21.227350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146626, 18.193195, 21.266628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121194, 0.374488, 0.919277,
		0.036742, 0.923776, -0.381165,
		-0.991948, 0.079971, 0.098197,
		22.849041, 18.217186, 21.296087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.517340, 18.770720, 21.595800>,  <23.543406, 18.161207, 21.227350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.517340, 18.770720, 21.595800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.143368, 18.633537, 21.632206>,  <22.918983, 18.551228, 21.654049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.143368, 18.633537, 21.632206>,  <23.517340, 18.770720, 21.595800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143368, 18.633537, 21.632206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044419, 0.367611, 0.928919,
		-0.352037, 0.864432, -0.358925,
		-0.934932, -0.342957, 0.091016,
		22.862888, 18.530651, 21.659510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.159267, 19.305233, 21.954134>,  <23.517340, 18.770720, 21.595800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.159267, 19.305233, 21.954134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.966175, 18.959869, 22.012783>,  <22.850319, 18.752651, 22.047974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.966175, 18.959869, 22.012783>,  <23.159267, 19.305233, 21.954134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.966175, 18.959869, 22.012783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028125, 0.152054, 0.987972,
		-0.875317, 0.481048, -0.049118,
		-0.482731, -0.863407, 0.146625,
		22.821356, 18.700848, 22.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.808842, 20.007553, 21.852934>,  <23.159267, 19.305233, 21.954134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.808842, 20.007553, 21.852934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.997066, 20.354679, 21.916769>,  <23.110001, 20.562956, 21.955070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.997066, 20.354679, 21.916769>,  <22.808842, 20.007553, 21.852934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.997066, 20.354679, 21.916769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249313, 0.042731, -0.967480,
		-0.846414, 0.495045, -0.196250,
		0.470560, 0.867816, 0.159589,
		23.138235, 20.615025, 21.964645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.565203, 20.583616, 21.299822>,  <22.808842, 20.007553, 21.852934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.565203, 20.583616, 21.299822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.931252, 20.670635, 21.435598>,  <23.150881, 20.722847, 21.517065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.931252, 20.670635, 21.435598>,  <22.565203, 20.583616, 21.299822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.931252, 20.670635, 21.435598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381659, -0.196079, -0.903266,
		-0.129947, 0.956152, -0.262465,
		0.915123, 0.217549, 0.339444,
		23.205788, 20.735899, 21.537432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.817051, 21.031569, 20.885008>,  <22.565203, 20.583616, 21.299822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.817051, 21.031569, 20.885008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.147644, 20.871807, 21.043705>,  <23.345999, 20.775949, 21.138924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.147644, 20.871807, 21.043705>,  <22.817051, 21.031569, 20.885008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147644, 20.871807, 21.043705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393692, -0.093703, -0.914454,
		0.402413, 0.911974, 0.079798,
		0.826481, -0.399404, 0.396744,
		23.395588, 20.751986, 21.162727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.432552, 21.350395, 20.499813>,  <22.817051, 21.031569, 20.885008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.432552, 21.350395, 20.499813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.581936, 21.035164, 20.695553>,  <23.671566, 20.846025, 20.812996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.581936, 21.035164, 20.695553>,  <23.432552, 21.350395, 20.499813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581936, 21.035164, 20.695553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510277, -0.266012, -0.817836,
		0.774690, 0.555132, 0.302793,
		0.373460, -0.788077, 0.489348,
		23.693974, 20.798740, 20.842358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105984, 21.281336, 20.106466>,  <23.432552, 21.350395, 20.499813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105984, 21.281336, 20.106466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.041019, 20.946480, 20.315395>,  <24.002041, 20.745567, 20.440752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.041019, 20.946480, 20.315395>,  <24.105984, 21.281336, 20.106466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.041019, 20.946480, 20.315395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379679, -0.541613, -0.749999,
		0.910751, 0.076508, 0.405807,
		-0.162410, -0.837139, 0.522323,
		23.992296, 20.695337, 20.472092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716747, 20.817202, 19.949177>,  <24.105984, 21.281336, 20.106466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716747, 20.817202, 19.949177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.392986, 20.607845, 20.055710>,  <24.198730, 20.482231, 20.119629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.392986, 20.607845, 20.055710>,  <24.716747, 20.817202, 19.949177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392986, 20.607845, 20.055710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166704, -0.639639, -0.750381,
		0.563099, -0.562960, 0.604976,
		-0.809401, -0.523391, 0.266332,
		24.150166, 20.450829, 20.135609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962994, 20.171511, 19.856657>,  <24.716747, 20.817202, 19.949177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962994, 20.171511, 19.856657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.563938, 20.144379, 19.852329>,  <24.324505, 20.128099, 19.849731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.563938, 20.144379, 19.852329>,  <24.962994, 20.171511, 19.856657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563938, 20.144379, 19.852329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052279, -0.647661, -0.760133,
		0.044550, -0.758903, 0.649678,
		-0.997638, -0.067828, -0.010822,
		24.264647, 20.124031, 19.849083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.784943, 21.134171, 24.340420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.666504, 20.763065, 24.249575>,  <20.595442, 20.540401, 24.195066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.666504, 20.763065, 24.249575>,  <20.784943, 21.134171, 24.340420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666504, 20.763065, 24.249575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263540, 0.307900, -0.914191,
		0.918082, -0.210833, -0.335670,
		-0.296094, -0.927765, -0.227115,
		20.577675, 20.484735, 24.181440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.030359, 20.996243, 23.635551>,  <20.784943, 21.134171, 24.340420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.030359, 20.996243, 23.635551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.752300, 20.711441, 23.675184>,  <20.585464, 20.540560, 23.698963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.752300, 20.711441, 23.675184>,  <21.030359, 20.996243, 23.635551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752300, 20.711441, 23.675184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388505, 0.256136, -0.885132,
		0.604841, -0.653790, -0.454670,
		-0.695148, -0.712006, 0.099080,
		20.543756, 20.497839, 23.704908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009319, 20.726252, 23.014130>,  <21.030359, 20.996243, 23.635551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009319, 20.726252, 23.014130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.657215, 20.627865, 23.176435>,  <20.445953, 20.568832, 23.273819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.657215, 20.627865, 23.176435>,  <21.009319, 20.726252, 23.014130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657215, 20.627865, 23.176435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472906, 0.384874, -0.792611,
		0.038790, -0.889591, -0.455109,
		-0.880259, -0.245969, 0.405763,
		20.393137, 20.554073, 23.298164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601292, 20.416061, 22.423500>,  <21.009319, 20.726252, 23.014130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601292, 20.416061, 22.423500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.333794, 20.537090, 22.695156>,  <20.173294, 20.609707, 22.858150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.333794, 20.537090, 22.695156>,  <20.601292, 20.416061, 22.423500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333794, 20.537090, 22.695156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537683, 0.434059, -0.722835,
		-0.513496, -0.848554, -0.127587,
		-0.668744, 0.302571, 0.679140,
		20.133171, 20.627861, 22.898899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905754, 20.202650, 22.155495>,  <20.601292, 20.416061, 22.423500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.905754, 20.202650, 22.155495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.860394, 20.511635, 22.405437>,  <19.833178, 20.697025, 22.555403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.860394, 20.511635, 22.405437>,  <19.905754, 20.202650, 22.155495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860394, 20.511635, 22.405437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590782, 0.453227, -0.667504,
		-0.798822, -0.444849, 0.404959,
		-0.113400, 0.772460, 0.624856,
		19.826374, 20.743372, 22.592894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219145, 20.274092, 22.254230>,  <19.905754, 20.202650, 22.155495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219145, 20.274092, 22.254230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.381222, 20.624664, 22.358297>,  <19.478468, 20.835009, 22.420738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.381222, 20.624664, 22.358297>,  <19.219145, 20.274092, 22.254230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.381222, 20.624664, 22.358297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559452, 0.462774, -0.687644,
		-0.723071, 0.133076, 0.677834,
		0.405193, 0.876431, 0.260169,
		19.502779, 20.887594, 22.436348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659580, 20.580973, 22.064266>,  <19.219145, 20.274092, 22.254230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659580, 20.580973, 22.064266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.929527, 20.869133, 22.128233>,  <19.091496, 21.042028, 22.166613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.929527, 20.869133, 22.128233>,  <18.659580, 20.580973, 22.064266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929527, 20.869133, 22.128233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593584, 0.658702, -0.462353,
		-0.438417, 0.217104, 0.872156,
		0.674870, 0.720401, 0.159916,
		19.131989, 21.085253, 22.176208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314577, 21.141611, 22.429155>,  <18.659580, 20.580973, 22.064266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.314577, 21.141611, 22.429155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.622826, 21.269722, 22.208769>,  <18.807775, 21.346588, 22.076536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.622826, 21.269722, 22.208769>,  <18.314577, 21.141611, 22.429155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622826, 21.269722, 22.208769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624390, 0.552534, -0.552127,
		0.127593, 0.769498, 0.625774,
		0.770622, 0.320279, -0.550966,
		18.854012, 21.365807, 22.043480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086155, 21.798037, 22.219694>,  <18.314577, 21.141611, 22.429155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086155, 21.798037, 22.219694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.378250, 21.703449, 21.963308>,  <18.553507, 21.646698, 21.809477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.378250, 21.703449, 21.963308>,  <18.086155, 21.798037, 22.219694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378250, 21.703449, 21.963308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477626, 0.494118, -0.726444,
		0.488492, 0.836618, 0.247881,
		0.730239, -0.236467, -0.640964,
		18.597322, 21.632509, 21.771019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306713, 22.460106, 21.899946>,  <18.086155, 21.798037, 22.219694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306713, 22.460106, 21.899946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.426792, 22.182213, 21.638496>,  <18.498838, 22.015476, 21.481627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.426792, 22.182213, 21.638496>,  <18.306713, 22.460106, 21.899946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.426792, 22.182213, 21.638496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398765, 0.531079, -0.747624,
		0.866527, 0.485077, -0.117608,
		0.300196, -0.694734, -0.653626,
		18.516851, 21.973793, 21.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611174, 22.848944, 21.363935>,  <18.306713, 22.460106, 21.899946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611174, 22.848944, 21.363935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.514038, 22.493408, 21.208502>,  <18.455757, 22.280087, 21.115242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.514038, 22.493408, 21.208502>,  <18.611174, 22.848944, 21.363935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514038, 22.493408, 21.208502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273017, 0.447003, -0.851851,
		0.930855, -0.100772, -0.351217,
		-0.242838, -0.888838, -0.388583,
		18.441187, 22.226757, 21.091927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054182, 22.788197, 20.826767>,  <18.611174, 22.848944, 21.363935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054182, 22.788197, 20.826767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.735836, 22.552086, 20.772842>,  <18.544828, 22.410419, 20.740488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.735836, 22.552086, 20.772842>,  <19.054182, 22.788197, 20.826767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735836, 22.552086, 20.772842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155957, 0.414989, -0.896360,
		0.585045, -0.692356, -0.422333,
		-0.795864, -0.590277, -0.134810,
		18.497076, 22.375004, 20.732399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768970, 22.955952, 20.587648>,  <19.054182, 22.788197, 20.826767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768970, 22.955952, 20.587648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.013828, 23.267811, 20.534849>,  <20.160744, 23.454927, 20.503170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.013828, 23.267811, 20.534849>,  <19.768970, 22.955952, 20.587648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013828, 23.267811, 20.534849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172632, 0.031137, 0.984494,
		0.771671, -0.625441, -0.115532,
		0.612146, 0.779650, -0.131999,
		20.197472, 23.501705, 20.495249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379189, 22.750298, 20.837141>,  <19.768970, 22.955952, 20.587648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379189, 22.750298, 20.837141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.410233, 23.149040, 20.843494>,  <20.428858, 23.388287, 20.847307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.410233, 23.149040, 20.843494>,  <20.379189, 22.750298, 20.837141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410233, 23.149040, 20.843494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343581, -0.041697, 0.938197,
		0.935911, -0.067354, -0.345737,
		0.077608, 0.996857, 0.015883,
		20.433516, 23.448097, 20.848259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004255, 22.932657, 21.100739>,  <20.379189, 22.750298, 20.837141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004255, 22.932657, 21.100739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.780651, 23.253780, 21.183689>,  <20.646488, 23.446455, 21.233459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.780651, 23.253780, 21.183689>,  <21.004255, 22.932657, 21.100739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.780651, 23.253780, 21.183689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405172, 0.046267, 0.913069,
		0.723426, 0.594438, -0.351139,
		-0.559009, 0.802809, 0.207379,
		20.612947, 23.494623, 21.245903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430037, 23.359390, 21.394573>,  <21.004255, 22.932657, 21.100739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430037, 23.359390, 21.394573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.078751, 23.510609, 21.511753>,  <20.867979, 23.601339, 21.582062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.078751, 23.510609, 21.511753>,  <21.430037, 23.359390, 21.394573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078751, 23.510609, 21.511753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380989, 0.182715, 0.906346,
		0.289114, 0.907577, -0.304494,
		-0.878214, 0.378046, 0.292952,
		20.815287, 23.624023, 21.599638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567568, 23.599627, 22.093651>,  <21.430037, 23.359390, 21.394573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567568, 23.599627, 22.093651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.175243, 23.677551, 22.090563>,  <20.939850, 23.724306, 22.088711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.175243, 23.677551, 22.090563>,  <21.567568, 23.599627, 22.093651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.175243, 23.677551, 22.090563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049841, 0.288820, 0.956085,
		0.188487, 0.937353, -0.292987,
		-0.980810, 0.194813, -0.007720,
		20.881001, 23.735994, 22.088247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446114, 24.254841, 22.384295>,  <21.567568, 23.599627, 22.093651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446114, 24.254841, 22.384295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.108067, 24.046967, 22.434423>,  <20.905239, 23.922243, 22.464500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.108067, 24.046967, 22.434423>,  <21.446114, 24.254841, 22.384295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108067, 24.046967, 22.434423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059887, 0.140915, 0.988209,
		-0.531216, 0.842657, -0.087968,
		-0.845117, -0.519684, 0.125321,
		20.854532, 23.891062, 22.472019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182837, 24.549028, 22.881550>,  <21.446114, 24.254841, 22.384295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182837, 24.549028, 22.881550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.988281, 24.199551, 22.877792>,  <20.871548, 23.989864, 22.875538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.988281, 24.199551, 22.877792>,  <21.182837, 24.549028, 22.881550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.988281, 24.199551, 22.877792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058871, -0.043498, 0.997318,
		-0.871758, 0.484528, 0.072592,
		-0.486386, -0.873694, -0.009395,
		20.842365, 23.937443, 22.874973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738417, 24.591873, 23.429478>,  <21.182837, 24.549028, 22.881550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738417, 24.591873, 23.429478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.723286, 24.198273, 23.359838>,  <20.714207, 23.962112, 23.318056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.723286, 24.198273, 23.359838>,  <20.738417, 24.591873, 23.429478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.723286, 24.198273, 23.359838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051261, -0.172081, 0.983748,
		-0.997969, 0.046135, -0.043931,
		-0.037826, -0.984002, -0.174097,
		20.711939, 23.903072, 23.307610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.254671, 24.278955, 23.973043>,  <20.738417, 24.591873, 23.429478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.254671, 24.278955, 23.973043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.478058, 23.979477, 23.830177>,  <20.612089, 23.799789, 23.744457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.478058, 23.979477, 23.830177>,  <20.254671, 24.278955, 23.973043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478058, 23.979477, 23.830177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047935, -0.458974, 0.887156,
		-0.828141, -0.478326, -0.292210,
		0.558466, -0.748697, -0.357167,
		20.645597, 23.754868, 23.723028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949043, 23.545225, 24.181185>,  <20.254671, 24.278955, 23.973043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949043, 23.545225, 24.181185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.339245, 23.501026, 24.105097>,  <20.573366, 23.474506, 24.059444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.339245, 23.501026, 24.105097>,  <19.949043, 23.545225, 24.181185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.339245, 23.501026, 24.105097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073924, -0.649748, 0.756547,
		-0.207192, -0.752076, -0.625663,
		0.975504, -0.110499, -0.190219,
		20.631895, 23.467876, 24.048031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.037992, 22.811653, 24.139965>,  <19.949043, 23.545225, 24.181185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.037992, 22.811653, 24.139965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.415253, 22.932129, 24.196178>,  <20.641609, 23.004414, 24.229906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.415253, 22.932129, 24.196178>,  <20.037992, 22.811653, 24.139965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.415253, 22.932129, 24.196178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018291, -0.469232, 0.882886,
		0.331860, -0.830124, -0.448065,
		0.943151, 0.301190, 0.140536,
		20.698198, 23.022486, 24.238338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361727, 22.282957, 24.430779>,  <20.037992, 22.811653, 24.139965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361727, 22.282957, 24.430779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.627083, 22.572643, 24.506062>,  <20.786297, 22.746456, 24.551231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.627083, 22.572643, 24.506062>,  <20.361727, 22.282957, 24.430779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627083, 22.572643, 24.506062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221159, -0.430051, 0.875297,
		0.714843, -0.539041, -0.445459,
		0.663391, 0.724217, 0.188206,
		20.826099, 22.789909, 24.562523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931704, 21.927649, 24.708614>,  <20.361727, 22.282957, 24.430779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931704, 21.927649, 24.708614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.970196, 22.304798, 24.836191>,  <20.993292, 22.531088, 24.912737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.970196, 22.304798, 24.836191>,  <20.931704, 21.927649, 24.708614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.970196, 22.304798, 24.836191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262694, -0.333127, 0.905548,
		0.960068, -0.003358, -0.279746,
		0.096232, 0.942876, 0.318943,
		20.999065, 22.587662, 24.931873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522293, 21.832653, 25.114428>,  <20.931704, 21.927649, 24.708614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522293, 21.832653, 25.114428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.372051, 22.184402, 25.231472>,  <21.281906, 22.395452, 25.301699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.372051, 22.184402, 25.231472>,  <21.522293, 21.832653, 25.114428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372051, 22.184402, 25.231472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096359, -0.276963, 0.956037,
		0.921757, 0.387286, 0.019292,
		-0.375603, 0.879375, 0.292611,
		21.259371, 22.448215, 25.319256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622135, 22.120701, 24.362144>,  <21.522293, 21.832653, 25.114428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622135, 22.120701, 24.362144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.867031, 21.813919, 24.439030>,  <22.013969, 21.629850, 24.485161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.867031, 21.813919, 24.439030>,  <21.622135, 22.120701, 24.362144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867031, 21.813919, 24.439030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223000, -0.065739, -0.972599,
		0.758573, 0.638328, 0.130782,
		0.612240, -0.766952, 0.192215,
		22.050703, 21.583834, 24.496695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.286270, 22.257887, 24.003513>,  <21.622135, 22.120701, 24.362144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.286270, 22.257887, 24.003513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.307259, 21.864277, 24.071560>,  <22.319853, 21.628111, 24.112387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.307259, 21.864277, 24.071560>,  <22.286270, 22.257887, 24.003513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.307259, 21.864277, 24.071560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369679, -0.139106, -0.918688,
		0.927677, 0.111093, 0.356474,
		0.052472, -0.984026, 0.170114,
		22.323000, 21.569069, 24.122595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.033575, 21.995882, 23.825840>,  <22.286270, 22.257887, 24.003513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.033575, 21.995882, 23.825840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.803757, 21.668495, 23.824598>,  <22.665865, 21.472063, 23.823853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.803757, 21.668495, 23.824598>,  <23.033575, 21.995882, 23.825840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.803757, 21.668495, 23.824598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474632, -0.330087, -0.815946,
		0.666800, -0.470271, 0.578120,
		-0.574545, -0.818467, -0.003104,
		22.631393, 21.422955, 23.823668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.480999, 21.433784, 23.852049>,  <23.033575, 21.995882, 23.825840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.480999, 21.433784, 23.852049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.133320, 21.329086, 23.684246>,  <22.924713, 21.266268, 23.583565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.133320, 21.329086, 23.684246>,  <23.480999, 21.433784, 23.852049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.133320, 21.329086, 23.684246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477580, -0.224560, -0.849406,
		0.128123, -0.938649, 0.320191,
		-0.869196, -0.261746, -0.419508,
		22.872561, 21.250563, 23.558393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.575787, 20.765047, 23.606279>,  <23.480999, 21.433784, 23.852049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.575787, 20.765047, 23.606279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.260754, 20.872032, 23.384224>,  <23.071733, 20.936224, 23.250990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.260754, 20.872032, 23.384224>,  <23.575787, 20.765047, 23.606279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.260754, 20.872032, 23.384224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428591, -0.409529, -0.805354,
		-0.442745, -0.872210, 0.207907,
		-0.787583, 0.267460, -0.555139,
		23.024479, 20.952271, 23.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.395359, 20.177032, 23.266499>,  <23.575787, 20.765047, 23.606279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.395359, 20.177032, 23.266499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.227070, 20.474133, 23.058146>,  <23.126097, 20.652391, 22.933134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.227070, 20.474133, 23.058146>,  <23.395359, 20.177032, 23.266499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227070, 20.474133, 23.058146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322189, -0.414405, -0.851154,
		-0.848049, -0.525921, -0.064957,
		-0.420721, 0.742748, -0.520882,
		23.100853, 20.696957, 22.901880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.297562, 19.861523, 22.561193>,  <23.395359, 20.177032, 23.266499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.297562, 19.861523, 22.561193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.198341, 20.237846, 22.468805>,  <23.138809, 20.463640, 22.413372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.198341, 20.237846, 22.468805>,  <23.297562, 19.861523, 22.561193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.198341, 20.237846, 22.468805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167819, -0.193085, -0.966724,
		-0.954101, -0.278555, -0.109992,
		-0.248049, 0.940811, -0.230969,
		23.123926, 20.520090, 22.399515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.677160, 19.427258, 22.547062>,  <23.297562, 19.861523, 22.561193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.677160, 19.427258, 22.547062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.708069, 19.028488, 22.541805>,  <22.726614, 18.789227, 22.538651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.708069, 19.028488, 22.541805>,  <22.677160, 19.427258, 22.547062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708069, 19.028488, 22.541805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063032, -0.018040, 0.997848,
		-0.995016, -0.076275, -0.064232,
		0.077270, -0.996924, -0.013142,
		22.731251, 18.729410, 22.537863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034519, 19.108654, 22.957161>,  <22.677160, 19.427258, 22.547062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034519, 19.108654, 22.957161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.324535, 18.833286, 22.949205>,  <22.498545, 18.668066, 22.944431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.324535, 18.833286, 22.949205>,  <22.034519, 19.108654, 22.957161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324535, 18.833286, 22.949205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049989, -0.081406, 0.995427,
		-0.686890, -0.720730, -0.093436,
		0.725040, -0.688419, -0.019888,
		22.542048, 18.626760, 22.943239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726250, 18.390440, 23.330017>,  <22.034519, 19.108654, 22.957161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726250, 18.390440, 23.330017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.119156, 18.464767, 23.340054>,  <22.354898, 18.509365, 23.346075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.119156, 18.464767, 23.340054>,  <21.726250, 18.390440, 23.330017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.119156, 18.464767, 23.340054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007114, -0.170662, 0.985304,
		0.187372, -0.967649, -0.168957,
		0.982263, 0.185821, 0.025093,
		22.413836, 18.520514, 23.347582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920637, 17.837374, 23.709681>,  <21.726250, 18.390440, 23.330017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920637, 17.837374, 23.709681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.231422, 18.089031, 23.718695>,  <22.417892, 18.240026, 23.724104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.231422, 18.089031, 23.718695>,  <21.920637, 17.837374, 23.709681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.231422, 18.089031, 23.718695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078470, -0.132298, 0.988099,
		0.624638, -0.765947, -0.152159,
		0.776962, 0.629144, 0.022535,
		22.464512, 18.277775, 23.725454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.307293, 17.557549, 24.323809>,  <21.920637, 17.837374, 23.709681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.307293, 17.557549, 24.323809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.473896, 17.914658, 24.255135>,  <22.573858, 18.128923, 24.213930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.473896, 17.914658, 24.255135>,  <22.307293, 17.557549, 24.323809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.473896, 17.914658, 24.255135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254086, 0.067009, 0.964857,
		0.872904, -0.445495, -0.198932,
		0.416509, 0.892774, -0.171686,
		22.598848, 18.182489, 24.203629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927662, 17.507437, 24.619083>,  <22.307293, 17.557549, 24.323809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927662, 17.507437, 24.619083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.853920, 17.900082, 24.599262>,  <22.809675, 18.135668, 24.587370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.853920, 17.900082, 24.599262>,  <22.927662, 17.507437, 24.619083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.853920, 17.900082, 24.599262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079325, 0.065112, 0.994720,
		0.979654, 0.179449, -0.089870,
		-0.184353, 0.981610, -0.049552,
		22.798615, 18.194565, 24.584396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.305994, 17.717451, 25.156040>,  <22.927662, 17.507437, 24.619083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.305994, 17.717451, 25.156040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.071457, 18.032848, 25.081768>,  <22.930735, 18.222088, 25.037205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.071457, 18.032848, 25.081768>,  <23.305994, 17.717451, 25.156040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.071457, 18.032848, 25.081768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083633, 0.169070, 0.982049,
		0.805734, 0.591347, -0.033188,
		-0.586343, 0.788495, -0.185682,
		22.895554, 18.269398, 25.026064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490808, 18.261375, 25.671667>,  <23.305994, 17.717451, 25.156040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490808, 18.261375, 25.671667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.128544, 18.396221, 25.568806>,  <22.911184, 18.477129, 25.507088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.128544, 18.396221, 25.568806>,  <23.490808, 18.261375, 25.671667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.128544, 18.396221, 25.568806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185471, 0.230409, 0.955255,
		0.381281, 0.912834, -0.146148,
		-0.905663, 0.337114, -0.257155,
		22.856846, 18.497355, 25.491659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.489840, 18.987062, 25.952423>,  <23.490808, 18.261375, 25.671667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.489840, 18.987062, 25.952423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.122395, 18.837093, 25.902493>,  <22.901928, 18.747112, 25.872534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.122395, 18.837093, 25.902493>,  <23.489840, 18.987062, 25.952423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.122395, 18.837093, 25.902493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199379, 0.167024, 0.965583,
		-0.341168, 0.911886, -0.228183,
		-0.918614, -0.374921, -0.124828,
		22.846809, 18.724617, 25.865044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.689297, 19.145630, 10.406591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291355, 19.141651, 10.366260>,  <19.052589, 19.139265, 10.342060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291355, 19.141651, 10.366260>,  <19.689297, 19.145630, 10.406591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291355, 19.141651, 10.366260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087278, -0.421328, 0.902699,
		-0.051459, 0.906854, 0.418291,
		-0.994854, -0.009945, -0.100829,
		18.992899, 19.138668, 10.336011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399248, 19.547655, 10.937171>,  <19.689297, 19.145630, 10.406591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399248, 19.547655, 10.937171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.166183, 19.240170, 10.831657>,  <19.026344, 19.055677, 10.768350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.166183, 19.240170, 10.831657>,  <19.399248, 19.547655, 10.937171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.166183, 19.240170, 10.831657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158121, -0.425593, 0.890993,
		-0.797184, 0.477438, 0.369527,
		-0.582662, -0.768715, -0.263783,
		18.991385, 19.009556, 10.752522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916435, 19.466900, 11.452399>,  <19.399248, 19.547655, 10.937171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916435, 19.466900, 11.452399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.936077, 19.107491, 11.277932>,  <18.947863, 18.891846, 11.173252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.936077, 19.107491, 11.277932>,  <18.916435, 19.466900, 11.452399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.936077, 19.107491, 11.277932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146485, -0.425495, 0.893027,
		-0.987993, -0.107743, 0.110727,
		0.049104, -0.898524, -0.436169,
		18.950808, 18.837933, 11.147081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516705, 18.994461, 11.893310>,  <18.916435, 19.466900, 11.452399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516705, 18.994461, 11.893310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.783012, 18.785110, 11.680584>,  <18.942797, 18.659500, 11.552948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.783012, 18.785110, 11.680584>,  <18.516705, 18.994461, 11.893310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783012, 18.785110, 11.680584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318690, -0.445003, 0.836904,
		-0.674673, -0.726672, -0.129476,
		0.665772, -0.523374, -0.531815,
		18.982744, 18.628098, 11.521039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496088, 18.327318, 12.186489>,  <18.516705, 18.994461, 11.893310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496088, 18.327318, 12.186489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.847759, 18.338306, 11.996207>,  <19.058762, 18.344898, 11.882038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.847759, 18.338306, 11.996207>,  <18.496088, 18.327318, 12.186489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847759, 18.338306, 11.996207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433991, -0.458334, 0.775617,
		-0.196725, -0.888355, -0.414878,
		0.879177, 0.027471, -0.475704,
		19.111511, 18.346548, 11.853496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689898, 17.658968, 12.066331>,  <18.496088, 18.327318, 12.186489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689898, 17.658968, 12.066331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.025246, 17.876781, 12.056360>,  <19.226454, 18.007469, 12.050378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.025246, 17.876781, 12.056360>,  <18.689898, 17.658968, 12.066331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.025246, 17.876781, 12.056360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299595, -0.422094, 0.855617,
		0.455389, -0.724791, -0.517010,
		0.838370, 0.544532, -0.024927,
		19.276756, 18.040140, 12.048882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143574, 17.240068, 12.321876>,  <18.689898, 17.658968, 12.066331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.143574, 17.240068, 12.321876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.352657, 17.580124, 12.347294>,  <19.478107, 17.784157, 12.362545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.352657, 17.580124, 12.347294>,  <19.143574, 17.240068, 12.321876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.352657, 17.580124, 12.347294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465639, -0.347145, 0.814046,
		0.714112, -0.395920, -0.577314,
		0.522708, 0.850140, 0.063545,
		19.509470, 17.835165, 12.366357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800768, 17.066954, 12.661560>,  <19.143574, 17.240068, 12.321876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800768, 17.066954, 12.661560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.830513, 17.463455, 12.705169>,  <19.848360, 17.701357, 12.731334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.830513, 17.463455, 12.705169>,  <19.800768, 17.066954, 12.661560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830513, 17.463455, 12.705169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650403, -0.131082, 0.748193,
		0.755940, 0.015270, -0.654462,
		0.074363, 0.991254, 0.109023,
		19.852821, 17.760832, 12.737876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.507156, 17.100183, 12.815153>,  <19.800768, 17.066954, 12.661560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.507156, 17.100183, 12.815153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.308727, 17.432125, 12.917334>,  <20.189671, 17.631290, 12.978642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.308727, 17.432125, 12.917334>,  <20.507156, 17.100183, 12.815153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308727, 17.432125, 12.917334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533096, 0.058868, 0.844004,
		0.685362, 0.554866, -0.471595,
		-0.496071, 0.829854, 0.255451,
		20.159906, 17.681082, 12.993969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040762, 17.557135, 12.999833>,  <20.507156, 17.100183, 12.815153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040762, 17.557135, 12.999833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708599, 17.688854, 13.179604>,  <20.509302, 17.767887, 13.287466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708599, 17.688854, 13.179604>,  <21.040762, 17.557135, 12.999833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708599, 17.688854, 13.179604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530264, 0.219530, 0.818918,
		0.171007, 0.918351, -0.356916,
		-0.830407, 0.329300, 0.449427,
		20.459476, 17.787643, 13.314432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334059, 18.095917, 13.480621>,  <21.040762, 17.557135, 12.999833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334059, 18.095917, 13.480621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.969704, 18.004078, 13.617777>,  <20.751091, 17.948975, 13.700070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.969704, 18.004078, 13.617777>,  <21.334059, 18.095917, 13.480621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969704, 18.004078, 13.617777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331136, 0.089152, 0.939362,
		-0.246242, 0.969195, -0.005180,
		-0.910886, -0.229595, 0.342888,
		20.696438, 17.935200, 13.720643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.183443, 18.612476, 14.067004>,  <21.334059, 18.095917, 13.480621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.183443, 18.612476, 14.067004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.945122, 18.293930, 14.108616>,  <20.802130, 18.102802, 14.133583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.945122, 18.293930, 14.108616>,  <21.183443, 18.612476, 14.067004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.945122, 18.293930, 14.108616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421813, -0.200060, 0.884336,
		-0.683441, 0.570772, 0.455113,
		-0.595804, -0.796364, 0.104030,
		20.766380, 18.055021, 14.139825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315886, 19.273829, 14.429083>,  <21.183443, 18.612476, 14.067004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315886, 19.273829, 14.429083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.677891, 19.430119, 14.361803>,  <21.895094, 19.523891, 14.321435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.677891, 19.430119, 14.361803>,  <21.315886, 19.273829, 14.429083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677891, 19.430119, 14.361803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348141, 0.453099, -0.820670,
		-0.244444, 0.801272, 0.546086,
		0.905011, 0.390723, -0.168198,
		21.949394, 19.547335, 14.311343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.209600, 19.985283, 14.343475>,  <21.315886, 19.273829, 14.429083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.209600, 19.985283, 14.343475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.537495, 19.854023, 14.155708>,  <21.734232, 19.775267, 14.043048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.537495, 19.854023, 14.155708>,  <21.209600, 19.985283, 14.343475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537495, 19.854023, 14.155708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274644, 0.494005, -0.824942,
		0.502597, 0.805157, 0.314830,
		0.819736, -0.328148, -0.469417,
		21.783415, 19.755579, 14.014883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.596136, 20.502783, 13.914589>,  <21.209600, 19.985283, 14.343475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.596136, 20.502783, 13.914589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.704079, 20.157925, 13.743065>,  <21.768845, 19.951010, 13.640150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.704079, 20.157925, 13.743065>,  <21.596136, 20.502783, 13.914589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704079, 20.157925, 13.743065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227711, 0.375561, -0.898388,
		0.935588, 0.340082, -0.094972,
		0.269858, -0.862147, -0.428810,
		21.785036, 19.899281, 13.614422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.819614, 20.743277, 13.301361>,  <21.596136, 20.502783, 13.914589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.819614, 20.743277, 13.301361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.863407, 20.357201, 13.206348>,  <21.889683, 20.125555, 13.149341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.863407, 20.357201, 13.206348>,  <21.819614, 20.743277, 13.301361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863407, 20.357201, 13.206348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333042, 0.189537, -0.923666,
		0.936535, 0.180232, -0.300698,
		0.109480, -0.965190, -0.237532,
		21.896252, 20.067644, 13.135089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276993, 20.712898, 12.676215>,  <21.819614, 20.743277, 13.301361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276993, 20.712898, 12.676215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.071423, 20.369858, 12.668192>,  <21.948080, 20.164034, 12.663378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.071423, 20.369858, 12.668192>,  <22.276993, 20.712898, 12.676215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071423, 20.369858, 12.668192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114972, 0.092032, -0.989096,
		0.850095, -0.506016, -0.145898,
		-0.513926, -0.857600, -0.020059,
		21.917244, 20.112577, 12.662174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369160, 20.466496, 12.012245>,  <22.276993, 20.712898, 12.676215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369160, 20.466496, 12.012245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.057125, 20.244793, 12.128358>,  <21.869904, 20.111771, 12.198026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.057125, 20.244793, 12.128358>,  <22.369160, 20.466496, 12.012245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057125, 20.244793, 12.128358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257810, -0.137985, -0.956292,
		0.570087, -0.820828, -0.035253,
		-0.780087, -0.554258, 0.290281,
		21.823099, 20.078516, 12.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336966, 19.970062, 11.560731>,  <22.369160, 20.466496, 12.012245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336966, 19.970062, 11.560731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.966614, 20.004349, 11.707918>,  <21.744402, 20.024921, 11.796230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.966614, 20.004349, 11.707918>,  <22.336966, 19.970062, 11.560731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.966614, 20.004349, 11.707918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367931, 0.016813, -0.929701,
		-0.085882, -0.996177, 0.015972,
		-0.925878, 0.085721, 0.367968,
		21.688850, 20.030064, 11.818309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056442, 19.470505, 11.218531>,  <22.336966, 19.970062, 11.560731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056442, 19.470505, 11.218531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.752045, 19.701687, 11.336418>,  <21.569407, 19.840395, 11.407151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.752045, 19.701687, 11.336418>,  <22.056442, 19.470505, 11.218531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752045, 19.701687, 11.336418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266047, 0.136314, -0.954273,
		-0.591701, -0.804604, 0.050029,
		-0.760992, 0.577954, 0.294720,
		21.523746, 19.875072, 11.424834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547998, 19.295321, 10.841736>,  <22.056442, 19.470505, 11.218531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547998, 19.295321, 10.841736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.392754, 19.641495, 10.968472>,  <21.299606, 19.849199, 11.044513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.392754, 19.641495, 10.968472>,  <21.547998, 19.295321, 10.841736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392754, 19.641495, 10.968472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404826, 0.148753, -0.902213,
		-0.827939, -0.478426, 0.292619,
		-0.388114, 0.865437, 0.316838,
		21.276320, 19.901125, 11.063523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.907787, 19.282976, 10.568964>,  <21.547998, 19.295321, 10.841736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.907787, 19.282976, 10.568964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.958427, 19.671021, 10.651775>,  <20.988811, 19.903847, 10.701462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.958427, 19.671021, 10.651775>,  <20.907787, 19.282976, 10.568964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958427, 19.671021, 10.651775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291350, 0.235867, -0.927083,
		-0.948202, 0.057050, 0.312502,
		0.126599, 0.970109, 0.207028,
		20.996407, 19.962053, 10.713883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291950, 19.538813, 10.440343>,  <20.907787, 19.282976, 10.568964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291950, 19.538813, 10.440343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.567173, 19.824703, 10.390152>,  <20.732307, 19.996237, 10.360038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.567173, 19.824703, 10.390152>,  <20.291950, 19.538813, 10.440343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567173, 19.824703, 10.390152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474057, 0.311806, -0.823436,
		-0.549406, 0.626055, 0.553360,
		0.688057, 0.714725, -0.125477,
		20.773590, 20.039122, 10.352509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894506, 20.143539, 10.334940>,  <20.291950, 19.538813, 10.440343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894506, 20.143539, 10.334940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.262619, 20.233234, 10.206692>,  <20.483486, 20.287052, 10.129743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.262619, 20.233234, 10.206692>,  <19.894506, 20.143539, 10.334940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.262619, 20.233234, 10.206692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390732, 0.484438, -0.782719,
		-0.020195, 0.845599, 0.533436,
		0.920283, 0.224238, -0.320620,
		20.538704, 20.300507, 10.110506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.818041, 20.875891, 10.150345>,  <19.894506, 20.143539, 10.334940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.818041, 20.875891, 10.150345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.141018, 20.743801, 9.954798>,  <20.334805, 20.664547, 9.837469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.141018, 20.743801, 9.954798>,  <19.818041, 20.875891, 10.150345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.141018, 20.743801, 9.954798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446997, 0.198349, -0.872268,
		0.385008, 0.922828, 0.012547,
		0.807442, -0.330222, -0.488868,
		20.383251, 20.644735, 9.808138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129000, 21.482628, 9.712152>,  <19.818041, 20.875891, 10.150345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129000, 21.482628, 9.712152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.270741, 21.149662, 9.541734>,  <20.355785, 20.949883, 9.439483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.270741, 21.149662, 9.541734>,  <20.129000, 21.482628, 9.712152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270741, 21.149662, 9.541734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500131, 0.216264, -0.838510,
		0.790128, 0.510209, -0.339684,
		0.354354, -0.832416, -0.426047,
		20.377047, 20.899937, 9.413919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211946, 22.199488, 9.641505>,  <20.129000, 21.482628, 9.712152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211946, 22.199488, 9.641505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.179520, 22.596619, 9.676655>,  <20.160065, 22.834898, 9.697744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.179520, 22.596619, 9.676655>,  <20.211946, 22.199488, 9.641505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.179520, 22.596619, 9.676655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448303, -0.042423, 0.892875,
		0.890198, 0.111775, -0.441648,
		-0.081065, 0.992828, 0.087874,
		20.155201, 22.894466, 9.703017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852734, 22.464573, 9.951424>,  <20.211946, 22.199488, 9.641505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852734, 22.464573, 9.951424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.517555, 22.678802, 9.993396>,  <20.316448, 22.807341, 10.018579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.517555, 22.678802, 9.993396>,  <20.852734, 22.464573, 9.951424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517555, 22.678802, 9.993396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062163, -0.097353, 0.993307,
		0.542202, 0.838860, 0.048284,
		-0.837946, 0.535572, 0.104931,
		20.266172, 22.839474, 10.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931313, 23.083473, 10.496659>,  <20.852734, 22.464573, 9.951424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931313, 23.083473, 10.496659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.564335, 22.928539, 10.460285>,  <20.344149, 22.835579, 10.438460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.564335, 22.928539, 10.460285>,  <20.931313, 23.083473, 10.496659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.564335, 22.928539, 10.460285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114819, 0.038917, 0.992624,
		-0.380940, 0.921117, -0.080178,
		-0.917443, -0.387336, -0.090936,
		20.289103, 22.812338, 10.433004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470100, 23.555597, 10.732072>,  <20.931313, 23.083473, 10.496659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470100, 23.555597, 10.732072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275368, 23.206585, 10.748497>,  <20.158527, 22.997177, 10.758352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275368, 23.206585, 10.748497>,  <20.470100, 23.555597, 10.732072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275368, 23.206585, 10.748497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028750, 0.030978, 0.999107,
		-0.873021, 0.487579, 0.010004,
		-0.486834, -0.872529, 0.041062,
		20.129318, 22.944826, 10.760816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.063543, 23.553444, 11.341217>,  <20.470100, 23.555597, 10.732072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.063543, 23.553444, 11.341217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.980015, 23.172699, 11.251462>,  <19.929897, 22.944252, 11.197609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.980015, 23.172699, 11.251462>,  <20.063543, 23.553444, 11.341217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.980015, 23.172699, 11.251462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125806, -0.253688, 0.959070,
		-0.969828, 0.172047, 0.172725,
		-0.208824, -0.951862, -0.224389,
		19.917368, 22.887140, 11.184145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497021, 23.374250, 11.756060>,  <20.063543, 23.553444, 11.341217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497021, 23.374250, 11.756060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.709095, 23.045399, 11.673110>,  <19.836340, 22.848087, 11.623340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.709095, 23.045399, 11.673110>,  <19.497021, 23.374250, 11.756060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709095, 23.045399, 11.673110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164788, -0.140003, 0.976342,
		-0.831715, -0.551814, 0.061250,
		0.530184, -0.822132, -0.207375,
		19.868151, 22.798759, 11.610898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.446709, 23.102375, 12.313154>,  <19.497021, 23.374250, 11.756060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.446709, 23.102375, 12.313154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.693348, 22.853542, 12.120147>,  <19.841331, 22.704243, 12.004342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.693348, 22.853542, 12.120147>,  <19.446709, 23.102375, 12.313154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693348, 22.853542, 12.120147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236377, -0.438332, 0.867174,
		-0.750956, -0.648753, -0.123228,
		0.616596, -0.622081, -0.482518,
		19.878326, 22.666918, 11.975391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299105, 22.500914, 12.552970>,  <19.446709, 23.102375, 12.313154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.299105, 22.500914, 12.552970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.671326, 22.457111, 12.413211>,  <19.894659, 22.430830, 12.329355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.671326, 22.457111, 12.413211>,  <19.299105, 22.500914, 12.552970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.671326, 22.457111, 12.413211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258359, -0.479818, 0.838466,
		-0.259463, -0.870508, -0.418205,
		0.930553, -0.109504, -0.349398,
		19.950491, 22.424259, 12.308392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564724, 21.720421, 12.719538>,  <19.299105, 22.500914, 12.552970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564724, 21.720421, 12.719538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.861233, 21.983925, 12.668081>,  <20.039139, 22.142027, 12.637207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.861233, 21.983925, 12.668081>,  <19.564724, 21.720421, 12.719538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861233, 21.983925, 12.668081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364756, -0.234481, 0.901095,
		0.563442, -0.714880, -0.414101,
		0.741274, 0.658760, -0.128641,
		20.083614, 22.181553, 12.629489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.177694, 21.447212, 13.007416>,  <19.564724, 21.720421, 12.719538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.177694, 21.447212, 13.007416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249210, 21.840668, 12.998562>,  <20.292120, 22.076740, 12.993249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249210, 21.840668, 12.998562>,  <20.177694, 21.447212, 13.007416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249210, 21.840668, 12.998562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376069, -0.047530, 0.925372,
		0.909179, -0.173770, -0.378414,
		0.178788, 0.983639, -0.022136,
		20.302847, 22.135759, 12.991921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.896645, 21.501970, 13.178620>,  <20.177694, 21.447212, 13.007416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.896645, 21.501970, 13.178620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.698612, 21.836979, 13.271099>,  <20.579792, 22.037985, 13.326587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.698612, 21.836979, 13.271099>,  <20.896645, 21.501970, 13.178620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.698612, 21.836979, 13.271099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287590, -0.093132, 0.953215,
		0.819870, 0.538408, -0.194755,
		-0.495081, 0.837522, 0.231197,
		20.550089, 22.088236, 13.340458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.306198, 21.839106, 13.740722>,  <20.896645, 21.501970, 13.178620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.306198, 21.839106, 13.740722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.987591, 22.079861, 13.763676>,  <20.796427, 22.224314, 13.777449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.987591, 22.079861, 13.763676>,  <21.306198, 21.839106, 13.740722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987591, 22.079861, 13.763676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231444, 0.215842, 0.948602,
		0.558565, 0.768859, -0.311225,
		-0.796516, 0.601888, 0.057386,
		20.748636, 22.260427, 13.780891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470022, 22.414471, 14.150524>,  <21.306198, 21.839106, 13.740722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470022, 22.414471, 14.150524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.070892, 22.416584, 14.176796>,  <20.831413, 22.417852, 14.192559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.070892, 22.416584, 14.176796>,  <21.470022, 22.414471, 14.150524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070892, 22.416584, 14.176796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065880, 0.099799, 0.992824,
		-0.001312, 0.994994, -0.099930,
		-0.997827, 0.005281, 0.065681,
		20.771544, 22.418169, 14.196500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231443, 23.031694, 14.504734>,  <21.470022, 22.414471, 14.150524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231443, 23.031694, 14.504734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.937759, 22.764980, 14.555857>,  <20.761549, 22.604952, 14.586531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.937759, 22.764980, 14.555857>,  <21.231443, 23.031694, 14.504734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.937759, 22.764980, 14.555857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009183, 0.197987, 0.980162,
		-0.678860, 0.718471, -0.151487,
		-0.734210, -0.666784, 0.127807,
		20.717497, 22.564945, 14.594199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806063, 23.480410, 14.937519>,  <21.231443, 23.031694, 14.504734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806063, 23.480410, 14.937519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.724342, 23.090111, 14.968967>,  <20.675310, 22.855932, 14.987837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.724342, 23.090111, 14.968967>,  <20.806063, 23.480410, 14.937519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.724342, 23.090111, 14.968967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312907, 0.141195, 0.939230,
		-0.927551, 0.167284, -0.334164,
		-0.204300, -0.975746, 0.078621,
		20.663052, 22.797386, 14.992554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175556, 23.475540, 15.252353>,  <20.806063, 23.480410, 14.937519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175556, 23.475540, 15.252353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.313141, 23.107903, 15.329252>,  <20.395691, 22.887320, 15.375392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.313141, 23.107903, 15.329252>,  <20.175556, 23.475540, 15.252353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313141, 23.107903, 15.329252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000917, 0.204413, 0.978884,
		-0.938983, -0.336875, 0.069468,
		0.343961, -0.919092, 0.192249,
		20.416328, 22.832174, 15.386927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592651, 23.133669, 15.715051>,  <20.175556, 23.475540, 15.252353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592651, 23.133669, 15.715051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.933987, 22.932762, 15.770960>,  <20.138788, 22.812218, 15.804505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.933987, 22.932762, 15.770960>,  <19.592651, 23.133669, 15.715051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933987, 22.932762, 15.770960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255558, -0.169302, 0.951854,
		-0.454424, -0.847975, -0.272831,
		0.853340, -0.502270, 0.139772,
		20.189989, 22.782082, 15.812892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312540, 22.681740, 16.174297>,  <19.592651, 23.133669, 15.715051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312540, 22.681740, 16.174297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.706982, 22.687359, 16.240505>,  <19.943647, 22.690731, 16.280230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.706982, 22.687359, 16.240505>,  <19.312540, 22.681740, 16.174297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.706982, 22.687359, 16.240505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163523, -0.093285, 0.982119,
		0.029236, -0.995540, -0.089693,
		0.986106, 0.014046, 0.165521,
		20.002813, 22.691572, 16.290161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388594, 22.161997, 16.712515>,  <19.312540, 22.681740, 16.174297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388594, 22.161997, 16.712515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.732483, 22.364292, 16.683943>,  <19.938816, 22.485670, 16.666800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.732483, 22.364292, 16.683943>,  <19.388594, 22.161997, 16.712515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.732483, 22.364292, 16.683943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044712, 0.064792, 0.996897,
		0.508799, -0.860249, 0.033090,
		0.859723, 0.505741, -0.071430,
		19.990400, 22.516014, 16.662514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828733, 22.057325, 17.278294>,  <19.388594, 22.161997, 16.712515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828733, 22.057325, 17.278294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.050468, 22.379105, 17.192902>,  <20.183510, 22.572172, 17.141666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.050468, 22.379105, 17.192902>,  <19.828733, 22.057325, 17.278294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050468, 22.379105, 17.192902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188878, 0.128211, 0.973595,
		0.810576, -0.580023, -0.080870,
		0.554339, 0.804447, -0.213478,
		20.216770, 22.620440, 17.128859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478470, 21.992239, 17.579052>,  <19.828733, 22.057325, 17.278294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478470, 21.992239, 17.579052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.446014, 22.385834, 17.515568>,  <20.426540, 22.621990, 17.477476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.446014, 22.385834, 17.515568>,  <20.478470, 21.992239, 17.579052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446014, 22.385834, 17.515568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322448, 0.176589, 0.929970,
		0.943103, 0.024282, -0.331612,
		-0.081141, 0.983985, -0.158712,
		20.421673, 22.681028, 17.467955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946070, 22.299837, 18.040623>,  <20.478470, 21.992239, 17.579052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946070, 22.299837, 18.040623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.711395, 22.607666, 17.939779>,  <20.570591, 22.792364, 17.879272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.711395, 22.607666, 17.939779>,  <20.946070, 22.299837, 18.040623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.711395, 22.607666, 17.939779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102673, 0.379492, 0.919481,
		0.803280, 0.513560, -0.301656,
		-0.586685, 0.769572, -0.252109,
		20.535389, 22.838537, 17.864147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228518, 23.042202, 18.254673>,  <20.946070, 22.299837, 18.040623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228518, 23.042202, 18.254673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828651, 23.040497, 18.244490>,  <20.588732, 23.039473, 18.238379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828651, 23.040497, 18.244490>,  <21.228518, 23.042202, 18.254673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828651, 23.040497, 18.244490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025129, 0.386514, 0.921941,
		0.005910, 0.922274, -0.386492,
		-0.999667, -0.004264, -0.025460,
		20.528751, 23.039217, 18.236851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950727, 23.780930, 18.390217>,  <21.228518, 23.042202, 18.254673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950727, 23.780930, 18.390217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.659618, 23.531075, 18.503475>,  <20.484953, 23.381161, 18.571430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.659618, 23.531075, 18.503475>,  <20.950727, 23.780930, 18.390217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659618, 23.531075, 18.503475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087964, 0.494467, 0.864734,
		-0.680153, 0.604423, -0.414806,
		-0.727773, -0.624640, 0.283146,
		20.441286, 23.343683, 18.588419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411840, 24.209190, 18.700134>,  <20.950727, 23.780930, 18.390217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.411840, 24.209190, 18.700134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.332470, 23.829216, 18.796671>,  <20.284847, 23.601231, 18.854593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.332470, 23.829216, 18.796671>,  <20.411840, 24.209190, 18.700134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332470, 23.829216, 18.796671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090783, 0.262995, 0.960517,
		-0.975902, 0.168683, -0.138424,
		-0.198428, -0.949937, 0.241343,
		20.272942, 23.544235, 18.869074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808758, 24.289749, 19.104271>,  <20.411840, 24.209190, 18.700134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.808758, 24.289749, 19.104271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.980328, 23.936565, 19.180597>,  <20.083269, 23.724655, 19.226393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.980328, 23.936565, 19.180597>,  <19.808758, 24.289749, 19.104271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.980328, 23.936565, 19.180597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067945, 0.179099, 0.981482,
		-0.900782, -0.433946, 0.016827,
		0.428924, -0.882957, 0.190814,
		20.109005, 23.671679, 19.237841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402908, 24.060780, 19.679846>,  <19.808758, 24.289749, 19.104271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402908, 24.060780, 19.679846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.747322, 23.858433, 19.658981>,  <19.953970, 23.737024, 19.646461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.747322, 23.858433, 19.658981>,  <19.402908, 24.060780, 19.679846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.747322, 23.858433, 19.658981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090262, 0.051074, 0.994608,
		-0.500474, -0.861099, 0.089637,
		0.861033, -0.505867, -0.052163,
		20.005632, 23.706673, 19.643332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352106, 23.565382, 20.214653>,  <19.402908, 24.060780, 19.679846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352106, 23.565382, 20.214653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737656, 23.617943, 20.121977>,  <19.968985, 23.649479, 20.066370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737656, 23.617943, 20.121977>,  <19.352106, 23.565382, 20.214653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.737656, 23.617943, 20.121977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230052, 0.027743, 0.972783,
		0.134257, -0.990940, -0.003489,
		0.963873, 0.131405, -0.231692,
		20.026817, 23.657364, 20.052469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082617, 22.853544, 20.096140>,  <19.352106, 23.565382, 20.214653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082617, 22.853544, 20.096140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.741676, 22.664333, 20.185356>,  <18.537113, 22.550806, 20.238886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.741676, 22.664333, 20.185356>,  <19.082617, 22.853544, 20.096140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741676, 22.664333, 20.185356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341675, 0.180804, -0.922263,
		0.395929, -0.862297, -0.315729,
		-0.852349, -0.473027, 0.223039,
		18.485971, 22.522425, 20.252268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934109, 22.210955, 19.641443>,  <19.082617, 22.853544, 20.096140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934109, 22.210955, 19.641443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.585869, 22.360256, 19.769651>,  <18.376925, 22.449837, 19.846577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.585869, 22.360256, 19.769651>,  <18.934109, 22.210955, 19.641443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.585869, 22.360256, 19.769651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353265, -0.020827, -0.935291,
		-0.342429, -0.927494, 0.149991,
		-0.870601, 0.373258, 0.320519,
		18.324688, 22.472233, 19.865807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.523819, 21.847816, 19.260937>,  <18.934109, 22.210955, 19.641443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.523819, 21.847816, 19.260937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.303928, 22.143074, 19.417370>,  <18.171993, 22.320229, 19.511229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.303928, 22.143074, 19.417370>,  <18.523819, 21.847816, 19.260937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303928, 22.143074, 19.417370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371090, 0.203644, -0.905992,
		-0.748393, -0.643175, 0.161969,
		-0.549727, 0.738143, 0.391081,
		18.139009, 22.364517, 19.534695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894873, 21.751198, 19.044502>,  <18.523819, 21.847816, 19.260937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894873, 21.751198, 19.044502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.877422, 22.142509, 19.125561>,  <17.866951, 22.377296, 19.174196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.877422, 22.142509, 19.125561>,  <17.894873, 21.751198, 19.044502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877422, 22.142509, 19.125561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543620, 0.146936, -0.826370,
		-0.838197, -0.146215, 0.525402,
		-0.043627, 0.978280, 0.202646,
		17.864334, 22.435993, 19.186356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216282, 21.980545, 18.744310>,  <17.894873, 21.751198, 19.044502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216282, 21.980545, 18.744310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.422817, 22.318760, 18.798656>,  <17.546740, 22.521688, 18.831264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.422817, 22.318760, 18.798656>,  <17.216282, 21.980545, 18.744310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422817, 22.318760, 18.798656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283251, 0.318336, -0.904672,
		-0.808185, 0.428635, 0.403869,
		0.516340, 0.845538, 0.135863,
		17.577719, 22.572422, 18.839415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
