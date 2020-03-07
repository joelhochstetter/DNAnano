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
	<-0.280692, 1.561533, 4.092306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.182926, 1.632694, 3.711021>,  <-0.124267, 1.675391, 3.482251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.182926, 1.632694, 3.711021>,  <-0.280692, 1.561533, 4.092306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.182926, 1.632694, 3.711021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210961, -0.969235, -0.126801,
		-0.946445, -0.170098, -0.274425,
		0.244414, 0.177903, -0.953212,
		-0.109602, 1.686065, 3.425058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.686146, 1.174110, 3.511427>,  <-0.280692, 1.561533, 4.092306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.686146, 1.174110, 3.511427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.313204, 1.251476, 3.389244>,  <-0.089439, 1.297896, 3.315934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.313204, 1.251476, 3.389244>,  <-0.686146, 1.174110, 3.511427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.313204, 1.251476, 3.389244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170483, -0.980241, -0.100317,
		-0.318826, 0.041456, -0.946906,
		0.932355, 0.193415, -0.305458,
		-0.033497, 1.309501, 3.297606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.698425, 0.883458, 2.891558>,  <-0.686146, 1.174110, 3.511427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.698425, 0.883458, 2.891558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.346273, 0.895807, 3.080864>,  <-0.134982, 0.903217, 3.194447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.346273, 0.895807, 3.080864>,  <-0.698425, 0.883458, 2.891558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.346273, 0.895807, 3.080864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087062, -0.991442, -0.097276,
		0.466211, 0.126843, -0.875533,
		0.880379, 0.030874, 0.473264,
		-0.082160, 0.905070, 3.222843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.098309, 0.639116, 2.506437>,  <-0.698425, 0.883458, 2.891558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.098309, 0.639116, 2.506437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.002026, 0.596987, 2.891350>,  <0.062226, 0.571709, 3.122298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.002026, 0.596987, 2.891350>,  <-0.098309, 0.639116, 2.506437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.002026, 0.596987, 2.891350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288182, -0.940867, -0.178100,
		0.924139, 0.321986, -0.205651,
		0.250836, -0.105324, 0.962283,
		0.077276, 0.565390, 3.180035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.636447, 0.415998, 2.577234>,  <-0.098309, 0.639116, 2.506437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.636447, 0.415998, 2.577234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.402023, 0.284601, 2.873512>,  <0.261369, 0.205763, 3.051279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.402023, 0.284601, 2.873512>,  <0.636447, 0.415998, 2.577234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.402023, 0.284601, 2.873512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333334, -0.930941, -0.149120,
		0.738528, 0.159506, 0.655083,
		-0.586058, -0.328491, 0.740695,
		0.226206, 0.186054, 3.095721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.073733, -0.027951, 3.063613>,  <0.636447, 0.415998, 2.577234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.073733, -0.027951, 3.063613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692383, -0.141342, 3.105019>,  <0.463573, -0.209377, 3.129862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692383, -0.141342, 3.105019>,  <1.073733, -0.027951, 3.063613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.692383, -0.141342, 3.105019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281260, -0.958966, -0.035736,
		0.109397, -0.004956, 0.993986,
		-0.953376, -0.283478, 0.103514,
		0.406370, -0.226386, 3.136073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.042723, -0.587366, 3.588875>,  <1.073733, -0.027951, 3.063613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.042723, -0.587366, 3.588875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.688732, -0.633408, 3.408401>,  <0.476338, -0.661032, 3.300117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.688732, -0.633408, 3.408401>,  <1.042723, -0.587366, 3.588875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.688732, -0.633408, 3.408401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209702, -0.963661, -0.165477,
		-0.415742, -0.241058, 0.876955,
		-0.884977, -0.115104, -0.451184,
		0.423239, -0.667939, 3.273046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.976828, -1.229032, 3.710187>,  <1.042723, -0.587366, 3.588875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.976828, -1.229032, 3.710187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692028, -1.158319, 3.438362>,  <0.521148, -1.115892, 3.275267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692028, -1.158319, 3.438362>,  <0.976828, -1.229032, 3.710187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.692028, -1.158319, 3.438362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033102, -0.958264, -0.283963,
		-0.701400, -0.224676, 0.676431,
		-0.711999, 0.176781, -0.679563,
		0.478428, -1.105285, 3.234493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.001664, 2.938133, 2.657759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769695, 3.015633, 2.341240>,  <0.630514, 3.062132, 2.151329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769695, 3.015633, 2.341240>,  <1.001664, 2.938133, 2.657759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.769695, 3.015633, 2.341240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497176, 0.685290, 0.532160,
		0.645374, 0.702025, -0.301087,
		-0.579922, 0.193749, -0.791298,
		0.595719, 3.073757, 2.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.034198, 3.680273, 2.348699>,  <1.001664, 2.938133, 2.657759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.034198, 3.680273, 2.348699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.680243, 3.494278, 2.359711>,  <0.467869, 3.382681, 2.366318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.680243, 3.494278, 2.359711>,  <1.034198, 3.680273, 2.348699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.680243, 3.494278, 2.359711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323429, 0.655878, 0.682069,
		-0.335209, 0.594652, -0.730769,
		-0.884889, -0.464988, 0.027529,
		0.414776, 3.354782, 2.367969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.498572, 4.101932, 2.056002>,  <1.034198, 3.680273, 2.348699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.498572, 4.101932, 2.056002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.370138, 3.888096, 2.368698>,  <0.293078, 3.759794, 2.556316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.370138, 3.888096, 2.368698>,  <0.498572, 4.101932, 2.056002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.370138, 3.888096, 2.368698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312888, 0.838977, 0.445217,
		-0.893871, -0.101644, -0.436650,
		-0.321086, -0.534589, 0.781741,
		0.273812, 3.727719, 2.603220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.216392, 4.097908, 2.191956>,  <0.498572, 4.101932, 2.056002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.216392, 4.097908, 2.191956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.031557, 4.051094, 2.543587>,  <0.079344, 4.023006, 2.754565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.031557, 4.051094, 2.543587>,  <-0.216392, 4.097908, 2.191956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.031557, 4.051094, 2.543587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420678, 0.843705, 0.333455,
		-0.780708, -0.523895, 0.340632,
		0.462088, -0.117035, 0.879078,
		0.107069, 4.015984, 2.807310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.748932, 4.185808, 2.759548>,  <-0.216392, 4.097908, 2.191956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.748932, 4.185808, 2.759548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.372564, 4.240116, 2.883636>,  <-0.146744, 4.272701, 2.958090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.372564, 4.240116, 2.883636>,  <-0.748932, 4.185808, 2.759548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.372564, 4.240116, 2.883636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245569, 0.904366, 0.349024,
		-0.233167, -0.404584, 0.884276,
		0.940919, 0.135770, 0.310222,
		-0.090288, 4.280847, 2.976703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.829586, 4.459149, 3.431482>,  <-0.748932, 4.185808, 2.759548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.829586, 4.459149, 3.431482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.451622, 4.545734, 3.333267>,  <-0.224844, 4.597685, 3.274338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.451622, 4.545734, 3.333267>,  <-0.829586, 4.459149, 3.431482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.451622, 4.545734, 3.333267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118192, 0.925143, 0.360750,
		0.305245, -0.311855, 0.899762,
		0.944910, 0.216462, -0.245537,
		-0.168149, 4.610673, 3.259606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.514604, 4.790031, 4.081678>,  <-0.829586, 4.459149, 3.431482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.514604, 4.790031, 4.081678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.284115, 4.917976, 3.780838>,  <-0.145821, 4.994743, 3.600334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.284115, 4.917976, 3.780838>,  <-0.514604, 4.790031, 4.081678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.284115, 4.917976, 3.780838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083280, 0.938424, 0.335298,
		0.813038, -0.130572, 0.567380,
		0.576223, 0.319862, -0.752100,
		-0.111248, 5.013935, 3.555208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.098793, 5.255192, 4.422475>,  <-0.514604, 4.790031, 4.081678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.098793, 5.255192, 4.422475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.071497, 5.363274, 4.038322>,  <0.055119, 5.428123, 3.807831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.071497, 5.363274, 4.038322>,  <0.098793, 5.255192, 4.422475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.071497, 5.363274, 4.038322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117942, 0.958060, 0.261171,
		0.990673, -0.095447, -0.097247,
		-0.068241, 0.270205, -0.960381,
		0.051025, 5.444335, 3.750208>
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
