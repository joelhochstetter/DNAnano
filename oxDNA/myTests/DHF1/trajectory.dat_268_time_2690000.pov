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
	<1.555691, 1.324815, 5.360548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.181095, 1.228867, 5.462879>,  <0.956337, 1.171298, 5.524278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.181095, 1.228867, 5.462879>,  <1.555691, 1.324815, 5.360548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.181095, 1.228867, 5.462879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348733, 0.713974, -0.607146,
		-0.037019, -0.657802, -0.752280,
		-0.936491, -0.239870, 0.255828,
		0.900148, 1.156906, 5.539628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.202147, 1.192708, 4.829602>,  <1.555691, 1.324815, 5.360548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.202147, 1.192708, 4.829602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950500, 1.332642, 5.107258>,  <0.799513, 1.416602, 5.273851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950500, 1.332642, 5.107258>,  <1.202147, 1.192708, 4.829602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.950500, 1.332642, 5.107258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226677, 0.771619, -0.594325,
		-0.743526, -0.531245, -0.406139,
		-0.629116, 0.349833, 0.694139,
		0.761766, 1.437592, 5.315500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.435400, 1.080896, 4.654440>,  <1.202147, 1.192708, 4.829602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.435400, 1.080896, 4.654440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.535748, 1.408539, 4.860790>,  <0.595956, 1.605125, 4.984601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.535748, 1.408539, 4.860790>,  <0.435400, 1.080896, 4.654440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.535748, 1.408539, 4.860790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228953, 0.568005, -0.790539,
		-0.940556, 0.080209, 0.330031,
		0.250868, 0.819108, 0.515876,
		0.611008, 1.654271, 5.015553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.171759, 1.580890, 4.647507>,  <0.435400, 1.080896, 4.654440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.171759, 1.580890, 4.647507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.193180, 1.732574, 4.709240>,  <0.412144, 1.823585, 4.746280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.193180, 1.732574, 4.709240>,  <-0.171759, 1.580890, 4.647507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.193180, 1.732574, 4.709240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180588, 0.711046, -0.679559,
		-0.367433, 0.592125, 0.717204,
		0.912349, 0.379212, 0.154331,
		0.466885, 1.846338, 4.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.301256, 2.304193, 4.655869>,  <-0.171759, 1.580890, 4.647507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.301256, 2.304193, 4.655869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.071270, 2.209564, 4.545101>,  <0.294786, 2.152787, 4.478641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.071270, 2.209564, 4.545101>,  <-0.301256, 2.304193, 4.655869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.071270, 2.209564, 4.545101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081206, 0.606306, -0.791074,
		0.355045, 0.759227, 0.545452,
		0.931316, -0.236573, -0.276920,
		0.350665, 2.138592, 4.462025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.090646, 2.938884, 4.571479>,  <-0.301256, 2.304193, 4.655869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.090646, 2.938884, 4.571479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.295181, 2.677139, 4.348644>,  <0.417902, 2.520093, 4.214943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.295181, 2.677139, 4.348644>,  <0.090646, 2.938884, 4.571479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.295181, 2.677139, 4.348644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044124, 0.667379, -0.743410,
		0.858246, 0.355553, 0.370129,
		0.511338, -0.654361, -0.557087,
		0.448583, 2.480831, 4.181518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.536827, 3.360261, 4.205674>,  <0.090646, 2.938884, 4.571479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.536827, 3.360261, 4.205674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.519714, 3.010147, 4.012989>,  <0.509447, 2.800079, 3.897378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.519714, 3.010147, 4.012989>,  <0.536827, 3.360261, 4.205674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.519714, 3.010147, 4.012989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104602, 0.475580, -0.873431,
		0.993594, -0.087755, 0.071210,
		-0.042781, -0.875284, -0.481712,
		0.506880, 2.747562, 3.868475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.077463, 3.327517, 3.717057>,  <0.536827, 3.360261, 4.205674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.077463, 3.327517, 3.717057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.854580, 3.031647, 3.566113>,  <0.720850, 2.854125, 3.475546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.854580, 3.031647, 3.566113>,  <1.077463, 3.327517, 3.717057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.854580, 3.031647, 3.566113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214800, 0.310585, -0.925958,
		0.802110, -0.597008, -0.014178,
		-0.557208, -0.739675, -0.377360,
		0.687418, 2.809744, 3.452904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.379461, 3.154804, 1.693608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.091117, 2.885880, 1.760971>,  <-0.081889, 2.724525, 1.801389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.091117, 2.885880, 1.760971>,  <0.379461, 3.154804, 1.693608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.091117, 2.885880, 1.760971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461567, -0.284418, 0.840275,
		-0.517028, 0.683451, 0.515342,
		-0.720859, -0.672310, 0.168407,
		-0.125141, 2.684186, 1.811493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.022467, 3.352587, 2.306911>,  <0.379461, 3.154804, 1.693608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.022467, 3.352587, 2.306911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.021535, 2.957840, 2.242302>,  <0.020975, 2.720992, 2.203537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.021535, 2.957840, 2.242302>,  <0.022467, 3.352587, 2.306911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.021535, 2.957840, 2.242302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398293, -0.149075, 0.905063,
		-0.917255, -0.062223, 0.393410,
		-0.002331, -0.986866, -0.161523,
		0.020835, 2.661780, 2.193845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.276673, 3.117015, 2.921306>,  <0.022467, 3.352587, 2.306911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.276673, 3.117015, 2.921306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.025434, 2.867752, 2.734901>,  <0.125310, 2.718194, 2.623059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.025434, 2.867752, 2.734901>,  <-0.276673, 3.117015, 2.921306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.025434, 2.867752, 2.734901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355317, -0.303116, 0.884234,
		-0.692272, -0.720969, 0.031031,
		0.628100, -0.623157, -0.466011,
		0.162996, 2.680805, 2.595098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.426039, 2.436783, 2.999927>,  <-0.276673, 3.117015, 2.921306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.426039, 2.436783, 2.999927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.030966, 2.470734, 2.947350>,  <0.206078, 2.491104, 2.915803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.030966, 2.470734, 2.947350>,  <-0.426039, 2.436783, 2.999927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.030966, 2.470734, 2.947350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156393, -0.509775, 0.845973,
		0.004797, -0.856110, -0.516771,
		0.987683, 0.084877, -0.131444,
		0.265339, 2.496197, 2.907916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.083240, 1.763624, 3.145184>,  <-0.426039, 2.436783, 2.999927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.083240, 1.763624, 3.145184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.160117, 2.075409, 3.204910>,  <0.306131, 2.262480, 3.240746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.160117, 2.075409, 3.204910>,  <-0.083240, 1.763624, 3.145184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.160117, 2.075409, 3.204910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303345, -0.402244, 0.863818,
		0.733376, -0.480246, -0.481169,
		0.608393, 0.779464, 0.149315,
		0.342635, 2.309248, 3.249705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.587977, 1.575227, 3.267828>,  <-0.083240, 1.763624, 3.145184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.587977, 1.575227, 3.267828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.568469, 1.932404, 3.446838>,  <0.556764, 2.146709, 3.554244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.568469, 1.932404, 3.446838>,  <0.587977, 1.575227, 3.267828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.568469, 1.932404, 3.446838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348143, -0.404762, 0.845556,
		0.936172, 0.197041, -0.291131,
		-0.048771, 0.892941, 0.447525,
		0.553838, 2.200286, 3.581096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.281280, 1.713657, 3.443951>,  <0.587977, 1.575227, 3.267828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.281280, 1.713657, 3.443951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000180, 1.897400, 3.661255>,  <0.831520, 2.007646, 3.791637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000180, 1.897400, 3.661255>,  <1.281280, 1.713657, 3.443951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.000180, 1.897400, 3.661255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420954, -0.347112, 0.838040,
		0.573533, 0.817620, 0.050565,
		-0.702750, 0.459358, 0.543261,
		0.789355, 2.035208, 3.824233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604572, 1.910075, 4.106804>,  <1.281280, 1.713657, 3.443951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604572, 1.910075, 4.106804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.225124, 1.960571, 4.222862>,  <0.997456, 1.990869, 4.292497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.225124, 1.960571, 4.222862>,  <1.604572, 1.910075, 4.106804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225124, 1.960571, 4.222862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206073, -0.449359, 0.869259,
		0.240115, 0.884387, 0.400256,
		-0.948619, 0.126240, 0.290146,
		0.940539, 1.998443, 4.309906>
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
