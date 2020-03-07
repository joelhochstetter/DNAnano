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
	<2.884289, 0.225667, 2.308720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.605728, 0.311836, 2.582542>,  <2.438592, 0.363538, 2.746836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.605728, 0.311836, 2.582542>,  <2.884289, 0.225667, 2.308720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.605728, 0.311836, 2.582542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703661, -0.392407, -0.592350,
		0.141020, -0.894209, 0.424857,
		-0.696401, 0.215422, 0.684557,
		2.396808, 0.376463, 2.787910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.406208, -0.395105, 2.398431>,  <2.884289, 0.225667, 2.308720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.406208, -0.395105, 2.398431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.200108, -0.059868, 2.470116>,  <2.076447, 0.141274, 2.513127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.200108, -0.059868, 2.470116>,  <2.406208, -0.395105, 2.398431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.200108, -0.059868, 2.470116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653177, -0.248629, -0.715222,
		-0.554865, -0.485577, 0.675529,
		-0.515252, 0.838092, 0.179212,
		2.045532, 0.191560, 2.523880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.644248, -0.461992, 2.628591>,  <2.406208, -0.395105, 2.398431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.644248, -0.461992, 2.628591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.743240, -0.153374, 2.394165>,  <1.802636, 0.031797, 2.253510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.743240, -0.153374, 2.394165>,  <1.644248, -0.461992, 2.628591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.743240, -0.153374, 2.394165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537460, -0.393965, -0.745606,
		-0.806157, 0.499510, 0.317176,
		0.247482, 0.771545, -0.586064,
		1.817485, 0.078090, 2.218346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.081300, -0.186642, 2.277442>,  <1.644248, -0.461992, 2.628591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.081300, -0.186642, 2.277442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.391083, -0.079971, 2.047974>,  <1.576953, -0.015969, 1.910293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.391083, -0.079971, 2.047974>,  <1.081300, -0.186642, 2.277442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.391083, -0.079971, 2.047974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521148, -0.245134, -0.817505,
		-0.358636, 0.932091, -0.050867,
		0.774458, 0.266678, -0.573670,
		1.623420, 0.000032, 1.875872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.843564, 0.223558, 1.751944>,  <1.081300, -0.186642, 2.277442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.843564, 0.223558, 1.751944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.176739, 0.058182, 1.604820>,  <1.376643, -0.041044, 1.516546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.176739, 0.058182, 1.604820>,  <0.843564, 0.223558, 1.751944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.176739, 0.058182, 1.604820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476778, -0.198790, -0.856251,
		0.280891, 0.888566, -0.362698,
		0.832936, -0.413440, -0.367811,
		1.426620, -0.065850, 1.494477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.908731, 0.558304, 1.111606>,  <0.843564, 0.223558, 1.751944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.908731, 0.558304, 1.111606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.100842, 0.207863, 1.094749>,  <1.216108, -0.002402, 1.084636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.100842, 0.207863, 1.094749>,  <0.908731, 0.558304, 1.111606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.100842, 0.207863, 1.094749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515039, -0.242801, -0.822060,
		0.709978, 0.416521, -0.567840,
		0.480278, -0.876104, -0.042141,
		1.244925, -0.054968, 1.082107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.919395, 0.433596, 0.428700>,  <0.908731, 0.558304, 1.111606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.919395, 0.433596, 0.428700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.018467, 0.066612, 0.553230>,  <1.077910, -0.153578, 0.627948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.018467, 0.066612, 0.553230>,  <0.919395, 0.433596, 0.428700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.018467, 0.066612, 0.553230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412823, -0.390644, -0.822784,
		0.876489, 0.075264, -0.475503,
		0.247679, -0.917460, 0.311324,
		1.092771, -0.208626, 0.646628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.237165, 0.079071, -0.104504>,  <0.919395, 0.433596, 0.428700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.237165, 0.079071, -0.104504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084904, -0.208366, 0.128296>,  <0.993547, -0.380829, 0.267976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084904, -0.208366, 0.128296>,  <1.237165, 0.079071, -0.104504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.084904, -0.208366, 0.128296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489008, -0.377751, -0.786241,
		0.784840, -0.583889, -0.207605,
		-0.380655, -0.718594, 0.582001,
		0.970707, -0.423945, 0.302896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.193192, 4.102885, -0.429005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.146932, 3.776749, -0.202080>,  <-0.119175, 3.581067, -0.065925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.146932, 3.776749, -0.202080>,  <-0.193192, 4.102885, -0.429005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.146932, 3.776749, -0.202080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824469, 0.397328, 0.402965,
		-0.553963, 0.421129, 0.718175,
		0.115651, -0.815341, 0.567313,
		-0.112236, 3.532146, -0.031886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.148006, 4.332681, 0.377698>,  <-0.193192, 4.102885, -0.429005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.148006, 4.332681, 0.377698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.074496, 4.018860, 0.268112>,  <0.207998, 3.830567, 0.202360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.074496, 4.018860, 0.268112>,  <-0.148006, 4.332681, 0.377698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.074496, 4.018860, 0.268112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763498, 0.352328, 0.541236,
		-0.328102, -0.510237, 0.794989,
		0.556255, -0.784553, -0.273966,
		0.241373, 3.783494, 0.185922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.202802, 4.035318, 0.936693>,  <-0.148006, 4.332681, 0.377698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.202802, 4.035318, 0.936693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.418530, 3.961807, 0.607971>,  <0.547966, 3.917701, 0.410738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.418530, 3.961807, 0.607971>,  <0.202802, 4.035318, 0.936693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.418530, 3.961807, 0.607971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802946, 0.406349, 0.436072,
		0.253799, -0.895045, 0.366715,
		0.539318, -0.183778, -0.821804,
		0.580325, 3.906674, 0.361430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.728888, 3.516718, 0.909190>,  <0.202802, 4.035318, 0.936693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.728888, 3.516718, 0.909190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813829, 3.855087, 0.713509>,  <0.864794, 4.058109, 0.596100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813829, 3.855087, 0.713509>,  <0.728888, 3.516718, 0.909190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.813829, 3.855087, 0.713509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739001, 0.188529, 0.646788,
		0.639362, -0.498868, -0.585104,
		0.212353, 0.845924, -0.489203,
		0.877535, 4.108864, 0.566748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356086, 3.600019, 1.016660>,  <0.728888, 3.516718, 0.909190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356086, 3.600019, 1.016660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.314230, 3.978516, 0.894234>,  <1.289117, 4.205614, 0.820778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.314230, 3.978516, 0.894234>,  <1.356086, 3.600019, 1.016660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.314230, 3.978516, 0.894234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716293, 0.285204, 0.636853,
		0.689909, -0.152594, -0.707630,
		-0.104640, 0.946242, -0.306067,
		1.282838, 4.262388, 0.802414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.986245, 3.875877, 1.028924>,  <1.356086, 3.600019, 1.016660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.986245, 3.875877, 1.028924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.778590, 4.217743, 1.031609>,  <1.653997, 4.422863, 1.033220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.778590, 4.217743, 1.031609>,  <1.986245, 3.875877, 1.028924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778590, 4.217743, 1.031609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626424, 0.375133, 0.683277,
		0.581455, 0.358919, -0.730128,
		-0.519136, 0.854665, 0.006712,
		1.622849, 4.474143, 1.033622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.495336, 4.421443, 0.978140>,  <1.986245, 3.875877, 1.028924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.495336, 4.421443, 0.978140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.174657, 4.601105, 1.135895>,  <1.982249, 4.708902, 1.230548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.174657, 4.601105, 1.135895>,  <2.495336, 4.421443, 0.978140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.174657, 4.601105, 1.135895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590541, 0.493151, 0.638798,
		0.092428, 0.745024, -0.660603,
		-0.801697, 0.449156, 0.394387,
		1.934148, 4.735851, 1.254211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.548395, 5.235882, 0.989393>,  <2.495336, 4.421443, 0.978140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.548395, 5.235882, 0.989393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291384, 5.132507, 1.277939>,  <2.137177, 5.070482, 1.451067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291384, 5.132507, 1.277939>,  <2.548395, 5.235882, 0.989393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.291384, 5.132507, 1.277939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517035, 0.548582, 0.657064,
		-0.565538, 0.795153, -0.218857,
		-0.642527, -0.258438, 0.721366,
		2.098625, 5.054976, 1.494349>
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
