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
	<24.447680, 34.894547, 34.681210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183470, 35.158428, 34.824596>,  <24.024944, 35.316757, 34.910629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183470, 35.158428, 34.824596>,  <24.447680, 34.894547, 34.681210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183470, 35.158428, 34.824596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702012, 0.711969, -0.016715,
		-0.266245, 0.240608, -0.933392,
		-0.660525, 0.659703, 0.358468,
		23.985312, 35.356339, 34.932137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096840, 34.890285, 35.112633>,  <24.447680, 34.894547, 34.681210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096840, 34.890285, 35.112633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410845, 35.033066, 35.315151>,  <25.599249, 35.118736, 35.436661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410845, 35.033066, 35.315151>,  <25.096840, 34.890285, 35.112633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410845, 35.033066, 35.315151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318033, -0.933594, 0.165100,
		0.531609, 0.031413, -0.846407,
		0.785014, 0.356954, 0.506297,
		25.646349, 35.140152, 35.467041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721928, 34.983711, 34.775871>,  <25.096840, 34.890285, 35.112633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721928, 34.983711, 34.775871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680286, 34.873642, 35.158169>,  <25.655302, 34.807602, 35.387547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680286, 34.873642, 35.158169>,  <25.721928, 34.983711, 34.775871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680286, 34.873642, 35.158169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009588, -0.960642, -0.277624,
		0.994520, -0.038065, 0.097366,
		-0.104102, -0.275169, 0.955743,
		25.649055, 34.791092, 35.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236111, 34.866695, 34.187031>,  <25.721928, 34.983711, 34.775871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236111, 34.866695, 34.187031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622066, 34.773392, 34.235332>,  <26.853640, 34.717411, 34.264313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622066, 34.773392, 34.235332>,  <26.236111, 34.866695, 34.187031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622066, 34.773392, 34.235332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141620, 0.074820, -0.987089,
		0.221213, 0.969532, 0.105227,
		0.964888, -0.233259, 0.120754,
		26.911533, 34.703415, 34.271557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515112, 35.154125, 33.708118>,  <26.236111, 34.866695, 34.187031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515112, 35.154125, 33.708118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815296, 34.898914, 33.777084>,  <26.995407, 34.745789, 33.818462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815296, 34.898914, 33.777084>,  <26.515112, 35.154125, 33.708118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815296, 34.898914, 33.777084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194616, -0.035974, -0.980219,
		0.631611, 0.769172, 0.097173,
		0.750462, -0.638028, 0.172415,
		27.040434, 34.707504, 33.828808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018757, 35.435223, 33.312077>,  <26.515112, 35.154125, 33.708118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018757, 35.435223, 33.312077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085489, 35.042938, 33.352810>,  <27.125528, 34.807568, 33.377251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085489, 35.042938, 33.352810>,  <27.018757, 35.435223, 33.312077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085489, 35.042938, 33.352810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197422, -0.067962, -0.977960,
		0.966019, 0.183257, 0.182276,
		0.166830, -0.980713, 0.101832,
		27.135538, 34.748726, 33.383358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578331, 35.369358, 32.914093>,  <27.018757, 35.435223, 33.312077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578331, 35.369358, 32.914093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432058, 34.997253, 32.925995>,  <27.344296, 34.773991, 32.933136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432058, 34.997253, 32.925995>,  <27.578331, 35.369358, 32.914093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432058, 34.997253, 32.925995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305576, -0.150197, -0.940247,
		0.879148, -0.334736, 0.339190,
		-0.365680, -0.930265, 0.029758,
		27.322353, 34.718174, 32.934921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177883, 35.072590, 32.738285>,  <27.578331, 35.369358, 32.914093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177883, 35.072590, 32.738285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890657, 34.797104, 32.698162>,  <27.718323, 34.631813, 32.674088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890657, 34.797104, 32.698162>,  <28.177883, 35.072590, 32.738285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890657, 34.797104, 32.698162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395838, -0.285597, -0.872781,
		0.572448, -0.666417, 0.477695,
		-0.718064, -0.688711, -0.100304,
		27.675238, 34.590492, 32.668072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560966, 34.456230, 32.464252>,  <28.177883, 35.072590, 32.738285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560966, 34.456230, 32.464252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169487, 34.427513, 32.387318>,  <27.934599, 34.410282, 32.341156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169487, 34.427513, 32.387318>,  <28.560966, 34.456230, 32.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169487, 34.427513, 32.387318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204200, -0.243429, -0.948180,
		0.021252, -0.967258, 0.252904,
		-0.978699, -0.071794, -0.192340,
		27.875877, 34.405975, 32.329617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488358, 33.894638, 32.040249>,  <28.560966, 34.456230, 32.464252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488358, 33.894638, 32.040249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146084, 34.088085, 31.966579>,  <27.940720, 34.204151, 31.922379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146084, 34.088085, 31.966579>,  <28.488358, 33.894638, 32.040249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146084, 34.088085, 31.966579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068090, -0.247582, -0.966471,
		-0.512999, -0.839534, 0.178923,
		-0.855684, 0.483617, -0.184173,
		27.889378, 34.233170, 31.911327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930948, 33.380390, 31.870836>,  <28.488358, 33.894638, 32.040249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930948, 33.380390, 31.870836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873112, 33.737286, 31.699722>,  <27.838409, 33.951424, 31.597054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873112, 33.737286, 31.699722>,  <27.930948, 33.380390, 31.870836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873112, 33.737286, 31.699722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046014, -0.437923, -0.897834,
		-0.988421, -0.110133, 0.104375,
		-0.144589, 0.892241, -0.427785,
		27.829735, 34.004959, 31.571386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632488, 33.221939, 31.249422>,  <27.930948, 33.380390, 31.870836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632488, 33.221939, 31.249422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671431, 33.609013, 31.156378>,  <27.694796, 33.841255, 31.100552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671431, 33.609013, 31.156378>,  <27.632488, 33.221939, 31.249422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671431, 33.609013, 31.156378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143145, -0.217676, -0.965467,
		-0.984902, 0.127290, 0.117327,
		0.097355, 0.967685, -0.232610,
		27.700638, 33.899319, 31.086596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088081, 33.358685, 30.825487>,  <27.632488, 33.221939, 31.249422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088081, 33.358685, 30.825487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337011, 33.658043, 30.733740>,  <27.486370, 33.837658, 30.678692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337011, 33.658043, 30.733740>,  <27.088081, 33.358685, 30.825487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337011, 33.658043, 30.733740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118053, -0.199935, -0.972671,
		-0.773804, 0.632397, -0.036075,
		0.622327, 0.748398, -0.229367,
		27.523710, 33.882561, 30.664930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786621, 33.750652, 30.205183>,  <27.088081, 33.358685, 30.825487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786621, 33.750652, 30.205183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180696, 33.818481, 30.215343>,  <27.417143, 33.859180, 30.221439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180696, 33.818481, 30.215343>,  <26.786621, 33.750652, 30.205183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180696, 33.818481, 30.215343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033776, -0.046689, -0.998338,
		-0.168107, 0.984411, -0.051725,
		0.985190, 0.169575, 0.025400,
		27.476254, 33.869354, 30.222963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883495, 34.071548, 29.635181>,  <26.786621, 33.750652, 30.205183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883495, 34.071548, 29.635181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252710, 33.938049, 29.711720>,  <27.474239, 33.857948, 29.757643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252710, 33.938049, 29.711720>,  <26.883495, 34.071548, 29.635181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252710, 33.938049, 29.711720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156580, -0.128390, -0.979285,
		0.351402, 0.933878, -0.066250,
		0.923038, -0.333749, 0.191344,
		27.529621, 33.837925, 29.769123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279243, 34.393917, 29.170315>,  <26.883495, 34.071548, 29.635181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279243, 34.393917, 29.170315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521875, 34.098751, 29.288660>,  <27.667456, 33.921650, 29.359667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521875, 34.098751, 29.288660>,  <27.279243, 34.393917, 29.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521875, 34.098751, 29.288660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369697, -0.067653, -0.926686,
		0.703835, 0.671490, 0.231769,
		0.606581, -0.737918, 0.295864,
		27.703850, 33.877377, 29.377419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973701, 34.570511, 28.853889>,  <27.279243, 34.393917, 29.170315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973701, 34.570511, 28.853889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958170, 34.179710, 28.937765>,  <27.948851, 33.945232, 28.988091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958170, 34.179710, 28.937765>,  <27.973701, 34.570511, 28.853889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958170, 34.179710, 28.937765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426059, -0.206003, -0.880929,
		0.903862, 0.055136, 0.424257,
		-0.038827, -0.976997, 0.209690,
		27.946522, 33.886612, 29.000671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680088, 34.321304, 28.768454>,  <27.973701, 34.570511, 28.853889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680088, 34.321304, 28.768454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444752, 33.999458, 28.736328>,  <28.303551, 33.806351, 28.717052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444752, 33.999458, 28.736328>,  <28.680088, 34.321304, 28.768454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444752, 33.999458, 28.736328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542231, -0.318889, -0.777364,
		0.599869, -0.500901, 0.623903,
		-0.588338, -0.804617, -0.080312,
		28.268250, 33.758072, 28.712234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157394, 33.701511, 28.871817>,  <28.680088, 34.321304, 28.768454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157394, 33.701511, 28.871817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828167, 33.616295, 28.661228>,  <28.630630, 33.565163, 28.534876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828167, 33.616295, 28.661228>,  <29.157394, 33.701511, 28.871817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828167, 33.616295, 28.661228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567377, -0.267060, -0.778949,
		0.025352, -0.939835, 0.340685,
		-0.823068, -0.213045, -0.526471,
		28.581247, 33.552380, 28.503286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360369, 33.070980, 28.548790>,  <29.157394, 33.701511, 28.871817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360369, 33.070980, 28.548790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046543, 33.194073, 28.333471>,  <28.858248, 33.267929, 28.204281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046543, 33.194073, 28.333471>,  <29.360369, 33.070980, 28.548790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046543, 33.194073, 28.333471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446285, -0.322431, -0.834786,
		-0.430452, -0.895176, 0.115632,
		-0.784564, 0.307731, -0.538294,
		28.811174, 33.286392, 28.171984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302530, 32.490704, 27.939619>,  <29.360369, 33.070980, 28.548790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302530, 32.490704, 27.939619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094049, 32.818844, 27.845497>,  <28.968960, 33.015728, 27.789024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094049, 32.818844, 27.845497>,  <29.302530, 32.490704, 27.939619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094049, 32.818844, 27.845497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258132, -0.111267, -0.959681,
		-0.813458, -0.560930, -0.153766,
		-0.521204, 0.820352, -0.235305,
		28.937689, 33.064949, 27.774906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043541, 32.310230, 27.365387>,  <29.302530, 32.490704, 27.939619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043541, 32.310230, 27.365387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963499, 32.699841, 27.322998>,  <28.915474, 32.933605, 27.297565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963499, 32.699841, 27.322998>,  <29.043541, 32.310230, 27.365387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963499, 32.699841, 27.322998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310816, -0.039465, -0.949650,
		-0.929168, -0.222965, -0.294846,
		-0.200103, 0.974027, -0.105970,
		28.903469, 32.992050, 27.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559660, 32.445412, 26.778250>,  <29.043541, 32.310230, 27.365387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559660, 32.445412, 26.778250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766018, 32.785088, 26.823376>,  <28.889833, 32.988895, 26.850451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766018, 32.785088, 26.823376>,  <28.559660, 32.445412, 26.778250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766018, 32.785088, 26.823376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262007, -0.031031, -0.964567,
		-0.815601, 0.527173, -0.238502,
		0.515894, 0.849191, 0.112814,
		28.920786, 33.039845, 26.857220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407152, 32.858273, 26.143282>,  <28.559660, 32.445412, 26.778250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407152, 32.858273, 26.143282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750546, 32.981808, 26.307051>,  <28.956581, 33.055931, 26.405312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750546, 32.981808, 26.307051>,  <28.407152, 32.858273, 26.143282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750546, 32.981808, 26.307051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395979, 0.108146, -0.911869,
		-0.325899, 0.944946, -0.029453,
		0.858481, 0.308840, 0.409424,
		29.008089, 33.074459, 26.429878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762373, 33.201561, 25.602125>,  <28.407152, 32.858273, 26.143282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762373, 33.201561, 25.602125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063314, 33.180111, 25.864756>,  <29.243879, 33.167240, 26.022333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063314, 33.180111, 25.864756>,  <28.762373, 33.201561, 25.602125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063314, 33.180111, 25.864756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658311, 0.024356, -0.752352,
		0.024356, 0.998264, 0.053629,
		0.752352, -0.053629, 0.656575,
		29.289021, 33.164021, 26.061728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241968, 33.859394, 25.613413>,  <28.762373, 33.201561, 25.602125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241968, 33.859394, 25.613413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419924, 33.509235, 25.689047>,  <29.526697, 33.299141, 25.734428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419924, 33.509235, 25.689047>,  <29.241968, 33.859394, 25.613413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419924, 33.509235, 25.689047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494469, 0.064059, -0.866831,
		0.746709, 0.479141, 0.461356,
		0.444888, -0.875397, 0.189087,
		29.553391, 33.246616, 25.745773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988894, 33.906712, 25.593779>,  <29.241968, 33.859394, 25.613413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988894, 33.906712, 25.593779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856939, 33.545605, 25.483364>,  <29.777767, 33.328941, 25.417116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856939, 33.545605, 25.483364>,  <29.988894, 33.906712, 25.593779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856939, 33.545605, 25.483364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505520, 0.078013, -0.859281,
		0.797261, -0.423005, 0.430629,
		-0.329885, -0.902763, -0.276034,
		29.757975, 33.274776, 25.400555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392431, 34.619072, 25.910627>,  <29.988894, 33.906712, 25.593779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392431, 34.619072, 25.910627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173391, 34.860893, 26.142021>,  <30.041967, 35.005985, 26.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173391, 34.860893, 26.142021>,  <30.392431, 34.619072, 25.910627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173391, 34.860893, 26.142021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825251, 0.504390, 0.254069,
		-0.138183, 0.616524, -0.775115,
		-0.547600, 0.604557, 0.578485,
		30.009111, 35.042259, 26.315567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007244, 34.203514, 26.229572>,  <30.392431, 34.619072, 25.910627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007244, 34.203514, 26.229572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003033, 33.822193, 26.350307>,  <31.000505, 33.593403, 26.422749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003033, 33.822193, 26.350307>,  <31.007244, 34.203514, 26.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003033, 33.822193, 26.350307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410199, -0.271170, -0.870749,
		0.911935, -0.132984, -0.388187,
		-0.010531, -0.953301, 0.301839,
		30.999874, 33.536201, 26.440859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311563, 33.822437, 25.716154>,  <31.007244, 34.203514, 26.229572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311563, 33.822437, 25.716154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046301, 33.617359, 25.934280>,  <30.887142, 33.494312, 26.065155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046301, 33.617359, 25.934280>,  <31.311563, 33.822437, 25.716154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046301, 33.617359, 25.934280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431641, -0.333247, -0.838232,
		0.611480, -0.791260, -0.000304,
		-0.663158, -0.512693, 0.545314,
		30.847353, 33.463551, 26.097876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259468, 33.160156, 25.390394>,  <31.311563, 33.822437, 25.716154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259468, 33.160156, 25.390394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920080, 33.237617, 25.587410>,  <30.716448, 33.284096, 25.705620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920080, 33.237617, 25.587410>,  <31.259468, 33.160156, 25.390394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920080, 33.237617, 25.587410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529134, -0.291417, -0.796927,
		-0.010794, -0.936789, 0.349728,
		-0.848469, 0.193655, 0.492541,
		30.665539, 33.295715, 25.735172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789621, 33.195099, 25.884457>,  <31.259468, 33.160156, 25.390394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789621, 33.195099, 25.884457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082581, 33.435120, 26.013163>,  <32.258358, 33.579132, 26.090387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082581, 33.435120, 26.013163>,  <31.789621, 33.195099, 25.884457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082581, 33.435120, 26.013163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189561, -0.274193, 0.942807,
		0.653956, -0.751505, -0.087073,
		0.732399, 0.600049, 0.321766,
		32.302299, 33.615135, 26.109692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218716, 32.803925, 26.387180>,  <31.789621, 33.195099, 25.884457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218716, 32.803925, 26.387180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220123, 33.195553, 26.468578>,  <32.220966, 33.430531, 26.517418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220123, 33.195553, 26.468578>,  <32.218716, 32.803925, 26.387180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220123, 33.195553, 26.468578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289295, -0.193800, 0.937416,
		0.957233, -0.062171, 0.282558,
		0.003520, 0.979069, 0.203497,
		32.221180, 33.489273, 26.529627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646954, 32.910709, 26.970161>,  <32.218716, 32.803925, 26.387180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646954, 32.910709, 26.970161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349720, 33.171246, 26.908731>,  <32.171379, 33.327568, 26.871874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349720, 33.171246, 26.908731>,  <32.646954, 32.910709, 26.970161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349720, 33.171246, 26.908731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385114, -0.228536, 0.894124,
		0.547281, 0.723552, 0.420661,
		-0.743082, 0.651340, -0.153577,
		32.126797, 33.366646, 26.862658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573917, 33.469975, 27.536776>,  <32.646954, 32.910709, 26.970161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573917, 33.469975, 27.536776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232841, 33.365833, 27.355610>,  <32.028194, 33.303349, 27.246910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232841, 33.365833, 27.355610>,  <32.573917, 33.469975, 27.536776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232841, 33.365833, 27.355610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416741, -0.183813, 0.890247,
		-0.315026, 0.947856, 0.048238,
		-0.852693, -0.260348, -0.452916,
		31.977034, 33.287727, 27.219734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013092, 33.977840, 27.482738>,  <32.573917, 33.469975, 27.536776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013092, 33.977840, 27.482738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861399, 33.607994, 27.496975>,  <31.770384, 33.386086, 27.505518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861399, 33.607994, 27.496975>,  <32.013092, 33.977840, 27.482738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861399, 33.607994, 27.496975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476639, 0.228175, 0.848971,
		-0.793094, 0.304992, -0.527239,
		-0.379232, -0.924616, 0.035593,
		31.747629, 33.330608, 27.507652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265890, 33.981781, 27.520899>,  <32.013092, 33.977840, 27.482738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265890, 33.981781, 27.520899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390322, 33.637798, 27.682741>,  <31.464981, 33.431408, 27.779846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390322, 33.637798, 27.682741>,  <31.265890, 33.981781, 27.520899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390322, 33.637798, 27.682741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513242, 0.206299, 0.833080,
		-0.799882, -0.466814, -0.377191,
		0.311080, -0.859956, 0.404604,
		31.483646, 33.379810, 27.804123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649511, 33.622459, 27.843014>,  <31.265890, 33.981781, 27.520899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649511, 33.622459, 27.843014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968874, 33.452797, 28.013960>,  <31.160492, 33.350998, 28.116528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968874, 33.452797, 28.013960>,  <30.649511, 33.622459, 27.843014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968874, 33.452797, 28.013960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370981, 0.212521, 0.903995,
		-0.474261, -0.880298, 0.012323,
		0.798405, -0.424158, 0.427364,
		31.208395, 33.325550, 28.142170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377197, 33.187420, 28.325222>,  <30.649511, 33.622459, 27.843014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377197, 33.187420, 28.325222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748568, 33.242561, 28.463223>,  <30.971390, 33.275646, 28.546022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748568, 33.242561, 28.463223>,  <30.377197, 33.187420, 28.325222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748568, 33.242561, 28.463223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359129, 0.095160, 0.928424,
		0.095160, -0.985870, 0.137858,
		-0.928424, -0.137858, -0.344999,
		31.027094, 33.283920, 28.566723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434042, 32.648262, 28.839874>,  <30.377197, 33.187420, 28.325222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434042, 32.648262, 28.839874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733467, 32.889271, 28.950592>,  <30.913122, 33.033878, 29.017023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733467, 32.889271, 28.950592>,  <30.434042, 32.648262, 28.839874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733467, 32.889271, 28.950592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392103, 0.065616, 0.917578,
		0.534703, -0.795397, 0.285371,
		0.748564, 0.602527, 0.276792,
		30.958036, 33.070030, 29.033630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714602, 32.404491, 29.478889>,  <30.434042, 32.648262, 28.839874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714602, 32.404491, 29.478889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811075, 32.791622, 29.450186>,  <30.868959, 33.023899, 29.432964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811075, 32.791622, 29.450186>,  <30.714602, 32.404491, 29.478889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811075, 32.791622, 29.450186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390085, 0.164386, 0.905986,
		0.888630, -0.190518, 0.417181,
		0.241186, 0.967822, -0.071760,
		30.883430, 33.081970, 29.428658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013485, 32.467934, 30.132284>,  <30.714602, 32.404491, 29.478889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013485, 32.467934, 30.132284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977325, 32.846050, 30.006905>,  <30.955629, 33.072922, 29.931677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977325, 32.846050, 30.006905>,  <31.013485, 32.467934, 30.132284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977325, 32.846050, 30.006905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153467, 0.297756, 0.942226,
		0.984010, 0.133278, 0.118155,
		-0.090397, 0.945293, -0.313448,
		30.950207, 33.129639, 29.912870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492922, 32.829590, 30.491095>,  <31.013485, 32.467934, 30.132284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492922, 32.829590, 30.491095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206301, 33.080826, 30.369736>,  <31.034328, 33.231567, 30.296921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206301, 33.080826, 30.369736>,  <31.492922, 32.829590, 30.491095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206301, 33.080826, 30.369736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113416, 0.324261, 0.939144,
		0.688248, 0.707359, -0.161115,
		-0.716555, 0.628091, -0.303398,
		30.991335, 33.269253, 30.278717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626802, 33.367542, 30.958439>,  <31.492922, 32.829590, 30.491095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626802, 33.367542, 30.958439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269943, 33.484047, 30.820312>,  <31.055828, 33.553947, 30.737436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269943, 33.484047, 30.820312>,  <31.626802, 33.367542, 30.958439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269943, 33.484047, 30.820312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230485, 0.363953, 0.902449,
		0.388524, 0.884707, -0.257569,
		-0.892147, 0.291257, -0.345316,
		31.002298, 33.571423, 30.716717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634504, 33.971760, 31.318729>,  <31.626802, 33.367542, 30.958439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634504, 33.971760, 31.318729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260134, 33.893028, 31.201900>,  <31.035511, 33.845791, 31.131804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260134, 33.893028, 31.201900>,  <31.634504, 33.971760, 31.318729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260134, 33.893028, 31.201900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351862, 0.486201, 0.799876,
		-0.015430, 0.851392, -0.524302,
		-0.935924, -0.196825, -0.292071,
		30.979357, 33.833981, 31.114279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281477, 34.552116, 31.271776>,  <31.634504, 33.971760, 31.318729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281477, 34.552116, 31.271776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988539, 34.284595, 31.322956>,  <30.812777, 34.124081, 31.353664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988539, 34.284595, 31.322956>,  <31.281477, 34.552116, 31.271776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988539, 34.284595, 31.322956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322581, 0.506236, 0.799792,
		-0.599678, 0.544449, -0.586483,
		-0.732344, -0.668805, 0.127950,
		30.768835, 34.083954, 31.361341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623699, 34.859112, 31.343578>,  <31.281477, 34.552116, 31.271776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623699, 34.859112, 31.343578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534384, 34.505768, 31.508413>,  <30.480795, 34.293762, 31.607315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534384, 34.505768, 31.508413>,  <30.623699, 34.859112, 31.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534384, 34.505768, 31.508413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387988, 0.468373, 0.793783,
		-0.894208, 0.017355, -0.447315,
		-0.223286, -0.883360, 0.412090,
		30.467398, 34.240761, 31.632040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938616, 34.943539, 31.703947>,  <30.623699, 34.859112, 31.343578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938616, 34.943539, 31.703947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115076, 34.622559, 31.864679>,  <30.220953, 34.429970, 31.961119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115076, 34.622559, 31.864679>,  <29.938616, 34.943539, 31.703947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115076, 34.622559, 31.864679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305865, 0.286506, 0.907943,
		-0.843702, -0.523445, -0.119048,
		0.441150, -0.802446, 0.401829,
		30.247421, 34.381824, 31.985228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485958, 34.636162, 32.176456>,  <29.938616, 34.943539, 31.703947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485958, 34.636162, 32.176456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840036, 34.492134, 32.294292>,  <30.052483, 34.405720, 32.364994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840036, 34.492134, 32.294292>,  <29.485958, 34.636162, 32.176456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840036, 34.492134, 32.294292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185411, 0.307707, 0.933241,
		-0.426676, -0.880720, 0.205620,
		0.885195, -0.360067, 0.294587,
		30.105595, 34.384113, 32.382668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354895, 34.171898, 32.728199>,  <29.485958, 34.636162, 32.176456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354895, 34.171898, 32.728199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744274, 34.258789, 32.757061>,  <29.977901, 34.310925, 32.774380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744274, 34.258789, 32.757061>,  <29.354895, 34.171898, 32.728199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744274, 34.258789, 32.757061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125555, 0.243139, 0.961831,
		0.191390, -0.945355, 0.263957,
		0.973450, 0.217226, 0.072160,
		30.036308, 34.323959, 32.778709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558205, 33.749386, 33.231205>,  <29.354895, 34.171898, 32.728199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558205, 33.749386, 33.231205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807880, 34.061367, 33.213036>,  <29.957685, 34.248554, 33.202133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807880, 34.061367, 33.213036>,  <29.558205, 33.749386, 33.231205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807880, 34.061367, 33.213036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167572, 0.190444, 0.967290,
		0.763090, -0.596161, 0.249571,
		0.624191, 0.779950, -0.045425,
		29.995138, 34.295353, 33.199409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988770, 33.799168, 33.879070>,  <29.558205, 33.749386, 33.231205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988770, 33.799168, 33.879070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065708, 34.162487, 33.730476>,  <30.111872, 34.380478, 33.641319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065708, 34.162487, 33.730476>,  <29.988770, 33.799168, 33.879070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065708, 34.162487, 33.730476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030114, 0.372915, 0.927377,
		0.980865, -0.189564, 0.044377,
		0.192347, 0.908295, -0.371488,
		30.123413, 34.434975, 33.619030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610165, 34.088547, 34.227375>,  <29.988770, 33.799168, 33.879070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610165, 34.088547, 34.227375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379259, 34.376911, 34.073982>,  <30.240717, 34.549931, 33.981945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379259, 34.376911, 34.073982>,  <30.610165, 34.088547, 34.227375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379259, 34.376911, 34.073982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028892, 0.451304, 0.891903,
		0.816048, 0.525941, -0.239692,
		-0.577262, 0.720910, -0.383481,
		30.206081, 34.593185, 33.958939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808231, 34.696148, 34.505154>,  <30.610165, 34.088547, 34.227375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808231, 34.696148, 34.505154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435808, 34.771595, 34.380219>,  <30.212355, 34.816864, 34.305256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435808, 34.771595, 34.380219>,  <30.808231, 34.696148, 34.505154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435808, 34.771595, 34.380219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246891, 0.304617, 0.919920,
		0.268656, 0.933613, -0.237048,
		-0.931058, 0.188617, -0.312338,
		30.156490, 34.828178, 34.286518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722612, 35.445316, 34.654778>,  <30.808231, 34.696148, 34.505154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722612, 35.445316, 34.654778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358297, 35.281776, 34.631779>,  <30.139708, 35.183651, 34.617977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358297, 35.281776, 34.631779>,  <30.722612, 35.445316, 34.654778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358297, 35.281776, 34.631779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216482, 0.354307, 0.909726,
		-0.351568, 0.841016, -0.411207,
		-0.910789, -0.408849, -0.057502,
		30.085060, 35.159122, 34.614529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223848, 35.893799, 34.578411>,  <30.722612, 35.445316, 34.654778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223848, 35.893799, 34.578411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038973, 35.590572, 34.762463>,  <29.928047, 35.408634, 34.872894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038973, 35.590572, 34.762463>,  <30.223848, 35.893799, 34.578411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038973, 35.590572, 34.762463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320762, 0.626651, 0.710225,
		-0.826737, 0.180667, -0.532790,
		-0.462188, -0.758068, 0.460125,
		29.900316, 35.363152, 34.900501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423773, 35.957355, 34.794842>,  <30.223848, 35.893799, 34.578411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423773, 35.957355, 34.794842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626579, 35.734135, 35.057598>,  <29.748264, 35.600201, 35.215252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626579, 35.734135, 35.057598>,  <29.423773, 35.957355, 34.794842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626579, 35.734135, 35.057598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298941, 0.600956, 0.741273,
		-0.808435, -0.572210, 0.137870,
		0.507018, -0.558056, 0.656891,
		29.778685, 35.566719, 35.254665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992914, 35.952343, 35.495075>,  <29.423773, 35.957355, 34.794842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992914, 35.952343, 35.495075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374662, 35.860214, 35.571102>,  <29.603712, 35.804935, 35.616718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374662, 35.860214, 35.571102>,  <28.992914, 35.952343, 35.495075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374662, 35.860214, 35.571102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000445, 0.635377, 0.772202,
		-0.298622, -0.737052, 0.606283,
		0.954371, -0.230326, 0.190065,
		29.660975, 35.791115, 35.628120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053896, 35.641846, 36.235584>,  <28.992914, 35.952343, 35.495075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053896, 35.641846, 36.235584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393862, 35.805130, 36.102314>,  <29.597841, 35.903103, 36.022354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393862, 35.805130, 36.102314>,  <29.053896, 35.641846, 36.235584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393862, 35.805130, 36.102314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165015, 0.394292, 0.904049,
		0.500414, -0.823343, 0.267753,
		0.849915, 0.408215, -0.333173,
		29.648836, 35.927593, 36.002361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551830, 35.350780, 36.587017>,  <29.053896, 35.641846, 36.235584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551830, 35.350780, 36.587017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643953, 35.733315, 36.515049>,  <29.699228, 35.962837, 36.471867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643953, 35.733315, 36.515049>,  <29.551830, 35.350780, 36.587017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643953, 35.733315, 36.515049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010550, 0.187336, 0.982239,
		0.973060, -0.224321, 0.053235,
		0.230309, 0.956340, -0.179922,
		29.713047, 36.020218, 36.461071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176605, 35.521923, 36.757530>,  <29.551830, 35.350780, 36.587017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176605, 35.521923, 36.757530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941425, 35.844681, 36.780258>,  <29.800318, 36.038338, 36.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941425, 35.844681, 36.780258>,  <30.176605, 35.521923, 36.757530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941425, 35.844681, 36.780258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135497, 0.028987, 0.990354,
		0.797467, 0.589979, -0.126375,
		-0.587951, 0.806898, 0.056824,
		29.765039, 36.086750, 36.797306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428688, 36.114605, 36.971375>,  <30.176605, 35.521923, 36.757530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428688, 36.114605, 36.971375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065214, 36.114689, 37.138367>,  <29.847130, 36.114738, 37.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065214, 36.114689, 37.138367>,  <30.428688, 36.114605, 36.971375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065214, 36.114689, 37.138367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410800, 0.178607, 0.894060,
		-0.074376, 0.983920, -0.162384,
		-0.908687, 0.000211, 0.417478,
		29.792608, 36.114754, 37.263611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137110, 36.728104, 37.268700>,  <30.428688, 36.114605, 36.971375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137110, 36.728104, 37.268700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016279, 36.411846, 37.481728>,  <29.943781, 36.222092, 37.609543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016279, 36.411846, 37.481728>,  <30.137110, 36.728104, 37.268700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016279, 36.411846, 37.481728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533724, 0.322628, 0.781697,
		-0.789867, 0.520376, 0.324529,
		-0.302074, -0.790646, 0.532570,
		29.925657, 36.174652, 37.641499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727121, 36.929276, 37.925385>,  <30.137110, 36.728104, 37.268700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727121, 36.929276, 37.925385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940361, 36.590900, 37.919769>,  <30.068306, 36.387875, 37.916401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940361, 36.590900, 37.919769>,  <29.727121, 36.929276, 37.925385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940361, 36.590900, 37.919769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736799, 0.456042, 0.499152,
		-0.415849, -0.276441, 0.866401,
		0.533101, -0.845935, -0.014037,
		30.100292, 36.337120, 37.915558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083458, 36.867146, 38.613777>,  <29.727121, 36.929276, 37.925385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083458, 36.867146, 38.613777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285931, 36.581959, 38.419682>,  <30.407413, 36.410847, 38.303226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285931, 36.581959, 38.419682>,  <30.083458, 36.867146, 38.613777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285931, 36.581959, 38.419682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792662, 0.162920, 0.587490,
		-0.339809, -0.682004, 0.647612,
		0.506179, -0.712971, -0.485236,
		30.437784, 36.368069, 38.274109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436142, 36.495743, 39.101940>,  <30.083458, 36.867146, 38.613777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436142, 36.495743, 39.101940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646967, 36.451145, 38.764946>,  <30.773462, 36.424389, 38.562752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646967, 36.451145, 38.764946>,  <30.436142, 36.495743, 39.101940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646967, 36.451145, 38.764946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825273, 0.303736, 0.476098,
		0.202812, -0.946211, 0.252097,
		0.527060, -0.111491, -0.842483,
		30.805084, 36.417698, 38.512199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068113, 36.058765, 39.332008>,  <30.436142, 36.495743, 39.101940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068113, 36.058765, 39.332008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123934, 36.264301, 38.993423>,  <31.157427, 36.387623, 38.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123934, 36.264301, 38.993423>,  <31.068113, 36.058765, 39.332008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123934, 36.264301, 38.993423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859016, 0.362394, 0.361611,
		0.492561, -0.777587, -0.390821,
		0.139553, 0.513837, -0.846461,
		31.165800, 36.418453, 38.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809050, 35.989315, 39.204777>,  <31.068113, 36.058765, 39.332008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809050, 35.989315, 39.204777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653574, 36.313606, 39.029675>,  <31.560287, 36.508183, 38.924614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653574, 36.313606, 39.029675>,  <31.809050, 35.989315, 39.204777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653574, 36.313606, 39.029675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743021, 0.556763, 0.371396,
		0.544831, -0.180906, -0.818799,
		-0.388690, 0.810733, -0.437759,
		31.536966, 36.556828, 38.898346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398418, 36.364300, 39.234081>,  <31.809050, 35.989315, 39.204777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398418, 36.364300, 39.234081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161373, 36.620033, 39.038101>,  <32.019146, 36.773476, 38.920513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161373, 36.620033, 39.038101>,  <32.398418, 36.364300, 39.234081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161373, 36.620033, 39.038101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509086, 0.768668, 0.387274,
		0.624211, -0.019925, -0.781001,
		-0.592614, 0.639338, -0.489955,
		31.983589, 36.811836, 38.891113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787563, 36.779400, 38.770729>,  <32.398418, 36.364300, 39.234081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787563, 36.779400, 38.770729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474190, 37.004391, 38.876450>,  <32.286167, 37.139385, 38.939880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474190, 37.004391, 38.876450>,  <32.787563, 36.779400, 38.770729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474190, 37.004391, 38.876450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618411, 0.663334, 0.421374,
		0.061695, 0.493563, -0.867519,
		-0.783430, 0.562480, 0.264300,
		32.239162, 37.173134, 38.955738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004734, 37.452015, 38.641171>,  <32.787563, 36.779400, 38.770729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004734, 37.452015, 38.641171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687603, 37.494781, 38.881168>,  <32.497326, 37.520443, 39.025169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687603, 37.494781, 38.881168>,  <33.004734, 37.452015, 38.641171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687603, 37.494781, 38.881168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499024, 0.679051, 0.538391,
		-0.349866, 0.726263, -0.591723,
		-0.792824, 0.106919, 0.599999,
		32.449757, 37.526855, 39.061169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989796, 38.172337, 38.814587>,  <33.004734, 37.452015, 38.641171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989796, 38.172337, 38.814587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772438, 38.008244, 39.107552>,  <32.642025, 37.909786, 39.283333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772438, 38.008244, 39.107552>,  <32.989796, 38.172337, 38.814587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772438, 38.008244, 39.107552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462197, 0.582120, 0.668962,
		-0.700785, 0.702029, -0.126710,
		-0.543391, -0.410234, 0.732417,
		32.609421, 37.885174, 39.327278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862411, 38.754940, 39.220459>,  <32.989796, 38.172337, 38.814587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862411, 38.754940, 39.220459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761871, 38.447109, 39.455261>,  <32.701546, 38.262409, 39.596142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761871, 38.447109, 39.455261>,  <32.862411, 38.754940, 39.220459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761871, 38.447109, 39.455261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245322, 0.536014, 0.807778,
		-0.936291, 0.347039, 0.054068,
		-0.251350, -0.769579, 0.587002,
		32.686466, 38.216236, 39.631363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575409, 39.073498, 39.866814>,  <32.862411, 38.754940, 39.220459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575409, 39.073498, 39.866814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707314, 38.710155, 39.969692>,  <32.786457, 38.492149, 40.031422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707314, 38.710155, 39.969692>,  <32.575409, 39.073498, 39.866814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707314, 38.710155, 39.969692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409220, 0.383046, 0.828139,
		-0.850762, -0.167837, 0.498031,
		0.329761, -0.908354, 0.257199,
		32.806240, 38.437649, 40.046852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599190, 39.061737, 40.662384>,  <32.575409, 39.073498, 39.866814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599190, 39.061737, 40.662384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837055, 38.767365, 40.532898>,  <32.979774, 38.590740, 40.455208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837055, 38.767365, 40.532898>,  <32.599190, 39.061737, 40.662384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837055, 38.767365, 40.532898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652200, 0.206130, 0.729483,
		-0.470120, -0.644920, 0.602549,
		0.594662, -0.735927, -0.323710,
		33.015453, 38.546585, 40.435783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646145, 38.486622, 41.105824>,  <32.599190, 39.061737, 40.662384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646145, 38.486622, 41.105824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992603, 38.449902, 40.909309>,  <33.200478, 38.427868, 40.791401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992603, 38.449902, 40.909309>,  <32.646145, 38.486622, 41.105824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992603, 38.449902, 40.909309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460786, -0.234013, 0.856104,
		-0.193561, -0.967890, -0.160388,
		0.866147, -0.091803, -0.491285,
		33.252449, 38.422359, 40.761925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005558, 37.965508, 41.473595>,  <32.646145, 38.486622, 41.105824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005558, 37.965508, 41.473595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306118, 38.093361, 41.242687>,  <33.486454, 38.170074, 41.104145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306118, 38.093361, 41.242687>,  <33.005558, 37.965508, 41.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306118, 38.093361, 41.242687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647627, -0.189621, 0.737986,
		0.126426, -0.928373, -0.349486,
		0.751396, 0.319637, -0.577267,
		33.531536, 38.189251, 41.069508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417946, 37.409122, 41.314732>,  <33.005558, 37.965508, 41.473595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417946, 37.409122, 41.314732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644367, 37.737900, 41.289463>,  <33.780220, 37.935165, 41.274300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644367, 37.737900, 41.289463>,  <33.417946, 37.409122, 41.314732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644367, 37.737900, 41.289463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623300, -0.376582, 0.685335,
		0.539516, -0.427314, -0.725483,
		0.566057, 0.821942, -0.063173,
		33.814186, 37.984482, 41.270512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068279, 37.170063, 41.531708>,  <33.417946, 37.409122, 41.314732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068279, 37.170063, 41.531708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101120, 37.567493, 41.562847>,  <34.120823, 37.805954, 41.581532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101120, 37.567493, 41.562847>,  <34.068279, 37.170063, 41.531708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101120, 37.567493, 41.562847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556715, -0.110512, 0.823320,
		0.826636, -0.024256, -0.562214,
		0.082102, 0.993579, 0.077850,
		34.125751, 37.865566, 41.586201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717236, 37.364056, 41.663174>,  <34.068279, 37.170063, 41.531708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717236, 37.364056, 41.663174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514568, 37.671108, 41.820160>,  <34.392967, 37.855339, 41.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514568, 37.671108, 41.820160>,  <34.717236, 37.364056, 41.663174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514568, 37.671108, 41.820160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415905, -0.181122, 0.891189,
		0.755187, 0.614769, -0.227491,
		-0.506672, 0.767629, 0.392467,
		34.362568, 37.901398, 41.937901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155334, 37.639763, 42.127529>,  <34.717236, 37.364056, 41.663174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155334, 37.639763, 42.127529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834164, 37.835140, 42.264191>,  <34.641460, 37.952366, 42.346188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834164, 37.835140, 42.264191>,  <35.155334, 37.639763, 42.127529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834164, 37.835140, 42.264191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290502, -0.179844, 0.939822,
		0.520490, 0.853864, 0.002510,
		-0.802931, 0.488439, 0.341656,
		34.593285, 37.981670, 42.366688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373260, 38.138592, 42.591660>,  <35.155334, 37.639763, 42.127529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373260, 38.138592, 42.591660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998013, 38.056427, 42.703190>,  <34.772865, 38.007130, 42.770107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998013, 38.056427, 42.703190>,  <35.373260, 38.138592, 42.591660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998013, 38.056427, 42.703190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319647, -0.203713, 0.925379,
		-0.133279, 0.957240, 0.256764,
		-0.938116, -0.205407, 0.278828,
		34.716579, 37.994804, 42.786839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319546, 38.415817, 43.292042>,  <35.373260, 38.138592, 42.591660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319546, 38.415817, 43.292042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017799, 38.155544, 43.257286>,  <34.836754, 37.999382, 43.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017799, 38.155544, 43.257286>,  <35.319546, 38.415817, 43.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017799, 38.155544, 43.257286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095597, -0.022062, 0.995175,
		-0.649458, 0.759031, -0.045561,
		-0.754364, -0.650681, -0.086890,
		34.791489, 37.960339, 43.231220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906029, 38.633537, 43.757843>,  <35.319546, 38.415817, 43.292042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906029, 38.633537, 43.757843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791695, 38.254349, 43.701775>,  <34.723095, 38.026836, 43.668133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791695, 38.254349, 43.701775>,  <34.906029, 38.633537, 43.757843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791695, 38.254349, 43.701775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054636, -0.162159, 0.985251,
		-0.956719, 0.273965, 0.098145,
		-0.285839, -0.947970, -0.140172,
		34.705944, 37.969959, 43.659721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252041, 38.496159, 44.146053>,  <34.906029, 38.633537, 43.757843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252041, 38.496159, 44.146053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433018, 38.143127, 44.094902>,  <34.541603, 37.931309, 44.064213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433018, 38.143127, 44.094902>,  <34.252041, 38.496159, 44.146053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433018, 38.143127, 44.094902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008049, -0.147425, 0.989040,
		-0.891760, -0.446450, -0.073804,
		0.452438, -0.882580, -0.127875,
		34.568748, 37.878353, 44.056541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055855, 38.283436, 44.675865>,  <34.252041, 38.496159, 44.146053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055855, 38.283436, 44.675865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318508, 37.999172, 44.574833>,  <34.476101, 37.828613, 44.514214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318508, 37.999172, 44.574833>,  <34.055855, 38.283436, 44.675865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318508, 37.999172, 44.574833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110309, -0.240803, 0.964285,
		-0.746096, -0.661048, -0.079728,
		0.656638, -0.710654, -0.252581,
		34.515499, 37.785976, 44.499058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929203, 37.572811, 44.849133>,  <34.055855, 38.283436, 44.675865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929203, 37.572811, 44.849133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327873, 37.571209, 44.816597>,  <34.567078, 37.570248, 44.797077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327873, 37.571209, 44.816597>,  <33.929203, 37.572811, 44.849133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327873, 37.571209, 44.816597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073345, -0.389918, 0.917924,
		-0.035390, -0.920841, -0.388329,
		0.996678, -0.004003, -0.081338,
		34.626877, 37.570007, 44.792194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084690, 37.024426, 45.198269>,  <33.929203, 37.572811, 44.849133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084690, 37.024426, 45.198269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441940, 37.197884, 45.150467>,  <34.656292, 37.301956, 45.121788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441940, 37.197884, 45.150467>,  <34.084690, 37.024426, 45.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441940, 37.197884, 45.150467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247222, -0.251289, 0.935807,
		0.375776, -0.865337, -0.331638,
		0.893126, 0.433642, -0.119502,
		34.709877, 37.327976, 45.114616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519405, 36.597355, 45.544338>,  <34.084690, 37.024426, 45.198269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519405, 36.597355, 45.544338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713848, 36.944595, 45.504158>,  <34.830513, 37.152939, 45.480049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713848, 36.944595, 45.504158>,  <34.519405, 36.597355, 45.544338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713848, 36.944595, 45.504158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320198, -0.069982, 0.944762,
		0.813124, -0.491421, -0.311985,
		0.486110, 0.868106, -0.100448,
		34.859680, 37.205029, 45.474022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146072, 36.526085, 45.888733>,  <34.519405, 36.597355, 45.544338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146072, 36.526085, 45.888733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146477, 36.922325, 45.834030>,  <35.146721, 37.160069, 45.801208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146477, 36.922325, 45.834030>,  <35.146072, 36.526085, 45.888733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146477, 36.922325, 45.834030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451531, 0.121569, 0.883935,
		0.892255, -0.062648, -0.447165,
		0.001015, 0.990604, -0.136758,
		35.146782, 37.219505, 45.793003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913311, 36.764229, 46.011192>,  <35.146072, 36.526085, 45.888733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913311, 36.764229, 46.011192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635971, 37.040100, 46.094719>,  <35.469566, 37.205624, 46.144836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635971, 37.040100, 46.094719>,  <35.913311, 36.764229, 46.011192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635971, 37.040100, 46.094719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455885, 0.195399, 0.868325,
		0.558063, 0.697252, -0.449895,
		-0.693350, 0.689680, 0.208821,
		35.427967, 37.247005, 46.157364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238716, 37.442825, 46.152897>,  <35.913311, 36.764229, 46.011192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238716, 37.442825, 46.152897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877888, 37.418766, 46.323849>,  <35.661392, 37.404331, 46.426422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877888, 37.418766, 46.323849>,  <36.238716, 37.442825, 46.152897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877888, 37.418766, 46.323849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390397, 0.308492, 0.867423,
		-0.184020, 0.949323, -0.254798,
		-0.902068, -0.060151, 0.427381,
		35.607265, 37.400723, 46.452065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098354, 38.054974, 46.417007>,  <36.238716, 37.442825, 46.152897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098354, 38.054974, 46.417007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902725, 37.792492, 46.646862>,  <35.785347, 37.635002, 46.784775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902725, 37.792492, 46.646862>,  <36.098354, 38.054974, 46.417007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902725, 37.792492, 46.646862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503745, 0.325329, 0.800251,
		-0.712072, 0.680852, 0.171448,
		-0.489076, -0.656202, 0.574633,
		35.756004, 37.595631, 46.819252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843849, 38.490440, 46.985111>,  <36.098354, 38.054974, 46.417007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843849, 38.490440, 46.985111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864758, 38.106361, 47.094872>,  <35.877300, 37.875916, 47.160728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864758, 38.106361, 47.094872>,  <35.843849, 38.490440, 46.985111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864758, 38.106361, 47.094872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435346, 0.269203, 0.859071,
		-0.898744, 0.074559, 0.432087,
		0.052268, -0.960193, 0.274403,
		35.880440, 37.818302, 47.177193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494709, 38.519146, 47.677216>,  <35.843849, 38.490440, 46.985111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494709, 38.519146, 47.677216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715195, 38.186134, 47.655079>,  <35.847485, 37.986328, 47.641796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715195, 38.186134, 47.655079>,  <35.494709, 38.519146, 47.677216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715195, 38.186134, 47.655079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295667, 0.132879, 0.946004,
		-0.780220, -0.537814, 0.319395,
		0.551215, -0.832526, -0.055339,
		35.880558, 37.936378, 47.638477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699108, 38.478024, 48.276344>,  <35.494709, 38.519146, 47.677216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699108, 38.478024, 48.276344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902565, 38.148029, 48.177811>,  <36.024639, 37.950031, 48.118690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902565, 38.148029, 48.177811>,  <35.699108, 38.478024, 48.276344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902565, 38.148029, 48.177811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492125, 0.043813, 0.869421,
		-0.706471, -0.563448, 0.428283,
		0.508638, -0.824989, -0.246334,
		36.055157, 37.900532, 48.103909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609440, 37.759403, 48.830818>,  <35.699108, 38.478024, 48.276344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609440, 37.759403, 48.830818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950073, 37.750034, 48.621342>,  <36.154453, 37.744415, 48.495655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950073, 37.750034, 48.621342>,  <35.609440, 37.759403, 48.830818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950073, 37.750034, 48.621342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516899, -0.128797, 0.846302,
		-0.087261, -0.991395, -0.097581,
		0.851587, -0.023409, -0.523690,
		36.205547, 37.743008, 48.464233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959881, 37.171497, 49.053608>,  <35.609440, 37.759403, 48.830818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959881, 37.171497, 49.053608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229080, 37.421547, 48.895473>,  <36.390598, 37.571579, 48.800594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229080, 37.421547, 48.895473>,  <35.959881, 37.171497, 49.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229080, 37.421547, 48.895473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648182, -0.241004, 0.722341,
		0.356277, -0.742384, -0.567391,
		0.672998, 0.625126, -0.395337,
		36.430981, 37.609085, 48.776871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571102, 36.849449, 48.771957>,  <35.959881, 37.171497, 49.053608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571102, 36.849449, 48.771957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667149, 37.221951, 48.881584>,  <36.724777, 37.445450, 48.947361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667149, 37.221951, 48.881584>,  <36.571102, 36.849449, 48.771957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667149, 37.221951, 48.881584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642170, -0.364102, 0.674571,
		0.727985, 0.014024, -0.685449,
		0.240114, 0.931253, 0.274067,
		36.739182, 37.501328, 48.963802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330456, 36.887531, 48.915100>,  <36.571102, 36.849449, 48.771957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330456, 36.887531, 48.915100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168110, 37.204788, 49.096737>,  <37.070702, 37.395142, 49.205719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168110, 37.204788, 49.096737>,  <37.330456, 36.887531, 48.915100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168110, 37.204788, 49.096737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480911, -0.237165, 0.844084,
		0.777176, 0.560957, -0.285176,
		-0.405861, 0.793145, 0.454089,
		37.046352, 37.442734, 49.232964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864403, 37.044731, 49.370930>,  <37.330456, 36.887531, 48.915100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864403, 37.044731, 49.370930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564034, 37.262238, 49.520832>,  <37.383812, 37.392742, 49.610771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564034, 37.262238, 49.520832>,  <37.864403, 37.044731, 49.370930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564034, 37.262238, 49.520832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396599, -0.082421, 0.914284,
		0.528044, 0.835180, -0.153765,
		-0.750919, 0.543766, 0.374753,
		37.338757, 37.425365, 49.633259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220051, 37.526970, 49.820255>,  <37.864403, 37.044731, 49.370930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220051, 37.526970, 49.820255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845604, 37.501060, 49.958527>,  <37.620937, 37.485516, 50.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845604, 37.501060, 49.958527>,  <38.220051, 37.526970, 49.820255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845604, 37.501060, 49.958527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351643, -0.189383, 0.916778,
		0.006081, 0.979764, 0.200062,
		-0.936114, -0.064776, 0.345679,
		37.564770, 37.481628, 50.062229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298046, 37.777706, 50.487331>,  <38.220051, 37.526970, 49.820255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298046, 37.777706, 50.487331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947800, 37.584934, 50.500271>,  <37.737652, 37.469273, 50.508034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947800, 37.584934, 50.500271>,  <38.298046, 37.777706, 50.487331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947800, 37.584934, 50.500271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188247, -0.278814, 0.941714,
		-0.444819, 0.830667, 0.334854,
		-0.875614, -0.481928, 0.032349,
		37.685116, 37.440357, 50.509975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990223, 38.039776, 51.067051>,  <38.298046, 37.777706, 50.487331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990223, 38.039776, 51.067051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783726, 37.704041, 50.998917>,  <37.659828, 37.502602, 50.958035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783726, 37.704041, 50.998917>,  <37.990223, 38.039776, 51.067051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783726, 37.704041, 50.998917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099248, -0.256178, 0.961521,
		-0.850674, 0.479470, 0.215551,
		-0.516240, -0.839333, -0.170338,
		37.628853, 37.452240, 50.947815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585659, 38.016724, 51.598068>,  <37.990223, 38.039776, 51.067051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585659, 38.016724, 51.598068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591511, 37.636951, 51.472607>,  <37.595020, 37.409088, 51.397331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591511, 37.636951, 51.472607>,  <37.585659, 38.016724, 51.598068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591511, 37.636951, 51.472607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026076, -0.313214, 0.949324,
		-0.999553, -0.022065, 0.020175,
		0.014628, -0.949426, -0.313649,
		37.595898, 37.352123, 51.378513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333206, 37.672653, 52.121292>,  <37.585659, 38.016724, 51.598068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333206, 37.672653, 52.121292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506828, 37.394699, 51.891953>,  <37.611004, 37.227928, 51.754349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506828, 37.394699, 51.891953>,  <37.333206, 37.672653, 52.121292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506828, 37.394699, 51.891953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357008, -0.451642, 0.817658,
		-0.827126, -0.559602, 0.052041,
		0.434060, -0.694885, -0.573347,
		37.637047, 37.186234, 51.719948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164062, 37.028934, 52.174282>,  <37.333206, 37.672653, 52.121292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164062, 37.028934, 52.174282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541481, 36.967655, 52.056812>,  <37.767933, 36.930889, 51.986332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541481, 36.967655, 52.056812>,  <37.164062, 37.028934, 52.174282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541481, 36.967655, 52.056812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241640, -0.288038, 0.926630,
		-0.226544, -0.945286, -0.234760,
		0.943550, -0.153195, -0.293672,
		37.824547, 36.921696, 51.968712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400608, 36.642670, 52.726513>,  <37.164062, 37.028934, 52.174282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400608, 36.642670, 52.726513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738491, 36.664848, 52.513573>,  <37.941219, 36.678154, 52.385811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738491, 36.664848, 52.513573>,  <37.400608, 36.642670, 52.726513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738491, 36.664848, 52.513573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498818, -0.442124, 0.745458,
		-0.194031, -0.895239, -0.401123,
		0.844709, 0.055445, -0.532346,
		37.991905, 36.681480, 52.353870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734413, 35.981224, 52.696129>,  <37.400608, 36.642670, 52.726513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734413, 35.981224, 52.696129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003033, 36.274708, 52.654774>,  <38.164204, 36.450798, 52.629963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003033, 36.274708, 52.654774>,  <37.734413, 35.981224, 52.696129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003033, 36.274708, 52.654774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614675, -0.473728, 0.630679,
		0.413762, -0.487078, -0.769127,
		0.671547, 0.733714, -0.103384,
		38.204498, 36.494823, 52.623760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278873, 35.688255, 52.902946>,  <37.734413, 35.981224, 52.696129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278873, 35.688255, 52.902946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406731, 36.066704, 52.882252>,  <38.483444, 36.293774, 52.869835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406731, 36.066704, 52.882252>,  <38.278873, 35.688255, 52.902946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406731, 36.066704, 52.882252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794780, -0.237985, 0.558291,
		0.515900, -0.219571, -0.828031,
		0.319644, 0.946125, -0.051734,
		38.502625, 36.350540, 52.866730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008812, 35.654758, 52.806561>,  <38.278873, 35.688255, 52.902946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008812, 35.654758, 52.806561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963711, 36.023930, 52.953796>,  <38.936649, 36.245434, 53.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963711, 36.023930, 52.953796>,  <39.008812, 35.654758, 52.806561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963711, 36.023930, 52.953796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888942, -0.071810, 0.452355,
		0.443924, 0.378214, -0.812333,
		-0.112753, 0.922929, 0.368089,
		38.929886, 36.300808, 53.064224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293140, 35.077290, 53.127480>,  <39.008812, 35.654758, 52.806561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293140, 35.077290, 53.127480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177742, 34.700970, 53.056309>,  <39.108501, 34.475178, 53.013607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177742, 34.700970, 53.056309>,  <39.293140, 35.077290, 53.127480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177742, 34.700970, 53.056309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381521, 0.283394, -0.879847,
		0.878186, -0.185952, -0.440695,
		-0.288500, -0.940803, -0.177928,
		39.091190, 34.418728, 53.002930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682610, 34.923840, 52.475285>,  <39.293140, 35.077290, 53.127480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682610, 34.923840, 52.475285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334660, 34.736286, 52.536568>,  <39.125889, 34.623756, 52.573338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334660, 34.736286, 52.536568>,  <39.682610, 34.923840, 52.475285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334660, 34.736286, 52.536568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354915, 0.379223, -0.854532,
		0.342573, -0.797709, -0.496289,
		-0.869873, -0.468881, 0.153207,
		39.073696, 34.595623, 52.582531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337502, 35.039604, 51.905048>,  <39.682610, 34.923840, 52.475285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337502, 35.039604, 51.905048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051121, 34.800430, 52.049206>,  <38.879292, 34.656925, 52.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051121, 34.800430, 52.049206>,  <39.337502, 35.039604, 51.905048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051121, 34.800430, 52.049206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547730, 0.160978, -0.821023,
		0.432903, -0.785213, -0.442759,
		-0.715952, -0.597936, 0.360396,
		38.836334, 34.621048, 52.157326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062504, 34.429569, 51.421600>,  <39.337502, 35.039604, 51.905048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062504, 34.429569, 51.421600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793907, 34.592377, 51.669292>,  <38.632751, 34.690060, 51.817905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793907, 34.592377, 51.669292>,  <39.062504, 34.429569, 51.421600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793907, 34.592377, 51.669292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690244, -0.039561, -0.722495,
		-0.269572, -0.912562, 0.307507,
		-0.671487, 0.407020, 0.619226,
		38.592461, 34.714481, 51.855061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360146, 33.933643, 51.574913>,  <39.062504, 34.429569, 51.421600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360146, 33.933643, 51.574913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291725, 34.327225, 51.595249>,  <38.250671, 34.563374, 51.607449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291725, 34.327225, 51.595249>,  <38.360146, 33.933643, 51.574913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291725, 34.327225, 51.595249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610195, -0.065283, -0.789557,
		-0.773566, -0.166074, 0.611567,
		-0.171050, 0.983950, 0.050837,
		38.240410, 34.622410, 51.610500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554321, 33.922104, 51.466167>,  <38.360146, 33.933643, 51.574913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554321, 33.922104, 51.466167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758774, 34.246834, 51.353252>,  <37.881447, 34.441669, 51.285503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758774, 34.246834, 51.353252>,  <37.554321, 33.922104, 51.466167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758774, 34.246834, 51.353252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551464, 0.057840, -0.832191,
		-0.659263, 0.581033, 0.477255,
		0.511135, 0.811822, -0.282287,
		37.912113, 34.490379, 51.268566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024849, 34.444675, 51.388515>,  <37.554321, 33.922104, 51.466167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024849, 34.444675, 51.388515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329918, 34.581562, 51.168983>,  <37.512959, 34.663692, 51.037262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329918, 34.581562, 51.168983>,  <37.024849, 34.444675, 51.388515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329918, 34.581562, 51.168983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646764, 0.409688, -0.643313,
		0.004700, 0.845604, 0.533790,
		0.762676, 0.342213, -0.548832,
		37.558720, 34.684227, 51.004333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771088, 35.111462, 51.147865>,  <37.024849, 34.444675, 51.388515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771088, 35.111462, 51.147865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064934, 34.994640, 50.902901>,  <37.241241, 34.924545, 50.755924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064934, 34.994640, 50.902901>,  <36.771088, 35.111462, 51.147865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064934, 34.994640, 50.902901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470669, 0.430750, -0.770016,
		0.488682, 0.853908, 0.178974,
		0.734616, -0.292055, -0.612408,
		37.285320, 34.907024, 50.719177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567936, 35.434776, 50.559799>,  <36.771088, 35.111462, 51.147865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567936, 35.434776, 50.559799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862167, 35.205952, 50.414654>,  <37.038704, 35.068657, 50.327568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862167, 35.205952, 50.414654>,  <36.567936, 35.434776, 50.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862167, 35.205952, 50.414654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344034, 0.145976, -0.927540,
		0.583582, 0.807114, -0.089433,
		0.735576, -0.572064, -0.362864,
		37.082840, 35.034332, 50.305794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731251, 35.772926, 49.861839>,  <36.567936, 35.434776, 50.559799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731251, 35.772926, 49.861839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859428, 35.394539, 49.881710>,  <36.936333, 35.167507, 49.893631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859428, 35.394539, 49.881710>,  <36.731251, 35.772926, 49.861839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859428, 35.394539, 49.881710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212586, -0.122915, -0.969381,
		0.923106, 0.300069, -0.240486,
		0.320441, -0.945965, 0.049673,
		36.955559, 35.110748, 49.896610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239689, 35.576412, 49.232315>,  <36.731251, 35.772926, 49.861839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239689, 35.576412, 49.232315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056942, 35.247639, 49.368378>,  <36.947292, 35.050377, 49.450016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056942, 35.247639, 49.368378>,  <37.239689, 35.576412, 49.232315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056942, 35.247639, 49.368378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329315, -0.198943, -0.923024,
		0.826332, -0.533716, -0.179784,
		-0.456866, -0.821930, 0.340153,
		36.919884, 35.001060, 49.470425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395317, 35.168465, 48.744270>,  <37.239689, 35.576412, 49.232315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395317, 35.168465, 48.744270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090900, 34.988232, 48.930943>,  <36.908253, 34.880093, 49.042946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090900, 34.988232, 48.930943>,  <37.395317, 35.168465, 48.744270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090900, 34.988232, 48.930943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297143, -0.397361, -0.868223,
		0.576650, -0.799423, 0.168519,
		-0.761040, -0.450586, 0.466681,
		36.862587, 34.853054, 49.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369915, 34.444962, 48.426800>,  <37.395317, 35.168465, 48.744270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369915, 34.444962, 48.426800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012623, 34.519444, 48.590492>,  <36.798248, 34.564133, 48.688709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012623, 34.519444, 48.590492>,  <37.369915, 34.444962, 48.426800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012623, 34.519444, 48.590492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447708, -0.451827, -0.771628,
		0.041223, -0.872457, 0.486949,
		-0.893229, 0.186203, 0.409231,
		36.744656, 34.575306, 48.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037968, 33.786888, 48.309402>,  <37.369915, 34.444962, 48.426800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037968, 33.786888, 48.309402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738014, 34.039211, 48.389153>,  <36.558041, 34.190605, 48.437000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738014, 34.039211, 48.389153>,  <37.037968, 33.786888, 48.309402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738014, 34.039211, 48.389153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538524, -0.406996, -0.737798,
		-0.384261, -0.660636, 0.644906,
		-0.749890, 0.630805, 0.199376,
		36.513046, 34.228455, 48.448963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441864, 33.388912, 48.406803>,  <37.037968, 33.786888, 48.309402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441864, 33.388912, 48.406803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352463, 33.754875, 48.272343>,  <36.298820, 33.974453, 48.191666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352463, 33.754875, 48.272343>,  <36.441864, 33.388912, 48.406803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352463, 33.754875, 48.272343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467152, -0.403233, -0.786875,
		-0.855462, -0.018837, 0.517523,
		-0.223505, 0.914903, -0.336151,
		36.285412, 34.029346, 48.171497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837097, 33.240860, 48.082325>,  <36.441864, 33.388912, 48.406803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837097, 33.240860, 48.082325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923286, 33.609592, 47.953457>,  <35.975002, 33.830833, 47.876137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923286, 33.609592, 47.953457>,  <35.837097, 33.240860, 48.082325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923286, 33.609592, 47.953457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649353, -0.111143, -0.752321,
		-0.729322, 0.371309, 0.574647,
		0.215476, 0.921833, -0.322170,
		35.987930, 33.886143, 47.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180260, 33.476307, 47.817841>,  <35.837097, 33.240860, 48.082325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180260, 33.476307, 47.817841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431778, 33.735416, 47.645790>,  <35.582691, 33.890881, 47.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431778, 33.735416, 47.645790>,  <35.180260, 33.476307, 47.817841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431778, 33.735416, 47.645790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659772, 0.151746, -0.735985,
		-0.411478, 0.746571, 0.522798,
		0.628797, 0.647769, -0.430127,
		35.620419, 33.929749, 47.516750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814945, 34.136261, 47.590034>,  <35.180260, 33.476307, 47.817841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814945, 34.136261, 47.590034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142361, 34.109909, 47.361767>,  <35.338810, 34.094097, 47.224808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142361, 34.109909, 47.361767>,  <34.814945, 34.136261, 47.590034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142361, 34.109909, 47.361767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541248, 0.244418, -0.804556,
		0.192482, 0.967430, 0.164409,
		0.818536, -0.065877, -0.570666,
		35.387920, 34.090145, 47.190567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730545, 34.678520, 47.168468>,  <34.814945, 34.136261, 47.590034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730545, 34.678520, 47.168468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982395, 34.437313, 46.972530>,  <35.133503, 34.292587, 46.854969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982395, 34.437313, 46.972530>,  <34.730545, 34.678520, 47.168468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982395, 34.437313, 46.972530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548506, 0.101495, -0.829964,
		0.550199, 0.791246, -0.266855,
		0.629621, -0.603017, -0.489846,
		35.171280, 34.256409, 46.825577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743473, 34.927948, 46.469170>,  <34.730545, 34.678520, 47.168468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743473, 34.927948, 46.469170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891376, 34.556824, 46.449375>,  <34.980118, 34.334148, 46.437496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891376, 34.556824, 46.449375>,  <34.743473, 34.927948, 46.469170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891376, 34.556824, 46.449375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469522, -0.140627, -0.871650,
		0.801764, 0.345540, -0.487624,
		0.369763, -0.927807, -0.049489,
		35.002304, 34.278481, 46.434528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024529, 34.800549, 45.755478>,  <34.743473, 34.927948, 46.469170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024529, 34.800549, 45.755478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942226, 34.436821, 45.900146>,  <34.892845, 34.218586, 45.986950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942226, 34.436821, 45.900146>,  <35.024529, 34.800549, 45.755478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942226, 34.436821, 45.900146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410178, -0.255416, -0.875510,
		0.888492, -0.328492, -0.320428,
		-0.205756, -0.909316, 0.361675,
		34.880501, 34.164024, 46.008648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111103, 34.352219, 45.247471>,  <35.024529, 34.800549, 45.755478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111103, 34.352219, 45.247471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880959, 34.143066, 45.499043>,  <34.742870, 34.017574, 45.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880959, 34.143066, 45.499043>,  <35.111103, 34.352219, 45.247471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880959, 34.143066, 45.499043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568878, -0.296648, -0.767058,
		0.587654, -0.799119, -0.126778,
		-0.575362, -0.522885, 0.628927,
		34.708351, 33.986202, 45.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015366, 33.674000, 44.990231>,  <35.111103, 34.352219, 45.247471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015366, 33.674000, 44.990231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706894, 33.694790, 45.244030>,  <34.521812, 33.707264, 45.396309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706894, 33.694790, 45.244030>,  <35.015366, 33.674000, 44.990231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706894, 33.694790, 45.244030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620282, -0.285709, -0.730493,
		0.143312, -0.956906, 0.252573,
		-0.771176, 0.051978, 0.634497,
		34.475540, 33.710384, 45.434380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667271, 33.100098, 44.755234>,  <35.015366, 33.674000, 44.990231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667271, 33.100098, 44.755234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421173, 33.346294, 44.952267>,  <34.273514, 33.494015, 45.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421173, 33.346294, 44.952267>,  <34.667271, 33.100098, 44.755234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421173, 33.346294, 44.952267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751175, -0.268123, -0.603197,
		-0.239185, -0.741137, 0.627301,
		-0.615245, 0.615488, 0.492592,
		34.236599, 33.530945, 45.100044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148800, 32.701653, 44.861958>,  <34.667271, 33.100098, 44.755234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148800, 32.701653, 44.861958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999569, 33.070446, 44.903439>,  <33.910030, 33.291721, 44.928326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999569, 33.070446, 44.903439>,  <34.148800, 32.701653, 44.861958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999569, 33.070446, 44.903439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779899, -0.251097, -0.573330,
		-0.502565, -0.294770, 0.812736,
		-0.373076, 0.921987, 0.103698,
		33.887646, 33.347042, 44.934547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467041, 32.579189, 44.992802>,  <34.148800, 32.701653, 44.861958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467041, 32.579189, 44.992802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516144, 32.947464, 44.844604>,  <33.545605, 33.168430, 44.755688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516144, 32.947464, 44.844604>,  <33.467041, 32.579189, 44.992802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516144, 32.947464, 44.844604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845163, -0.098699, -0.525317,
		-0.520221, 0.377611, 0.766016,
		0.122761, 0.920689, -0.370488,
		33.552971, 33.223671, 44.733459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767361, 32.775089, 44.864857>,  <33.467041, 32.579189, 44.992802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767361, 32.775089, 44.864857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991798, 33.034817, 44.659504>,  <33.126461, 33.190655, 44.536293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991798, 33.034817, 44.659504>,  <32.767361, 32.775089, 44.864857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991798, 33.034817, 44.659504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740953, 0.117500, -0.661198,
		-0.369006, 0.751385, 0.547043,
		0.561091, 0.649319, -0.513383,
		33.160126, 33.229614, 44.505489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284428, 33.229393, 44.556526>,  <32.767361, 32.775089, 44.864857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284428, 33.229393, 44.556526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624786, 33.310242, 44.362568>,  <32.829002, 33.358749, 44.246193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624786, 33.310242, 44.362568>,  <32.284428, 33.229393, 44.556526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624786, 33.310242, 44.362568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520780, 0.203330, -0.829123,
		-0.068987, 0.958022, 0.278271,
		0.850899, 0.202117, -0.484891,
		32.880054, 33.370876, 44.217102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170616, 33.892849, 44.189438>,  <32.284428, 33.229393, 44.556526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170616, 33.892849, 44.189438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412838, 33.634037, 44.004112>,  <32.558170, 33.478752, 43.892918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412838, 33.634037, 44.004112>,  <32.170616, 33.892849, 44.189438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412838, 33.634037, 44.004112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589280, 0.026702, -0.807488,
		0.534837, 0.762001, -0.365109,
		0.605557, -0.647026, -0.463313,
		32.594505, 33.439930, 43.865120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146355, 34.184845, 43.520859>,  <32.170616, 33.892849, 44.189438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146355, 34.184845, 43.520859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295261, 33.816505, 43.474461>,  <32.384605, 33.595501, 43.446621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295261, 33.816505, 43.474461>,  <32.146355, 34.184845, 43.520859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295261, 33.816505, 43.474461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364771, -0.030237, -0.930606,
		0.853441, 0.388743, -0.347155,
		0.372264, -0.920850, -0.115996,
		32.406940, 33.540249, 43.439663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529331, 34.239555, 42.973736>,  <32.146355, 34.184845, 43.520859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529331, 34.239555, 42.973736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434204, 33.851749, 42.997353>,  <32.377129, 33.619064, 43.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434204, 33.851749, 42.997353>,  <32.529331, 34.239555, 42.973736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434204, 33.851749, 42.997353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246514, 0.001455, -0.969138,
		0.939507, -0.245034, -0.239345,
		-0.237820, -0.969513, 0.059038,
		32.362858, 33.560894, 43.015064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982254, 33.876152, 42.517902>,  <32.529331, 34.239555, 42.973736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982254, 33.876152, 42.517902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657379, 33.647568, 42.564861>,  <32.462456, 33.510418, 42.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657379, 33.647568, 42.564861>,  <32.982254, 33.876152, 42.517902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657379, 33.647568, 42.564861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157992, 0.021750, -0.987201,
		0.561596, -0.820339, -0.107952,
		-0.812187, -0.571463, 0.117393,
		32.413723, 33.476128, 42.600079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911518, 33.387482, 41.908806>,  <32.982254, 33.876152, 42.517902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911518, 33.387482, 41.908806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549335, 33.380470, 42.078434>,  <32.332024, 33.376263, 42.180210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549335, 33.380470, 42.078434>,  <32.911518, 33.387482, 41.908806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549335, 33.380470, 42.078434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423592, -0.025460, -0.905495,
		0.026681, -0.999522, 0.015622,
		-0.905460, -0.017542, 0.424069,
		32.277699, 33.375210, 42.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490917, 32.917110, 41.530869>,  <32.911518, 33.387482, 41.908806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490917, 32.917110, 41.530869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216167, 33.137302, 41.720684>,  <32.051319, 33.269417, 41.834572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216167, 33.137302, 41.720684>,  <32.490917, 32.917110, 41.530869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216167, 33.137302, 41.720684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557068, 0.020589, -0.830212,
		-0.466782, -0.834597, 0.292511,
		-0.686870, 0.550476, 0.474538,
		32.010105, 33.302444, 41.863045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845425, 32.620384, 41.406040>,  <32.490917, 32.917110, 41.530869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845425, 32.620384, 41.406040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756914, 32.996326, 41.510120>,  <31.703808, 33.221893, 41.572571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756914, 32.996326, 41.510120>,  <31.845425, 32.620384, 41.406040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756914, 32.996326, 41.510120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612646, 0.073625, -0.786921,
		-0.758751, -0.333539, 0.559508,
		-0.221275, 0.939857, 0.260204,
		31.690531, 33.278282, 41.588181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183113, 32.628651, 41.270329>,  <31.845425, 32.620384, 41.406040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183113, 32.628651, 41.270329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291821, 33.012688, 41.296761>,  <31.357044, 33.243111, 41.312618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291821, 33.012688, 41.296761>,  <31.183113, 32.628651, 41.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291821, 33.012688, 41.296761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661683, 0.236271, -0.711584,
		-0.698798, 0.149663, 0.699487,
		0.271766, 0.960092, 0.066077,
		31.373350, 33.300716, 41.316582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636673, 32.945431, 40.986317>,  <31.183113, 32.628651, 41.270329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636673, 32.945431, 40.986317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944815, 33.196865, 40.943535>,  <31.129700, 33.347725, 40.917866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944815, 33.196865, 40.943535>,  <30.636673, 32.945431, 40.986317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944815, 33.196865, 40.943535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424870, 0.380974, -0.821185,
		-0.475438, 0.678042, 0.560551,
		0.770353, 0.628584, -0.106951,
		31.175920, 33.385441, 40.911449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327316, 33.505913, 40.605801>,  <30.636673, 32.945431, 40.986317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327316, 33.505913, 40.605801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717590, 33.589989, 40.580948>,  <30.951756, 33.640434, 40.566036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717590, 33.589989, 40.580948>,  <30.327316, 33.505913, 40.605801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717590, 33.589989, 40.580948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123028, 0.290573, -0.948911,
		-0.181394, 0.933482, 0.309367,
		0.975684, 0.210188, -0.062137,
		31.010296, 33.653046, 40.562305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427572, 34.228924, 40.416126>,  <30.327316, 33.505913, 40.605801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427572, 34.228924, 40.416126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782560, 34.073540, 40.316933>,  <30.995554, 33.980309, 40.257416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782560, 34.073540, 40.316933>,  <30.427572, 34.228924, 40.416126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782560, 34.073540, 40.316933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101894, 0.359375, -0.927614,
		0.449458, 0.848498, 0.279354,
		0.887471, -0.388459, -0.247981,
		31.048801, 33.957001, 40.242538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850502, 34.750046, 40.044140>,  <30.427572, 34.228924, 40.416126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850502, 34.750046, 40.044140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975557, 34.394039, 39.911396>,  <31.050591, 34.180435, 39.831749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975557, 34.394039, 39.911396>,  <30.850502, 34.750046, 40.044140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975557, 34.394039, 39.911396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041492, 0.361833, -0.931319,
		0.948966, 0.277397, 0.150051,
		0.312638, -0.890016, -0.331858,
		31.069349, 34.127033, 39.811840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349693, 34.884563, 39.535419>,  <30.850502, 34.750046, 40.044140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349693, 34.884563, 39.535419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246311, 34.504009, 39.468418>,  <31.184282, 34.275677, 39.428215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246311, 34.504009, 39.468418>,  <31.349693, 34.884563, 39.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246311, 34.504009, 39.468418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210759, 0.224755, -0.951350,
		0.942752, -0.210578, -0.258603,
		-0.258456, -0.951390, -0.167507,
		31.168774, 34.218594, 39.418167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679932, 34.751194, 38.951321>,  <31.349693, 34.884563, 39.535419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679932, 34.751194, 38.951321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406925, 34.459885, 38.975945>,  <31.243122, 34.285099, 38.990719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406925, 34.459885, 38.975945>,  <31.679932, 34.751194, 38.951321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406925, 34.459885, 38.975945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081722, -0.007659, -0.996626,
		0.726287, -0.685245, -0.054289,
		-0.682517, -0.728273, 0.061562,
		31.202169, 34.241402, 38.994411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985998, 34.243656, 38.642220>,  <31.679932, 34.751194, 38.951321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985998, 34.243656, 38.642220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587751, 34.222431, 38.611423>,  <31.348803, 34.209698, 38.592945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587751, 34.222431, 38.611423>,  <31.985998, 34.243656, 38.642220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587751, 34.222431, 38.611423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081326, -0.084980, -0.993058,
		0.046151, -0.994969, 0.088923,
		-0.995619, -0.053062, -0.076994,
		31.289066, 34.206512, 38.588326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240974, 34.487617, 37.961212>,  <31.985998, 34.243656, 38.642220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240974, 34.487617, 37.961212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421112, 34.392982, 37.616837>,  <32.529194, 34.336201, 37.410210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421112, 34.392982, 37.616837>,  <32.240974, 34.487617, 37.961212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421112, 34.392982, 37.616837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763356, -0.398128, 0.508705,
		-0.463116, -0.886297, 0.001303,
		0.450345, -0.236584, -0.860940,
		32.556217, 34.322006, 37.358555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532475, 33.754951, 38.033352>,  <32.240974, 34.487617, 37.961212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532475, 33.754951, 38.033352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733192, 33.940319, 37.741203>,  <32.853622, 34.051540, 37.565914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733192, 33.940319, 37.741203>,  <32.532475, 33.754951, 38.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733192, 33.940319, 37.741203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860721, -0.351268, 0.368469,
		-0.085800, -0.813542, -0.575141,
		0.501794, 0.463422, -0.730372,
		32.883732, 34.079346, 37.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876320, 33.303226, 37.785652>,  <32.532475, 33.754951, 38.033352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876320, 33.303226, 37.785652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103985, 33.610847, 37.669296>,  <33.240582, 33.795422, 37.599483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103985, 33.610847, 37.669296>,  <32.876320, 33.303226, 37.785652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103985, 33.610847, 37.669296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816129, -0.485394, 0.313570,
		0.099955, -0.415877, -0.903912,
		0.569160, 0.769051, -0.290892,
		33.274734, 33.841564, 37.582027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525368, 32.960102, 37.648968>,  <32.876320, 33.303226, 37.785652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525368, 32.960102, 37.648968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625175, 33.347118, 37.665024>,  <33.685059, 33.579327, 37.674656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625175, 33.347118, 37.665024>,  <33.525368, 32.960102, 37.648968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625175, 33.347118, 37.665024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888111, -0.245162, 0.388787,
		0.386006, -0.061363, -0.920453,
		0.249518, 0.967538, 0.040137,
		33.700031, 33.637379, 37.677063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249367, 32.971077, 37.407066>,  <33.525368, 32.960102, 37.648968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249367, 32.971077, 37.407066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170948, 33.311375, 37.602127>,  <34.123898, 33.515553, 37.719162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170948, 33.311375, 37.602127>,  <34.249367, 32.971077, 37.407066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170948, 33.311375, 37.602127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863978, -0.085355, 0.496242,
		0.463798, 0.518608, -0.718288,
		-0.196046, 0.850741, 0.487653,
		34.112133, 33.566597, 37.748425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819954, 33.340801, 37.429855>,  <34.249367, 32.971077, 37.407066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819954, 33.340801, 37.429855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606796, 33.499016, 37.729076>,  <34.478901, 33.593945, 37.908607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606796, 33.499016, 37.729076>,  <34.819954, 33.340801, 37.429855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606796, 33.499016, 37.729076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814432, -0.000142, 0.580259,
		0.229619, 0.918451, -0.322060,
		-0.532893, 0.395534, 0.748049,
		34.446930, 33.617676, 37.953491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254578, 33.722534, 37.803566>,  <34.819954, 33.340801, 37.429855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254578, 33.722534, 37.803566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963554, 33.680138, 38.074692>,  <34.788940, 33.654701, 38.237366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963554, 33.680138, 38.074692>,  <35.254578, 33.722534, 37.803566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963554, 33.680138, 38.074692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685045, -0.058798, 0.726124,
		-0.037108, 0.992627, 0.115387,
		-0.727555, -0.105990, 0.677813,
		34.745289, 33.648342, 38.278034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485783, 34.172077, 38.414722>,  <35.254578, 33.722534, 37.803566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485783, 34.172077, 38.414722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228783, 33.896797, 38.549526>,  <35.074581, 33.731628, 38.630409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228783, 33.896797, 38.549526>,  <35.485783, 34.172077, 38.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228783, 33.896797, 38.549526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631676, -0.226706, 0.741343,
		-0.433789, 0.689195, 0.580377,
		-0.642505, -0.688197, 0.337006,
		35.036030, 33.690338, 38.650627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394863, 34.305569, 39.122913>,  <35.485783, 34.172077, 38.414722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394863, 34.305569, 39.122913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274349, 33.925526, 39.090595>,  <35.202042, 33.697502, 39.071205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274349, 33.925526, 39.090595>,  <35.394863, 34.305569, 39.122913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274349, 33.925526, 39.090595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547244, -0.241678, 0.801321,
		-0.780864, 0.197217, 0.592753,
		-0.301289, -0.950104, -0.080792,
		35.183964, 33.640495, 39.066357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195835, 34.184174, 39.840466>,  <35.394863, 34.305569, 39.122913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195835, 34.184174, 39.840466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247814, 33.823929, 39.674568>,  <35.279003, 33.607784, 39.575027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247814, 33.823929, 39.674568>,  <35.195835, 34.184174, 39.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247814, 33.823929, 39.674568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234506, -0.378511, 0.895397,
		-0.963390, -0.213614, 0.162013,
		0.129946, -0.900610, -0.414748,
		35.286797, 33.553745, 39.550144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966709, 33.781818, 40.353046>,  <35.195835, 34.184174, 39.840466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966709, 33.781818, 40.353046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182037, 33.543068, 40.115070>,  <35.311234, 33.399818, 39.972286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182037, 33.543068, 40.115070>,  <34.966709, 33.781818, 40.353046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182037, 33.543068, 40.115070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432389, -0.410333, 0.802911,
		-0.723359, -0.689470, 0.037190,
		0.538323, -0.596873, -0.594938,
		35.343533, 33.364006, 39.936588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792030, 33.193581, 40.638672>,  <34.966709, 33.781818, 40.353046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792030, 33.193581, 40.638672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129166, 33.108669, 40.440857>,  <35.331448, 33.057724, 40.322166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129166, 33.108669, 40.440857>,  <34.792030, 33.193581, 40.638672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129166, 33.108669, 40.440857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357563, -0.465900, 0.809374,
		-0.402213, -0.858998, -0.316776,
		0.842837, -0.212273, -0.494537,
		35.382015, 33.044987, 40.292496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954048, 32.456333, 40.780994>,  <34.792030, 33.193581, 40.638672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954048, 32.456333, 40.780994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285595, 32.652245, 40.672844>,  <35.484524, 32.769791, 40.607956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285595, 32.652245, 40.672844>,  <34.954048, 32.456333, 40.780994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285595, 32.652245, 40.672844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533333, -0.545838, 0.646232,
		0.168931, -0.679838, -0.713641,
		0.828865, 0.489777, -0.270371,
		35.534256, 32.799179, 40.591732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448059, 31.845505, 40.662056>,  <34.954048, 32.456333, 40.780994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448059, 31.845505, 40.662056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651371, 32.185745, 40.715912>,  <35.773357, 32.389889, 40.748226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651371, 32.185745, 40.715912>,  <35.448059, 31.845505, 40.662056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651371, 32.185745, 40.715912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601168, -0.462399, 0.651755,
		0.616642, -0.250333, -0.746382,
		0.508282, 0.850600, 0.134642,
		35.803856, 32.440926, 40.756306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207020, 31.734259, 40.687866>,  <35.448059, 31.845505, 40.662056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207020, 31.734259, 40.687866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132759, 32.084175, 40.866875>,  <36.088203, 32.294125, 40.974281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132759, 32.084175, 40.866875>,  <36.207020, 31.734259, 40.687866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132759, 32.084175, 40.866875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422021, -0.340315, 0.840288,
		0.887374, 0.344863, -0.306000,
		-0.185648, 0.874789, 0.447526,
		36.077065, 32.346611, 41.001133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824612, 31.892387, 41.126007>,  <36.207020, 31.734259, 40.687866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824612, 31.892387, 41.126007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515747, 32.104729, 41.265701>,  <36.330429, 32.232132, 41.349518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515747, 32.104729, 41.265701>,  <36.824612, 31.892387, 41.126007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515747, 32.104729, 41.265701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276827, -0.213680, 0.936861,
		0.571959, 0.820084, 0.018041,
		-0.772159, 0.530852, 0.349238,
		36.284100, 32.263985, 41.370472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162777, 31.941360, 41.646908>,  <36.824612, 31.892387, 41.126007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162777, 31.941360, 41.646908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798286, 32.085121, 41.727409>,  <36.579594, 32.171379, 41.775711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798286, 32.085121, 41.727409>,  <37.162777, 31.941360, 41.646908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798286, 32.085121, 41.727409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135659, -0.199489, 0.970464,
		0.388933, 0.911612, 0.133023,
		-0.911223, 0.359400, 0.201256,
		36.524918, 32.192940, 41.787785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220997, 32.392647, 42.186325>,  <37.162777, 31.941360, 41.646908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220997, 32.392647, 42.186325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834126, 32.291077, 42.190041>,  <36.602001, 32.230137, 42.192272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834126, 32.291077, 42.190041>,  <37.220997, 32.392647, 42.186325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834126, 32.291077, 42.190041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044729, -0.134141, 0.989952,
		-0.250125, 0.957878, 0.141096,
		-0.967180, -0.253923, 0.009293,
		36.543972, 32.214901, 42.192829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035389, 32.755894, 42.677975>,  <37.220997, 32.392647, 42.186325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035389, 32.755894, 42.677975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707100, 32.532181, 42.631306>,  <36.510128, 32.397953, 42.603306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707100, 32.532181, 42.631306>,  <37.035389, 32.755894, 42.677975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707100, 32.532181, 42.631306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048423, -0.271575, 0.961198,
		-0.569269, 0.783229, 0.249971,
		-0.820724, -0.559285, -0.116673,
		36.460884, 32.364395, 42.596302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346146, 33.018940, 43.051426>,  <37.035389, 32.755894, 42.677975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346146, 33.018940, 43.051426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331039, 32.619541, 43.035511>,  <36.321976, 32.379902, 43.025963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331039, 32.619541, 43.035511>,  <36.346146, 33.018940, 43.051426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331039, 32.619541, 43.035511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080347, -0.042718, 0.995851,
		-0.996051, 0.034412, 0.081839,
		-0.037765, -0.998495, -0.039784,
		36.319710, 32.319992, 43.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845280, 32.879631, 43.498310>,  <36.346146, 33.018940, 43.051426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845280, 32.879631, 43.498310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046200, 32.534348, 43.518597>,  <36.166752, 32.327179, 43.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046200, 32.534348, 43.518597>,  <35.845280, 32.879631, 43.498310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046200, 32.534348, 43.518597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187633, 0.166062, 0.968100,
		-0.844093, -0.476756, 0.245379,
		0.502296, -0.863207, 0.050717,
		36.196888, 32.275387, 43.533813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676376, 32.480537, 44.043434>,  <35.845280, 32.879631, 43.498310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676376, 32.480537, 44.043434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049473, 32.359299, 43.965328>,  <36.273331, 32.286556, 43.918465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049473, 32.359299, 43.965328>,  <35.676376, 32.480537, 44.043434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049473, 32.359299, 43.965328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307142, 0.384285, 0.870625,
		-0.188848, -0.872041, 0.451532,
		0.932738, -0.303100, -0.195269,
		36.329296, 32.268368, 43.906746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962688, 32.197910, 44.616192>,  <35.676376, 32.480537, 44.043434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962688, 32.197910, 44.616192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259556, 32.328945, 44.382313>,  <36.437675, 32.407566, 44.241985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259556, 32.328945, 44.382313>,  <35.962688, 32.197910, 44.616192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259556, 32.328945, 44.382313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478949, 0.351013, 0.804610,
		0.468815, -0.877198, 0.103614,
		0.742172, 0.327588, -0.584694,
		36.482208, 32.427223, 44.206905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458649, 31.989197, 44.971962>,  <35.962688, 32.197910, 44.616192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458649, 31.989197, 44.971962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612118, 32.266590, 44.728035>,  <36.704201, 32.433025, 44.581680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612118, 32.266590, 44.728035>,  <36.458649, 31.989197, 44.971962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612118, 32.266590, 44.728035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529826, 0.375553, 0.760425,
		0.756358, -0.614853, -0.223334,
		0.383675, 0.693481, -0.609817,
		36.727219, 32.474636, 44.545090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127750, 31.985550, 45.101936>,  <36.458649, 31.989197, 44.971962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127750, 31.985550, 45.101936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072964, 32.341042, 44.926937>,  <37.040092, 32.554337, 44.821938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072964, 32.341042, 44.926937>,  <37.127750, 31.985550, 45.101936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072964, 32.341042, 44.926937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615540, 0.422400, 0.665349,
		0.776112, -0.178165, -0.604902,
		-0.136969, 0.888727, -0.437498,
		37.031872, 32.607658, 44.795689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815685, 32.263706, 45.055229>,  <37.127750, 31.985550, 45.101936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815685, 32.263706, 45.055229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558479, 32.570004, 45.060417>,  <37.404156, 32.753780, 45.063530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558479, 32.570004, 45.060417>,  <37.815685, 32.263706, 45.055229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558479, 32.570004, 45.060417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596942, 0.490523, 0.634860,
		0.479777, 0.415968, -0.772518,
		-0.643019, 0.765740, 0.012967,
		37.365574, 32.799725, 45.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221939, 32.857872, 45.003628>,  <37.815685, 32.263706, 45.055229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221939, 32.857872, 45.003628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881618, 33.045883, 45.097607>,  <37.677425, 33.158691, 45.153992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881618, 33.045883, 45.097607>,  <38.221939, 32.857872, 45.003628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881618, 33.045883, 45.097607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521369, 0.699260, 0.489091,
		0.065602, 0.538614, -0.839995,
		-0.850806, 0.470032, 0.234944,
		37.626377, 33.186893, 45.168091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363705, 33.635349, 45.092747>,  <38.221939, 32.857872, 45.003628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363705, 33.635349, 45.092747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022060, 33.610321, 45.299271>,  <37.817074, 33.595303, 45.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022060, 33.610321, 45.299271>,  <38.363705, 33.635349, 45.092747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022060, 33.610321, 45.299271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348903, 0.667266, 0.658045,
		-0.385691, 0.742187, -0.548089,
		-0.854113, -0.062572, 0.516309,
		37.765827, 33.591549, 45.454163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050217, 34.336941, 45.192924>,  <38.363705, 33.635349, 45.092747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050217, 34.336941, 45.192924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946327, 34.085144, 45.485847>,  <37.883991, 33.934067, 45.661602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946327, 34.085144, 45.485847>,  <38.050217, 34.336941, 45.192924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946327, 34.085144, 45.485847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647470, 0.449113, 0.615695,
		-0.716467, 0.634061, 0.290932,
		-0.259727, -0.629495, 0.732310,
		37.868408, 33.896297, 45.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922115, 34.700367, 45.762993>,  <38.050217, 34.336941, 45.192924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922115, 34.700367, 45.762993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003151, 34.339138, 45.914478>,  <38.051773, 34.122402, 46.005371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003151, 34.339138, 45.914478>,  <37.922115, 34.700367, 45.762993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003151, 34.339138, 45.914478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615362, 0.418238, 0.668136,
		-0.761767, 0.097694, 0.640443,
		0.202585, -0.903068, 0.378717,
		38.063927, 34.068218, 46.028095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849518, 34.818352, 46.400661>,  <37.922115, 34.700367, 45.762993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849518, 34.818352, 46.400661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062794, 34.480217, 46.387287>,  <38.190762, 34.277336, 46.379265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062794, 34.480217, 46.387287>,  <37.849518, 34.818352, 46.400661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062794, 34.480217, 46.387287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601905, 0.351288, 0.717152,
		-0.594488, -0.402503, 0.696115,
		0.533192, -0.845333, -0.033432,
		38.222752, 34.226616, 46.377258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968071, 34.622044, 47.136948>,  <37.849518, 34.818352, 46.400661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968071, 34.622044, 47.136948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242016, 34.435154, 46.913284>,  <38.406384, 34.323021, 46.779087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242016, 34.435154, 46.913284>,  <37.968071, 34.622044, 47.136948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242016, 34.435154, 46.913284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702680, 0.220360, 0.676522,
		-0.192870, -0.856239, 0.479225,
		0.684866, -0.467223, -0.559162,
		38.447475, 34.294987, 46.745537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361622, 34.131405, 47.573486>,  <37.968071, 34.622044, 47.136948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361622, 34.131405, 47.573486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617764, 34.134064, 47.266266>,  <38.771450, 34.135658, 47.081932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617764, 34.134064, 47.266266>,  <38.361622, 34.131405, 47.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617764, 34.134064, 47.266266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766923, -0.060368, 0.638893,
		-0.042121, -0.998154, -0.043753,
		0.640355, 0.006644, -0.768051,
		38.809872, 34.136059, 47.035851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838806, 33.665699, 47.734352>,  <38.361622, 34.131405, 47.573486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838806, 33.665699, 47.734352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011948, 33.914417, 47.473274>,  <39.115833, 34.063648, 47.316628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011948, 33.914417, 47.473274>,  <38.838806, 33.665699, 47.734352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011948, 33.914417, 47.473274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818154, 0.033030, 0.574050,
		0.378499, -0.782484, -0.494427,
		0.432853, 0.621795, -0.652694,
		39.141804, 34.100956, 47.277466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576847, 33.450584, 47.754410>,  <38.838806, 33.665699, 47.734352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576847, 33.450584, 47.754410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548283, 33.819054, 47.601391>,  <39.531143, 34.040134, 47.509579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548283, 33.819054, 47.601391>,  <39.576847, 33.450584, 47.754410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548283, 33.819054, 47.601391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688202, 0.323116, 0.649595,
		0.721996, -0.216880, -0.657028,
		-0.071412, 0.921173, -0.382545,
		39.526859, 34.095406, 47.486626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286839, 33.648186, 47.700974>,  <39.576847, 33.450584, 47.754410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286839, 33.648186, 47.700974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074554, 33.985840, 47.670551>,  <39.947186, 34.188431, 47.652298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074554, 33.985840, 47.670551>,  <40.286839, 33.648186, 47.700974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074554, 33.985840, 47.670551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601720, 0.438452, 0.667602,
		0.596894, 0.308537, -0.740623,
		-0.530708, 0.844136, -0.076057,
		39.915340, 34.239082, 47.647736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767464, 34.240417, 47.843861>,  <40.286839, 33.648186, 47.700974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767464, 34.240417, 47.843861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414471, 34.422836, 47.889896>,  <40.202675, 34.532288, 47.917519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414471, 34.422836, 47.889896>,  <40.767464, 34.240417, 47.843861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414471, 34.422836, 47.889896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387531, 0.566339, 0.727378,
		0.266535, 0.686502, -0.676516,
		-0.882484, 0.456043, 0.115092,
		40.149727, 34.559650, 47.924423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880581, 34.899689, 48.026218>,  <40.767464, 34.240417, 47.843861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880581, 34.899689, 48.026218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499355, 34.834042, 48.127991>,  <40.270618, 34.794651, 48.189053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499355, 34.834042, 48.127991>,  <40.880581, 34.899689, 48.026218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499355, 34.834042, 48.127991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164765, 0.423870, 0.890610,
		-0.254014, 0.890729, -0.376933,
		-0.953063, -0.164123, 0.254430,
		40.213436, 34.784805, 48.204319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633278, 35.525646, 48.440964>,  <40.880581, 34.899689, 48.026218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633278, 35.525646, 48.440964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384350, 35.223186, 48.521908>,  <40.234993, 35.041710, 48.570477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384350, 35.223186, 48.521908>,  <40.633278, 35.525646, 48.440964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384350, 35.223186, 48.521908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128037, 0.353375, 0.926678,
		-0.772221, 0.550780, -0.316728,
		-0.622319, -0.756153, 0.202363,
		40.197655, 34.996342, 48.582615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316284, 35.941513, 48.919662>,  <40.633278, 35.525646, 48.440964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316284, 35.941513, 48.919662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570999, 36.243740, 48.981140>,  <40.723827, 36.425076, 49.018028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570999, 36.243740, 48.981140>,  <40.316284, 35.941513, 48.919662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570999, 36.243740, 48.981140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670683, 0.641125, -0.373020,
		-0.380381, 0.134450, 0.915004,
		0.636784, 0.755567, 0.153698,
		40.762035, 36.470409, 49.027248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899246, 36.478756, 49.326668>,  <40.316284, 35.941513, 48.919662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899246, 36.478756, 49.326668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205372, 36.642952, 49.128361>,  <40.389050, 36.741470, 49.009377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205372, 36.642952, 49.128361>,  <39.899246, 36.478756, 49.326668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205372, 36.642952, 49.128361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643625, 0.481041, -0.595270,
		-0.005866, 0.774661, 0.632350,
		0.765319, 0.410488, -0.495769,
		40.434967, 36.766098, 48.979630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729622, 37.247353, 49.274170>,  <39.899246, 36.478756, 49.326668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729622, 37.247353, 49.274170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013058, 37.188629, 48.998100>,  <40.183121, 37.153397, 48.832458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013058, 37.188629, 48.998100>,  <39.729622, 37.247353, 49.274170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013058, 37.188629, 48.998100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547922, 0.501835, -0.669286,
		0.444613, 0.852414, 0.275155,
		0.708590, -0.146810, -0.690179,
		40.225636, 37.144585, 48.791046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804333, 37.858082, 48.815140>,  <39.729622, 37.247353, 49.274170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804333, 37.858082, 48.815140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971321, 37.577911, 48.583580>,  <40.071514, 37.409809, 48.444645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971321, 37.577911, 48.583580>,  <39.804333, 37.858082, 48.815140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971321, 37.577911, 48.583580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422175, 0.414639, -0.806128,
		0.804667, 0.580930, -0.122603,
		0.417468, -0.700424, -0.578901,
		40.096561, 37.367783, 48.409908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007179, 38.254242, 48.195759>,  <39.804333, 37.858082, 48.815140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007179, 38.254242, 48.195759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004593, 37.866657, 48.096909>,  <40.003040, 37.634106, 48.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004593, 37.866657, 48.096909>,  <40.007179, 38.254242, 48.195759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004593, 37.866657, 48.096909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534245, 0.212253, -0.818248,
		0.845305, 0.126740, -0.519035,
		-0.006462, -0.968961, -0.247129,
		40.002655, 37.575970, 48.022770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024223, 38.241611, 47.506653>,  <40.007179, 38.254242, 48.195759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024223, 38.241611, 47.506653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886044, 37.877773, 47.598995>,  <39.803135, 37.659470, 47.654400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886044, 37.877773, 47.598995>,  <40.024223, 38.241611, 47.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886044, 37.877773, 47.598995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539411, -0.008836, -0.841996,
		0.767918, -0.415395, -0.487595,
		-0.345453, -0.909598, 0.230854,
		39.782406, 37.604893, 47.668251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167969, 37.818375, 46.931137>,  <40.024223, 38.241611, 47.506653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167969, 37.818375, 46.931137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911709, 37.610844, 47.157547>,  <39.757954, 37.486324, 47.293392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911709, 37.610844, 47.157547>,  <40.167969, 37.818375, 46.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911709, 37.610844, 47.157547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453799, -0.338811, -0.824180,
		0.619381, -0.784876, -0.018382,
		-0.640651, -0.518823, 0.566029,
		39.719513, 37.455196, 47.327354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221249, 37.031010, 46.809570>,  <40.167969, 37.818375, 46.931137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221249, 37.031010, 46.809570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860809, 37.160706, 46.924740>,  <39.644547, 37.238522, 46.993839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860809, 37.160706, 46.924740>,  <40.221249, 37.031010, 46.809570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860809, 37.160706, 46.924740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404628, -0.390006, -0.827147,
		-0.155899, -0.861839, 0.482627,
		-0.901095, 0.324235, 0.287923,
		39.590481, 37.257977, 47.011116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842125, 36.403214, 46.663685>,  <40.221249, 37.031010, 46.809570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842125, 36.403214, 46.663685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540951, 36.661995, 46.711922>,  <39.360245, 36.817265, 46.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540951, 36.661995, 46.711922>,  <39.842125, 36.403214, 46.663685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540951, 36.661995, 46.711922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263588, -0.128572, -0.956029,
		-0.602998, -0.751615, 0.267335,
		-0.752937, 0.646950, 0.120588,
		39.315071, 36.856079, 46.748096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257523, 36.025307, 46.677193>,  <39.842125, 36.403214, 46.663685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257523, 36.025307, 46.677193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153336, 36.397892, 46.575584>,  <39.090824, 36.621445, 46.514622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153336, 36.397892, 46.575584>,  <39.257523, 36.025307, 46.677193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153336, 36.397892, 46.575584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355347, -0.337119, -0.871825,
		-0.897710, -0.136820, 0.418803,
		-0.260470, 0.931467, -0.254016,
		39.075195, 36.677334, 46.499378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657780, 35.902241, 46.324867>,  <39.257523, 36.025307, 46.677193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657780, 35.902241, 46.324867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722504, 36.283016, 46.220840>,  <38.761337, 36.511482, 46.158424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722504, 36.283016, 46.220840>,  <38.657780, 35.902241, 46.324867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722504, 36.283016, 46.220840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360729, -0.188241, -0.913477,
		-0.918528, 0.241619, 0.312933,
		0.161807, 0.951938, -0.260063,
		38.771046, 36.568596, 46.142822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055931, 36.157196, 46.135723>,  <38.657780, 35.902241, 46.324867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055931, 36.157196, 46.135723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326321, 36.385410, 45.949154>,  <38.488556, 36.522339, 45.837212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326321, 36.385410, 45.949154>,  <38.055931, 36.157196, 46.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326321, 36.385410, 45.949154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451358, -0.179778, -0.874046,
		-0.582525, 0.801356, 0.135990,
		0.675974, 0.570533, -0.466424,
		38.529114, 36.556572, 45.809227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784035, 36.817673, 45.809532>,  <38.055931, 36.157196, 46.135723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784035, 36.817673, 45.809532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105232, 36.709148, 45.597271>,  <38.297951, 36.644035, 45.469913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105232, 36.709148, 45.597271>,  <37.784035, 36.817673, 45.809532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105232, 36.709148, 45.597271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570583, -0.092768, -0.815983,
		0.172154, 0.958012, -0.229295,
		0.802993, -0.271307, -0.530655,
		38.346130, 36.627758, 45.438076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450958, 36.753868, 45.091484>,  <37.784035, 36.817673, 45.809532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450958, 36.753868, 45.091484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822941, 36.613113, 45.048855>,  <38.046131, 36.528660, 45.023277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822941, 36.613113, 45.048855>,  <37.450958, 36.753868, 45.091484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822941, 36.613113, 45.048855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223835, -0.311892, -0.923375,
		0.291685, 0.882552, -0.368811,
		0.929956, -0.351887, -0.106572,
		38.101929, 36.507545, 45.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757938, 37.103168, 44.466022>,  <37.450958, 36.753868, 45.091484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757938, 37.103168, 44.466022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915287, 36.749954, 44.568398>,  <38.009697, 36.538025, 44.629822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915287, 36.749954, 44.568398>,  <37.757938, 37.103168, 44.466022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915287, 36.749954, 44.568398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077053, -0.309071, -0.947912,
		0.916145, 0.353161, -0.189621,
		0.393372, -0.883036, 0.255942,
		38.033298, 36.485043, 44.645180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252224, 36.979927, 43.939651>,  <37.757938, 37.103168, 44.466022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252224, 36.979927, 43.939651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169880, 36.626610, 44.108135>,  <38.120472, 36.414619, 44.209225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169880, 36.626610, 44.108135>,  <38.252224, 36.979927, 43.939651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169880, 36.626610, 44.108135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047430, -0.438932, -0.897268,
		0.977431, -0.164735, 0.132254,
		-0.205862, -0.883290, 0.421212,
		38.108120, 36.361622, 44.234497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774822, 36.596611, 43.696232>,  <38.252224, 36.979927, 43.939651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774822, 36.596611, 43.696232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482624, 36.344940, 43.802448>,  <38.307304, 36.193939, 43.866177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482624, 36.344940, 43.802448>,  <38.774822, 36.596611, 43.696232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482624, 36.344940, 43.802448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023612, -0.365333, -0.930578,
		0.682508, -0.686054, 0.252018,
		-0.730497, -0.629176, 0.265541,
		38.263474, 36.156189, 43.882111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860332, 35.987438, 43.292385>,  <38.774822, 36.596611, 43.696232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860332, 35.987438, 43.292385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478210, 35.965431, 43.408569>,  <38.248936, 35.952229, 43.478279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478210, 35.965431, 43.408569>,  <38.860332, 35.987438, 43.292385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478210, 35.965431, 43.408569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234354, -0.457959, -0.857527,
		0.180195, -0.887269, 0.424597,
		-0.955305, -0.055016, 0.290457,
		38.191620, 35.948925, 43.495705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738846, 35.284836, 43.176804>,  <38.860332, 35.987438, 43.292385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738846, 35.284836, 43.176804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372765, 35.445267, 43.192451>,  <38.153114, 35.541527, 43.201839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372765, 35.445267, 43.192451>,  <38.738846, 35.284836, 43.176804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372765, 35.445267, 43.192451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308297, -0.634349, -0.708910,
		-0.259515, -0.660860, 0.704213,
		-0.915207, 0.401080, 0.039118,
		38.098202, 35.565590, 43.204185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230911, 34.645336, 43.164215>,  <38.738846, 35.284836, 43.176804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230911, 34.645336, 43.164215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030468, 34.969395, 43.042526>,  <37.910202, 35.163830, 42.969513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030468, 34.969395, 43.042526>,  <38.230911, 34.645336, 43.164215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030468, 34.969395, 43.042526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388191, -0.524636, -0.757671,
		-0.773430, -0.261581, 0.577392,
		-0.501113, 0.810144, -0.304226,
		37.880135, 35.212437, 42.951260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586349, 34.296638, 42.844288>,  <38.230911, 34.645336, 43.164215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586349, 34.296638, 42.844288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580849, 34.673611, 42.710644>,  <37.577549, 34.899796, 42.630459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580849, 34.673611, 42.710644>,  <37.586349, 34.296638, 42.844288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580849, 34.673611, 42.710644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372046, -0.314974, -0.873140,
		-0.928113, 0.112293, 0.354961,
		-0.013756, 0.942434, -0.334109,
		37.576721, 34.956341, 42.610413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925255, 34.411472, 42.514259>,  <37.586349, 34.296638, 42.844288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925255, 34.411472, 42.514259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184593, 34.665161, 42.345776>,  <37.340195, 34.817375, 42.244686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184593, 34.665161, 42.345776>,  <36.925255, 34.411472, 42.514259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184593, 34.665161, 42.345776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329847, -0.264632, -0.906185,
		-0.686183, 0.726456, 0.037621,
		0.648347, 0.634217, -0.421205,
		37.379097, 34.855427, 42.219414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492405, 34.731155, 41.953873>,  <36.925255, 34.411472, 42.514259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492405, 34.731155, 41.953873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861431, 34.864719, 41.876530>,  <37.082848, 34.944859, 41.830124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861431, 34.864719, 41.876530>,  <36.492405, 34.731155, 41.953873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861431, 34.864719, 41.876530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153667, -0.141707, -0.977909,
		-0.353930, 0.931893, -0.079423,
		0.922561, 0.333907, -0.193356,
		37.138199, 34.964893, 41.818523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414150, 35.318523, 41.549568>,  <36.492405, 34.731155, 41.953873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414150, 35.318523, 41.549568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773941, 35.157887, 41.480667>,  <36.989815, 35.061504, 41.439327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773941, 35.157887, 41.480667>,  <36.414150, 35.318523, 41.549568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773941, 35.157887, 41.480667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178462, 0.022224, -0.983696,
		0.398874, 0.915549, -0.051680,
		0.899473, -0.401593, -0.172255,
		37.043781, 35.037407, 41.428989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788918, 35.800434, 41.003651>,  <36.414150, 35.318523, 41.549568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788918, 35.800434, 41.003651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945553, 35.432381, 41.005352>,  <37.039536, 35.211548, 41.006374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945553, 35.432381, 41.005352>,  <36.788918, 35.800434, 41.003651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945553, 35.432381, 41.005352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108741, -0.050870, -0.992768,
		0.913692, 0.388295, -0.119976,
		0.391590, -0.920130, 0.004256,
		37.063030, 35.156342, 41.006630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309948, 35.811073, 40.449158>,  <36.788918, 35.800434, 41.003651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309948, 35.811073, 40.449158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263882, 35.420269, 40.520924>,  <37.236240, 35.185787, 40.563984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263882, 35.420269, 40.520924>,  <37.309948, 35.811073, 40.449158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263882, 35.420269, 40.520924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267878, -0.204473, -0.941505,
		0.956545, -0.060370, 0.285268,
		-0.115168, -0.977009, 0.179416,
		37.229332, 35.127167, 40.574749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035034, 35.464134, 40.452793>,  <37.309948, 35.811073, 40.449158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035034, 35.464134, 40.452793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731121, 35.227474, 40.344955>,  <37.548771, 35.085480, 40.280254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731121, 35.227474, 40.344955>,  <38.035034, 35.464134, 40.452793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731121, 35.227474, 40.344955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446125, -0.172774, -0.878135,
		0.472967, -0.787467, 0.395219,
		-0.759786, -0.591646, -0.269592,
		37.503185, 35.049980, 40.264076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382030, 35.043980, 40.042294>,  <38.035034, 35.464134, 40.452793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382030, 35.043980, 40.042294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007362, 34.932022, 39.958096>,  <37.782562, 34.864849, 39.907578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007362, 34.932022, 39.958096>,  <38.382030, 35.043980, 40.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007362, 34.932022, 39.958096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265708, -0.176439, -0.947770,
		0.228136, -0.943679, 0.239635,
		-0.936671, -0.279893, -0.210491,
		37.726360, 34.848053, 39.894947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463234, 34.473434, 39.490154>,  <38.382030, 35.043980, 40.042294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463234, 34.473434, 39.490154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085220, 34.600441, 39.458920>,  <37.858414, 34.676647, 39.440178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085220, 34.600441, 39.458920>,  <38.463234, 34.473434, 39.490154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085220, 34.600441, 39.458920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043568, -0.114399, -0.992479,
		-0.324064, -0.941326, 0.094277,
		-0.945032, 0.317520, -0.078084,
		37.801712, 34.695698, 39.435493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083324, 34.034748, 39.110462>,  <38.463234, 34.473434, 39.490154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083324, 34.034748, 39.110462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870239, 34.369671, 39.061245>,  <37.742390, 34.570625, 39.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870239, 34.369671, 39.061245>,  <38.083324, 34.034748, 39.110462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870239, 34.369671, 39.061245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093145, -0.202511, -0.974840,
		-0.841156, -0.507848, 0.185871,
		-0.532711, 0.837305, -0.123040,
		37.710426, 34.620861, 39.024334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657681, 33.880169, 38.659504>,  <38.083324, 34.034748, 39.110462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657681, 33.880169, 38.659504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608799, 34.276619, 38.638580>,  <37.579472, 34.514488, 38.626026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608799, 34.276619, 38.638580>,  <37.657681, 33.880169, 38.659504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608799, 34.276619, 38.638580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176476, -0.073558, -0.981553,
		-0.976690, -0.110717, 0.183899,
		-0.122201, 0.991126, -0.052304,
		37.572140, 34.573956, 38.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301765, 33.948441, 38.003979>,  <37.657681, 33.880169, 38.659504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301765, 33.948441, 38.003979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442196, 34.313156, 38.089195>,  <37.526455, 34.531986, 38.140327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442196, 34.313156, 38.089195>,  <37.301765, 33.948441, 38.003979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442196, 34.313156, 38.089195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047335, 0.209952, -0.976565,
		-0.935150, 0.352933, 0.030550,
		0.351076, 0.911789, 0.213043,
		37.547520, 34.586693, 38.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941505, 34.413265, 37.494663>,  <37.301765, 33.948441, 38.003979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941505, 34.413265, 37.494663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264938, 34.601730, 37.635635>,  <37.458996, 34.714809, 37.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264938, 34.601730, 37.635635>,  <36.941505, 34.413265, 37.494663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264938, 34.601730, 37.635635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224291, 0.306937, -0.924923,
		-0.543961, 0.826921, 0.142506,
		0.808579, 0.471159, 0.352433,
		37.507511, 34.743076, 37.741364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969185, 34.989799, 37.055424>,  <36.941505, 34.413265, 37.494663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969185, 34.989799, 37.055424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345333, 34.977127, 37.190895>,  <37.571022, 34.969524, 37.272179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345333, 34.977127, 37.190895>,  <36.969185, 34.989799, 37.055424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345333, 34.977127, 37.190895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325307, 0.374779, -0.868168,
		-0.099423, 0.926573, 0.362737,
		0.940367, -0.031685, 0.338682,
		37.627441, 34.967621, 37.292500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272079, 35.674610, 36.791489>,  <36.969185, 34.989799, 37.055424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272079, 35.674610, 36.791489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597290, 35.458908, 36.879303>,  <37.792416, 35.329487, 36.931992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597290, 35.458908, 36.879303>,  <37.272079, 35.674610, 36.791489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597290, 35.458908, 36.879303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470175, 0.385690, -0.793838,
		0.343405, 0.748632, 0.567119,
		0.813024, -0.539253, 0.219540,
		37.841198, 35.297131, 36.945164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803688, 36.137939, 37.043678>,  <37.272079, 35.674610, 36.791489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803688, 36.137939, 37.043678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946468, 35.807049, 36.870110>,  <38.032139, 35.608517, 36.765968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946468, 35.807049, 36.870110>,  <37.803688, 36.137939, 37.043678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946468, 35.807049, 36.870110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463207, 0.560135, -0.686796,
		0.811187, 0.044160, 0.583118,
		0.356954, -0.827224, -0.433919,
		38.053555, 35.558880, 36.739933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189251, 36.460979, 36.462898>,  <37.803688, 36.137939, 37.043678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189251, 36.460979, 36.462898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238659, 36.072685, 36.380520>,  <38.268303, 35.839710, 36.331093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238659, 36.072685, 36.380520>,  <38.189251, 36.460979, 36.462898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238659, 36.072685, 36.380520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648289, 0.236062, -0.723875,
		0.751308, -0.044099, 0.658477,
		0.123519, -0.970737, -0.205945,
		38.275715, 35.781464, 36.318737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980785, 36.368835, 36.417393>,  <38.189251, 36.460979, 36.462898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980785, 36.368835, 36.417393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821205, 36.049652, 36.236687>,  <38.725456, 35.858143, 36.128262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821205, 36.049652, 36.236687>,  <38.980785, 36.368835, 36.417393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821205, 36.049652, 36.236687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624681, 0.124156, -0.770947,
		0.671276, -0.589781, 0.448940,
		-0.398951, -0.797962, -0.451768,
		38.701519, 35.810265, 36.101158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565762, 36.055054, 36.228065>,  <38.980785, 36.368835, 36.417393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565762, 36.055054, 36.228065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298901, 35.855900, 36.006428>,  <39.138786, 35.736408, 35.873444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298901, 35.855900, 36.006428>,  <39.565762, 36.055054, 36.228065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298901, 35.855900, 36.006428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613918, 0.053816, -0.787533,
		0.421919, -0.865572, 0.269756,
		-0.667149, -0.497884, -0.554097,
		39.098755, 35.706535, 35.840199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890602, 35.468803, 35.894951>,  <39.565762, 36.055054, 36.228065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890602, 35.468803, 35.894951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573818, 35.591152, 35.683578>,  <39.383747, 35.664562, 35.556755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573818, 35.591152, 35.683578>,  <39.890602, 35.468803, 35.894951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573818, 35.591152, 35.683578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590942, 0.166292, -0.789389,
		-0.153578, -0.937438, -0.312449,
		-0.791961, 0.305872, -0.528432,
		39.336231, 35.682915, 35.525047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736435, 35.017220, 35.317688>,  <39.890602, 35.468803, 35.894951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736435, 35.017220, 35.317688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607235, 35.387901, 35.240864>,  <39.529716, 35.610310, 35.194771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607235, 35.387901, 35.240864>,  <39.736435, 35.017220, 35.317688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607235, 35.387901, 35.240864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613696, 0.050605, -0.787919,
		-0.720452, -0.372359, -0.585062,
		-0.322996, 0.926708, -0.192057,
		39.510338, 35.665913, 35.183247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441708, 34.962006, 34.755188>,  <39.736435, 35.017220, 35.317688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441708, 34.962006, 34.755188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617199, 35.309975, 34.845291>,  <39.722496, 35.518757, 34.899353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617199, 35.309975, 34.845291>,  <39.441708, 34.962006, 34.755188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617199, 35.309975, 34.845291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724853, -0.194431, -0.660897,
		-0.531133, 0.453238, -0.715872,
		0.438731, 0.869926, 0.225262,
		39.748817, 35.570953, 34.912868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563618, 35.290108, 34.096424>,  <39.441708, 34.962006, 34.755188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563618, 35.290108, 34.096424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828918, 35.380230, 34.381897>,  <39.988098, 35.434303, 34.553181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828918, 35.380230, 34.381897>,  <39.563618, 35.290108, 34.096424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828918, 35.380230, 34.381897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748135, -0.174372, -0.640225,
		-0.019800, 0.958558, -0.284210,
		0.663251, 0.225304, 0.713678,
		40.027893, 35.447823, 34.596001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072311, 35.856358, 33.797600>,  <39.563618, 35.290108, 34.096424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072311, 35.856358, 33.797600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228401, 35.632713, 34.090206>,  <40.322056, 35.498528, 34.265770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228401, 35.632713, 34.090206>,  <40.072311, 35.856358, 33.797600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228401, 35.632713, 34.090206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656395, -0.388213, -0.646866,
		0.645655, 0.732589, 0.215508,
		0.390224, -0.559111, 0.731519,
		40.345467, 35.464981, 34.309662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133621, 35.086868, 33.606709>,  <40.072311, 35.856358, 33.797600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133621, 35.086868, 33.606709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947899, 34.778732, 33.431896>,  <39.836468, 34.593849, 33.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947899, 34.778732, 33.431896>,  <40.133621, 35.086868, 33.606709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947899, 34.778732, 33.431896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879242, 0.341533, 0.332097,
		-0.106569, 0.538447, -0.835894,
		-0.464301, -0.770344, -0.437028,
		39.808609, 34.547630, 33.300789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515270, 34.479282, 33.577381>,  <40.133621, 35.086868, 33.606709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515270, 34.479282, 33.577381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687447, 34.605640, 33.915596>,  <40.790752, 34.681454, 34.118526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687447, 34.605640, 33.915596>,  <40.515270, 34.479282, 33.577381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687447, 34.605640, 33.915596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102565, -0.913575, 0.393525,
		0.896772, -0.256112, -0.360841,
		0.430442, 0.315892, 0.845537,
		40.816578, 34.700409, 34.169258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269688, 34.495319, 33.718948>,  <40.515270, 34.479282, 33.577381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269688, 34.495319, 33.718948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654495, 34.390888, 33.687046>,  <41.885380, 34.328232, 33.667904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654495, 34.390888, 33.687046>,  <41.269688, 34.495319, 33.718948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654495, 34.390888, 33.687046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047302, -0.447178, 0.893193,
		-0.268857, -0.855495, -0.442543,
		0.962018, -0.261074, -0.079760,
		41.943100, 34.312565, 33.663116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482689, 33.724258, 33.741112>,  <41.269688, 34.495319, 33.718948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482689, 33.724258, 33.741112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794247, 33.941086, 33.867283>,  <41.981182, 34.071182, 33.942986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794247, 33.941086, 33.867283>,  <41.482689, 33.724258, 33.741112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794247, 33.941086, 33.867283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071987, -0.576891, 0.813643,
		0.623014, -0.611033, -0.488358,
		0.778892, 0.542066, 0.315425,
		42.027916, 34.103706, 33.961910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043144, 33.264610, 33.953468>,  <41.482689, 33.724258, 33.741112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043144, 33.264610, 33.953468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136913, 33.610294, 34.131542>,  <42.193176, 33.817703, 34.238384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136913, 33.610294, 34.131542>,  <42.043144, 33.264610, 33.953468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136913, 33.610294, 34.131542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104615, -0.477710, 0.872266,
		0.966489, -0.157907, -0.202396,
		0.234424, 0.864210, 0.445182,
		42.207241, 33.869556, 34.265099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677238, 33.202988, 34.124992>,  <42.043144, 33.264610, 33.953468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677238, 33.202988, 34.124992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495262, 33.468876, 34.362030>,  <42.386074, 33.628410, 34.504253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495262, 33.468876, 34.362030>,  <42.677238, 33.202988, 34.124992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495262, 33.468876, 34.362030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337635, -0.487010, 0.805496,
		0.824032, 0.566536, -0.002872,
		-0.454944, 0.664725, 0.592594,
		42.358780, 33.668293, 34.539806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125408, 33.348537, 34.707092>,  <42.677238, 33.202988, 34.124992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125408, 33.348537, 34.707092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752308, 33.436848, 34.821095>,  <42.528446, 33.489834, 34.889496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752308, 33.436848, 34.821095>,  <43.125408, 33.348537, 34.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752308, 33.436848, 34.821095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094619, -0.612927, 0.784454,
		0.347872, 0.758670, 0.550821,
		-0.932755, 0.220771, 0.285005,
		42.472481, 33.503078, 34.906597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183270, 33.137070, 35.328442>,  <43.125408, 33.348537, 34.707092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183270, 33.137070, 35.328442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794804, 33.230556, 35.347252>,  <42.561722, 33.286648, 35.358540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794804, 33.230556, 35.347252>,  <43.183270, 33.137070, 35.328442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794804, 33.230556, 35.347252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088958, -0.538268, 0.838066,
		0.221184, 0.809718, 0.543539,
		-0.971166, 0.233719, 0.047025,
		42.503452, 33.300671, 35.361359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142220, 33.458851, 36.001431>,  <43.183270, 33.137070, 35.328442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142220, 33.458851, 36.001431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769100, 33.350380, 35.906483>,  <42.545227, 33.285297, 35.849514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769100, 33.350380, 35.906483>,  <43.142220, 33.458851, 36.001431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769100, 33.350380, 35.906483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065790, -0.519437, 0.851972,
		-0.354336, 0.810337, 0.466691,
		-0.932801, -0.271181, -0.237367,
		42.489262, 33.269024, 35.835274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807510, 33.435452, 36.649334>,  <43.142220, 33.458851, 36.001431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807510, 33.435452, 36.649334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582336, 33.217739, 36.400539>,  <42.447231, 33.087112, 36.251263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582336, 33.217739, 36.400539>,  <42.807510, 33.435452, 36.649334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582336, 33.217739, 36.400539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203938, -0.637815, 0.742699,
		-0.800948, 0.544936, 0.248047,
		-0.562931, -0.544277, -0.621990,
		42.413456, 33.054455, 36.213943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276352, 33.346191, 37.013145>,  <42.807510, 33.435452, 36.649334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276352, 33.346191, 37.013145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261196, 33.041710, 36.754181>,  <42.252102, 32.859020, 36.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261196, 33.041710, 36.754181>,  <42.276352, 33.346191, 37.013145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261196, 33.041710, 36.754181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317146, -0.605219, 0.730156,
		-0.947619, 0.232991, -0.218478,
		-0.037893, -0.761199, -0.647410,
		42.249828, 32.813351, 36.559959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584221, 32.941551, 37.038570>,  <42.276352, 33.346191, 37.013145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584221, 32.941551, 37.038570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849613, 32.679298, 36.894386>,  <42.008850, 32.521946, 36.807877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849613, 32.679298, 36.894386>,  <41.584221, 32.941551, 37.038570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849613, 32.679298, 36.894386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273678, -0.661059, 0.698642,
		-0.696343, -0.364885, -0.618034,
		0.663481, -0.655636, -0.360463,
		42.048656, 32.482609, 36.786247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363750, 32.387455, 37.408257>,  <41.584221, 32.941551, 37.038570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363750, 32.387455, 37.408257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686047, 32.218250, 37.242443>,  <41.879425, 32.116726, 37.142956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686047, 32.218250, 37.242443>,  <41.363750, 32.387455, 37.408257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686047, 32.218250, 37.242443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241848, -0.873897, 0.421679,
		-0.540634, -0.239511, -0.806442,
		0.805744, -0.423011, -0.414534,
		41.927769, 32.091347, 37.118084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145390, 31.656881, 37.153118>,  <41.363750, 32.387455, 37.408257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145390, 31.656881, 37.153118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542519, 31.690325, 37.187325>,  <41.780796, 31.710390, 37.207848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542519, 31.690325, 37.187325>,  <41.145390, 31.656881, 37.153118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542519, 31.690325, 37.187325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017833, -0.810545, 0.585405,
		0.118263, -0.579678, -0.806218,
		0.992822, 0.083609, 0.085520,
		41.840366, 31.715408, 37.212982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400635, 30.972382, 37.089417>,  <41.145390, 31.656881, 37.153118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400635, 30.972382, 37.089417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700188, 31.166809, 37.269600>,  <41.879921, 31.283466, 37.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700188, 31.166809, 37.269600>,  <41.400635, 30.972382, 37.089417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700188, 31.166809, 37.269600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131479, -0.775192, 0.617892,
		0.649530, -0.403502, -0.644435,
		0.748882, 0.486069, 0.450459,
		41.924850, 31.312630, 37.404739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959370, 30.467466, 37.177555>,  <41.400635, 30.972382, 37.089417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959370, 30.467466, 37.177555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992752, 30.764637, 37.443214>,  <42.012783, 30.942940, 37.602612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992752, 30.764637, 37.443214>,  <41.959370, 30.467466, 37.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992752, 30.764637, 37.443214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293688, -0.655209, 0.696023,
		0.952251, 0.136964, -0.272871,
		0.083457, 0.742928, 0.664149,
		42.017788, 30.987514, 37.642460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650406, 30.410046, 37.470798>,  <41.959370, 30.467466, 37.177555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650406, 30.410046, 37.470798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416496, 30.607391, 37.728363>,  <42.276150, 30.725798, 37.882904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416496, 30.607391, 37.728363>,  <42.650406, 30.410046, 37.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416496, 30.607391, 37.728363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158966, -0.708700, 0.687367,
		0.795465, 0.504318, 0.336004,
		-0.584778, 0.493363, 0.643915,
		42.241062, 30.755400, 37.921539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035858, 30.429819, 38.010666>,  <42.650406, 30.410046, 37.470798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035858, 30.429819, 38.010666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666885, 30.475998, 38.158070>,  <42.445503, 30.503706, 38.246510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666885, 30.475998, 38.158070>,  <43.035858, 30.429819, 38.010666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666885, 30.475998, 38.158070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279455, -0.459027, 0.843326,
		0.266513, 0.880890, 0.391158,
		-0.922429, 0.115447, 0.368505,
		42.390156, 30.510632, 38.268620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149467, 30.732256, 38.769138>,  <43.035858, 30.429819, 38.010666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149467, 30.732256, 38.769138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782597, 30.572950, 38.763916>,  <42.562473, 30.477367, 38.760780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782597, 30.572950, 38.763916>,  <43.149467, 30.732256, 38.769138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782597, 30.572950, 38.763916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251140, -0.603184, 0.757032,
		-0.309374, 0.691055, 0.653247,
		-0.917179, -0.398263, -0.013057,
		42.507442, 30.453472, 38.759998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936489, 30.848263, 39.420254>,  <43.149467, 30.732256, 38.769138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936489, 30.848263, 39.420254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695324, 30.560974, 39.281315>,  <42.550625, 30.388601, 39.197952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695324, 30.560974, 39.281315>,  <42.936489, 30.848263, 39.420254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695324, 30.560974, 39.281315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036097, -0.459487, 0.887450,
		-0.796988, 0.522519, 0.302958,
		-0.602916, -0.718223, -0.347344,
		42.514450, 30.345507, 39.177113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502037, 30.724171, 39.981758>,  <42.936489, 30.848263, 39.420254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502037, 30.724171, 39.981758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449539, 30.386244, 39.774273>,  <42.418041, 30.183487, 39.649784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449539, 30.386244, 39.774273>,  <42.502037, 30.724171, 39.981758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449539, 30.386244, 39.774273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101389, -0.509052, 0.854743,
		-0.986152, 0.164769, -0.018846,
		-0.131241, -0.844818, -0.518709,
		42.410168, 30.132799, 39.618660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092121, 30.333929, 40.361950>,  <42.502037, 30.724171, 39.981758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092121, 30.333929, 40.361950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239334, 30.032579, 40.143967>,  <42.327663, 29.851770, 40.013176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239334, 30.032579, 40.143967>,  <42.092121, 30.333929, 40.361950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239334, 30.032579, 40.143967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126861, -0.621299, 0.773236,
		-0.921119, -0.215441, -0.324231,
		0.368031, -0.753374, -0.544959,
		42.349743, 29.806566, 39.980480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783714, 29.786919, 40.523975>,  <42.092121, 30.333929, 40.361950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783714, 29.786919, 40.523975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085529, 29.571878, 40.373428>,  <42.266621, 29.442854, 40.283100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085529, 29.571878, 40.373428>,  <41.783714, 29.786919, 40.523975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085529, 29.571878, 40.373428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012241, -0.584944, 0.810982,
		-0.656143, -0.607309, -0.447943,
		0.754538, -0.537603, -0.376373,
		42.311890, 29.410599, 40.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689648, 29.154800, 40.593311>,  <41.783714, 29.786919, 40.523975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689648, 29.154800, 40.593311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084572, 29.114431, 40.544277>,  <42.321526, 29.090210, 40.514858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084572, 29.114431, 40.544277>,  <41.689648, 29.154800, 40.593311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084572, 29.114431, 40.544277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038408, -0.597303, 0.801095,
		-0.154070, -0.795640, -0.585849,
		0.987313, -0.100924, -0.122585,
		42.380764, 29.084154, 40.507500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980251, 28.489571, 40.581596>,  <41.689648, 29.154800, 40.593311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980251, 28.489571, 40.581596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257626, 28.736397, 40.730392>,  <42.424049, 28.884493, 40.819672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257626, 28.736397, 40.730392>,  <41.980251, 28.489571, 40.581596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257626, 28.736397, 40.730392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030317, -0.490840, 0.870722,
		0.719883, -0.615065, -0.321657,
		0.693433, 0.617066, 0.371995,
		42.465656, 28.921516, 40.841991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778831, 28.465141, 41.235058>,  <41.980251, 28.489571, 40.581596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778831, 28.465141, 41.235058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045212, 28.185827, 41.130054>,  <42.205040, 28.018240, 41.067055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045212, 28.185827, 41.130054>,  <41.778831, 28.465141, 41.235058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045212, 28.185827, 41.130054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735937, 0.557366, 0.384371,
		-0.122088, -0.449160, 0.885070,
		0.665952, -0.698283, -0.262506,
		42.244999, 27.976343, 41.051304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167953, 28.356003, 41.836704>,  <41.778831, 28.465141, 41.235058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167953, 28.356003, 41.836704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408306, 28.290735, 41.523701>,  <42.552517, 28.251575, 41.335899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408306, 28.290735, 41.523701>,  <42.167953, 28.356003, 41.836704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408306, 28.290735, 41.523701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686384, 0.607027, 0.400493,
		0.409654, -0.777749, 0.476749,
		0.600882, -0.163169, -0.782506,
		42.588570, 28.241785, 41.288948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732079, 28.006876, 42.022091>,  <42.167953, 28.356003, 41.836704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732079, 28.006876, 42.022091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782967, 28.253052, 41.710953>,  <42.813499, 28.400757, 41.524269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782967, 28.253052, 41.710953>,  <42.732079, 28.006876, 42.022091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782967, 28.253052, 41.710953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719269, 0.482757, 0.499598,
		0.682985, -0.623039, -0.381253,
		0.127216, 0.615441, -0.777848,
		42.821133, 28.437685, 41.477600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553024, 28.158478, 41.728161>,  <42.732079, 28.006876, 42.022091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553024, 28.158478, 41.728161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254166, 28.423656, 41.747242>,  <43.074852, 28.582764, 41.758690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254166, 28.423656, 41.747242>,  <43.553024, 28.158478, 41.728161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254166, 28.423656, 41.747242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482106, 0.491130, 0.725510,
		0.457543, 0.565062, -0.686556,
		-0.747146, 0.662945, 0.047707,
		43.030022, 28.622540, 41.761555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780521, 28.938007, 41.663425>,  <43.553024, 28.158478, 41.728161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780521, 28.938007, 41.663425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442039, 28.904776, 41.873966>,  <43.238953, 28.884836, 42.000290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442039, 28.904776, 41.873966>,  <43.780521, 28.938007, 41.663425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442039, 28.904776, 41.873966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482366, 0.300290, 0.822890,
		-0.226423, 0.950223, -0.214031,
		-0.846201, -0.083080, 0.526348,
		43.188179, 28.879852, 42.031872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712467, 29.150640, 41.010883>,  <43.780521, 28.938007, 41.663425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712467, 29.150640, 41.010883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859623, 29.408730, 41.278717>,  <43.947918, 29.563583, 41.439419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859623, 29.408730, 41.278717>,  <43.712467, 29.150640, 41.010883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859623, 29.408730, 41.278717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901487, -0.424034, -0.086700,
		0.227987, 0.635519, -0.737656,
		0.367891, 0.645221, 0.669587,
		43.969990, 29.602297, 41.479591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436939, 29.359501, 40.706512>,  <43.712467, 29.150640, 41.010883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436939, 29.359501, 40.706512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398529, 29.441471, 41.096134>,  <44.375484, 29.490654, 41.329906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398529, 29.441471, 41.096134>,  <44.436939, 29.359501, 40.706512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398529, 29.441471, 41.096134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923513, -0.346743, 0.163989,
		0.371353, 0.915300, -0.155959,
		-0.096021, 0.204928, 0.974056,
		44.369724, 29.502949, 41.388351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925716, 29.863010, 41.000202>,  <44.436939, 29.359501, 40.706512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925716, 29.863010, 41.000202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823162, 29.617191, 41.298626>,  <44.761631, 29.469700, 41.477680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823162, 29.617191, 41.298626>,  <44.925716, 29.863010, 41.000202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823162, 29.617191, 41.298626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963449, -0.224506, 0.146161,
		0.077671, 0.756261, 0.649644,
		-0.256384, -0.614546, 0.746056,
		44.746246, 29.432827, 41.522442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388485, 30.026293, 41.605591>,  <44.925716, 29.863010, 41.000202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388485, 30.026293, 41.605591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273132, 29.644730, 41.572376>,  <45.203922, 29.415791, 41.552448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273132, 29.644730, 41.572376>,  <45.388485, 30.026293, 41.605591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273132, 29.644730, 41.572376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951967, -0.294951, 0.082241,
		-0.102942, -0.055332, 0.993147,
		-0.288379, -0.953909, -0.083037,
		45.186619, 29.358557, 41.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348804, 30.706299, 41.254986>,  <45.388485, 30.026293, 41.605591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348804, 30.706299, 41.254986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008110, 30.708323, 41.045410>,  <44.803692, 30.709536, 40.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008110, 30.708323, 41.045410>,  <45.348804, 30.706299, 41.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008110, 30.708323, 41.045410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512475, 0.216299, -0.831014,
		0.109125, -0.976314, -0.186822,
		-0.851740, 0.005058, -0.523940,
		44.752586, 30.709841, 40.888229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.486511, 30.265150, 40.627674>,  <45.348804, 30.706299, 41.254986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.486511, 30.265150, 40.627674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198879, 30.534521, 40.559063>,  <45.026299, 30.696144, 40.517895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198879, 30.534521, 40.559063>,  <45.486511, 30.265150, 40.627674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198879, 30.534521, 40.559063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361063, 0.151153, -0.920210,
		-0.593768, -0.723635, -0.351841,
		-0.719078, 0.673428, -0.171528,
		44.983154, 30.736549, 40.507607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367016, 30.112310, 39.935265>,  <45.486511, 30.265150, 40.627674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367016, 30.112310, 39.935265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209572, 30.470854, 40.016865>,  <45.115105, 30.685980, 40.065826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209572, 30.470854, 40.016865>,  <45.367016, 30.112310, 39.935265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209572, 30.470854, 40.016865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296760, 0.333932, -0.894664,
		-0.870061, -0.291606, -0.397441,
		-0.393608, 0.896357, 0.204004,
		45.091488, 30.739761, 40.078068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181751, 30.223694, 39.282974>,  <45.367016, 30.112310, 39.935265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181751, 30.223694, 39.282974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187630, 30.565207, 39.491146>,  <45.191158, 30.770113, 39.616047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187630, 30.565207, 39.491146>,  <45.181751, 30.223694, 39.282974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187630, 30.565207, 39.491146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399654, 0.472082, -0.785758,
		-0.916548, 0.219541, -0.334277,
		0.014700, 0.853780, 0.520426,
		45.192039, 30.821341, 39.647274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798969, 30.711878, 38.876705>,  <45.181751, 30.223694, 39.282974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798969, 30.711878, 38.876705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044971, 30.928194, 39.106251>,  <45.192574, 31.057983, 39.243977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044971, 30.928194, 39.106251>,  <44.798969, 30.711878, 38.876705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044971, 30.928194, 39.106251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156432, 0.629628, -0.760984,
		-0.772854, 0.557777, 0.302626,
		0.615001, 0.540789, 0.573865,
		45.229473, 31.090431, 39.278412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471100, 31.304165, 38.840393>,  <44.798969, 30.711878, 38.876705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471100, 31.304165, 38.840393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847649, 31.365337, 38.960682>,  <45.073578, 31.402040, 39.032856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847649, 31.365337, 38.960682>,  <44.471100, 31.304165, 38.840393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847649, 31.365337, 38.960682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092782, 0.739639, -0.666577,
		-0.324367, 0.655398, 0.682085,
		0.941370, 0.152930, 0.300724,
		45.130058, 31.411217, 39.050900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452061, 32.017574, 38.918285>,  <44.471100, 31.304165, 38.840393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452061, 32.017574, 38.918285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829853, 31.891121, 38.882477>,  <45.056530, 31.815248, 38.860992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829853, 31.891121, 38.882477>,  <44.452061, 32.017574, 38.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829853, 31.891121, 38.882477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209330, 0.788975, -0.577667,
		0.253248, 0.526857, 0.811349,
		0.944482, -0.316133, -0.089519,
		45.113197, 31.796282, 38.855621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887535, 32.591362, 39.097443>,  <44.452061, 32.017574, 38.918285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887535, 32.591362, 39.097443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104141, 32.350380, 38.862904>,  <45.234104, 32.205791, 38.722179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104141, 32.350380, 38.862904>,  <44.887535, 32.591362, 39.097443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104141, 32.350380, 38.862904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195211, 0.768510, -0.609332,
		0.817710, 0.215504, 0.533769,
		0.541520, -0.602454, -0.586349,
		45.266598, 32.169643, 38.687000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451233, 33.002716, 38.869595>,  <44.887535, 32.591362, 39.097443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451233, 33.002716, 38.869595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466133, 32.703735, 38.604286>,  <45.475075, 32.524345, 38.445103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466133, 32.703735, 38.604286>,  <45.451233, 33.002716, 38.869595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466133, 32.703735, 38.604286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379673, 0.624547, -0.682488,
		0.924370, -0.226401, 0.307054,
		0.037254, -0.747451, -0.663271,
		45.477310, 32.479500, 38.405304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.123558, 33.018745, 38.457554>,  <45.451233, 33.002716, 38.869595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.123558, 33.018745, 38.457554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890144, 32.797951, 38.219296>,  <45.750095, 32.665474, 38.076340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890144, 32.797951, 38.219296>,  <46.123558, 33.018745, 38.457554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890144, 32.797951, 38.219296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299418, 0.535561, -0.789635,
		0.754876, -0.639126, -0.147242,
		-0.583532, -0.551990, -0.595648,
		45.715084, 32.632355, 38.040600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.453777, 33.082714, 37.821167>,  <46.123558, 33.018745, 38.457554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.453777, 33.082714, 37.821167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092331, 32.948792, 37.714294>,  <45.875462, 32.868439, 37.650169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092331, 32.948792, 37.714294>,  <46.453777, 33.082714, 37.821167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092331, 32.948792, 37.714294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003755, 0.617536, -0.786534,
		0.428327, -0.711728, -0.556758,
		-0.903616, -0.334803, -0.267179,
		45.821247, 32.848351, 37.634140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426395, 32.840874, 37.143917>,  <46.453777, 33.082714, 37.821167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426395, 32.840874, 37.143917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053417, 32.949703, 37.239010>,  <45.829628, 33.015003, 37.296066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053417, 32.949703, 37.239010>,  <46.426395, 32.840874, 37.143917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053417, 32.949703, 37.239010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104434, 0.426931, -0.898234,
		-0.345884, -0.862383, -0.369676,
		-0.932447, 0.272078, 0.237731,
		45.773682, 33.031326, 37.310329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061432, 32.658741, 36.459660>,  <46.426395, 32.840874, 37.143917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061432, 32.658741, 36.459660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876408, 32.930237, 36.687817>,  <45.765392, 33.093136, 36.824711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876408, 32.930237, 36.687817>,  <46.061432, 32.658741, 36.459660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876408, 32.930237, 36.687817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276930, 0.500555, -0.820216,
		-0.842228, -0.537358, -0.043572,
		-0.462559, 0.678743, 0.570392,
		45.737640, 33.133858, 36.858932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418522, 32.739880, 36.193794>,  <46.061432, 32.658741, 36.459660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418522, 32.739880, 36.193794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427639, 33.073875, 36.413712>,  <45.433109, 33.274273, 36.545662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427639, 33.073875, 36.413712>,  <45.418522, 32.739880, 36.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427639, 33.073875, 36.413712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526788, 0.477429, -0.703247,
		-0.849691, -0.273599, 0.450742,
		0.022789, 0.834988, 0.549796,
		45.434475, 33.324371, 36.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778969, 32.964016, 36.096741>,  <45.418522, 32.739880, 36.193794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778969, 32.964016, 36.096741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981464, 33.289906, 36.209843>,  <45.102962, 33.485439, 36.277702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981464, 33.289906, 36.209843>,  <44.778969, 32.964016, 36.096741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981464, 33.289906, 36.209843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525452, 0.551384, -0.647978,
		-0.683828, 0.179458, 0.707230,
		0.506240, 0.814721, 0.282755,
		45.133335, 33.534321, 36.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325043, 33.489243, 35.968330>,  <44.778969, 32.964016, 36.096741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325043, 33.489243, 35.968330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677250, 33.676884, 35.995583>,  <44.888573, 33.789467, 36.011932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677250, 33.676884, 35.995583>,  <44.325043, 33.489243, 35.968330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677250, 33.676884, 35.995583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309469, 0.677748, -0.666998,
		-0.359062, 0.566218, 0.741938,
		0.880513, 0.469101, 0.068126,
		44.941402, 33.817616, 36.016022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238377, 34.276318, 36.174995>,  <44.325043, 33.489243, 35.968330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238377, 34.276318, 36.174995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592613, 34.233376, 35.994240>,  <44.805153, 34.207611, 35.885784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592613, 34.233376, 35.994240>,  <44.238377, 34.276318, 36.174995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592613, 34.233376, 35.994240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257688, 0.695896, -0.670317,
		0.386432, 0.710073, 0.588614,
		0.885589, -0.107353, -0.451893,
		44.858292, 34.201168, 35.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372292, 34.879238, 36.031662>,  <44.238377, 34.276318, 36.174995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372292, 34.879238, 36.031662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627857, 34.673611, 35.802742>,  <44.781197, 34.550236, 35.665390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627857, 34.673611, 35.802742>,  <44.372292, 34.879238, 36.031662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627857, 34.673611, 35.802742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196640, 0.610094, -0.767540,
		0.743724, 0.602927, 0.288710,
		0.638911, -0.514066, -0.572301,
		44.819530, 34.519390, 35.631050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838665, 35.408195, 35.784325>,  <44.372292, 34.879238, 36.031662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838665, 35.408195, 35.784325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869270, 35.086250, 35.548923>,  <44.887634, 34.893082, 35.407684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869270, 35.086250, 35.548923>,  <44.838665, 35.408195, 35.784325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869270, 35.086250, 35.548923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181427, 0.569141, -0.801975,
		0.980423, 0.168135, -0.102475,
		0.076517, -0.804866, -0.588503,
		44.892227, 34.844791, 35.372372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343700, 35.579136, 35.234447>,  <44.838665, 35.408195, 35.784325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343700, 35.579136, 35.234447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135292, 35.270031, 35.089466>,  <45.010246, 35.084568, 35.002476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135292, 35.270031, 35.089466>,  <45.343700, 35.579136, 35.234447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135292, 35.270031, 35.089466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038128, 0.445297, -0.894571,
		0.852691, -0.452272, -0.261473,
		-0.521023, -0.772762, -0.362456,
		44.978985, 35.038204, 34.980728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662460, 35.384304, 34.545692>,  <45.343700, 35.579136, 35.234447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662460, 35.384304, 34.545692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285622, 35.250248, 34.540981>,  <45.059521, 35.169815, 34.538155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285622, 35.250248, 34.540981>,  <45.662460, 35.384304, 34.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285622, 35.250248, 34.540981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103542, 0.324116, -0.940334,
		0.318964, -0.884663, -0.340049,
		-0.942094, -0.335142, -0.011782,
		45.002995, 35.149704, 34.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370155, 35.362774, 34.215961>,  <45.662460, 35.384304, 34.545692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370155, 35.362774, 34.215961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534599, 35.186562, 34.535191>,  <46.633266, 35.080833, 34.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534599, 35.186562, 34.535191>,  <46.370155, 35.362774, 34.215961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534599, 35.186562, 34.535191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891993, 0.374942, -0.252522,
		-0.187987, 0.815689, 0.547094,
		0.411108, -0.440533, 0.798073,
		46.657932, 35.054401, 34.774612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822292, 35.790787, 34.479836>,  <46.370155, 35.362774, 34.215961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822292, 35.790787, 34.479836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925083, 35.421394, 34.593781>,  <46.986759, 35.199760, 34.662148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925083, 35.421394, 34.593781>,  <46.822292, 35.790787, 34.479836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925083, 35.421394, 34.593781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944058, 0.176842, -0.278355,
		0.206681, 0.340454, 0.917264,
		0.256978, -0.923481, 0.284858,
		47.002178, 35.144348, 34.679237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.467693, 35.757179, 34.905533>,  <46.822292, 35.790787, 34.479836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.467693, 35.757179, 34.905533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430508, 35.412025, 34.706821>,  <47.408195, 35.204933, 34.587593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430508, 35.412025, 34.706821>,  <47.467693, 35.757179, 34.905533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430508, 35.412025, 34.706821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979525, 0.010223, -0.201063,
		0.178572, -0.505303, 0.844263,
		-0.092967, -0.862881, -0.496783,
		47.402618, 35.153160, 34.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897251, 35.071407, 35.224991>,  <47.467693, 35.757179, 34.905533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897251, 35.071407, 35.224991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866924, 35.080643, 34.826248>,  <47.848728, 35.086185, 34.587002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866924, 35.080643, 34.826248>,  <47.897251, 35.071407, 35.224991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.866924, 35.080643, 34.826248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996921, 0.021836, -0.075312,
		0.020029, -0.999495, -0.024673,
		-0.075813, 0.023088, -0.996855,
		47.844181, 35.087570, 34.527191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.136391, 40.444729, 43.857319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766861, 40.350521, 43.978031>,  <36.545143, 40.293995, 44.050461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766861, 40.350521, 43.978031>,  <37.136391, 40.444729, 43.857319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766861, 40.350521, 43.978031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282303, -0.113293, -0.952612,
		0.258552, -0.965243, 0.038175,
		-0.923827, -0.235522, 0.301783,
		36.489712, 40.279865, 44.068565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951199, 39.799953, 43.377827>,  <37.136391, 40.444729, 43.857319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951199, 39.799953, 43.377827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625591, 39.976509, 43.528851>,  <36.430229, 40.082443, 43.619465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625591, 39.976509, 43.528851>,  <36.951199, 39.799953, 43.377827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625591, 39.976509, 43.528851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505536, -0.218287, -0.834736,
		-0.286031, -0.870357, 0.400829,
		-0.814014, 0.441394, 0.377560,
		36.381386, 40.108925, 43.642120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425610, 39.409481, 43.146446>,  <36.951199, 39.799953, 43.377827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425610, 39.409481, 43.146446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224701, 39.738937, 43.251778>,  <36.104156, 39.936611, 43.314976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224701, 39.738937, 43.251778>,  <36.425610, 39.409481, 43.146446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224701, 39.738937, 43.251778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549491, -0.068877, -0.832656,
		-0.667669, -0.562919, 0.487177,
		-0.502273, 0.823637, 0.263332,
		36.074020, 39.986027, 43.330776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816780, 39.237827, 43.050289>,  <36.425610, 39.409481, 43.146446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816780, 39.237827, 43.050289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.789528, 39.636890, 43.047794>,  <35.773174, 39.876328, 43.046295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.789528, 39.636890, 43.047794>,  <35.816780, 39.237827, 43.050289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789528, 39.636890, 43.047794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381214, -0.031813, -0.923939,
		-0.921973, -0.060572, 0.382489,
		-0.068133, 0.997657, -0.006239,
		35.769089, 39.936188, 43.045921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135433, 39.437145, 42.726860>,  <35.816780, 39.237827, 43.050289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135433, 39.437145, 42.726860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355881, 39.767170, 42.676987>,  <35.488148, 39.965183, 42.647060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355881, 39.767170, 42.676987>,  <35.135433, 39.437145, 42.726860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355881, 39.767170, 42.676987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207877, -0.008962, -0.978114,
		-0.808120, 0.564975, 0.166571,
		0.551117, 0.825059, -0.124688,
		35.521217, 40.014687, 42.639580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767162, 39.829033, 42.226746>,  <35.135433, 39.437145, 42.726860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767162, 39.829033, 42.226746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142410, 39.966831, 42.212532>,  <35.367558, 40.049511, 42.204002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142410, 39.966831, 42.212532>,  <34.767162, 39.829033, 42.226746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142410, 39.966831, 42.212532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016375, -0.146620, -0.989057,
		-0.345935, 0.927268, -0.143188,
		0.938116, 0.344494, -0.035537,
		35.423843, 40.070179, 42.201870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705772, 40.289864, 41.715836>,  <34.767162, 39.829033, 42.226746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705772, 40.289864, 41.715836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099663, 40.224705, 41.740437>,  <35.335999, 40.185608, 41.755196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099663, 40.224705, 41.740437>,  <34.705772, 40.289864, 41.715836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099663, 40.224705, 41.740437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026395, -0.209463, -0.977460,
		0.172107, 0.964153, -0.201964,
		0.984725, -0.162897, 0.061499,
		35.395081, 40.175835, 41.758884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109573, 40.776146, 41.356251>,  <34.705772, 40.289864, 41.715836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109573, 40.776146, 41.356251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382488, 40.483986, 41.368919>,  <35.546238, 40.308689, 41.376522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382488, 40.483986, 41.368919>,  <35.109573, 40.776146, 41.356251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382488, 40.483986, 41.368919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011882, -0.054393, -0.998449,
		0.730989, 0.680851, -0.045790,
		0.682285, -0.730400, 0.031671,
		35.587173, 40.264866, 41.378422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704887, 40.989986, 40.766872>,  <35.109573, 40.776146, 41.356251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704887, 40.989986, 40.766872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707153, 40.597698, 40.845001>,  <35.708511, 40.362324, 40.891876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707153, 40.597698, 40.845001>,  <35.704887, 40.989986, 40.766872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707153, 40.597698, 40.845001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041648, -0.195384, -0.979842,
		0.999116, -0.002588, -0.041951,
		0.005661, -0.980723, 0.195319,
		35.708851, 40.303482, 40.903595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279835, 40.730587, 40.367825>,  <35.704887, 40.989986, 40.766872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279835, 40.730587, 40.367825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068230, 40.399773, 40.443890>,  <35.941265, 40.201286, 40.489529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068230, 40.399773, 40.443890>,  <36.279835, 40.730587, 40.367825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068230, 40.399773, 40.443890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144390, -0.308536, -0.940190,
		0.836238, -0.469918, 0.282636,
		-0.529016, -0.827032, 0.190159,
		35.909523, 40.151665, 40.500938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673992, 40.309650, 39.997890>,  <36.279835, 40.730587, 40.367825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673992, 40.309650, 39.997890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318680, 40.133591, 40.050396>,  <36.105492, 40.027954, 40.081898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318680, 40.133591, 40.050396>,  <36.673992, 40.309650, 39.997890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318680, 40.133591, 40.050396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108956, -0.479563, -0.870717,
		0.446192, -0.759138, 0.473943,
		-0.888280, -0.440146, 0.131265,
		36.052197, 40.001545, 40.089775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830135, 39.635204, 39.810135>,  <36.673992, 40.309650, 39.997890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830135, 39.635204, 39.810135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431992, 39.669781, 39.793217>,  <36.193104, 39.690525, 39.783066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431992, 39.669781, 39.793217>,  <36.830135, 39.635204, 39.810135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431992, 39.669781, 39.793217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018403, -0.602385, -0.797993,
		-0.094453, -0.793512, 0.601180,
		-0.995359, 0.086437, -0.042294,
		36.133385, 39.695713, 39.780529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492352, 38.979630, 39.700539>,  <36.830135, 39.635204, 39.810135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492352, 38.979630, 39.700539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218204, 39.237011, 39.564163>,  <36.053715, 39.391441, 39.482338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218204, 39.237011, 39.564163>,  <36.492352, 38.979630, 39.700539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218204, 39.237011, 39.564163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162591, -0.591592, -0.789673,
		-0.709816, -0.485781, 0.510076,
		-0.685365, 0.643456, -0.340938,
		36.012596, 39.430046, 39.461884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080132, 38.548183, 39.398148>,  <36.492352, 38.979630, 39.700539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080132, 38.548183, 39.398148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003490, 38.906708, 39.238194>,  <35.957504, 39.121822, 39.142220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003490, 38.906708, 39.238194>,  <36.080132, 38.548183, 39.398148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003490, 38.906708, 39.238194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301128, -0.441468, -0.845238,
		-0.934136, -0.041534, 0.354492,
		-0.191603, 0.896315, -0.399884,
		35.946011, 39.175602, 39.118229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496052, 38.416340, 38.984955>,  <36.080132, 38.548183, 39.398148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496052, 38.416340, 38.984955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596088, 38.780777, 38.853889>,  <35.656109, 38.999439, 38.775249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596088, 38.780777, 38.853889>,  <35.496052, 38.416340, 38.984955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596088, 38.780777, 38.853889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352328, -0.229576, -0.907282,
		-0.901843, 0.342344, 0.263590,
		0.250088, 0.911096, -0.327659,
		35.671116, 39.054104, 38.755592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966446, 38.617996, 38.547096>,  <35.496052, 38.416340, 38.984955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966446, 38.617996, 38.547096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290905, 38.810738, 38.414513>,  <35.485580, 38.926380, 38.334965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290905, 38.810738, 38.414513>,  <34.966446, 38.617996, 38.547096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290905, 38.810738, 38.414513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256798, -0.215742, -0.942078,
		-0.525448, 0.849280, -0.051260,
		0.811147, 0.481849, -0.331455,
		35.534248, 38.955292, 38.315075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828373, 38.869892, 37.935081>,  <34.966446, 38.617996, 38.547096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828373, 38.869892, 37.935081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225796, 38.913364, 37.922268>,  <35.464249, 38.939449, 37.914581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225796, 38.913364, 37.922268>,  <34.828373, 38.869892, 37.935081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225796, 38.913364, 37.922268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010921, -0.189554, -0.981810,
		-0.112776, 0.975837, -0.187146,
		0.993560, 0.108681, -0.032034,
		35.523865, 38.945969, 37.912659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044853, 39.329071, 37.344624>,  <34.828373, 38.869892, 37.935081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044853, 39.329071, 37.344624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366776, 39.106850, 37.428196>,  <35.559929, 38.973518, 37.478340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366776, 39.106850, 37.428196>,  <35.044853, 39.329071, 37.344624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366776, 39.106850, 37.428196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104460, -0.213940, -0.971246,
		0.584276, 0.803488, -0.114147,
		0.804805, -0.555551, 0.208932,
		35.608215, 38.940186, 37.490875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434616, 39.430832, 36.855556>,  <35.044853, 39.329071, 37.344624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434616, 39.430832, 36.855556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553764, 39.073189, 36.989330>,  <35.625252, 38.858604, 37.069595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553764, 39.073189, 36.989330>,  <35.434616, 39.430832, 36.855556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553764, 39.073189, 36.989330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059387, -0.367013, -0.928318,
		0.952758, 0.256656, -0.162420,
		0.297869, -0.894108, 0.334433,
		35.643124, 38.804955, 37.089661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915543, 39.293896, 36.346924>,  <35.434616, 39.430832, 36.855556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915543, 39.293896, 36.346924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821510, 38.939816, 36.507504>,  <35.765091, 38.727367, 36.603851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821510, 38.939816, 36.507504>,  <35.915543, 39.293896, 36.346924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821510, 38.939816, 36.507504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171907, -0.444382, -0.879189,
		0.956654, -0.137666, 0.256636,
		-0.235078, -0.885197, 0.401454,
		35.750988, 38.674255, 36.627941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353355, 38.895752, 36.027454>,  <35.915543, 39.293896, 36.346924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353355, 38.895752, 36.027454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102890, 38.633236, 36.195839>,  <35.952610, 38.475727, 36.296867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102890, 38.633236, 36.195839>,  <36.353355, 38.895752, 36.027454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102890, 38.633236, 36.195839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017603, -0.551667, -0.833879,
		0.779492, -0.514735, 0.356987,
		-0.626164, -0.656286, 0.420959,
		35.915039, 38.436352, 36.322128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576599, 38.168579, 35.876259>,  <36.353355, 38.895752, 36.027454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576599, 38.168579, 35.876259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182598, 38.213078, 35.929005>,  <35.946198, 38.239777, 35.960651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182598, 38.213078, 35.929005>,  <36.576599, 38.168579, 35.876259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182598, 38.213078, 35.929005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166511, -0.412919, -0.895418,
		-0.045165, -0.903948, 0.425251,
		-0.985005, 0.111250, 0.131868,
		35.887096, 38.246452, 35.968563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146313, 38.033134, 35.406471>,  <36.576599, 38.168579, 35.876259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146313, 38.033134, 35.406471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525711, 37.913296, 35.365276>,  <37.753349, 37.841393, 35.340561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525711, 37.913296, 35.365276>,  <37.146313, 38.033134, 35.406471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525711, 37.913296, 35.365276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140339, 0.105908, 0.984423,
		-0.284021, -0.948170, 0.142497,
		0.948492, -0.299595, -0.102985,
		37.810257, 37.823418, 35.334381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203949, 37.574799, 35.926086>,  <37.146313, 38.033134, 35.406471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203949, 37.574799, 35.926086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579052, 37.686813, 35.843922>,  <37.804111, 37.754025, 35.794624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579052, 37.686813, 35.843922>,  <37.203949, 37.574799, 35.926086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579052, 37.686813, 35.843922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159030, 0.179551, 0.970809,
		0.308747, -0.943048, 0.123840,
		0.937755, 0.280040, -0.205408,
		37.860378, 37.770824, 35.782299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661655, 37.185497, 36.364365>,  <37.203949, 37.574799, 35.926086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661655, 37.185497, 36.364365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874126, 37.507603, 36.258995>,  <38.001610, 37.700867, 36.195774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874126, 37.507603, 36.258995>,  <37.661655, 37.185497, 36.364365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874126, 37.507603, 36.258995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293630, 0.116681, 0.948771,
		0.794751, -0.581318, -0.174472,
		0.531180, 0.805267, -0.263425,
		38.033482, 37.749184, 36.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112167, 37.199440, 36.824566>,  <37.661655, 37.185497, 36.364365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112167, 37.199440, 36.824566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141819, 37.580585, 36.706882>,  <38.159611, 37.809273, 36.636272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141819, 37.580585, 36.706882>,  <38.112167, 37.199440, 36.824566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141819, 37.580585, 36.706882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290450, 0.261599, 0.920437,
		0.954014, -0.153685, -0.257367,
		0.074130, 0.952862, -0.294207,
		38.164059, 37.866444, 36.618622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818935, 37.511227, 36.974037>,  <38.112167, 37.199440, 36.824566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818935, 37.511227, 36.974037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579819, 37.827572, 36.921616>,  <38.436348, 38.017380, 36.890163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579819, 37.827572, 36.921616>,  <38.818935, 37.511227, 36.974037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579819, 37.827572, 36.921616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286998, 0.363788, 0.886166,
		0.748513, 0.492133, -0.444447,
		-0.597796, 0.790862, -0.131058,
		38.400478, 38.064831, 36.882298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205589, 38.111412, 37.207626>,  <38.818935, 37.511227, 36.974037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205589, 38.111412, 37.207626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825359, 38.233158, 37.183102>,  <38.597221, 38.306206, 37.168388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825359, 38.233158, 37.183102>,  <39.205589, 38.111412, 37.207626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825359, 38.233158, 37.183102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113435, 0.524276, 0.843959,
		0.289019, 0.795295, -0.532892,
		-0.950579, 0.304369, -0.061311,
		38.540184, 38.324471, 37.164707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312122, 38.680103, 37.444164>,  <39.205589, 38.111412, 37.207626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312122, 38.680103, 37.444164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912750, 38.661755, 37.457047>,  <38.673126, 38.650745, 37.464775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912750, 38.661755, 37.457047>,  <39.312122, 38.680103, 37.444164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912750, 38.661755, 37.457047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003235, 0.526498, 0.850170,
		-0.055953, 0.848938, -0.525522,
		-0.998428, -0.045869, 0.032206,
		38.613220, 38.647995, 37.466709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035995, 39.351154, 37.644909>,  <39.312122, 38.680103, 37.444164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035995, 39.351154, 37.644909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758038, 39.074001, 37.721882>,  <38.591263, 38.907707, 37.768066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758038, 39.074001, 37.721882>,  <39.035995, 39.351154, 37.644909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758038, 39.074001, 37.721882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209628, 0.451155, 0.867476,
		-0.687878, 0.562467, -0.458754,
		-0.694896, -0.692886, 0.192431,
		38.549568, 38.866135, 37.779610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475933, 39.767197, 37.895332>,  <39.035995, 39.351154, 37.644909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475933, 39.767197, 37.895332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.452362, 39.394100, 38.037613>,  <38.438221, 39.170242, 38.122982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.452362, 39.394100, 38.037613>,  <38.475933, 39.767197, 37.895332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452362, 39.394100, 38.037613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155101, 0.360546, 0.919756,
		-0.986140, -0.000972, -0.165915,
		-0.058926, -0.932741, 0.355699,
		38.434685, 39.114277, 38.144321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829823, 39.736362, 38.365799>,  <38.475933, 39.767197, 37.895332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829823, 39.736362, 38.365799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068512, 39.430695, 38.463757>,  <38.211727, 39.247295, 38.522533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068512, 39.430695, 38.463757>,  <37.829823, 39.736362, 38.365799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068512, 39.430695, 38.463757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208853, 0.146769, 0.966871,
		-0.774792, -0.628101, -0.072018,
		0.596722, -0.764165, 0.244896,
		38.247528, 39.201447, 38.537224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403107, 39.526218, 38.837627>,  <37.829823, 39.736362, 38.365799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403107, 39.526218, 38.837627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758404, 39.351341, 38.894047>,  <37.971581, 39.246414, 38.927898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758404, 39.351341, 38.894047>,  <37.403107, 39.526218, 38.837627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758404, 39.351341, 38.894047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075066, 0.164782, 0.983469,
		-0.453209, -0.884143, 0.113547,
		0.888237, -0.437194, 0.141050,
		38.024876, 39.220184, 38.936363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372776, 38.929474, 39.349751>,  <37.403107, 39.526218, 38.837627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372776, 38.929474, 39.349751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755806, 39.042706, 39.371372>,  <37.985622, 39.110645, 39.384346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755806, 39.042706, 39.371372>,  <37.372776, 38.929474, 39.349751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755806, 39.042706, 39.371372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017175, -0.243283, 0.969803,
		0.287687, -0.927727, -0.237822,
		0.957571, 0.283084, 0.054055,
		38.043076, 39.127632, 39.387589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619473, 38.479721, 39.766296>,  <37.372776, 38.929474, 39.349751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619473, 38.479721, 39.766296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895882, 38.768787, 39.760174>,  <38.061729, 38.942226, 39.756500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895882, 38.768787, 39.760174>,  <37.619473, 38.479721, 39.766296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895882, 38.768787, 39.760174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242020, -0.211366, 0.946969,
		0.681109, -0.658085, -0.320959,
		0.691026, 0.722668, -0.015306,
		38.103191, 38.985588, 39.755581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077755, 38.240623, 40.254539>,  <37.619473, 38.479721, 39.766296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077755, 38.240623, 40.254539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150986, 38.632252, 40.218956>,  <38.194923, 38.867229, 40.197605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150986, 38.632252, 40.218956>,  <38.077755, 38.240623, 40.254539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150986, 38.632252, 40.218956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151657, 0.061279, 0.986532,
		0.971331, -0.194100, -0.137264,
		0.183075, 0.979066, -0.088959,
		38.205910, 38.925972, 40.192268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643780, 38.343899, 40.656296>,  <38.077755, 38.240623, 40.254539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643780, 38.343899, 40.656296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505146, 38.718826, 40.641785>,  <38.421967, 38.943783, 40.633076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505146, 38.718826, 40.641785>,  <38.643780, 38.343899, 40.656296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505146, 38.718826, 40.641785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162926, 0.098244, 0.981735,
		0.923760, 0.334346, -0.186763,
		-0.346587, 0.937316, -0.036280,
		38.401169, 39.000023, 40.630901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074608, 38.802097, 40.991508>,  <38.643780, 38.343899, 40.656296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074608, 38.802097, 40.991508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730034, 39.004837, 41.004387>,  <38.523289, 39.126480, 41.012112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730034, 39.004837, 41.004387>,  <39.074608, 38.802097, 40.991508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730034, 39.004837, 41.004387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183128, 0.250870, 0.950541,
		0.473705, 0.824723, -0.308926,
		-0.861434, 0.506849, 0.032191,
		38.471603, 39.156891, 41.014046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267864, 39.483105, 41.424900>,  <39.074608, 38.802097, 40.991508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267864, 39.483105, 41.424900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870869, 39.434193, 41.426197>,  <38.632671, 39.404846, 41.426975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870869, 39.434193, 41.426197>,  <39.267864, 39.483105, 41.424900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870869, 39.434193, 41.426197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010672, 0.112927, 0.993546,
		-0.121861, 0.986050, -0.113384,
		-0.992490, -0.122284, 0.003239,
		38.573120, 39.397507, 41.427170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975163, 40.026649, 41.721905>,  <39.267864, 39.483105, 41.424900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975163, 40.026649, 41.721905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709873, 39.730347, 41.764629>,  <38.550697, 39.552567, 41.790264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709873, 39.730347, 41.764629>,  <38.975163, 40.026649, 41.721905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709873, 39.730347, 41.764629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001233, 0.143794, 0.989607,
		-0.748417, 0.656203, -0.096281,
		-0.663227, -0.740757, 0.106809,
		38.510906, 39.508118, 41.796673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.375187, 40.397194, 42.137012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351147, 40.001606, 42.191170>,  <38.336723, 39.764256, 42.223663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351147, 40.001606, 42.191170>,  <38.375187, 40.397194, 42.137012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351147, 40.001606, 42.191170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042202, 0.138034, 0.989528,
		-0.997300, 0.053755, -0.050032,
		-0.060098, -0.988968, 0.135393,
		38.333118, 39.704914, 42.231789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996147, 40.402191, 42.803844>,  <38.375187, 40.397194, 42.137012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996147, 40.402191, 42.803844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147507, 40.036961, 42.743034>,  <38.238323, 39.817822, 42.706547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147507, 40.036961, 42.743034>,  <37.996147, 40.402191, 42.803844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147507, 40.036961, 42.743034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077722, -0.132320, 0.988155,
		-0.922373, -0.385735, 0.020896,
		0.378401, -0.913072, -0.152029,
		38.261028, 39.763039, 42.697426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750446, 40.002075, 43.350510>,  <37.996147, 40.402191, 42.803844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750446, 40.002075, 43.350510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037128, 39.758190, 43.215107>,  <38.209137, 39.611858, 43.133865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037128, 39.758190, 43.215107>,  <37.750446, 40.002075, 43.350510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037128, 39.758190, 43.215107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280377, -0.192510, 0.940387,
		-0.638533, -0.768887, 0.032977,
		0.716703, -0.609715, -0.338502,
		38.252140, 39.575275, 43.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573540, 39.360851, 43.659279>,  <37.750446, 40.002075, 43.350510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573540, 39.360851, 43.659279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963329, 39.408031, 43.582863>,  <38.197201, 39.436340, 43.537014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963329, 39.408031, 43.582863>,  <37.573540, 39.360851, 43.659279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963329, 39.408031, 43.582863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220362, -0.339533, 0.914417,
		0.042996, -0.933169, -0.356857,
		0.974470, 0.117954, -0.191037,
		38.255669, 39.443417, 43.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906593, 38.991566, 44.107483>,  <37.573540, 39.360851, 43.659279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906593, 38.991566, 44.107483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230930, 39.212177, 44.029152>,  <38.425533, 39.344543, 43.982151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230930, 39.212177, 44.029152>,  <37.906593, 38.991566, 44.107483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230930, 39.212177, 44.029152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232803, 0.003049, 0.972519,
		0.536966, -0.834153, -0.125925,
		0.810845, 0.551525, -0.195831,
		38.474182, 39.377636, 43.970402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335884, 38.760429, 44.558449>,  <37.906593, 38.991566, 44.107483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335884, 38.760429, 44.558449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524490, 39.090870, 44.435017>,  <38.637653, 39.289135, 44.360958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524490, 39.090870, 44.435017>,  <38.335884, 38.760429, 44.558449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524490, 39.090870, 44.435017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355060, 0.142459, 0.923925,
		0.807218, -0.545213, -0.226144,
		0.471520, 0.826104, -0.308579,
		38.665947, 39.338699, 44.342442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939148, 38.754765, 44.985779>,  <38.335884, 38.760429, 44.558449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939148, 38.754765, 44.985779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886387, 39.128571, 44.853542>,  <38.854729, 39.352852, 44.774200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886387, 39.128571, 44.853542>,  <38.939148, 38.754765, 44.985779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886387, 39.128571, 44.853542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326017, 0.355845, 0.875835,
		0.936117, 0.007747, -0.351604,
		-0.131901, 0.934513, -0.330587,
		38.846817, 39.408924, 44.754368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623295, 39.101124, 45.035042>,  <38.939148, 38.754765, 44.985779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623295, 39.101124, 45.035042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350773, 39.393810, 45.043194>,  <39.187260, 39.569420, 45.048084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350773, 39.393810, 45.043194>,  <39.623295, 39.101124, 45.035042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350773, 39.393810, 45.043194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462324, 0.408558, 0.786980,
		0.567519, 0.545596, -0.616642,
		-0.681307, 0.731714, 0.020378,
		39.146381, 39.613323, 45.049309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959015, 39.732189, 44.889881>,  <39.623295, 39.101124, 45.035042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959015, 39.732189, 44.889881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629627, 39.837009, 45.091171>,  <39.431995, 39.899902, 45.211945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629627, 39.837009, 45.091171>,  <39.959015, 39.732189, 44.889881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629627, 39.837009, 45.091171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553294, 0.567220, 0.610022,
		-0.125578, 0.780762, -0.612079,
		-0.823466, 0.262054, 0.503222,
		39.382587, 39.915627, 45.242138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125370, 40.401852, 45.150730>,  <39.959015, 39.732189, 44.889881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125370, 40.401852, 45.150730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.794678, 40.320835, 45.360680>,  <39.596264, 40.272224, 45.486649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.794678, 40.320835, 45.360680>,  <40.125370, 40.401852, 45.150730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794678, 40.320835, 45.360680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490254, 0.198290, 0.848724,
		-0.275983, 0.958987, -0.064634,
		-0.826731, -0.202546, 0.524872,
		39.546658, 40.260071, 45.518143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148853, 40.917408, 45.705917>,  <40.125370, 40.401852, 45.150730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148853, 40.917408, 45.705917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926598, 40.606342, 45.823566>,  <39.793243, 40.419704, 45.894157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926598, 40.606342, 45.823566>,  <40.148853, 40.917408, 45.705917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926598, 40.606342, 45.823566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558645, -0.087196, 0.824810,
		-0.615776, 0.622608, 0.482886,
		-0.555640, -0.777660, 0.294124,
		39.759907, 40.373043, 45.911804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023418, 41.000557, 46.356709>,  <40.148853, 40.917408, 45.705917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023418, 41.000557, 46.356709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.970913, 40.605659, 46.320679>,  <39.939407, 40.368721, 46.299061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.970913, 40.605659, 46.320679>,  <40.023418, 41.000557, 46.356709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970913, 40.605659, 46.320679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514441, -0.145510, 0.845091,
		-0.847419, 0.064593, 0.526980,
		-0.131268, -0.987246, -0.090078,
		39.931534, 40.309486, 46.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741894, 40.822201, 46.980301>,  <40.023418, 41.000557, 46.356709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741894, 40.822201, 46.980301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907925, 40.494312, 46.822430>,  <40.007542, 40.297581, 46.727707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907925, 40.494312, 46.822430>,  <39.741894, 40.822201, 46.980301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907925, 40.494312, 46.822430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250656, -0.313986, 0.915742,
		-0.874578, -0.479028, 0.075141,
		0.415073, -0.819722, -0.394676,
		40.032448, 40.248394, 46.704025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825008, 40.344524, 47.560349>,  <39.741894, 40.822201, 46.980301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825008, 40.344524, 47.560349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021572, 40.129669, 47.286125>,  <40.139511, 40.000755, 47.121590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021572, 40.129669, 47.286125>,  <39.825008, 40.344524, 47.560349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021572, 40.129669, 47.286125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459868, -0.508454, 0.728008,
		-0.739620, -0.673019, -0.002845,
		0.491409, -0.537141, -0.685563,
		40.168995, 39.968529, 47.080456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704746, 39.602821, 47.641407>,  <39.825008, 40.344524, 47.560349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704746, 39.602821, 47.641407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066242, 39.658218, 47.479378>,  <40.283138, 39.691456, 47.382160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066242, 39.658218, 47.479378>,  <39.704746, 39.602821, 47.641407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066242, 39.658218, 47.479378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422002, -0.447241, 0.788600,
		-0.071952, -0.883627, -0.462630,
		0.903735, 0.138490, -0.405072,
		40.337364, 39.699764, 47.357857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031815, 38.923542, 47.732525>,  <39.704746, 39.602821, 47.641407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031815, 38.923542, 47.732525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331387, 39.177341, 47.656086>,  <40.511131, 39.329620, 47.610222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331387, 39.177341, 47.656086>,  <40.031815, 38.923542, 47.732525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331387, 39.177341, 47.656086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453750, -0.280876, 0.845707,
		0.482921, -0.720087, -0.498258,
		0.748931, 0.634494, -0.191099,
		40.556065, 39.367691, 47.598755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682125, 38.594513, 47.886681>,  <40.031815, 38.923542, 47.732525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682125, 38.594513, 47.886681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754505, 38.986633, 47.918354>,  <40.797935, 39.221905, 47.937359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754505, 38.986633, 47.918354>,  <40.682125, 38.594513, 47.886681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754505, 38.986633, 47.918354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512937, -0.162762, 0.842855,
		0.839137, -0.111903, -0.532284,
		0.180953, 0.980299, 0.079180,
		40.808792, 39.280724, 47.942108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379490, 38.630661, 48.165382>,  <40.682125, 38.594513, 47.886681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379490, 38.630661, 48.165382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.257607, 39.008205, 48.216423>,  <41.184475, 39.234730, 48.247047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.257607, 39.008205, 48.216423>,  <41.379490, 38.630661, 48.165382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257607, 39.008205, 48.216423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460755, 0.028827, 0.887059,
		0.833580, 0.329088, -0.443672,
		-0.304710, 0.943859, 0.127599,
		41.166195, 39.291363, 48.254704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891323, 38.904533, 48.481239>,  <41.379490, 38.630661, 48.165382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891323, 38.904533, 48.481239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.578213, 39.141453, 48.557606>,  <41.390347, 39.283604, 48.603424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.578213, 39.141453, 48.557606>,  <41.891323, 38.904533, 48.481239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578213, 39.141453, 48.557606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272060, 0.049792, 0.960991,
		0.559686, 0.804179, -0.200116,
		-0.782773, 0.592297, 0.190917,
		41.343380, 39.319141, 48.614880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165966, 39.332497, 48.945477>,  <41.891323, 38.904533, 48.481239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165966, 39.332497, 48.945477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.771393, 39.329990, 49.011093>,  <41.534649, 39.328487, 49.050465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.771393, 39.329990, 49.011093>,  <42.165966, 39.332497, 48.945477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771393, 39.329990, 49.011093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163023, -0.155033, 0.974366,
		0.019329, 0.987889, 0.153951,
		-0.986433, -0.006264, 0.164045,
		41.475464, 39.328110, 49.060307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155785, 39.770378, 49.536831>,  <42.165966, 39.332497, 48.945477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155785, 39.770378, 49.536831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.801689, 39.584694, 49.525059>,  <41.589233, 39.473286, 49.517998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.801689, 39.584694, 49.525059>,  <42.155785, 39.770378, 49.536831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801689, 39.584694, 49.525059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025073, -0.110797, 0.993527,
		-0.464464, 0.878769, 0.109721,
		-0.885237, -0.464208, -0.029428,
		41.536118, 39.445431, 49.516232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837509, 39.899254, 50.272198>,  <42.155785, 39.770378, 49.536831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837509, 39.899254, 50.272198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.639767, 39.594105, 50.105515>,  <41.521122, 39.411015, 50.005505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.639767, 39.594105, 50.105515>,  <41.837509, 39.899254, 50.272198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639767, 39.594105, 50.105515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365439, -0.252571, 0.895914,
		-0.788713, 0.595181, -0.153922,
		-0.494355, -0.762868, -0.416708,
		41.491459, 39.365246, 49.980503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147720, 40.056492, 50.233360>,  <41.837509, 39.899254, 50.272198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147720, 40.056492, 50.233360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.172256, 39.660503, 50.284252>,  <41.186977, 39.422909, 50.314789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.172256, 39.660503, 50.284252>,  <41.147720, 40.056492, 50.233360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172256, 39.660503, 50.284252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673321, 0.053056, 0.737444,
		-0.736801, -0.130903, -0.663316,
		0.061341, -0.989975, 0.127232,
		41.190659, 39.363510, 50.322422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514095, 39.848915, 50.166332>,  <41.147720, 40.056492, 50.233360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514095, 39.848915, 50.166332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.703732, 39.580109, 50.393890>,  <40.817513, 39.418827, 50.530426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.703732, 39.580109, 50.393890>,  <40.514095, 39.848915, 50.166332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703732, 39.580109, 50.393890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750465, 0.029506, 0.660251,
		-0.460483, -0.739951, -0.490334,
		0.474086, -0.672013, 0.568894,
		40.845959, 39.378506, 50.564560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943268, 39.408455, 50.455173>,  <40.514095, 39.848915, 50.166332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943268, 39.408455, 50.455173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694309, 39.283619, 50.742290>,  <39.544933, 39.208717, 50.914558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694309, 39.283619, 50.742290>,  <39.943268, 39.408455, 50.455173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694309, 39.283619, 50.742290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769118, 0.073762, -0.634836,
		0.145180, -0.947185, -0.285942,
		-0.622399, -0.312089, 0.717789,
		39.507591, 39.189991, 50.957626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528793, 38.815529, 50.191193>,  <39.943268, 39.408455, 50.455173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528793, 38.815529, 50.191193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343216, 38.996906, 50.495598>,  <39.231869, 39.105732, 50.678242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343216, 38.996906, 50.495598>,  <39.528793, 38.815529, 50.191193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343216, 38.996906, 50.495598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803025, 0.147458, -0.577413,
		-0.374042, -0.879003, 0.295714,
		-0.463942, 0.453443, 0.761017,
		39.204033, 39.132938, 50.723904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906551, 38.573387, 50.267193>,  <39.528793, 38.815529, 50.191193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906551, 38.573387, 50.267193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847256, 38.930355, 50.437656>,  <38.811676, 39.144535, 50.539932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847256, 38.930355, 50.437656>,  <38.906551, 38.573387, 50.267193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847256, 38.930355, 50.437656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828638, 0.123121, -0.546078,
		-0.539800, -0.434080, 0.721243,
		-0.148241, 0.892422, 0.426155,
		38.802784, 39.198082, 50.565502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273052, 38.619205, 50.413204>,  <38.906551, 38.573387, 50.267193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273052, 38.619205, 50.413204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381195, 39.003963, 50.396858>,  <38.446079, 39.234818, 50.387051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381195, 39.003963, 50.396858>,  <38.273052, 38.619205, 50.413204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381195, 39.003963, 50.396858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691736, 0.164550, -0.703153,
		-0.669634, 0.218366, 0.709863,
		0.270353, 0.961894, -0.040863,
		38.462299, 39.292530, 50.384598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660400, 38.937492, 50.197048>,  <38.273052, 38.619205, 50.413204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660400, 38.937492, 50.197048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924721, 39.233303, 50.145741>,  <38.083313, 39.410789, 50.114956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924721, 39.233303, 50.145741>,  <37.660400, 38.937492, 50.197048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924721, 39.233303, 50.145741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488747, 0.294262, -0.821302,
		-0.569626, 0.605405, 0.555887,
		0.660797, 0.739523, -0.128270,
		38.122959, 39.455158, 50.107258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284657, 39.494686, 50.068779>,  <37.660400, 38.937492, 50.197048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284657, 39.494686, 50.068779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644089, 39.589870, 49.921310>,  <37.859749, 39.646980, 49.832829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644089, 39.589870, 49.921310>,  <37.284657, 39.494686, 50.068779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644089, 39.589870, 49.921310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431287, 0.324113, -0.841987,
		-0.080869, 0.915601, 0.393873,
		0.898584, 0.237962, -0.368676,
		37.913662, 39.661259, 49.810707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199062, 40.083073, 49.687527>,  <37.284657, 39.494686, 50.068779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199062, 40.083073, 49.687527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548565, 39.949463, 49.546124>,  <37.758266, 39.869297, 49.461281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548565, 39.949463, 49.546124>,  <37.199062, 40.083073, 49.687527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548565, 39.949463, 49.546124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337042, 0.108167, -0.935256,
		0.350637, 0.936337, -0.018069,
		0.873760, -0.334025, -0.353512,
		37.810692, 39.849255, 49.440071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381596, 40.510086, 49.142231>,  <37.199062, 40.083073, 49.687527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381596, 40.510086, 49.142231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612923, 40.197788, 49.047585>,  <37.751720, 40.010410, 48.990795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612923, 40.197788, 49.047585>,  <37.381596, 40.510086, 49.142231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612923, 40.197788, 49.047585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150932, 0.182637, -0.971526,
		0.801725, 0.597568, -0.012216,
		0.578322, -0.780741, -0.236617,
		37.786419, 39.963566, 48.976601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822865, 40.739483, 48.666008>,  <37.381596, 40.510086, 49.142231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822865, 40.739483, 48.666008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795414, 40.342846, 48.622112>,  <37.778946, 40.104866, 48.595776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795414, 40.342846, 48.622112>,  <37.822865, 40.739483, 48.666008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795414, 40.342846, 48.622112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391176, 0.127937, -0.911380,
		0.917754, -0.019612, -0.396665,
		-0.068622, -0.991588, -0.109743,
		37.774826, 40.045368, 48.589188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234272, 40.489754, 48.091393>,  <37.822865, 40.739483, 48.666008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234272, 40.489754, 48.091393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932274, 40.232079, 48.140392>,  <37.751076, 40.077473, 48.169792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932274, 40.232079, 48.140392>,  <38.234272, 40.489754, 48.091393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932274, 40.232079, 48.140392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262249, 0.125414, -0.956816,
		0.601010, -0.754512, -0.263625,
		-0.754992, -0.644192, 0.122495,
		37.705776, 40.038822, 48.177139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322159, 40.155872, 47.506931>,  <38.234272, 40.489754, 48.091393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322159, 40.155872, 47.506931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957661, 40.057358, 47.638977>,  <37.738960, 39.998249, 47.718204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957661, 40.057358, 47.638977>,  <38.322159, 40.155872, 47.506931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957661, 40.057358, 47.638977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327327, -0.053431, -0.943399,
		0.249985, -0.967723, -0.031928,
		-0.911243, -0.246286, 0.330119,
		37.684288, 39.983471, 47.738014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058754, 39.491127, 47.268707>,  <38.322159, 40.155872, 47.506931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058754, 39.491127, 47.268707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717972, 39.683193, 47.352242>,  <37.513500, 39.798431, 47.402363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717972, 39.683193, 47.352242>,  <38.058754, 39.491127, 47.268707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717972, 39.683193, 47.352242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363147, -0.254517, -0.896295,
		-0.377219, -0.839441, 0.391208,
		-0.851957, 0.480166, 0.208832,
		37.462383, 39.827244, 47.414890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630367, 39.226727, 46.772896>,  <38.058754, 39.491127, 47.268707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630367, 39.226727, 46.772896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408604, 39.526989, 46.916645>,  <37.275547, 39.707146, 47.002895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408604, 39.526989, 46.916645>,  <37.630367, 39.226727, 46.772896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408604, 39.526989, 46.916645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501080, 0.043695, -0.864297,
		-0.664496, -0.659243, 0.351916,
		-0.554404, 0.750660, 0.359368,
		37.242283, 39.752186, 47.024456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916985, 39.120831, 46.587261>,  <37.630367, 39.226727, 46.772896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916985, 39.120831, 46.587261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947224, 39.515259, 46.646515>,  <36.965366, 39.751915, 46.682068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947224, 39.515259, 46.646515>,  <36.916985, 39.120831, 46.587261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947224, 39.515259, 46.646515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512040, 0.165864, -0.842795,
		-0.855629, -0.012138, 0.517448,
		0.075596, 0.986074, 0.148133,
		36.969902, 39.811081, 46.690956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219494, 39.401718, 46.468151>,  <36.916985, 39.120831, 46.587261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219494, 39.401718, 46.468151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480404, 39.702400, 46.429218>,  <36.636948, 39.882809, 46.405857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480404, 39.702400, 46.429218>,  <36.219494, 39.401718, 46.468151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480404, 39.702400, 46.429218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485125, 0.315345, -0.815605,
		-0.582403, 0.579217, 0.570364,
		0.652273, 0.751709, -0.097334,
		36.676086, 39.927914, 46.400017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846516, 39.923706, 46.164669>,  <36.219494, 39.401718, 46.468151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846516, 39.923706, 46.164669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222313, 40.048649, 46.108410>,  <36.447792, 40.123615, 46.074654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222313, 40.048649, 46.108410>,  <35.846516, 39.923706, 46.164669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222313, 40.048649, 46.108410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263999, 0.398553, -0.878328,
		-0.218296, 0.862316, 0.456901,
		0.939495, 0.312357, -0.140648,
		36.504162, 40.142357, 46.066216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748859, 40.621140, 45.905762>,  <35.846516, 39.923706, 46.164669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748859, 40.621140, 45.905762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103622, 40.483486, 45.782497>,  <36.316483, 40.400894, 45.708538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103622, 40.483486, 45.782497>,  <35.748859, 40.621140, 45.905762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103622, 40.483486, 45.782497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202576, 0.309787, -0.928975,
		0.415154, 0.886344, 0.205040,
		0.886910, -0.344131, -0.308161,
		36.369694, 40.380245, 45.690048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033188, 41.135441, 45.424866>,  <35.748859, 40.621140, 45.905762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033188, 41.135441, 45.424866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207642, 40.784786, 45.343590>,  <36.312313, 40.574394, 45.294823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207642, 40.784786, 45.343590>,  <36.033188, 41.135441, 45.424866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207642, 40.784786, 45.343590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056692, 0.198582, -0.978443,
		0.898093, 0.438255, 0.036910,
		0.436137, -0.876640, -0.203191,
		36.338482, 40.521793, 45.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396446, 41.236679, 44.820702>,  <36.033188, 41.135441, 45.424866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396446, 41.236679, 44.820702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411304, 40.837059, 44.829865>,  <36.420219, 40.597286, 44.835361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411304, 40.837059, 44.829865>,  <36.396446, 41.236679, 44.820702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411304, 40.837059, 44.829865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069071, -0.025439, -0.997287,
		0.996920, 0.035465, -0.069950,
		0.037148, -0.999047, 0.022911,
		36.422447, 40.537346, 44.836739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843315, 41.042011, 44.263603>,  <36.396446, 41.236679, 44.820702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843315, 41.042011, 44.263603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.613434, 40.727684, 44.355003>,  <36.475506, 40.539089, 44.409843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.613434, 40.727684, 44.355003>,  <36.843315, 41.042011, 44.263603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613434, 40.727684, 44.355003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244193, -0.101827, -0.964366,
		0.781079, -0.610023, -0.133370,
		-0.574704, -0.785814, 0.228499,
		36.441021, 40.491940, 44.423553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.597305, 29.112139, 40.133236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219387, 29.081633, 40.260696>,  <42.992634, 29.063328, 40.337173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219387, 29.081633, 40.260696>,  <43.597305, 29.112139, 40.133236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219387, 29.081633, 40.260696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327450, 0.185416, -0.926497,
		0.011575, -0.979696, -0.200154,
		-0.944797, -0.076265, 0.318656,
		42.935947, 29.058752, 40.356293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234737, 28.664379, 39.686775>,  <43.597305, 29.112139, 40.133236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234737, 28.664379, 39.686775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964256, 28.901005, 39.862411>,  <42.801968, 29.042980, 39.967793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964256, 28.901005, 39.862411>,  <43.234737, 28.664379, 39.686775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964256, 28.901005, 39.862411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370697, 0.241857, -0.896710,
		-0.636660, -0.769127, 0.055747,
		-0.676201, 0.591565, 0.439094,
		42.761395, 29.078474, 39.994141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833450, 28.953026, 39.124783>,  <43.234737, 28.664379, 39.686775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833450, 28.953026, 39.124783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683441, 29.212194, 39.389977>,  <42.593433, 29.367695, 39.549095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683441, 29.212194, 39.389977>,  <42.833450, 28.953026, 39.124783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683441, 29.212194, 39.389977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444841, 0.501683, -0.741910,
		-0.813309, -0.573161, 0.100077,
		-0.375027, 0.647920, 0.662989,
		42.570934, 29.406570, 39.588875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218609, 29.102089, 38.818714>,  <42.833450, 28.953026, 39.124783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218609, 29.102089, 38.818714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279591, 29.401516, 39.076832>,  <42.316181, 29.581173, 39.231701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279591, 29.401516, 39.076832>,  <42.218609, 29.102089, 38.818714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279591, 29.401516, 39.076832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359874, 0.650149, -0.669176,
		-0.920460, -0.130203, 0.368510,
		0.152458, 0.748567, 0.645293,
		42.325329, 29.626085, 39.270420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605564, 29.520315, 38.702114>,  <42.218609, 29.102089, 38.818714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605564, 29.520315, 38.702114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883774, 29.758751, 38.862572>,  <42.050701, 29.901814, 38.958847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883774, 29.758751, 38.862572>,  <41.605564, 29.520315, 38.702114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883774, 29.758751, 38.862572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237708, 0.717772, -0.654445,
		-0.678038, 0.359830, 0.640926,
		0.695528, 0.596092, 0.401143,
		42.092434, 29.937578, 38.982914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283134, 30.172733, 38.692715>,  <41.605564, 29.520315, 38.702114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283134, 30.172733, 38.692715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.666267, 30.268745, 38.755878>,  <41.896149, 30.326353, 38.793777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.666267, 30.268745, 38.755878>,  <41.283134, 30.172733, 38.692715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666267, 30.268745, 38.755878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114282, 0.822544, -0.557102,
		-0.263611, 0.515565, 0.815293,
		0.957836, 0.240031, 0.157912,
		41.953617, 30.340755, 38.803253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260468, 30.844650, 38.806488>,  <41.283134, 30.172733, 38.692715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260468, 30.844650, 38.806488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618904, 30.764391, 38.648121>,  <41.833965, 30.716236, 38.553101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618904, 30.764391, 38.648121>,  <41.260468, 30.844650, 38.806488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618904, 30.764391, 38.648121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083891, 0.799355, -0.594974,
		0.435861, 0.566368, 0.699466,
		0.896096, -0.200647, -0.395921,
		41.887733, 30.704197, 38.529346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646908, 31.495918, 38.754147>,  <41.260468, 30.844650, 38.806488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646908, 31.495918, 38.754147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.861012, 31.261623, 38.510700>,  <41.989475, 31.121046, 38.364632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.861012, 31.261623, 38.510700>,  <41.646908, 31.495918, 38.754147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861012, 31.261623, 38.510700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035462, 0.735467, -0.676632,
		0.843943, 0.340591, 0.414437,
		0.535259, -0.585736, -0.608614,
		42.021591, 31.085903, 38.328117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235504, 31.882952, 38.587822>,  <41.646908, 31.495918, 38.754147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235504, 31.882952, 38.587822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177990, 31.602201, 38.308765>,  <42.143482, 31.433752, 38.141331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177990, 31.602201, 38.308765>,  <42.235504, 31.882952, 38.587822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177990, 31.602201, 38.308765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004001, 0.705370, -0.708828,
		0.989600, -0.099130, -0.104233,
		-0.143789, -0.701873, -0.697637,
		42.134853, 31.391640, 38.099476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813641, 31.973658, 38.079536>,  <42.235504, 31.882952, 38.587822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813641, 31.973658, 38.079536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.523552, 31.776344, 37.887402>,  <42.349499, 31.657955, 37.772121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.523552, 31.776344, 37.887402>,  <42.813641, 31.973658, 38.079536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523552, 31.776344, 37.887402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267460, 0.441014, -0.856721,
		0.634444, -0.749783, -0.187898,
		-0.725221, -0.493287, -0.480336,
		42.305984, 31.628359, 37.743301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112476, 31.756985, 37.480827>,  <42.813641, 31.973658, 38.079536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112476, 31.756985, 37.480827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720638, 31.747997, 37.400940>,  <42.485535, 31.742605, 37.353008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720638, 31.747997, 37.400940>,  <43.112476, 31.756985, 37.480827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720638, 31.747997, 37.400940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167357, 0.459062, -0.872499,
		0.111290, -0.888120, -0.445935,
		-0.979595, -0.022470, -0.199722,
		42.426762, 31.741257, 37.341022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115677, 31.698702, 36.755737>,  <43.112476, 31.756985, 37.480827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115677, 31.698702, 36.755737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743210, 31.819180, 36.837910>,  <42.519730, 31.891466, 36.887215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743210, 31.819180, 36.837910>,  <43.115677, 31.698702, 36.755737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743210, 31.819180, 36.837910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061864, 0.424765, -0.903187,
		-0.359294, -0.853731, -0.376897,
		-0.931172, 0.301194, 0.205431,
		42.463860, 31.909538, 36.899540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839314, 31.623638, 36.207443>,  <43.115677, 31.698702, 36.755737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839314, 31.623638, 36.207443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591591, 31.882330, 36.385525>,  <42.442959, 32.037544, 36.492374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591591, 31.882330, 36.385525>,  <42.839314, 31.623638, 36.207443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591591, 31.882330, 36.385525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125371, 0.478300, -0.869202,
		-0.775078, -0.594115, -0.215132,
		-0.619303, 0.646728, 0.445205,
		42.405800, 32.076347, 36.519085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282242, 31.815506, 35.700558>,  <42.839314, 31.623638, 36.207443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282242, 31.815506, 35.700558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280262, 32.118969, 35.961143>,  <42.279076, 32.301048, 36.117496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280262, 32.118969, 35.961143>,  <42.282242, 31.815506, 35.700558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280262, 32.118969, 35.961143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183694, 0.639701, -0.746351,
		-0.982971, -0.123366, 0.136194,
		-0.004950, 0.758659, 0.651469,
		42.278778, 32.346565, 36.156586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841373, 32.281147, 35.341217>,  <42.282242, 31.815506, 35.700558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841373, 32.281147, 35.341217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989857, 32.523190, 35.622940>,  <42.078945, 32.668415, 35.791973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989857, 32.523190, 35.622940>,  <41.841373, 32.281147, 35.341217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989857, 32.523190, 35.622940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001418, 0.758138, -0.652093,
		-0.928548, 0.243062, 0.280570,
		0.371209, 0.605102, 0.704312,
		42.101219, 32.704720, 35.834232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346745, 32.756081, 35.520054>,  <41.841373, 32.281147, 35.341217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346745, 32.756081, 35.520054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692528, 32.932220, 35.617046>,  <41.899998, 33.037907, 35.675240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692528, 32.932220, 35.617046>,  <41.346745, 32.756081, 35.520054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692528, 32.932220, 35.617046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227071, 0.772393, -0.593168,
		-0.448492, 0.457711, 0.767695,
		0.864462, 0.440353, 0.242479,
		41.951866, 33.064327, 35.689789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246593, 33.473743, 35.300003>,  <41.346745, 32.756081, 35.520054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246593, 33.473743, 35.300003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643276, 33.437870, 35.336819>,  <41.881287, 33.416344, 35.358910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643276, 33.437870, 35.336819>,  <41.246593, 33.473743, 35.300003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643276, 33.437870, 35.336819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128239, 0.736983, -0.663634,
		-0.008312, 0.669934, 0.742374,
		0.991708, -0.089685, 0.092038,
		41.940788, 33.410965, 35.364429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468525, 34.076744, 35.421108>,  <41.246593, 33.473743, 35.300003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468525, 34.076744, 35.421108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785374, 33.902313, 35.250286>,  <41.975483, 33.797653, 35.147793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785374, 33.902313, 35.250286>,  <41.468525, 34.076744, 35.421108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785374, 33.902313, 35.250286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072247, 0.761746, -0.643834,
		0.606069, 0.479143, 0.634903,
		0.792124, -0.436078, -0.427054,
		42.023010, 33.771488, 35.122169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802898, 34.648361, 35.243359>,  <41.468525, 34.076744, 35.421108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802898, 34.648361, 35.243359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966228, 34.342697, 35.043629>,  <42.064228, 34.159298, 34.923790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966228, 34.342697, 35.043629>,  <41.802898, 34.648361, 35.243359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966228, 34.342697, 35.043629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105050, 0.582711, -0.805861,
		0.906770, 0.276603, 0.318213,
		0.408330, -0.764159, -0.499328,
		42.088726, 34.113449, 34.893829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478470, 34.895943, 34.972729>,  <41.802898, 34.648361, 35.243359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478470, 34.895943, 34.972729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407631, 34.579868, 34.738041>,  <42.365128, 34.390224, 34.597229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407631, 34.579868, 34.738041>,  <42.478470, 34.895943, 34.972729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407631, 34.579868, 34.738041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258477, 0.537873, -0.802423,
		0.949645, -0.293761, 0.108989,
		-0.177098, -0.790188, -0.586719,
		42.354500, 34.342812, 34.562027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027943, 34.761410, 34.492973>,  <42.478470, 34.895943, 34.972729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027943, 34.761410, 34.492973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710175, 34.587261, 34.323574>,  <42.519516, 34.482773, 34.221935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710175, 34.587261, 34.323574>,  <43.027943, 34.761410, 34.492973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710175, 34.587261, 34.323574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240804, 0.414349, -0.877684,
		0.557598, -0.799226, -0.224325,
		-0.794416, -0.435376, -0.423497,
		42.471851, 34.456650, 34.196526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820415, 34.610935, 34.572411>,  <43.027943, 34.761410, 34.492973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820415, 34.610935, 34.572411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181824, 34.782261, 34.577923>,  <44.398670, 34.885056, 34.581230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181824, 34.782261, 34.577923>,  <43.820415, 34.610935, 34.572411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181824, 34.782261, 34.577923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285514, -0.625645, 0.725982,
		0.319570, -0.652008, -0.687576,
		0.903525, 0.428314, 0.013780,
		44.452881, 34.910755, 34.582058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318836, 34.004936, 34.532410>,  <43.820415, 34.610935, 34.572411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318836, 34.004936, 34.532410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518990, 34.329693, 34.652706>,  <44.639080, 34.524548, 34.724884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518990, 34.329693, 34.652706>,  <44.318836, 34.004936, 34.532410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518990, 34.329693, 34.652706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453895, -0.541781, 0.707427,
		0.737291, -0.217481, -0.639613,
		0.500382, 0.811896, 0.300737,
		44.669106, 34.573261, 34.742928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099197, 33.870907, 34.529583>,  <44.318836, 34.004936, 34.532410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099197, 33.870907, 34.529583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010616, 34.158699, 34.792885>,  <44.957466, 34.331375, 34.950867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010616, 34.158699, 34.792885>,  <45.099197, 33.870907, 34.529583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010616, 34.158699, 34.792885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453039, -0.521843, 0.722796,
		0.863546, 0.458285, -0.210388,
		-0.221457, 0.719482, 0.658257,
		44.944180, 34.374542, 34.990360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680996, 33.834587, 34.892807>,  <45.099197, 33.870907, 34.529583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680996, 33.834587, 34.892807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414925, 34.028385, 35.120071>,  <45.255283, 34.144665, 35.256428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414925, 34.028385, 35.120071>,  <45.680996, 33.834587, 34.892807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414925, 34.028385, 35.120071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406621, -0.403147, 0.819836,
		0.626261, 0.776359, 0.071156,
		-0.665174, 0.484498, 0.568159,
		45.215374, 34.173733, 35.290520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057713, 33.930714, 35.486847>,  <45.680996, 33.834587, 34.892807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057713, 33.930714, 35.486847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686096, 34.028347, 35.598061>,  <45.463127, 34.086929, 35.664791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686096, 34.028347, 35.598061>,  <46.057713, 33.930714, 35.486847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686096, 34.028347, 35.598061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218135, -0.245612, 0.944506,
		0.298831, 0.938135, 0.174940,
		-0.929041, 0.244087, 0.278036,
		45.407383, 34.101574, 35.681473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131367, 34.271748, 36.157726>,  <46.057713, 33.930714, 35.486847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131367, 34.271748, 36.157726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740425, 34.187782, 36.147015>,  <45.505859, 34.137402, 36.140587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740425, 34.187782, 36.147015>,  <46.131367, 34.271748, 36.157726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740425, 34.187782, 36.147015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070400, -0.441880, 0.894307,
		-0.199566, 0.872168, 0.446651,
		-0.977352, -0.209917, -0.026783,
		45.447220, 34.124805, 36.138981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720943, 34.606628, 36.727913>,  <46.131367, 34.271748, 36.157726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720943, 34.606628, 36.727913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558552, 34.264381, 36.599480>,  <45.461117, 34.059032, 36.522419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558552, 34.264381, 36.599480>,  <45.720943, 34.606628, 36.727913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558552, 34.264381, 36.599480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300894, -0.456901, 0.837080,
		-0.862925, 0.243228, 0.442945,
		-0.405983, -0.855618, -0.321086,
		45.436756, 34.007694, 36.503155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428417, 34.394775, 37.369045>,  <45.720943, 34.606628, 36.727913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428417, 34.394775, 37.369045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414444, 34.077801, 37.125462>,  <45.406059, 33.887615, 36.979313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414444, 34.077801, 37.125462>,  <45.428417, 34.394775, 37.369045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414444, 34.077801, 37.125462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079892, -0.609591, 0.788680,
		-0.996191, -0.021101, 0.084602,
		-0.034931, -0.792435, -0.608955,
		45.403965, 33.840069, 36.942776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871395, 33.882446, 37.595390>,  <45.428417, 34.394775, 37.369045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871395, 33.882446, 37.595390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115849, 33.657913, 37.372169>,  <45.262520, 33.523193, 37.238235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115849, 33.657913, 37.372169>,  <44.871395, 33.882446, 37.595390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115849, 33.657913, 37.372169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049583, -0.730796, 0.680793,
		-0.789973, -0.388385, -0.474447,
		0.611133, -0.561332, -0.558052,
		45.299191, 33.489513, 37.204754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503330, 33.225594, 37.433182>,  <44.871395, 33.882446, 37.595390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503330, 33.225594, 37.433182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899002, 33.180233, 37.395935>,  <45.136406, 33.153019, 37.373589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899002, 33.180233, 37.395935>,  <44.503330, 33.225594, 37.433182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899002, 33.180233, 37.395935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036754, -0.805866, 0.590955,
		-0.142050, -0.581137, -0.801312,
		0.989177, -0.113397, -0.093114,
		45.195755, 33.146214, 37.368000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614548, 32.429092, 37.339066>,  <44.503330, 33.225594, 37.433182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614548, 32.429092, 37.339066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.974419, 32.567448, 37.445610>,  <45.190342, 32.650463, 37.509537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.974419, 32.567448, 37.445610>,  <44.614548, 32.429092, 37.339066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974419, 32.567448, 37.445610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117468, -0.779430, 0.615378,
		0.420465, -0.522349, -0.741863,
		0.899673, 0.345890, 0.266364,
		45.244320, 32.671215, 37.525520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120354, 31.848698, 37.253422>,  <44.614548, 32.429092, 37.339066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120354, 31.848698, 37.253422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.283218, 32.103336, 37.515404>,  <45.380936, 32.256119, 37.672592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.283218, 32.103336, 37.515404>,  <45.120354, 31.848698, 37.253422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283218, 32.103336, 37.515404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221558, -0.764506, 0.605345,
		0.886076, -0.101363, -0.452321,
		0.407162, 0.636597, 0.654953,
		45.405369, 32.294315, 37.711891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495468, 31.461720, 37.618156>,  <45.120354, 31.848698, 37.253422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495468, 31.461720, 37.618156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474407, 31.784418, 37.853577>,  <45.461769, 31.978037, 37.994827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474407, 31.784418, 37.853577>,  <45.495468, 31.461720, 37.618156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474407, 31.784418, 37.853577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100143, -0.582127, 0.806907,
		0.993579, 0.101427, -0.050137,
		-0.052656, 0.806747, 0.588547,
		45.458611, 32.026443, 38.030140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141434, 31.579239, 37.964115>,  <45.495468, 31.461720, 37.618156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141434, 31.579239, 37.964115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.828190, 31.721436, 38.168217>,  <45.640244, 31.806753, 38.290676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.828190, 31.721436, 38.168217>,  <46.141434, 31.579239, 37.964115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828190, 31.721436, 38.168217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187231, -0.647653, 0.738573,
		0.593025, 0.673921, 0.440625,
		-0.783113, 0.355494, 0.510254,
		45.593258, 31.828083, 38.321293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385464, 31.557232, 38.713280>,  <46.141434, 31.579239, 37.964115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385464, 31.557232, 38.713280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.994141, 31.611235, 38.776131>,  <45.759346, 31.643637, 38.813843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.994141, 31.611235, 38.776131>,  <46.385464, 31.557232, 38.713280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994141, 31.611235, 38.776131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087962, -0.415997, 0.905102,
		0.187558, 0.899288, 0.395098,
		-0.978307, 0.135006, 0.157127,
		45.700649, 31.651737, 38.823269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352127, 31.832308, 39.355156>,  <46.385464, 31.557232, 38.713280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352127, 31.832308, 39.355156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996754, 31.676474, 39.258068>,  <45.783531, 31.582973, 39.199814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996754, 31.676474, 39.258068>,  <46.352127, 31.832308, 39.355156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996754, 31.676474, 39.258068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008734, -0.543050, 0.839655,
		-0.458927, 0.743855, 0.485865,
		-0.888431, -0.389584, -0.242723,
		45.730225, 31.559599, 39.185249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012440, 31.774382, 39.998760>,  <46.352127, 31.832308, 39.355156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012440, 31.774382, 39.998760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759327, 31.564976, 39.770542>,  <45.607460, 31.439333, 39.633610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759327, 31.564976, 39.770542>,  <46.012440, 31.774382, 39.998760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759327, 31.564976, 39.770542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428257, -0.377266, 0.821137,
		-0.645124, 0.763940, 0.014528,
		-0.632780, -0.523514, -0.570546,
		45.569492, 31.407921, 39.599377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277046, 32.021904, 40.243649>,  <46.012440, 31.774382, 39.998760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277046, 32.021904, 40.243649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246597, 31.663404, 40.068859>,  <45.228329, 31.448305, 39.963985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246597, 31.663404, 40.068859>,  <45.277046, 32.021904, 40.243649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246597, 31.663404, 40.068859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546175, -0.329173, 0.770285,
		-0.834206, 0.297301, -0.464450,
		-0.076122, -0.896246, -0.436976,
		45.223763, 31.394531, 39.937767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689232, 31.990509, 40.205612>,  <45.277046, 32.021904, 40.243649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689232, 31.990509, 40.205612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797199, 31.606924, 40.170883>,  <44.861980, 31.376774, 40.150047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797199, 31.606924, 40.170883>,  <44.689232, 31.990509, 40.205612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797199, 31.606924, 40.170883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669523, -0.251721, 0.698839,
		-0.692016, -0.130497, -0.709990,
		0.269915, -0.958961, -0.086824,
		44.878174, 31.319235, 40.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041611, 31.538055, 40.175816>,  <44.689232, 31.990509, 40.205612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041611, 31.538055, 40.175816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320568, 31.270350, 40.278370>,  <44.487942, 31.109726, 40.339901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320568, 31.270350, 40.278370>,  <44.041611, 31.538055, 40.175816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320568, 31.270350, 40.278370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587869, -0.329561, 0.738782,
		-0.409949, -0.665937, -0.623273,
		0.697389, -0.669267, 0.256380,
		44.529785, 31.069571, 40.355286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684879, 30.939518, 40.251289>,  <44.041611, 31.538055, 40.175816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684879, 30.939518, 40.251289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026108, 30.871130, 40.448486>,  <44.230843, 30.830097, 40.566807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026108, 30.871130, 40.448486>,  <43.684879, 30.939518, 40.251289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026108, 30.871130, 40.448486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519088, -0.374281, 0.768414,
		0.053144, -0.911418, -0.408035,
		0.853067, -0.170970, 0.492997,
		44.282028, 30.819839, 40.596386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.310905, 39.423840, 39.337711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923222, 39.329746, 39.366817>,  <38.690613, 39.273289, 39.384281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923222, 39.329746, 39.366817>,  <39.310905, 39.423840, 39.337711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923222, 39.329746, 39.366817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031397, -0.411156, -0.911024,
		0.244223, -0.880690, 0.405883,
		-0.969210, -0.235237, 0.072763,
		38.632458, 39.259174, 39.388645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156284, 38.646858, 39.300423>,  <39.310905, 39.423840, 39.337711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156284, 38.646858, 39.300423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832401, 38.846809, 39.177464>,  <38.638073, 38.966782, 39.103687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832401, 38.846809, 39.177464>,  <39.156284, 38.646858, 39.300423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832401, 38.846809, 39.177464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073057, -0.433882, -0.898003,
		-0.582270, -0.749576, 0.314797,
		-0.809706, 0.499882, -0.307399,
		38.589489, 38.996773, 39.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887642, 38.167942, 38.887398>,  <39.156284, 38.646858, 39.300423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887642, 38.167942, 38.887398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682369, 38.493816, 38.779369>,  <38.559208, 38.689339, 38.714550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682369, 38.493816, 38.779369>,  <38.887642, 38.167942, 38.887398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682369, 38.493816, 38.779369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071549, -0.354181, -0.932436,
		-0.855294, -0.459183, 0.240048,
		-0.513179, 0.814682, -0.270074,
		38.528416, 38.738220, 38.698345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245392, 37.939014, 38.576248>,  <38.887642, 38.167942, 38.887398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245392, 37.939014, 38.576248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268848, 38.309731, 38.427860>,  <38.282925, 38.532162, 38.338829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268848, 38.309731, 38.427860>,  <38.245392, 37.939014, 38.576248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268848, 38.309731, 38.427860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111660, -0.363185, -0.925002,
		-0.992014, 0.095670, 0.082186,
		0.058646, 0.926792, -0.370967,
		38.286442, 38.587769, 38.316570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609341, 38.119629, 38.241104>,  <38.245392, 37.939014, 38.576248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609341, 38.119629, 38.241104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895027, 38.348774, 38.080242>,  <38.066437, 38.486259, 37.983727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895027, 38.348774, 38.080242>,  <37.609341, 38.119629, 38.241104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895027, 38.348774, 38.080242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184931, -0.399698, -0.897799,
		-0.675056, 0.715590, -0.179529,
		0.714213, 0.572864, -0.402153,
		38.109291, 38.520634, 37.959595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298313, 38.406986, 37.605587>,  <37.609341, 38.119629, 38.241104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298313, 38.406986, 37.605587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690224, 38.479603, 37.571941>,  <37.925369, 38.523174, 37.551754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690224, 38.479603, 37.571941>,  <37.298313, 38.406986, 37.605587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690224, 38.479603, 37.571941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034013, -0.263145, -0.964157,
		-0.197172, 0.947521, -0.251649,
		0.979779, 0.181546, -0.084113,
		37.984158, 38.534065, 37.546707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351982, 38.890747, 37.120659>,  <37.298313, 38.406986, 37.605587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351982, 38.890747, 37.120659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709473, 38.712490, 37.141273>,  <37.923965, 38.605537, 37.153645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709473, 38.712490, 37.141273>,  <37.351982, 38.890747, 37.120659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709473, 38.712490, 37.141273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011720, -0.138041, -0.990357,
		0.448461, 0.884503, -0.128593,
		0.893725, -0.445644, 0.051540,
		37.977589, 38.578796, 37.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704613, 39.130383, 36.586308>,  <37.351982, 38.890747, 37.120659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704613, 39.130383, 36.586308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894127, 38.795162, 36.694527>,  <38.007835, 38.594028, 36.759457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894127, 38.795162, 36.694527>,  <37.704613, 39.130383, 36.586308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894127, 38.795162, 36.694527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013912, -0.314302, -0.949221,
		0.880532, 0.445960, -0.160570,
		0.473783, -0.838053, 0.270549,
		38.036263, 38.543747, 36.775692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142578, 39.045300, 36.067078>,  <37.704613, 39.130383, 36.586308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142578, 39.045300, 36.067078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169201, 38.683380, 36.235325>,  <38.185177, 38.466228, 36.336273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169201, 38.683380, 36.235325>,  <38.142578, 39.045300, 36.067078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169201, 38.683380, 36.235325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130038, -0.425821, -0.895414,
		0.989272, 0.004904, -0.146001,
		0.066561, -0.904794, 0.420615,
		38.189171, 38.411942, 36.361511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693939, 38.776234, 35.802258>,  <38.142578, 39.045300, 36.067078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693939, 38.776234, 35.802258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504585, 38.442310, 35.914680>,  <38.390972, 38.241955, 35.982136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504585, 38.442310, 35.914680>,  <38.693939, 38.776234, 35.802258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504585, 38.442310, 35.914680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055544, -0.346728, -0.936320,
		0.879101, -0.427632, 0.210506,
		-0.473388, -0.834812, 0.281056,
		38.362568, 38.191868, 35.998997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166512, 38.189995, 35.636677>,  <38.693939, 38.776234, 35.802258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166512, 38.189995, 35.636677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784054, 38.074711, 35.657551>,  <38.554581, 38.005543, 35.670074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784054, 38.074711, 35.657551>,  <39.166512, 38.189995, 35.636677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784054, 38.074711, 35.657551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, -0.332986, -0.941659,
		0.288768, -0.897807, 0.332498,
		-0.956145, -0.288205, 0.052185,
		38.497211, 37.988251, 35.673206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137878, 37.549320, 35.244717>,  <39.166512, 38.189995, 35.636677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137878, 37.549320, 35.244717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746574, 37.630661, 35.260994>,  <38.511791, 37.679466, 35.270760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746574, 37.630661, 35.260994>,  <39.137878, 37.549320, 35.244717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746574, 37.630661, 35.260994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146138, -0.536728, -0.831003,
		-0.147141, -0.818885, 0.554777,
		-0.978260, 0.203349, 0.040696,
		38.453094, 37.691666, 35.273201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749325, 36.954998, 35.308311>,  <39.137878, 37.549320, 35.244717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749325, 36.954998, 35.308311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553757, 37.252983, 35.126766>,  <38.436417, 37.431774, 35.017838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553757, 37.252983, 35.126766>,  <38.749325, 36.954998, 35.308311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553757, 37.252983, 35.126766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080586, -0.556634, -0.826840,
		-0.868601, -0.367680, 0.332181,
		-0.488916, 0.744963, -0.453863,
		38.407082, 37.476471, 34.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761669, 36.510777, 34.731895>,  <38.749325, 36.954998, 35.308311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761669, 36.510777, 34.731895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961803, 36.178562, 34.829773>,  <39.081882, 35.979233, 34.888500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961803, 36.178562, 34.829773>,  <38.761669, 36.510777, 34.731895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961803, 36.178562, 34.829773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724752, -0.247115, 0.643171,
		-0.473711, -0.499141, -0.725573,
		0.500333, -0.830537, 0.244692,
		39.111904, 35.929401, 34.903179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267620, 35.949810, 34.793442>,  <38.761669, 36.510777, 34.731895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267620, 35.949810, 34.793442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590717, 35.848503, 35.006390>,  <38.784576, 35.787720, 35.134159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590717, 35.848503, 35.006390>,  <38.267620, 35.949810, 34.793442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590717, 35.848503, 35.006390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582567, -0.204426, 0.786654,
		-0.090396, -0.945553, -0.312662,
		0.807739, -0.253257, 0.532369,
		38.833038, 35.772526, 35.166100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186031, 35.265541, 34.981068>,  <38.267620, 35.949810, 34.793442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186031, 35.265541, 34.981068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461098, 35.389343, 35.243771>,  <38.626137, 35.463623, 35.401390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461098, 35.389343, 35.243771>,  <38.186031, 35.265541, 34.981068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461098, 35.389343, 35.243771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456918, -0.518492, 0.722767,
		0.564219, -0.797104, -0.215131,
		0.687665, 0.309501, 0.656754,
		38.667397, 35.482193, 35.440796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139446, 34.782814, 35.513508>,  <38.186031, 35.265541, 34.981068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139446, 34.782814, 35.513508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319710, 35.096363, 35.684364>,  <38.427868, 35.284492, 35.786877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319710, 35.096363, 35.684364>,  <38.139446, 34.782814, 35.513508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319710, 35.096363, 35.684364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330680, -0.297854, 0.895507,
		0.829190, -0.544815, 0.124980,
		0.450660, 0.783874, 0.427137,
		38.454906, 35.331524, 35.812504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481773, 34.506500, 36.000648>,  <38.139446, 34.782814, 35.513508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481773, 34.506500, 36.000648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413868, 34.886234, 36.106438>,  <38.373123, 35.114075, 36.169910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413868, 34.886234, 36.106438>,  <38.481773, 34.506500, 36.000648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413868, 34.886234, 36.106438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136094, -0.288382, 0.947794,
		0.976042, 0.124908, 0.178156,
		-0.169764, 0.949333, 0.264474,
		38.362938, 35.171036, 36.185780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922153, 34.519745, 36.616283>,  <38.481773, 34.506500, 36.000648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922153, 34.519745, 36.616283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639957, 34.803104, 36.607700>,  <38.470642, 34.973118, 36.602551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639957, 34.803104, 36.607700>,  <38.922153, 34.519745, 36.616283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639957, 34.803104, 36.607700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331278, -0.302849, 0.893609,
		0.626531, 0.637540, 0.448333,
		-0.705488, 0.708396, -0.021458,
		38.428310, 35.015625, 36.601261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796177, 34.403942, 37.245235>,  <38.922153, 34.519745, 36.616283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796177, 34.403942, 37.245235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508846, 34.664715, 37.148083>,  <38.336449, 34.821178, 37.089790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508846, 34.664715, 37.148083>,  <38.796177, 34.403942, 37.245235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508846, 34.664715, 37.148083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490616, -0.227175, 0.841242,
		0.493257, 0.723446, 0.483034,
		-0.718326, 0.651933, -0.242879,
		38.293350, 34.860294, 37.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847309, 34.923206, 37.713158>,  <38.796177, 34.403942, 37.245235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847309, 34.923206, 37.713158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473080, 34.928162, 37.571999>,  <38.248543, 34.931137, 37.487301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473080, 34.928162, 37.571999>,  <38.847309, 34.923206, 37.713158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473080, 34.928162, 37.571999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351046, -0.140787, 0.925714,
		-0.038212, 0.989962, 0.136068,
		-0.935578, 0.012393, -0.352902,
		38.192406, 34.931881, 37.466129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585876, 35.378067, 38.155209>,  <38.847309, 34.923206, 37.713158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585876, 35.378067, 38.155209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259872, 35.185513, 38.026196>,  <38.064270, 35.069981, 37.948788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259872, 35.185513, 38.026196>,  <38.585876, 35.378067, 38.155209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259872, 35.185513, 38.026196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415168, 0.096815, 0.904578,
		-0.404225, 0.871146, -0.278761,
		-0.815008, -0.481386, -0.322537,
		38.015369, 35.041096, 37.929436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991657, 35.777725, 38.285946>,  <38.585876, 35.378067, 38.155209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991657, 35.777725, 38.285946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868874, 35.398361, 38.254223>,  <37.795204, 35.170742, 38.235188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868874, 35.398361, 38.254223>,  <37.991657, 35.777725, 38.285946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868874, 35.398361, 38.254223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353867, 0.036377, 0.934588,
		-0.883489, 0.314948, -0.346778,
		-0.306962, -0.948412, -0.079311,
		37.776787, 35.113838, 38.230431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384251, 35.850979, 38.620529>,  <37.991657, 35.777725, 38.285946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384251, 35.850979, 38.620529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427547, 35.453331, 38.622021>,  <37.453526, 35.214745, 38.622917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427547, 35.453331, 38.622021>,  <37.384251, 35.850979, 38.620529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427547, 35.453331, 38.622021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437095, -0.044223, 0.898327,
		-0.892878, -0.098865, -0.439311,
		0.108241, -0.994118, 0.003728,
		37.460018, 35.155094, 38.623138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927322, 35.691746, 39.094547>,  <37.384251, 35.850979, 38.620529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927322, 35.691746, 39.094547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153740, 35.364082, 39.057510>,  <37.289593, 35.167484, 39.035290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153740, 35.364082, 39.057510>,  <36.927322, 35.691746, 39.094547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153740, 35.364082, 39.057510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231898, -0.266006, 0.935662,
		-0.791085, -0.508156, -0.340532,
		0.566046, -0.819157, -0.092592,
		37.323555, 35.118336, 39.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525753, 35.214775, 39.361942>,  <36.927322, 35.691746, 39.094547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525753, 35.214775, 39.361942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890919, 35.053497, 39.387329>,  <37.110016, 34.956730, 39.402561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890919, 35.053497, 39.387329>,  <36.525753, 35.214775, 39.361942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890919, 35.053497, 39.387329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192116, -0.287266, 0.938387,
		-0.360124, -0.868855, -0.339708,
		0.912908, -0.403199, 0.063469,
		37.164791, 34.932537, 39.406372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482311, 34.522007, 39.587624>,  <36.525753, 35.214775, 39.361942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482311, 34.522007, 39.587624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855213, 34.618153, 39.695786>,  <37.078957, 34.675842, 39.760681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855213, 34.618153, 39.695786>,  <36.482311, 34.522007, 39.587624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855213, 34.618153, 39.695786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192072, -0.304562, 0.932926,
		0.306601, -0.921664, -0.237762,
		0.932258, 0.240368, 0.270405,
		37.134892, 34.690262, 39.776909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660110, 34.040791, 40.080524>,  <36.482311, 34.522007, 39.587624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660110, 34.040791, 40.080524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934433, 34.326775, 40.134933>,  <37.099026, 34.498363, 40.167580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934433, 34.326775, 40.134933>,  <36.660110, 34.040791, 40.080524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934433, 34.326775, 40.134933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057704, -0.239726, 0.969124,
		0.725494, -0.656782, -0.205661,
		0.685805, 0.714961, 0.136020,
		37.140175, 34.541264, 40.175739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639389, 33.315754, 40.236252>,  <36.660110, 34.040791, 40.080524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639389, 33.315754, 40.236252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290882, 33.144775, 40.332741>,  <36.081779, 33.042187, 40.390636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290882, 33.144775, 40.332741>,  <36.639389, 33.315754, 40.236252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290882, 33.144775, 40.332741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331023, 0.148869, -0.931806,
		0.362387, -0.891698, -0.271199,
		-0.871263, -0.427448, 0.241224,
		36.029503, 33.016541, 40.405109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492428, 33.090813, 39.630344>,  <36.639389, 33.315754, 40.236252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492428, 33.090813, 39.630344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153770, 33.073681, 39.842518>,  <35.950577, 33.063400, 39.969822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153770, 33.073681, 39.842518>,  <36.492428, 33.090813, 39.630344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153770, 33.073681, 39.842518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518940, 0.287278, -0.805092,
		-0.117898, -0.956889, -0.265449,
		-0.846641, -0.042834, 0.530437,
		35.899776, 33.060829, 40.001648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106350, 32.590668, 39.278229>,  <36.492428, 33.090813, 39.630344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106350, 32.590668, 39.278229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854126, 32.820396, 39.487053>,  <35.702789, 32.958233, 39.612347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854126, 32.820396, 39.487053>,  <36.106350, 32.590668, 39.278229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854126, 32.820396, 39.487053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572851, 0.109455, -0.812318,
		-0.523671, -0.811282, 0.259980,
		-0.630563, 0.574317, 0.522063,
		35.664955, 32.992691, 39.643673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420433, 32.307465, 39.135448>,  <36.106350, 32.590668, 39.278229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420433, 32.307465, 39.135448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371765, 32.688061, 39.248486>,  <35.342564, 32.916420, 39.316307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371765, 32.688061, 39.248486>,  <35.420433, 32.307465, 39.135448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371765, 32.688061, 39.248486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715106, 0.113410, -0.689754,
		-0.688345, -0.286007, 0.666619,
		-0.121673, 0.951493, 0.282591,
		35.335262, 32.973507, 39.333263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644241, 32.502518, 39.037071>,  <35.420433, 32.307465, 39.135448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644241, 32.502518, 39.037071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822708, 32.860306, 39.025337>,  <34.929790, 33.074978, 39.018295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822708, 32.860306, 39.025337>,  <34.644241, 32.502518, 39.037071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822708, 32.860306, 39.025337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817612, 0.394063, -0.419791,
		-0.363928, 0.211286, 0.907146,
		0.446169, 0.894468, -0.029339,
		34.956558, 33.128647, 39.016537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109329, 33.026939, 39.222816>,  <34.644241, 32.502518, 39.037071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109329, 33.026939, 39.222816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396770, 33.219421, 39.021999>,  <34.569237, 33.334911, 38.901508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396770, 33.219421, 39.021999>,  <34.109329, 33.026939, 39.222816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396770, 33.219421, 39.021999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695110, 0.475529, -0.539160,
		-0.020714, 0.736416, 0.676211,
		0.718605, 0.481209, -0.502041,
		34.612350, 33.363785, 38.871387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784389, 33.677658, 39.149303>,  <34.109329, 33.026939, 39.222816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784389, 33.677658, 39.149303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073135, 33.628239, 38.876938>,  <34.246384, 33.598587, 38.713516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073135, 33.628239, 38.876938>,  <33.784389, 33.677658, 39.149303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073135, 33.628239, 38.876938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598023, 0.383777, -0.703622,
		0.348251, 0.915124, 0.203151,
		0.721865, -0.123548, -0.680916,
		34.289696, 33.591175, 38.672665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643425, 34.220757, 38.788704>,  <33.784389, 33.677658, 39.149303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643425, 34.220757, 38.788704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890320, 34.013039, 38.552284>,  <34.038456, 33.888409, 38.410431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890320, 34.013039, 38.552284>,  <33.643425, 34.220757, 38.788704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890320, 34.013039, 38.552284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404711, 0.434663, -0.804535,
		0.674701, 0.735798, 0.058128,
		0.617242, -0.519296, -0.591053,
		34.075493, 33.857250, 38.374969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014404, 34.729424, 38.338268>,  <33.643425, 34.220757, 38.788704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014404, 34.729424, 38.338268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012398, 34.366100, 38.170963>,  <34.011192, 34.148106, 38.070580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012398, 34.366100, 38.170963>,  <34.014404, 34.729424, 38.338268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012398, 34.366100, 38.170963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447049, 0.376183, -0.811563,
		0.894496, 0.182910, -0.407948,
		-0.005020, -0.908312, -0.418264,
		34.010891, 34.093605, 38.045483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054169, 34.885368, 37.644802>,  <34.014404, 34.729424, 38.338268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054169, 34.885368, 37.644802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938519, 34.502720, 37.659107>,  <33.869129, 34.273129, 37.667690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938519, 34.502720, 37.659107>,  <34.054169, 34.885368, 37.644802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938519, 34.502720, 37.659107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547522, 0.134605, -0.825894,
		0.785256, -0.258364, -0.562690,
		-0.289122, -0.956624, 0.035761,
		33.851780, 34.215733, 37.669834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795162, 34.866238, 37.051422>,  <34.054169, 34.885368, 37.644802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795162, 34.866238, 37.051422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670025, 34.520309, 37.208500>,  <33.594944, 34.312752, 37.302746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670025, 34.520309, 37.208500>,  <33.795162, 34.866238, 37.051422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670025, 34.520309, 37.208500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864714, 0.088290, -0.494444,
		0.392937, -0.494249, -0.775447,
		-0.312843, -0.864825, 0.392692,
		33.576172, 34.260860, 37.326309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533630, 34.587032, 36.545048>,  <33.795162, 34.866238, 37.051422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533630, 34.587032, 36.545048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340389, 34.449913, 36.867313>,  <33.224445, 34.367641, 37.060673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340389, 34.449913, 36.867313>,  <33.533630, 34.587032, 36.545048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340389, 34.449913, 36.867313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860409, 0.356319, -0.364326,
		-0.162184, -0.869211, -0.467085,
		-0.483107, -0.342796, 0.805667,
		33.195457, 34.347073, 37.109013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.442196, 31.721750, 43.453712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110851, 31.879238, 43.613117>,  <36.912045, 31.973730, 43.708759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110851, 31.879238, 43.613117>,  <37.442196, 31.721750, 43.453712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110851, 31.879238, 43.613117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509350, -0.233205, -0.828358,
		-0.233205, -0.889158, 0.393718,
		0.828358, -0.393718, -0.398508,
		36.862343, 31.997353, 43.732670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866505, 31.156954, 43.338207>,  <37.442196, 31.721750, 43.453712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866505, 31.156954, 43.338207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680569, 31.504736, 43.405106>,  <36.569008, 31.713406, 43.445244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680569, 31.504736, 43.405106>,  <36.866505, 31.156954, 43.338207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680569, 31.504736, 43.405106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483996, -0.091352, -0.870289,
		-0.741399, -0.485492, 0.463277,
		-0.464840, 0.869455, 0.167249,
		36.541119, 31.765572, 43.455280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212975, 31.054325, 42.885681>,  <36.866505, 31.156954, 43.338207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212975, 31.054325, 42.885681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265392, 31.448622, 42.927902>,  <36.296841, 31.685200, 42.953236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265392, 31.448622, 42.927902>,  <36.212975, 31.054325, 42.885681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265392, 31.448622, 42.927902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374647, 0.147814, -0.915309,
		-0.917860, 0.080398, 0.388675,
		0.131040, 0.985742, 0.105552,
		36.304703, 31.744345, 42.959568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648121, 31.319664, 42.553596>,  <36.212975, 31.054325, 42.885681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648121, 31.319664, 42.553596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886459, 31.640636, 42.566715>,  <36.029461, 31.833220, 42.574589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886459, 31.640636, 42.566715>,  <35.648121, 31.319664, 42.553596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886459, 31.640636, 42.566715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396757, 0.329629, -0.856696,
		-0.698251, 0.497443, 0.514778,
		0.595843, 0.802431, 0.032799,
		36.065212, 31.881365, 42.576553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244873, 31.874790, 42.269398>,  <35.648121, 31.319664, 42.553596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244873, 31.874790, 42.269398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629028, 31.982073, 42.239174>,  <35.859524, 32.046444, 42.221039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629028, 31.982073, 42.239174>,  <35.244873, 31.874790, 42.269398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629028, 31.982073, 42.239174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198952, 0.470145, -0.859873,
		-0.195099, 0.840850, 0.504884,
		0.960393, 0.268208, -0.075563,
		35.917145, 32.062534, 42.216503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286587, 32.498760, 42.028774>,  <35.244873, 31.874790, 42.269398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286587, 32.498760, 42.028774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.675545, 32.429489, 41.966228>,  <35.908920, 32.387924, 41.928699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.675545, 32.429489, 41.966228>,  <35.286587, 32.498760, 42.028774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675545, 32.429489, 41.966228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101305, 0.290337, -0.951547,
		0.210188, 0.941123, 0.264779,
		0.972398, -0.173180, -0.156366,
		35.967266, 32.377537, 41.919319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377720, 33.059017, 41.697235>,  <35.286587, 32.498760, 42.028774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377720, 33.059017, 41.697235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676113, 32.807907, 41.608318>,  <35.855148, 32.657242, 41.554966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676113, 32.807907, 41.608318>,  <35.377720, 33.059017, 41.697235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676113, 32.807907, 41.608318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064722, 0.400552, -0.913985,
		0.662817, 0.667427, 0.339434,
		0.745980, -0.627773, -0.222295,
		35.899906, 32.619576, 41.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832970, 33.546719, 41.398708>,  <35.377720, 33.059017, 41.697235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832970, 33.546719, 41.398708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954720, 33.185833, 41.276485>,  <36.027771, 32.969303, 41.203152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954720, 33.185833, 41.276485>,  <35.832970, 33.546719, 41.398708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954720, 33.185833, 41.276485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388940, 0.175110, -0.904468,
		0.869529, 0.394144, -0.297608,
		0.304376, -0.902212, -0.305561,
		36.046032, 32.915169, 41.184818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431747, 33.575401, 40.868542>,  <35.832970, 33.546719, 41.398708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431747, 33.575401, 40.868542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220135, 33.239429, 40.820141>,  <36.093166, 33.037846, 40.791100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220135, 33.239429, 40.820141>,  <36.431747, 33.575401, 40.868542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220135, 33.239429, 40.820141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145453, 0.230235, -0.962203,
		0.836043, -0.491436, -0.243972,
		-0.529032, -0.839930, -0.121006,
		36.061424, 32.987450, 40.783840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029053, 33.880787, 40.723526>,  <36.431747, 33.575401, 40.868542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029053, 33.880787, 40.723526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.104965, 34.268860, 40.663212>,  <37.150513, 34.501701, 40.627026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.104965, 34.268860, 40.663212>,  <37.029053, 33.880787, 40.723526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104965, 34.268860, 40.663212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278558, 0.094059, 0.955803,
		0.941482, -0.223395, -0.252400,
		0.189781, 0.970179, -0.150784,
		37.161900, 34.559914, 40.617977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761692, 33.980812, 41.072285>,  <37.029053, 33.880787, 40.723526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761692, 33.980812, 41.072285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545998, 34.314781, 41.028221>,  <37.416580, 34.515163, 41.001785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545998, 34.314781, 41.028221>,  <37.761692, 33.980812, 41.072285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545998, 34.314781, 41.028221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329848, 0.329738, 0.884575,
		0.774873, 0.440658, -0.453203,
		-0.539233, 0.834921, -0.110154,
		37.384228, 34.565258, 40.995174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240654, 34.451351, 41.310799>,  <37.761692, 33.980812, 41.072285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240654, 34.451351, 41.310799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885605, 34.633759, 41.336658>,  <37.672577, 34.743202, 41.352173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885605, 34.633759, 41.336658>,  <38.240654, 34.451351, 41.310799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885605, 34.633759, 41.336658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267323, 0.395783, 0.878575,
		0.375062, 0.797121, -0.473209,
		-0.887619, 0.456020, 0.064646,
		37.619320, 34.770565, 41.356052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444817, 35.077541, 41.506943>,  <38.240654, 34.451351, 41.310799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444817, 35.077541, 41.506943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057514, 35.037651, 41.598625>,  <37.825134, 35.013718, 41.653637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057514, 35.037651, 41.598625>,  <38.444817, 35.077541, 41.506943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057514, 35.037651, 41.598625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188620, 0.310216, 0.931766,
		-0.164024, 0.945421, -0.281559,
		-0.968255, -0.099725, 0.229208,
		37.767036, 35.007732, 41.667389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250336, 35.694382, 41.700390>,  <38.444817, 35.077541, 41.506943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250336, 35.694382, 41.700390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979805, 35.443645, 41.855133>,  <37.817486, 35.293205, 41.947979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979805, 35.443645, 41.855133>,  <38.250336, 35.694382, 41.700390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979805, 35.443645, 41.855133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162981, 0.384827, 0.908485,
		-0.718348, 0.677480, -0.158104,
		-0.676323, -0.626840, 0.386857,
		37.776909, 35.255592, 41.971191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789799, 36.151539, 42.063839>,  <38.250336, 35.694382, 41.700390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789799, 36.151539, 42.063839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768921, 35.777355, 42.203663>,  <37.756393, 35.552845, 42.287560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768921, 35.777355, 42.203663>,  <37.789799, 36.151539, 42.063839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768921, 35.777355, 42.203663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161357, 0.337541, 0.927378,
		-0.985515, 0.104806, 0.133326,
		-0.052192, -0.935458, 0.349563,
		37.753262, 35.496719, 42.308533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327797, 36.325592, 42.587330>,  <37.789799, 36.151539, 42.063839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327797, 36.325592, 42.587330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509792, 35.979599, 42.671986>,  <37.618988, 35.772003, 42.722778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509792, 35.979599, 42.671986>,  <37.327797, 36.325592, 42.587330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509792, 35.979599, 42.671986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009575, 0.242405, 0.970128,
		-0.890448, -0.439366, 0.118573,
		0.454984, -0.864984, 0.211642,
		37.646286, 35.720104, 42.735477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981777, 36.215504, 43.182041>,  <37.327797, 36.325592, 42.587330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981777, 36.215504, 43.182041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.321808, 36.004978, 43.189625>,  <37.525826, 35.878662, 43.194176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.321808, 36.004978, 43.189625>,  <36.981777, 36.215504, 43.182041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321808, 36.004978, 43.189625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060869, 0.133940, 0.989118,
		-0.523125, -0.839675, 0.145896,
		0.850079, -0.526313, 0.018957,
		37.576832, 35.847084, 43.195312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990433, 35.703548, 43.758175>,  <36.981777, 36.215504, 43.182041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990433, 35.703548, 43.758175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362404, 35.813999, 43.661018>,  <37.585587, 35.880272, 43.602726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362404, 35.813999, 43.661018>,  <36.990433, 35.703548, 43.758175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362404, 35.813999, 43.661018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255204, -0.009000, 0.966845,
		0.264788, -0.961078, -0.078839,
		0.929924, 0.276129, -0.242888,
		37.641380, 35.896839, 43.588154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421207, 35.297604, 44.368912>,  <36.990433, 35.703548, 43.758175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421207, 35.297604, 44.368912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677902, 35.565723, 44.219849>,  <37.831917, 35.726597, 44.130409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677902, 35.565723, 44.219849>,  <37.421207, 35.297604, 44.368912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677902, 35.565723, 44.219849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369077, 0.156025, 0.916209,
		0.672279, -0.725502, -0.147266,
		0.641735, 0.670300, -0.372658,
		37.870422, 35.766815, 44.108051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987556, 35.178589, 44.814781>,  <37.421207, 35.297604, 44.368912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987556, 35.178589, 44.814781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001595, 35.539738, 44.643391>,  <38.010017, 35.756428, 44.540558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001595, 35.539738, 44.643391>,  <37.987556, 35.178589, 44.814781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001595, 35.539738, 44.643391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254298, 0.406556, 0.877522,
		0.966489, -0.139758, -0.215330,
		0.035097, 0.902873, -0.428472,
		38.012123, 35.810600, 44.514851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610149, 35.424122, 45.036247>,  <37.987556, 35.178589, 44.814781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610149, 35.424122, 45.036247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447033, 35.756996, 44.885952>,  <38.349163, 35.956718, 44.795776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447033, 35.756996, 44.885952>,  <38.610149, 35.424122, 45.036247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447033, 35.756996, 44.885952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419287, 0.536226, 0.732571,
		0.811113, 0.141195, -0.567592,
		-0.407793, 0.832181, -0.375739,
		38.324696, 36.006649, 44.773232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180450, 35.840202, 44.831211>,  <38.610149, 35.424122, 45.036247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180450, 35.840202, 44.831211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853714, 36.063129, 44.890778>,  <38.657673, 36.196884, 44.926517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853714, 36.063129, 44.890778>,  <39.180450, 35.840202, 44.831211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853714, 36.063129, 44.890778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460197, 0.473900, 0.750758,
		0.347838, 0.681778, -0.643574,
		-0.816840, 0.557314, 0.148912,
		38.608662, 36.230324, 44.935452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496330, 36.527348, 44.951344>,  <39.180450, 35.840202, 44.831211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496330, 36.527348, 44.951344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.121902, 36.560692, 45.088058>,  <38.897243, 36.580696, 45.170086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.121902, 36.560692, 45.088058>,  <39.496330, 36.527348, 44.951344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121902, 36.560692, 45.088058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341395, 0.449801, 0.825305,
		-0.084940, 0.889230, -0.449505,
		-0.936074, 0.083357, 0.341785,
		38.841080, 36.585697, 45.190594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.586098, 38.274429, 46.354584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.826885, 37.959743, 46.299858>,  <34.971359, 37.770931, 46.267021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.826885, 37.959743, 46.299858>,  <34.586098, 38.274429, 46.354584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826885, 37.959743, 46.299858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172185, 0.039423, -0.984275,
		0.779735, 0.616059, -0.111729,
		0.601968, -0.786712, -0.136816,
		35.007477, 37.723728, 46.258812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051067, 38.507069, 45.823727>,  <34.586098, 38.274429, 46.354584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051067, 38.507069, 45.823727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067059, 38.107388, 45.823677>,  <35.076653, 37.867580, 45.823647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067059, 38.107388, 45.823677>,  <35.051067, 38.507069, 45.823727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067059, 38.107388, 45.823677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296294, -0.011737, -0.955025,
		0.954260, 0.038215, -0.296526,
		0.039976, -0.999201, -0.000122,
		35.079052, 37.807629, 45.823639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618626, 38.339188, 45.351994>,  <35.051067, 38.507069, 45.823727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618626, 38.339188, 45.351994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371975, 38.026875, 45.392288>,  <35.223984, 37.839485, 45.416466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371975, 38.026875, 45.392288>,  <35.618626, 38.339188, 45.351994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371975, 38.026875, 45.392288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102707, -0.047078, -0.993597,
		0.780530, -0.623021, -0.051163,
		-0.616623, -0.780787, 0.100734,
		35.186989, 37.792637, 45.422508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879406, 37.831528, 44.986847>,  <35.618626, 38.339188, 45.351994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879406, 37.831528, 44.986847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493816, 37.742531, 45.045170>,  <35.262463, 37.689133, 45.080166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493816, 37.742531, 45.045170>,  <35.879406, 37.831528, 44.986847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493816, 37.742531, 45.045170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124471, -0.107168, -0.986419,
		0.235092, -0.969027, 0.075613,
		-0.963970, -0.222488, 0.145810,
		35.204624, 37.675785, 45.088913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768505, 37.167404, 44.659122>,  <35.879406, 37.831528, 44.986847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768505, 37.167404, 44.659122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425732, 37.364983, 44.718018>,  <35.220066, 37.483528, 44.753353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425732, 37.364983, 44.718018>,  <35.768505, 37.167404, 44.659122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425732, 37.364983, 44.718018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211382, -0.076266, -0.974423,
		-0.470080, -0.866143, 0.169766,
		-0.856938, 0.493942, 0.147236,
		35.168652, 37.513165, 44.762188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530281, 37.007198, 44.057266>,  <35.768505, 37.167404, 44.659122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530281, 37.007198, 44.057266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212502, 37.214668, 44.183643>,  <35.021832, 37.339149, 44.259468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212502, 37.214668, 44.183643>,  <35.530281, 37.007198, 44.057266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212502, 37.214668, 44.183643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376575, -0.012554, -0.926301,
		-0.476486, -0.854877, 0.205295,
		-0.794451, 0.518678, 0.315944,
		34.974167, 37.370270, 44.278427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899265, 36.630875, 43.918747>,  <35.530281, 37.007198, 44.057266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899265, 36.630875, 43.918747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810417, 37.019627, 43.950005>,  <34.757107, 37.252880, 43.968758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810417, 37.019627, 43.950005>,  <34.899265, 36.630875, 43.918747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810417, 37.019627, 43.950005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342451, -0.002724, -0.939532,
		-0.912901, -0.235453, 0.333427,
		-0.222124, 0.971882, 0.078145,
		34.743778, 37.311192, 43.973450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384266, 36.704395, 43.436470>,  <34.899265, 36.630875, 43.918747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384266, 36.704395, 43.436470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460201, 37.092567, 43.496101>,  <34.505764, 37.325470, 43.531879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460201, 37.092567, 43.496101>,  <34.384266, 36.704395, 43.436470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460201, 37.092567, 43.496101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232638, 0.191977, -0.953428,
		-0.953856, 0.146316, 0.262204,
		0.189839, 0.970431, 0.149080,
		34.517155, 37.383698, 43.540825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788975, 37.188244, 43.227646>,  <34.384266, 36.704395, 43.436470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788975, 37.188244, 43.227646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109749, 37.426842, 43.214470>,  <34.302216, 37.570000, 43.206566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109749, 37.426842, 43.214470>,  <33.788975, 37.188244, 43.227646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109749, 37.426842, 43.214470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279209, 0.325487, -0.903383,
		-0.528146, 0.733653, 0.427568,
		0.801938, 0.596499, -0.032938,
		34.350330, 37.605793, 43.204590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494232, 37.875504, 43.052975>,  <33.788975, 37.188244, 43.227646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494232, 37.875504, 43.052975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883110, 37.911247, 42.966385>,  <34.116436, 37.932693, 42.914433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883110, 37.911247, 42.966385>,  <33.494232, 37.875504, 43.052975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883110, 37.911247, 42.966385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228529, 0.563971, -0.793543,
		0.051177, 0.820946, 0.568708,
		0.972191, 0.089355, -0.216473,
		34.174767, 37.938053, 42.901443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576283, 38.551903, 42.827171>,  <33.494232, 37.875504, 43.052975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576283, 38.551903, 42.827171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887009, 38.363827, 42.659615>,  <34.073444, 38.250980, 42.559082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887009, 38.363827, 42.659615>,  <33.576283, 38.551903, 42.827171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887009, 38.363827, 42.659615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136756, 0.523361, -0.841065,
		0.614695, 0.710641, 0.342256,
		0.776819, -0.470193, -0.418892,
		34.120056, 38.222767, 42.533947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907894, 39.039986, 42.353954>,  <33.576283, 38.551903, 42.827171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907894, 39.039986, 42.353954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035831, 38.686268, 42.217876>,  <34.112595, 38.474037, 42.136230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035831, 38.686268, 42.217876>,  <33.907894, 39.039986, 42.353954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035831, 38.686268, 42.217876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185593, 0.293624, -0.937731,
		0.929115, 0.363065, -0.070204,
		0.319844, -0.884290, -0.340192,
		34.131786, 38.420982, 42.115818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157600, 39.164433, 41.685833>,  <33.907894, 39.039986, 42.353954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157600, 39.164433, 41.685833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128712, 38.765537, 41.678967>,  <34.111378, 38.526199, 41.674847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128712, 38.765537, 41.678967>,  <34.157600, 39.164433, 41.685833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128712, 38.765537, 41.678967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285896, 0.037186, -0.957539,
		0.955535, -0.064247, -0.287793,
		-0.072221, -0.997241, -0.017164,
		34.107044, 38.466366, 41.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636429, 38.954075, 41.148937>,  <34.157600, 39.164433, 41.685833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636429, 38.954075, 41.148937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347450, 38.683006, 41.203846>,  <34.174065, 38.520367, 41.236794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347450, 38.683006, 41.203846>,  <34.636429, 38.954075, 41.148937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347450, 38.683006, 41.203846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249350, 0.070169, -0.965868,
		0.644905, -0.732013, -0.219669,
		-0.722442, -0.677667, 0.137275,
		34.130718, 38.479706, 41.245029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315151, 39.033260, 40.669231>,  <34.636429, 38.954075, 41.148937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315151, 39.033260, 40.669231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492134, 39.389126, 40.624107>,  <35.598324, 39.602646, 40.597034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492134, 39.389126, 40.624107>,  <35.315151, 39.033260, 40.669231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492134, 39.389126, 40.624107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142795, 0.054292, 0.988262,
		0.885347, -0.453374, -0.103018,
		0.442459, 0.889665, -0.112807,
		35.624870, 39.656025, 40.590267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865314, 39.063950, 41.200096>,  <35.315151, 39.033260, 40.669231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865314, 39.063950, 41.200096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821533, 39.451103, 41.109570>,  <35.795265, 39.683395, 41.055252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821533, 39.451103, 41.109570>,  <35.865314, 39.063950, 41.200096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821533, 39.451103, 41.109570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077425, 0.235294, 0.968836,
		0.990972, 0.088523, -0.100692,
		-0.109457, 0.967885, -0.226316,
		35.788696, 39.741470, 41.041676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501591, 39.444668, 41.433769>,  <35.865314, 39.063950, 41.200096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501591, 39.444668, 41.433769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185986, 39.687801, 41.397995>,  <35.996624, 39.833683, 41.376530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185986, 39.687801, 41.397995>,  <36.501591, 39.444668, 41.433769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185986, 39.687801, 41.397995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046426, 0.204144, 0.977839,
		0.612624, 0.767373, -0.189291,
		-0.789010, 0.607836, -0.089437,
		35.949284, 39.870152, 41.371162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678013, 39.965786, 41.860271>,  <36.501591, 39.444668, 41.433769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678013, 39.965786, 41.860271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290295, 40.053936, 41.816654>,  <36.057663, 40.106827, 41.790482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290295, 40.053936, 41.816654>,  <36.678013, 39.965786, 41.860271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290295, 40.053936, 41.816654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039834, 0.296888, 0.954081,
		0.242634, 0.929134, -0.278995,
		-0.969300, 0.220379, -0.109047,
		35.999504, 40.120049, 41.783939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538239, 40.648613, 42.087082>,  <36.678013, 39.965786, 41.860271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538239, 40.648613, 42.087082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183651, 40.468800, 42.131077>,  <35.970898, 40.360912, 42.157475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183651, 40.468800, 42.131077>,  <36.538239, 40.648613, 42.087082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183651, 40.468800, 42.131077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034965, 0.171924, 0.984490,
		-0.461467, 0.876564, -0.136687,
		-0.886468, -0.449530, 0.109986,
		35.917709, 40.333942, 42.164074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178825, 41.099590, 42.486626>,  <36.538239, 40.648613, 42.087082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178825, 41.099590, 42.486626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979073, 40.755112, 42.524490>,  <35.859222, 40.548424, 42.547207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979073, 40.755112, 42.524490>,  <36.178825, 41.099590, 42.486626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979073, 40.755112, 42.524490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013170, 0.116790, 0.993069,
		-0.866282, 0.494675, -0.069665,
		-0.499382, -0.861195, 0.094658,
		35.829258, 40.496754, 42.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821186, 41.239605, 43.032532>,  <36.178825, 41.099590, 42.486626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821186, 41.239605, 43.032532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808468, 40.839951, 43.021767>,  <35.800838, 40.600159, 43.015308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808468, 40.839951, 43.021767>,  <35.821186, 41.239605, 43.032532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808468, 40.839951, 43.021767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097718, -0.029904, 0.994765,
		-0.994706, 0.028995, 0.098584,
		-0.031792, -0.999132, -0.026913,
		35.798931, 40.540211, 43.013695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274422, 41.051987, 43.595833>,  <35.821186, 41.239605, 43.032532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274422, 41.051987, 43.595833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531754, 40.755959, 43.517422>,  <35.686153, 40.578342, 43.470375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531754, 40.755959, 43.517422>,  <35.274422, 41.051987, 43.595833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531754, 40.755959, 43.517422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205949, -0.079325, 0.975342,
		-0.737372, -0.667835, 0.101385,
		0.643325, -0.740070, -0.196032,
		35.724751, 40.533939, 43.458611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317364, 40.540611, 44.176121>,  <35.274422, 41.051987, 43.595833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317364, 40.540611, 44.176121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633045, 40.393158, 43.979649>,  <35.822456, 40.304688, 43.861763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633045, 40.393158, 43.979649>,  <35.317364, 40.540611, 44.176121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633045, 40.393158, 43.979649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302021, -0.463430, 0.833076,
		-0.534729, -0.805817, -0.254407,
		0.789208, -0.368634, -0.491183,
		35.869808, 40.282570, 43.832294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327000, 39.874702, 44.470261>,  <35.317364, 40.540611, 44.176121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327000, 39.874702, 44.470261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675919, 40.010483, 44.329483>,  <35.885269, 40.091953, 44.245018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675919, 40.010483, 44.329483>,  <35.327000, 39.874702, 44.470261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675919, 40.010483, 44.329483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389626, -0.047647, 0.919740,
		0.295440, -0.939415, -0.173822,
		0.872300, 0.339453, -0.351944,
		35.937607, 40.112320, 44.223900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814892, 39.375423, 44.611153>,  <35.327000, 39.874702, 44.470261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814892, 39.375423, 44.611153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016830, 39.718601, 44.573090>,  <36.137993, 39.924507, 44.550251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016830, 39.718601, 44.573090>,  <35.814892, 39.375423, 44.611153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016830, 39.718601, 44.573090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377902, -0.120555, 0.917964,
		0.776092, -0.499393, -0.385082,
		0.504848, 0.857947, -0.095160,
		36.168285, 39.975986, 44.544540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430683, 39.229942, 44.975021>,  <35.814892, 39.375423, 44.611153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430683, 39.229942, 44.975021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420460, 39.627235, 44.929714>,  <36.414326, 39.865612, 44.902531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420460, 39.627235, 44.929714>,  <36.430683, 39.229942, 44.975021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420460, 39.627235, 44.929714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347491, 0.115064, 0.930597,
		0.937335, -0.015570, -0.348082,
		-0.025563, 0.993236, -0.113264,
		36.412792, 39.925205, 44.895737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066185, 39.434010, 45.106930>,  <36.430683, 39.229942, 44.975021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066185, 39.434010, 45.106930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831066, 39.752254, 45.165585>,  <36.689995, 39.943199, 45.200779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831066, 39.752254, 45.165585>,  <37.066185, 39.434010, 45.106930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831066, 39.752254, 45.165585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448230, 0.169375, 0.877725,
		0.673490, 0.581649, -0.456174,
		-0.587793, 0.795610, 0.146640,
		36.654728, 39.990936, 45.209576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495861, 39.951183, 45.247204>,  <37.066185, 39.434010, 45.106930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495861, 39.951183, 45.247204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146408, 40.062622, 45.406780>,  <36.936737, 40.129486, 45.502525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146408, 40.062622, 45.406780>,  <37.495861, 39.951183, 45.247204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146408, 40.062622, 45.406780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445535, 0.128384, 0.886011,
		0.195626, 0.951787, -0.236286,
		-0.873630, 0.278601, 0.398940,
		36.884319, 40.146202, 45.526463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149464, 40.453529, 45.025425>,  <37.495861, 39.951183, 45.247204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149464, 40.453529, 45.025425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463902, 40.206532, 45.036400>,  <38.652565, 40.058331, 45.042984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463902, 40.206532, 45.036400>,  <38.149464, 40.453529, 45.025425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463902, 40.206532, 45.036400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181392, -0.272896, -0.944788,
		0.590890, 0.737717, -0.326531,
		0.786095, -0.617496, 0.027435,
		38.699730, 40.021282, 45.044632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630798, 40.653023, 44.419308>,  <38.149464, 40.453529, 45.025425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630798, 40.653023, 44.419308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663548, 40.266594, 44.517288>,  <38.683197, 40.034737, 44.576077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663548, 40.266594, 44.517288>,  <38.630798, 40.653023, 44.419308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663548, 40.266594, 44.517288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115429, -0.253311, -0.960474,
		0.989936, 0.050359, -0.132252,
		0.081869, -0.966073, 0.244948,
		38.688107, 39.976772, 44.590775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199959, 40.476219, 44.110241>,  <38.630798, 40.653023, 44.419308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199959, 40.476219, 44.110241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022400, 40.120995, 44.158073>,  <38.915863, 39.907860, 44.186771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022400, 40.120995, 44.158073>,  <39.199959, 40.476219, 44.110241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022400, 40.120995, 44.158073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080128, -0.093577, -0.992382,
		0.892487, -0.450099, -0.029620,
		-0.443898, -0.888062, 0.119582,
		38.889229, 39.854576, 44.193947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602036, 40.016834, 43.715107>,  <39.199959, 40.476219, 44.110241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602036, 40.016834, 43.715107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251514, 39.839264, 43.789959>,  <39.041203, 39.732723, 43.834869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251514, 39.839264, 43.789959>,  <39.602036, 40.016834, 43.715107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251514, 39.839264, 43.789959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058104, -0.288205, -0.955804,
		0.478237, -0.848450, 0.226763,
		-0.876307, -0.443926, 0.187129,
		38.988621, 39.706085, 43.846096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439770, 39.690151, 43.093815>,  <39.602036, 40.016834, 43.715107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439770, 39.690151, 43.093815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093063, 39.569420, 43.252613>,  <38.885040, 39.496979, 43.347893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093063, 39.569420, 43.252613>,  <39.439770, 39.690151, 43.093815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093063, 39.569420, 43.252613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358825, -0.175398, -0.916777,
		0.346346, -0.937087, 0.043724,
		-0.866769, -0.301833, 0.396999,
		38.833031, 39.478870, 43.371712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329384, 38.962608, 42.839272>,  <39.439770, 39.690151, 43.093815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329384, 38.962608, 42.839272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990078, 39.160439, 42.915009>,  <38.786495, 39.279137, 42.960453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990078, 39.160439, 42.915009>,  <39.329384, 38.962608, 42.839272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990078, 39.160439, 42.915009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365973, -0.289028, -0.884606,
		-0.382779, -0.819670, 0.426172,
		-0.848260, 0.494575, 0.189343,
		38.735600, 39.308811, 42.971813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683651, 38.548191, 42.583374>,  <39.329384, 38.962608, 42.839272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683651, 38.548191, 42.583374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577919, 38.933842, 42.593018>,  <38.514481, 39.165234, 42.598804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577919, 38.933842, 42.593018>,  <38.683651, 38.548191, 42.583374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577919, 38.933842, 42.593018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359321, -0.075251, -0.930175,
		-0.894995, -0.254540, 0.366323,
		-0.264333, 0.964130, 0.024112,
		38.498619, 39.223080, 42.600250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073368, 38.428005, 42.269779>,  <38.683651, 38.548191, 42.583374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073368, 38.428005, 42.269779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.162529, 38.817841, 42.260891>,  <38.216026, 39.051743, 42.255558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.162529, 38.817841, 42.260891>,  <38.073368, 38.428005, 42.269779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162529, 38.817841, 42.260891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310455, 0.049364, -0.949306,
		-0.924085, 0.218501, 0.313569,
		0.222903, 0.974588, -0.022218,
		38.229401, 39.110218, 42.254227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500347, 38.738579, 41.971729>,  <38.073368, 38.428005, 42.269779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500347, 38.738579, 41.971729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822037, 38.970642, 41.920124>,  <38.015049, 39.109879, 41.889160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822037, 38.970642, 41.920124>,  <37.500347, 38.738579, 41.971729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822037, 38.970642, 41.920124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258231, 0.145584, -0.955051,
		-0.535296, 0.801389, 0.266896,
		0.804223, 0.580156, -0.129013,
		38.063305, 39.144688, 41.881420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280693, 39.220650, 41.470627>,  <37.500347, 38.738579, 41.971729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280693, 39.220650, 41.470627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677425, 39.270905, 41.461712>,  <37.915462, 39.301056, 41.456364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677425, 39.270905, 41.461712>,  <37.280693, 39.220650, 41.470627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677425, 39.270905, 41.461712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025833, 0.026644, -0.999311,
		-0.124953, 0.991719, 0.029672,
		0.991826, 0.125634, -0.022289,
		37.974972, 39.308594, 41.455025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367111, 39.779999, 41.044437>,  <37.280693, 39.220650, 41.470627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367111, 39.779999, 41.044437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723965, 39.599400, 41.038200>,  <37.938076, 39.491039, 41.034458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723965, 39.599400, 41.038200>,  <37.367111, 39.779999, 41.044437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723965, 39.599400, 41.038200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018446, -0.001926, -0.999828,
		0.451386, 0.892272, -0.010047,
		0.892138, -0.451494, -0.015590,
		37.991608, 39.463951, 41.033524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732586, 40.148739, 40.526516>,  <37.367111, 39.779999, 41.044437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732586, 40.148739, 40.526516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921700, 39.797112, 40.550896>,  <38.035168, 39.586136, 40.565521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921700, 39.797112, 40.550896>,  <37.732586, 40.148739, 40.526516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921700, 39.797112, 40.550896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185196, 0.031507, -0.982196,
		0.861500, 0.475650, 0.177696,
		0.472780, -0.879070, 0.060945,
		38.063534, 39.533390, 40.569180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428646, 40.220528, 40.177879>,  <37.732586, 40.148739, 40.526516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428646, 40.220528, 40.177879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350510, 39.828651, 40.159786>,  <38.303627, 39.593525, 40.148930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350510, 39.828651, 40.159786>,  <38.428646, 40.220528, 40.177879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350510, 39.828651, 40.159786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147195, 0.016315, -0.988973,
		0.969627, -0.199843, 0.141019,
		-0.195339, -0.979692, -0.045235,
		38.291908, 39.534744, 40.146217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900642, 40.045479, 39.734623>,  <38.428646, 40.220528, 40.177879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900642, 40.045479, 39.734623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649410, 39.734360, 39.743965>,  <38.498672, 39.547688, 39.749569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649410, 39.734360, 39.743965>,  <38.900642, 40.045479, 39.734623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649410, 39.734360, 39.743965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006329, -0.024907, -0.999670,
		0.778124, -0.628019, 0.010721,
		-0.628079, -0.777799, 0.023356,
		38.460987, 39.501019, 39.750973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.254793, 33.032757, 26.901283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971966, 33.130470, 26.635838>,  <29.802269, 33.189098, 26.476570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971966, 33.130470, 26.635838>,  <30.254793, 33.032757, 26.901283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971966, 33.130470, 26.635838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617364, 0.244391, 0.747753,
		0.344843, 0.938403, -0.021991,
		-0.707068, 0.244281, -0.663612,
		29.759846, 33.203754, 26.436754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053776, 33.674782, 26.943268>,  <30.254793, 33.032757, 26.901283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053776, 33.674782, 26.943268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735788, 33.480907, 26.797335>,  <29.544996, 33.364582, 26.709774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735788, 33.480907, 26.797335>,  <30.053776, 33.674782, 26.943268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735788, 33.480907, 26.797335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563872, 0.368525, 0.739079,
		-0.223774, 0.793263, -0.566268,
		-0.794968, -0.484689, -0.364832,
		29.497297, 33.335503, 26.687885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523718, 34.174480, 26.987158>,  <30.053776, 33.674782, 26.943268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523718, 34.174480, 26.987158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338062, 33.820450, 26.973267>,  <29.226669, 33.608032, 26.964931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338062, 33.820450, 26.973267>,  <29.523718, 34.174480, 26.987158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338062, 33.820450, 26.973267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472073, 0.214004, 0.855189,
		-0.749480, 0.413321, -0.517151,
		-0.464140, -0.885081, -0.034726,
		29.198820, 33.554924, 26.962849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854843, 34.246136, 27.152876>,  <29.523718, 34.174480, 26.987158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854843, 34.246136, 27.152876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885206, 33.851620, 27.211493>,  <28.903425, 33.614910, 27.246662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885206, 33.851620, 27.211493>,  <28.854843, 34.246136, 27.152876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885206, 33.851620, 27.211493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485010, 0.091887, 0.869668,
		-0.871208, -0.137091, -0.471385,
		0.075910, -0.986288, 0.146543,
		28.907980, 33.555733, 27.255455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174822, 34.067928, 27.295410>,  <28.854843, 34.246136, 27.152876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174822, 34.067928, 27.295410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403107, 33.783760, 27.460135>,  <28.540077, 33.613258, 27.558969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403107, 33.783760, 27.460135>,  <28.174822, 34.067928, 27.295410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403107, 33.783760, 27.460135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639879, -0.070454, 0.765239,
		-0.514629, -0.700240, -0.494794,
		0.570711, -0.710423, 0.411811,
		28.574320, 33.570633, 27.583677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679516, 33.702133, 27.651852>,  <28.174822, 34.067928, 27.295410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679516, 33.702133, 27.651852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031466, 33.568195, 27.786732>,  <28.242636, 33.487831, 27.867659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031466, 33.568195, 27.786732>,  <27.679516, 33.702133, 27.651852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031466, 33.568195, 27.786732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360421, -0.007761, 0.932758,
		-0.309714, -0.942241, -0.127514,
		0.879872, -0.334847, 0.337199,
		28.295427, 33.467743, 27.887892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428629, 33.172585, 27.921888>,  <27.679516, 33.702133, 27.651852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428629, 33.172585, 27.921888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773870, 33.303043, 28.076124>,  <27.981016, 33.381317, 28.168667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773870, 33.303043, 28.076124>,  <27.428629, 33.172585, 27.921888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773870, 33.303043, 28.076124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378170, -0.088657, 0.921481,
		0.334723, -0.941153, 0.046819,
		0.863104, 0.326146, 0.385591,
		28.032803, 33.400887, 28.191801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579727, 32.690323, 28.479342>,  <27.428629, 33.172585, 27.921888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579727, 32.690323, 28.479342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760954, 33.041103, 28.543438>,  <27.869690, 33.251572, 28.581896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760954, 33.041103, 28.543438>,  <27.579727, 32.690323, 28.479342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760954, 33.041103, 28.543438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293613, -0.022931, 0.955649,
		0.841737, -0.480024, 0.247096,
		0.453068, 0.876956, 0.160243,
		27.896875, 33.304192, 28.591511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826279, 32.586830, 29.158865>,  <27.579727, 32.690323, 28.479342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826279, 32.586830, 29.158865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854607, 32.983795, 29.118660>,  <27.871603, 33.221973, 29.094538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854607, 32.983795, 29.118660>,  <27.826279, 32.586830, 29.158865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854607, 32.983795, 29.118660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219500, 0.113798, 0.968953,
		0.973039, -0.046558, 0.225894,
		0.070819, 0.992412, -0.100511,
		27.875853, 33.281517, 29.088507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221603, 32.766644, 29.696173>,  <27.826279, 32.586830, 29.158865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221603, 32.766644, 29.696173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056194, 33.115086, 29.590208>,  <27.956949, 33.324150, 29.526630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056194, 33.115086, 29.590208>,  <28.221603, 32.766644, 29.696173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056194, 33.115086, 29.590208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077294, 0.323489, 0.943070,
		0.907207, 0.369506, -0.201101,
		-0.413523, 0.871103, -0.264911,
		27.932137, 33.376415, 29.510735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653851, 33.381641, 30.067598>,  <28.221603, 32.766644, 29.696173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653851, 33.381641, 30.067598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297293, 33.540245, 29.979788>,  <28.083357, 33.635406, 29.927101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297293, 33.540245, 29.979788>,  <28.653851, 33.381641, 30.067598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297293, 33.540245, 29.979788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018083, 0.452865, 0.891396,
		0.452865, 0.798556, -0.396512,
		-0.891396, 0.396512, -0.219527,
		28.029875, 33.659199, 29.913929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718092, 34.068386, 30.280134>,  <28.653851, 33.381641, 30.067598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718092, 34.068386, 30.280134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321585, 34.019936, 30.259275>,  <28.083681, 33.990864, 30.246759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321585, 34.019936, 30.259275>,  <28.718092, 34.068386, 30.280134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321585, 34.019936, 30.259275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094747, 0.379083, 0.920499,
		-0.091728, 0.917401, -0.387249,
		-0.991266, -0.121126, -0.052149,
		28.024204, 33.983597, 30.243631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443554, 34.763382, 30.438612>,  <28.718092, 34.068386, 30.280134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443554, 34.763382, 30.438612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160837, 34.492786, 30.521368>,  <27.991207, 34.330429, 30.571022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160837, 34.492786, 30.521368>,  <28.443554, 34.763382, 30.438612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160837, 34.492786, 30.521368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145493, 0.425214, 0.893323,
		-0.692297, 0.601293, -0.398962,
		-0.706793, -0.676491, 0.206890,
		27.948799, 34.289841, 30.583435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036777, 35.137642, 30.898655>,  <28.443554, 34.763382, 30.438612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036777, 35.137642, 30.898655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.895546, 34.765469, 30.937904>,  <27.810808, 34.542164, 30.961454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.895546, 34.765469, 30.937904>,  <28.036777, 35.137642, 30.898655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895546, 34.765469, 30.937904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228320, 0.187397, 0.955381,
		-0.907307, 0.314920, -0.278602,
		-0.353078, -0.930434, 0.098124,
		27.789623, 34.486340, 30.967342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482571, 35.167507, 31.257124>,  <28.036777, 35.137642, 30.898655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482571, 35.167507, 31.257124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550409, 34.779831, 31.328581>,  <27.591112, 34.547226, 31.371454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550409, 34.779831, 31.328581>,  <27.482571, 35.167507, 31.257124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550409, 34.779831, 31.328581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401217, 0.097666, 0.910762,
		-0.900146, -0.226135, -0.372290,
		0.169595, -0.969187, 0.178643,
		27.601288, 34.489075, 31.382174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794130, 34.799454, 31.500383>,  <27.482571, 35.167507, 31.257124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794130, 34.799454, 31.500383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.130938, 34.624714, 31.626982>,  <27.333021, 34.519871, 31.702940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.130938, 34.624714, 31.626982>,  <26.794130, 34.799454, 31.500383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130938, 34.624714, 31.626982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316514, 0.075017, 0.945617,
		-0.436833, -0.896402, -0.075103,
		0.842019, -0.436848, 0.316494,
		27.383543, 34.493660, 31.721930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569670, 34.271976, 31.962639>,  <26.794130, 34.799454, 31.500383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569670, 34.271976, 31.962639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948572, 34.299400, 32.087864>,  <27.175913, 34.315857, 32.162998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948572, 34.299400, 32.087864>,  <26.569670, 34.271976, 31.962639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948572, 34.299400, 32.087864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310833, -0.041363, 0.949564,
		0.078053, -0.996789, -0.017870,
		0.947254, 0.068562, 0.313063,
		27.232748, 34.319969, 32.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734871, 33.669434, 32.420200>,  <26.569670, 34.271976, 31.962639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734871, 33.669434, 32.420200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996290, 33.961674, 32.499290>,  <27.153141, 34.137020, 32.546745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996290, 33.961674, 32.499290>,  <26.734871, 33.669434, 32.420200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996290, 33.961674, 32.499290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124370, -0.154023, 0.980209,
		0.746597, -0.665204, -0.009796,
		0.653547, 0.730603, 0.197724,
		27.192354, 34.180855, 32.558609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018925, 33.437283, 33.042858>,  <26.734871, 33.669434, 32.420200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018925, 33.437283, 33.042858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124575, 33.818272, 32.982151>,  <27.187965, 34.046864, 32.945728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124575, 33.818272, 32.982151>,  <27.018925, 33.437283, 33.042858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124575, 33.818272, 32.982151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066557, 0.138977, 0.988057,
		0.962189, -0.271071, -0.026686,
		0.264125, 0.952474, -0.151763,
		27.203812, 34.104015, 32.936623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431988, 33.526455, 33.582630>,  <27.018925, 33.437283, 33.042858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431988, 33.526455, 33.582630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369123, 33.909130, 33.484619>,  <27.331406, 34.138737, 33.425812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369123, 33.909130, 33.484619>,  <27.431988, 33.526455, 33.582630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369123, 33.909130, 33.484619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230682, 0.276812, 0.932824,
		0.960253, 0.090079, -0.264196,
		-0.157160, 0.956693, -0.245030,
		27.321976, 34.196136, 33.411110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965578, 33.853096, 34.002544>,  <27.431988, 33.526455, 33.582630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965578, 33.853096, 34.002544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694023, 34.139824, 33.938953>,  <27.531090, 34.311863, 33.900799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694023, 34.139824, 33.938953>,  <27.965578, 33.853096, 34.002544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694023, 34.139824, 33.938953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061703, 0.271453, 0.960472,
		0.731645, 0.642243, -0.228516,
		-0.678888, 0.716824, -0.158978,
		27.490356, 34.354870, 33.891258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185320, 34.480324, 34.247124>,  <27.965578, 33.853096, 34.002544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185320, 34.480324, 34.247124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790449, 34.542965, 34.259521>,  <27.553528, 34.580551, 34.266960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790449, 34.542965, 34.259521>,  <28.185320, 34.480324, 34.247124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790449, 34.542965, 34.259521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098472, 0.444523, 0.890338,
		0.125655, 0.881971, -0.454243,
		-0.987175, 0.156605, 0.030993,
		27.494297, 34.589947, 34.268818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875992, 34.800716, 34.422329>,  <28.185320, 34.480324, 34.247124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875992, 34.800716, 34.422329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246429, 34.945160, 34.466061>,  <29.468691, 35.031826, 34.492298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246429, 34.945160, 34.466061>,  <28.875992, 34.800716, 34.422329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246429, 34.945160, 34.466061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170628, -0.142413, -0.974989,
		-0.336509, 0.921584, -0.193503,
		0.926093, 0.361110, 0.109325,
		29.524258, 35.053493, 34.498859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045359, 35.260235, 33.880257>,  <28.875992, 34.800716, 34.422329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045359, 35.260235, 33.880257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402325, 35.121014, 33.995117>,  <29.616505, 35.037479, 34.064034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402325, 35.121014, 33.995117>,  <29.045359, 35.260235, 33.880257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402325, 35.121014, 33.995117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269907, -0.098206, -0.957865,
		0.361589, 0.932316, 0.006302,
		0.892415, -0.348055, 0.287149,
		29.670050, 35.016598, 34.081261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586132, 35.700108, 33.485859>,  <29.045359, 35.260235, 33.880257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586132, 35.700108, 33.485859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769024, 35.370850, 33.620537>,  <29.878759, 35.173294, 33.701344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769024, 35.370850, 33.620537>,  <29.586132, 35.700108, 33.485859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769024, 35.370850, 33.620537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333023, -0.192577, -0.923044,
		0.824643, 0.534173, 0.186075,
		0.457231, -0.823148, 0.336699,
		29.906193, 35.123905, 33.721546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163263, 35.629986, 33.140785>,  <29.586132, 35.700108, 33.485859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163263, 35.629986, 33.140785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155334, 35.259560, 33.291527>,  <30.150578, 35.037304, 33.381969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155334, 35.259560, 33.291527>,  <30.163263, 35.629986, 33.140785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155334, 35.259560, 33.291527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373310, -0.356519, -0.856466,
		0.927495, 0.123704, 0.352776,
		-0.019824, -0.926062, 0.376850,
		30.149387, 34.981739, 33.404583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806644, 35.300640, 33.081329>,  <30.163263, 35.629986, 33.140785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806644, 35.300640, 33.081329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.554836, 34.991268, 33.111008>,  <30.403751, 34.805645, 33.128815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.554836, 34.991268, 33.111008>,  <30.806644, 35.300640, 33.081329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554836, 34.991268, 33.111008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445606, -0.437615, -0.780979,
		0.636506, -0.458578, 0.620134,
		-0.629520, -0.773433, 0.074199,
		30.365980, 34.759239, 33.133266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203985, 34.697300, 33.027950>,  <30.806644, 35.300640, 33.081329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203985, 34.697300, 33.027950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.825506, 34.597336, 32.945728>,  <30.598419, 34.537357, 32.896397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.825506, 34.597336, 32.945728>,  <31.203985, 34.697300, 33.027950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825506, 34.597336, 32.945728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315570, -0.572184, -0.756982,
		0.071565, -0.781121, 0.620264,
		-0.946200, -0.249910, -0.205550,
		30.541647, 34.522362, 32.884064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165543, 33.897591, 32.855293>,  <31.203985, 34.697300, 33.027950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165543, 33.897591, 32.855293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854660, 34.084309, 32.686508>,  <30.668131, 34.196339, 32.585236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854660, 34.084309, 32.686508>,  <31.165543, 33.897591, 32.855293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854660, 34.084309, 32.686508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054999, -0.617625, -0.784548,
		-0.626854, -0.632954, 0.454340,
		-0.777194, 0.466808, -0.421972,
		30.621498, 34.224346, 32.559917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813498, 33.340359, 32.500275>,  <31.165543, 33.897591, 32.855293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813498, 33.340359, 32.500275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652636, 33.670971, 32.342739>,  <30.556118, 33.869339, 32.248219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652636, 33.670971, 32.342739>,  <30.813498, 33.340359, 32.500275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652636, 33.670971, 32.342739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057385, -0.452067, -0.890136,
		-0.913771, -0.335373, 0.229233,
		-0.402156, 0.826535, -0.393841,
		30.531988, 33.918930, 32.224586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103374, 33.127064, 32.094299>,  <30.813498, 33.340359, 32.500275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103374, 33.127064, 32.094299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241936, 33.477077, 31.959053>,  <30.325071, 33.687084, 31.877907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241936, 33.477077, 31.959053>,  <30.103374, 33.127064, 32.094299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241936, 33.477077, 31.959053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017237, -0.354429, -0.934924,
		-0.937928, 0.329688, -0.107693,
		0.346402, 0.875035, -0.338112,
		30.345856, 33.739590, 31.857620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007898, 33.025139, 31.445368>,  <30.103374, 33.127064, 32.094299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007898, 33.025139, 31.445368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212086, 33.369061, 31.440321>,  <30.334599, 33.575413, 31.437292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212086, 33.369061, 31.440321>,  <30.007898, 33.025139, 31.445368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212086, 33.369061, 31.440321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035801, -0.035913, -0.998714,
		-0.859151, 0.509360, -0.049114,
		0.510468, 0.859804, -0.012619,
		30.365227, 33.627003, 31.436535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720913, 33.440495, 30.857964>,  <30.007898, 33.025139, 31.445368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720913, 33.440495, 30.857964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103390, 33.537781, 30.923128>,  <30.332876, 33.596153, 30.962227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103390, 33.537781, 30.923128>,  <29.720913, 33.440495, 30.857964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103390, 33.537781, 30.923128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142581, 0.099102, -0.984809,
		-0.255669, 0.964896, 0.060082,
		0.956192, 0.243219, 0.162913,
		30.390247, 33.610744, 30.972002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847763, 33.905190, 30.395187>,  <29.720913, 33.440495, 30.857964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847763, 33.905190, 30.395187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218184, 33.779613, 30.478970>,  <30.440435, 33.704269, 30.529240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218184, 33.779613, 30.478970>,  <29.847763, 33.905190, 30.395187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218184, 33.779613, 30.478970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217679, -0.009057, -0.975978,
		0.308295, 0.949400, 0.059950,
		0.926051, -0.313939, 0.209457,
		30.495998, 33.685432, 30.541807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125849, 34.079227, 29.736219>,  <29.847763, 33.905190, 30.395187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125849, 34.079227, 29.736219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408560, 33.867180, 29.923595>,  <30.578186, 33.739952, 30.036020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408560, 33.867180, 29.923595>,  <30.125849, 34.079227, 29.736219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408560, 33.867180, 29.923595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521542, -0.056926, -0.851325,
		0.477971, 0.846009, 0.236246,
		0.706780, -0.530121, 0.468438,
		30.620594, 33.708145, 30.064127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656986, 34.318821, 29.451225>,  <30.125849, 34.079227, 29.736219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656986, 34.318821, 29.451225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760002, 33.961090, 29.597567>,  <30.821812, 33.746452, 29.685371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760002, 33.961090, 29.597567>,  <30.656986, 34.318821, 29.451225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760002, 33.961090, 29.597567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608653, -0.143919, -0.780275,
		0.750476, 0.423629, 0.507272,
		0.257541, -0.894330, 0.365851,
		30.837265, 33.692791, 29.707321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379906, 34.356121, 29.455721>,  <30.656986, 34.318821, 29.451225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379906, 34.356121, 29.455721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222874, 33.989388, 29.426611>,  <31.128654, 33.769348, 29.409145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222874, 33.989388, 29.426611>,  <31.379906, 34.356121, 29.455721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222874, 33.989388, 29.426611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593087, -0.191888, -0.781938,
		0.702942, -0.350136, 0.619093,
		-0.392581, -0.916833, -0.072775,
		31.105099, 33.714336, 29.404778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878441, 33.973495, 29.155468>,  <31.379906, 34.356121, 29.455721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878441, 33.973495, 29.155468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.575493, 33.713299, 29.132652>,  <31.393723, 33.557182, 29.118963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.575493, 33.713299, 29.132652>,  <31.878441, 33.973495, 29.155468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575493, 33.713299, 29.132652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389756, -0.380251, -0.838749,
		0.523906, -0.657477, 0.541523,
		-0.757372, -0.650487, -0.057040,
		31.348282, 33.518154, 29.115540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237392, 33.380188, 28.952454>,  <31.878441, 33.973495, 29.155468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237392, 33.380188, 28.952454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.855726, 33.360687, 28.834339>,  <31.626726, 33.348988, 28.763472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.855726, 33.360687, 28.834339>,  <32.237392, 33.380188, 28.952454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855726, 33.360687, 28.834339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294468, -0.329165, -0.897184,
		-0.053458, -0.943013, 0.328433,
		-0.954165, -0.048751, -0.295284,
		31.569477, 33.346062, 28.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192753, 32.729069, 28.675079>,  <32.237392, 33.380188, 28.952454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192753, 32.729069, 28.675079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.883171, 32.929169, 28.519777>,  <31.697422, 33.049229, 28.426596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.883171, 32.929169, 28.519777>,  <32.192753, 32.729069, 28.675079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883171, 32.929169, 28.519777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197394, -0.391986, -0.898545,
		-0.601692, -0.772070, 0.204631,
		-0.773952, 0.500255, -0.388257,
		31.650986, 33.079247, 28.403301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688427, 32.273281, 28.404951>,  <32.192753, 32.729069, 28.675079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688427, 32.273281, 28.404951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640408, 32.608337, 28.191803>,  <31.611595, 32.809372, 28.063913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640408, 32.608337, 28.191803>,  <31.688427, 32.273281, 28.404951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640408, 32.608337, 28.191803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101587, -0.523571, -0.845904,
		-0.987557, -0.155682, -0.022239,
		-0.120049, 0.837637, -0.532872,
		31.604393, 32.859627, 28.031942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290236, 32.097862, 27.731655>,  <31.688427, 32.273281, 28.404951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290236, 32.097862, 27.731655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437103, 32.461483, 27.652849>,  <31.525225, 32.679657, 27.605566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437103, 32.461483, 27.652849>,  <31.290236, 32.097862, 27.731655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437103, 32.461483, 27.652849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167290, -0.272891, -0.947388,
		-0.914987, 0.314893, -0.252272,
		0.367169, 0.909050, -0.197013,
		31.547255, 32.734200, 27.593744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.404999, 37.223778, 45.132462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.153984, 36.993565, 45.342209>,  <39.003376, 36.855438, 45.468056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.153984, 36.993565, 45.342209>,  <39.404999, 37.223778, 45.132462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153984, 36.993565, 45.342209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393801, 0.346358, 0.851444,
		-0.671652, 0.740808, 0.009293,
		-0.627538, -0.575534, 0.524364,
		38.965721, 36.820904, 45.499519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115730, 37.742908, 45.685272>,  <39.404999, 37.223778, 45.132462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115730, 37.742908, 45.685272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021297, 37.382607, 45.831097>,  <38.964638, 37.166424, 45.918591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021297, 37.382607, 45.831097>,  <39.115730, 37.742908, 45.685272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021297, 37.382607, 45.831097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072084, 0.390363, 0.917834,
		-0.969055, 0.190410, -0.157089,
		-0.236087, -0.900755, 0.364558,
		38.950470, 37.112381, 45.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666870, 37.927448, 46.271935>,  <39.115730, 37.742908, 45.685272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666870, 37.927448, 46.271935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769978, 37.549149, 46.351051>,  <38.831841, 37.322170, 46.398521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769978, 37.549149, 46.351051>,  <38.666870, 37.927448, 46.271935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769978, 37.549149, 46.351051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154477, 0.242419, 0.957794,
		-0.953779, -0.216330, 0.208583,
		0.257764, -0.945745, 0.197796,
		38.847305, 37.265427, 46.410389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336388, 37.709415, 46.872292>,  <38.666870, 37.927448, 46.271935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336388, 37.709415, 46.872292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.641403, 37.455132, 46.824287>,  <38.824413, 37.302559, 46.795486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.641403, 37.455132, 46.824287>,  <38.336388, 37.709415, 46.872292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641403, 37.455132, 46.824287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286196, 0.165115, 0.943837,
		-0.580195, -0.754059, 0.307846,
		0.762539, -0.635714, -0.120010,
		38.870167, 37.264416, 46.788284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406963, 37.348885, 47.504482>,  <38.336388, 37.709415, 46.872292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406963, 37.348885, 47.504482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776661, 37.323490, 47.353889>,  <38.998482, 37.308254, 47.263535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776661, 37.323490, 47.353889>,  <38.406963, 37.348885, 47.504482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776661, 37.323490, 47.353889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381299, 0.203845, 0.901698,
		0.019500, -0.976943, 0.212610,
		0.924246, -0.063485, -0.376482,
		39.053936, 37.304443, 47.240944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756081, 36.949909, 48.008831>,  <38.406963, 37.348885, 47.504482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756081, 36.949909, 48.008831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.053375, 37.133121, 47.813770>,  <39.231754, 37.243050, 47.696735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.053375, 37.133121, 47.813770>,  <38.756081, 36.949909, 48.008831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053375, 37.133121, 47.813770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544384, 0.009654, 0.838780,
		0.388896, -0.888883, -0.242171,
		0.743240, 0.458032, -0.487648,
		39.276348, 37.270531, 47.667477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378090, 36.576542, 48.334457>,  <38.756081, 36.949909, 48.008831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378090, 36.576542, 48.334457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507816, 36.869366, 48.094822>,  <39.585651, 37.045059, 47.951042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507816, 36.869366, 48.094822>,  <39.378090, 36.576542, 48.334457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507816, 36.869366, 48.094822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839747, 0.068749, 0.538607,
		0.435479, -0.677765, -0.592447,
		0.324319, 0.732058, -0.599090,
		39.605114, 37.088982, 47.915096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934612, 36.279507, 47.888657>,  <39.378090, 36.576542, 48.334457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934612, 36.279507, 47.888657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.952820, 36.676395, 47.934994>,  <39.963745, 36.914528, 47.962795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.952820, 36.676395, 47.934994>,  <39.934612, 36.279507, 47.888657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952820, 36.676395, 47.934994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847143, -0.099793, 0.521909,
		0.529411, 0.074379, -0.845099,
		0.045516, 0.992224, 0.115841,
		39.966476, 36.974064, 47.969746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600189, 36.405487, 47.680515>,  <39.934612, 36.279507, 47.888657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600189, 36.405487, 47.680515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452267, 36.700344, 47.906742>,  <40.363514, 36.877258, 48.042477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452267, 36.700344, 47.906742>,  <40.600189, 36.405487, 47.680515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452267, 36.700344, 47.906742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758615, -0.111878, 0.641863,
		0.536418, 0.666411, -0.517834,
		-0.369810, 0.737143, 0.565563,
		40.341324, 36.921486, 48.076412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187294, 36.874512, 47.906235>,  <40.600189, 36.405487, 47.680515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187294, 36.874512, 47.906235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.886639, 36.950691, 48.158829>,  <40.706245, 36.996399, 48.310387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.886639, 36.950691, 48.158829>,  <41.187294, 36.874512, 47.906235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886639, 36.950691, 48.158829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622302, -0.112548, 0.774644,
		0.218600, 0.975225, -0.033920,
		-0.751634, 0.190446, 0.631487,
		40.661148, 37.007824, 48.348274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414055, 37.420605, 48.363781>,  <41.187294, 36.874512, 47.906235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414055, 37.420605, 48.363781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.118206, 37.236710, 48.560394>,  <40.940697, 37.126373, 48.678360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.118206, 37.236710, 48.560394>,  <41.414055, 37.420605, 48.363781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118206, 37.236710, 48.560394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624755, -0.197395, 0.755458,
		-0.250289, 0.865837, 0.433222,
		-0.739619, -0.459740, 0.491530,
		40.896320, 37.098789, 48.707855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554886, 37.496132, 49.161373>,  <41.414055, 37.420605, 48.363781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554886, 37.496132, 49.161373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.310692, 37.181709, 49.122559>,  <41.164173, 36.993053, 49.099270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.310692, 37.181709, 49.122559>,  <41.554886, 37.496132, 49.161373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310692, 37.181709, 49.122559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430140, -0.431923, 0.792731,
		-0.665045, 0.442214, 0.601799,
		-0.610487, -0.786059, -0.097035,
		41.127544, 36.945892, 49.093449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397785, 37.279041, 49.836632>,  <41.554886, 37.496132, 49.161373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397785, 37.279041, 49.836632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.346439, 36.984753, 49.570629>,  <41.315632, 36.808178, 49.411026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.346439, 36.984753, 49.570629>,  <41.397785, 37.279041, 49.836632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346439, 36.984753, 49.570629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628210, -0.579190, 0.519511,
		-0.767381, -0.351077, 0.536536,
		-0.128368, -0.735720, -0.665009,
		41.307930, 36.764038, 49.371128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615982, 38.052845, 49.827679>,  <41.397785, 37.279041, 49.836632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615982, 38.052845, 49.827679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.400951, 38.358578, 49.970119>,  <41.271931, 38.542019, 50.055584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.400951, 38.358578, 49.970119>,  <41.615982, 38.052845, 49.827679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400951, 38.358578, 49.970119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020097, 0.410581, -0.911603,
		-0.842974, -0.497215, -0.205359,
		-0.537579, 0.764330, 0.356101,
		41.239677, 38.587875, 50.076950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086609, 38.288124, 49.432579>,  <41.615982, 38.052845, 49.827679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086609, 38.288124, 49.432579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.192406, 38.624229, 49.621895>,  <41.255882, 38.825893, 49.735485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.192406, 38.624229, 49.621895>,  <41.086609, 38.288124, 49.432579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192406, 38.624229, 49.621895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106950, 0.513300, -0.851519,
		-0.958439, 0.174602, 0.225630,
		0.264493, 0.840260, 0.473293,
		41.271755, 38.876308, 49.763882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465881, 38.694630, 49.392395>,  <41.086609, 38.288124, 49.432579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465881, 38.694630, 49.392395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.791950, 38.922386, 49.434887>,  <40.987591, 39.059040, 49.460381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.791950, 38.922386, 49.434887>,  <40.465881, 38.694630, 49.392395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791950, 38.922386, 49.434887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269846, 0.535616, -0.800186,
		-0.512516, 0.623627, 0.590269,
		0.815175, 0.569390, 0.106228,
		41.036503, 39.093204, 49.466755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246838, 39.345764, 49.295971>,  <40.465881, 38.694630, 49.392395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246838, 39.345764, 49.295971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.638821, 39.353951, 49.216705>,  <40.874008, 39.358860, 49.169147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.638821, 39.353951, 49.216705>,  <40.246838, 39.345764, 49.295971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638821, 39.353951, 49.216705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179302, 0.524091, -0.832574,
		0.086816, 0.851416, 0.517256,
		0.979956, 0.020464, -0.198160,
		40.932808, 39.360088, 49.157257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330387, 39.992180, 49.021469>,  <40.246838, 39.345764, 49.295971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330387, 39.992180, 49.021469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623444, 39.762444, 48.875389>,  <40.799278, 39.624603, 48.787739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623444, 39.762444, 48.875389>,  <40.330387, 39.992180, 49.021469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623444, 39.762444, 48.875389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256184, 0.264410, -0.929762,
		0.630560, 0.774741, 0.046582,
		0.732642, -0.574337, -0.365203,
		40.843235, 39.590141, 48.765827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712105, 40.492104, 48.629364>,  <40.330387, 39.992180, 49.021469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712105, 40.492104, 48.629364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.813774, 40.122948, 48.513664>,  <40.874775, 39.901455, 48.444244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.813774, 40.122948, 48.513664>,  <40.712105, 40.492104, 48.629364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813774, 40.122948, 48.513664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274965, 0.217774, -0.936466,
		0.927249, 0.317557, -0.198412,
		0.254172, -0.922894, -0.289247,
		40.890026, 39.846081, 48.426891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021584, 40.537373, 47.905254>,  <40.712105, 40.492104, 48.629364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021584, 40.537373, 47.905254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.937336, 40.147705, 47.937813>,  <40.886787, 39.913902, 47.957348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.937336, 40.147705, 47.937813>,  <41.021584, 40.537373, 47.905254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937336, 40.147705, 47.937813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379802, 0.004819, -0.925055,
		0.900771, -0.225752, -0.371008,
		-0.210620, -0.974173, 0.081400,
		40.874149, 39.855453, 47.962234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509033, 40.259525, 47.403229>,  <41.021584, 40.537373, 47.905254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509033, 40.259525, 47.403229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.180080, 40.045639, 47.480957>,  <40.982708, 39.917309, 47.527592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.180080, 40.045639, 47.480957>,  <41.509033, 40.259525, 47.403229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180080, 40.045639, 47.480957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337257, 0.183119, -0.923431,
		0.458191, -0.824951, -0.330932,
		-0.822386, -0.534717, 0.194317,
		40.933365, 39.885223, 47.539253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456612, 39.911343, 46.775997>,  <41.509033, 40.259525, 47.403229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456612, 39.911343, 46.775997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.110405, 39.848606, 46.966270>,  <40.902679, 39.810966, 47.080437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.110405, 39.848606, 46.966270>,  <41.456612, 39.911343, 46.775997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110405, 39.848606, 46.966270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474061, -0.050063, -0.879067,
		0.161688, -0.986354, -0.031022,
		-0.865519, -0.156841, 0.475687,
		40.850750, 39.801556, 47.108978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108517, 39.484722, 46.340881>,  <41.456612, 39.911343, 46.775997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108517, 39.484722, 46.340881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.803112, 39.644985, 46.543476>,  <40.619869, 39.741142, 46.665035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.803112, 39.644985, 46.543476>,  <41.108517, 39.484722, 46.340881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803112, 39.644985, 46.543476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534091, 0.049150, -0.843997,
		-0.363046, -0.914910, 0.176459,
		-0.763508, 0.400655, 0.506489,
		40.574059, 39.765182, 46.695423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493076, 39.163658, 46.080795>,  <41.108517, 39.484722, 46.340881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493076, 39.163658, 46.080795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351719, 39.482307, 46.276958>,  <40.266903, 39.673496, 46.394657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351719, 39.482307, 46.276958>,  <40.493076, 39.163658, 46.080795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351719, 39.482307, 46.276958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766392, 0.054069, -0.640094,
		-0.536430, -0.602052, 0.591418,
		-0.353392, 0.796624, 0.490412,
		40.245701, 39.721294, 46.424084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705795, 39.068001, 46.211494>,  <40.493076, 39.163658, 46.080795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705795, 39.068001, 46.211494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798466, 39.456867, 46.197525>,  <39.854069, 39.690186, 46.189144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798466, 39.456867, 46.197525>,  <39.705795, 39.068001, 46.211494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798466, 39.456867, 46.197525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753336, 0.156585, -0.638723,
		-0.615476, 0.174283, 0.768644,
		0.231677, 0.972165, -0.034919,
		39.867970, 39.748516, 46.187050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048294, 39.332870, 46.101566>,  <39.705795, 39.068001, 46.211494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048294, 39.332870, 46.101566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260265, 39.668110, 46.049759>,  <39.387447, 39.869251, 46.018673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260265, 39.668110, 46.049759>,  <39.048294, 39.332870, 46.101566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260265, 39.668110, 46.049759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686178, 0.334000, -0.646223,
		-0.498337, 0.431324, 0.752077,
		0.529925, 0.838095, -0.129521,
		39.419243, 39.919540, 46.010902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600273, 39.879734, 46.201454>,  <39.048294, 39.332870, 46.101566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600273, 39.879734, 46.201454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894279, 39.988113, 45.952831>,  <39.070686, 40.053143, 45.803658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894279, 39.988113, 45.952831>,  <38.600273, 39.879734, 46.201454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894279, 39.988113, 45.952831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676103, 0.362197, -0.641637,
		0.051275, 0.891852, 0.449412,
		0.735021, 0.270949, -0.621556,
		39.114784, 40.069397, 45.766365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335644, 40.437778, 45.875427>,  <38.600273, 39.879734, 46.201454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335644, 40.437778, 45.875427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635056, 40.279274, 45.662754>,  <38.814701, 40.184170, 45.535149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635056, 40.279274, 45.662754>,  <38.335644, 40.437778, 45.875427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635056, 40.279274, 45.662754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560429, 0.050538, -0.826659,
		0.354443, 0.916746, -0.184247,
		0.748525, -0.396260, -0.531683,
		38.859612, 40.160397, 45.503250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646919, 40.651539, 45.819172>,  <38.335644, 40.437778, 45.875427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646919, 40.651539, 45.819172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285904, 40.494644, 45.890247>,  <37.069294, 40.400509, 45.932892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285904, 40.494644, 45.890247>,  <37.646919, 40.651539, 45.819172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285904, 40.494644, 45.890247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206574, -0.032322, 0.977897,
		-0.377823, 0.919297, 0.110197,
		-0.902539, -0.392236, 0.177690,
		37.015141, 40.376972, 45.943554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403564, 41.000397, 46.398773>,  <37.646919, 40.651539, 45.819172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403564, 41.000397, 46.398773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195648, 40.659592, 46.373833>,  <37.070900, 40.455109, 46.358868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195648, 40.659592, 46.373833>,  <37.403564, 41.000397, 46.398773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195648, 40.659592, 46.373833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111576, -0.140063, 0.983836,
		-0.846977, 0.504431, 0.167868,
		-0.519789, -0.852016, -0.062348,
		37.039711, 40.403988, 46.355129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088806, 41.063412, 47.047092>,  <37.403564, 41.000397, 46.398773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088806, 41.063412, 47.047092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055908, 40.679588, 46.939407>,  <37.036171, 40.449295, 46.874798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055908, 40.679588, 46.939407>,  <37.088806, 41.063412, 47.047092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055908, 40.679588, 46.939407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048072, -0.273632, 0.960632,
		-0.995452, 0.066066, 0.068634,
		-0.082245, -0.959563, -0.269212,
		37.031235, 40.391720, 46.858643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627045, 40.824436, 47.546001>,  <37.088806, 41.063412, 47.047092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627045, 40.824436, 47.546001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815266, 40.508652, 47.388355>,  <36.928200, 40.319180, 47.293766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815266, 40.508652, 47.388355>,  <36.627045, 40.824436, 47.546001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815266, 40.508652, 47.388355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042764, -0.425726, 0.903841,
		-0.881336, -0.442157, -0.166565,
		0.470551, -0.789465, -0.394117,
		36.956432, 40.271812, 47.270119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344109, 40.236809, 47.873299>,  <36.627045, 40.824436, 47.546001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344109, 40.236809, 47.873299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690094, 40.104420, 47.722408>,  <36.897686, 40.024986, 47.631874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690094, 40.104420, 47.722408>,  <36.344109, 40.236809, 47.873299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690094, 40.104420, 47.722408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143776, -0.556738, 0.818151,
		-0.480798, -0.761906, -0.433973,
		0.864964, -0.330970, -0.377223,
		36.949581, 40.005127, 47.609241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475441, 39.447945, 48.038483>,  <36.344109, 40.236809, 47.873299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475441, 39.447945, 48.038483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830406, 39.621956, 47.977505>,  <37.043385, 39.726364, 47.940918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830406, 39.621956, 47.977505>,  <36.475441, 39.447945, 48.038483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830406, 39.621956, 47.977505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312645, -0.324994, 0.892542,
		0.338738, -0.839719, -0.424415,
		0.887417, 0.435030, -0.152446,
		37.096630, 39.752464, 47.931770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882538, 39.021568, 48.296879>,  <36.475441, 39.447945, 48.038483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882538, 39.021568, 48.296879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084652, 39.366730, 48.293201>,  <37.205921, 39.573826, 48.290997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084652, 39.366730, 48.293201>,  <36.882538, 39.021568, 48.296879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084652, 39.366730, 48.293201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422314, -0.237971, 0.874655,
		0.752555, -0.445832, -0.484659,
		0.505284, 0.862905, -0.009195,
		37.236237, 39.625603, 48.290443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334900, 38.309521, 48.193836>,  <36.882538, 39.021568, 48.296879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334900, 38.309521, 48.193836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.039650, 38.115311, 48.381210>,  <36.862499, 37.998783, 48.493633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.039650, 38.115311, 48.381210>,  <37.334900, 38.309521, 48.193836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039650, 38.115311, 48.381210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486045, -0.098842, -0.868326,
		0.467899, -0.868615, -0.163032,
		-0.738126, -0.485529, 0.468434,
		36.818211, 37.969650, 48.521740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347618, 37.728241, 47.762608>,  <37.334900, 38.309521, 48.193836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347618, 37.728241, 47.762608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996574, 37.728199, 47.954361>,  <36.785950, 37.728176, 48.069412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996574, 37.728199, 47.954361>,  <37.347618, 37.728241, 47.762608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996574, 37.728199, 47.954361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466950, -0.226055, -0.854902,
		0.108454, -0.974114, 0.198340,
		-0.877608, -0.000103, 0.479379,
		36.733292, 37.728168, 48.098175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908161, 37.111938, 47.643879>,  <37.347618, 37.728241, 47.762608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908161, 37.111938, 47.643879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628120, 37.362244, 47.781441>,  <36.460094, 37.512428, 47.863979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628120, 37.362244, 47.781441>,  <36.908161, 37.111938, 47.643879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628120, 37.362244, 47.781441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591829, -0.239074, -0.769793,
		-0.399494, -0.742467, 0.537724,
		-0.700102, 0.625769, 0.343905,
		36.418091, 37.549973, 47.884613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388557, 36.701149, 47.662148>,  <36.908161, 37.111938, 47.643879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388557, 36.701149, 47.662148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234001, 37.070080, 47.662983>,  <36.141266, 37.291439, 47.663483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234001, 37.070080, 47.662983>,  <36.388557, 36.701149, 47.662148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234001, 37.070080, 47.662983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682810, -0.284531, -0.672914,
		-0.620056, -0.261434, 0.739718,
		-0.386395, 0.922331, 0.002085,
		36.118084, 37.346779, 47.663609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602966, 36.638020, 47.676201>,  <36.388557, 36.701149, 47.662148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602966, 36.638020, 47.676201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653225, 37.008392, 47.533733>,  <35.683380, 37.230618, 47.448254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653225, 37.008392, 47.533733>,  <35.602966, 36.638020, 47.676201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653225, 37.008392, 47.533733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626246, -0.204418, -0.752349,
		-0.769434, 0.317581, 0.554178,
		0.125648, 0.925935, -0.356170,
		35.690918, 37.286171, 47.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945534, 36.961754, 47.623222>,  <35.602966, 36.638020, 47.676201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945534, 36.961754, 47.623222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196140, 37.130726, 47.361217>,  <35.346504, 37.232109, 47.204014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196140, 37.130726, 47.361217>,  <34.945534, 36.961754, 47.623222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196140, 37.130726, 47.361217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688016, -0.095132, -0.719433,
		-0.366219, 0.901392, 0.231034,
		0.626512, 0.422426, -0.655011,
		35.384094, 37.257454, 47.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455975, 37.151470, 47.129734>,  <34.945534, 36.961754, 47.623222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455975, 37.151470, 47.129734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800545, 37.225197, 46.940430>,  <35.007286, 37.269432, 46.826847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800545, 37.225197, 46.940430>,  <34.455975, 37.151470, 47.129734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800545, 37.225197, 46.940430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467640, -0.075702, -0.880672,
		-0.198149, 0.979947, 0.020982,
		0.861423, 0.184316, -0.473263,
		35.058971, 37.280491, 46.798450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.366287, 34.084507, 48.986958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.616741, 34.368320, 48.857647>,  <39.767014, 34.538609, 48.780060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.616741, 34.368320, 48.857647>,  <39.366287, 34.084507, 48.986958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616741, 34.368320, 48.857647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388740, -0.075330, -0.918263,
		-0.675894, 0.700630, 0.228659,
		0.626138, 0.709537, -0.323278,
		39.804581, 34.581181, 48.760662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998272, 34.697464, 48.601372>,  <39.366287, 34.084507, 48.986958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998272, 34.697464, 48.601372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.381336, 34.699821, 48.486233>,  <39.611176, 34.701237, 48.417149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.381336, 34.699821, 48.486233>,  <38.998272, 34.697464, 48.601372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381336, 34.699821, 48.486233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287802, 0.047076, -0.956532,
		0.007910, 0.998874, 0.046780,
		0.957657, 0.005897, -0.287851,
		39.668633, 34.701591, 48.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040043, 35.228241, 48.014042>,  <38.998272, 34.697464, 48.601372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040043, 35.228241, 48.014042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.365009, 34.995026, 48.011547>,  <39.559990, 34.855095, 48.010052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.365009, 34.995026, 48.011547>,  <39.040043, 35.228241, 48.014042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365009, 34.995026, 48.011547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111548, -0.144918, -0.983136,
		0.572305, 0.799413, -0.182771,
		0.812418, -0.583041, -0.006236,
		39.608734, 34.820114, 48.009678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232224, 35.379539, 47.448841>,  <39.040043, 35.228241, 48.014042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232224, 35.379539, 47.448841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.434803, 35.041935, 47.519444>,  <39.556351, 34.839375, 47.561806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.434803, 35.041935, 47.519444>,  <39.232224, 35.379539, 47.448841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434803, 35.041935, 47.519444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205544, -0.316968, -0.925896,
		0.837411, 0.432643, -0.334010,
		0.506453, -0.844009, 0.176506,
		39.586739, 34.788731, 47.572395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713562, 35.260864, 46.923485>,  <39.232224, 35.379539, 47.448841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713562, 35.260864, 46.923485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.627750, 34.910137, 47.095612>,  <39.576263, 34.699703, 47.198887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.627750, 34.910137, 47.095612>,  <39.713562, 35.260864, 46.923485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627750, 34.910137, 47.095612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337225, -0.346987, -0.875146,
		0.916655, -0.332858, -0.221245,
		-0.214530, -0.876816, 0.430315,
		39.563393, 34.647091, 47.224705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671455, 34.898224, 46.420353>,  <39.713562, 35.260864, 46.923485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671455, 34.898224, 46.420353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.504452, 34.639042, 46.675175>,  <39.404247, 34.483532, 46.828068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.504452, 34.639042, 46.675175>,  <39.671455, 34.898224, 46.420353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504452, 34.639042, 46.675175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671908, -0.251837, -0.696504,
		0.611739, -0.718838, -0.330224,
		-0.417511, -0.647958, 0.637051,
		39.379200, 34.444656, 46.866291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489693, 34.416321, 45.988338>,  <39.671455, 34.898224, 46.420353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489693, 34.416321, 45.988338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.291397, 34.321785, 46.322617>,  <39.172421, 34.265064, 46.523182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.291397, 34.321785, 46.322617>,  <39.489693, 34.416321, 45.988338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291397, 34.321785, 46.322617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691940, -0.474038, -0.544524,
		0.524844, -0.848193, 0.071467,
		-0.495739, -0.236339, 0.835695,
		39.142673, 34.250885, 46.573326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318913, 33.692123, 45.999550>,  <39.489693, 34.416321, 45.988338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318913, 33.692123, 45.999550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.037540, 33.863979, 46.226032>,  <38.868717, 33.967094, 46.361923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.037540, 33.863979, 46.226032>,  <39.318913, 33.692123, 45.999550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037540, 33.863979, 46.226032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709267, -0.475942, -0.520018,
		0.046059, -0.767389, 0.639525,
		-0.703433, 0.429643, 0.566206,
		38.826511, 33.992870, 46.395893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886520, 33.127151, 46.410057>,  <39.318913, 33.692123, 45.999550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886520, 33.127151, 46.410057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.686535, 33.472370, 46.381264>,  <38.566544, 33.679501, 46.363987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.686535, 33.472370, 46.381264>,  <38.886520, 33.127151, 46.410057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686535, 33.472370, 46.381264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793460, -0.489788, -0.361287,
		-0.347064, -0.123517, 0.929672,
		-0.499968, 0.863047, -0.071982,
		38.536545, 33.731285, 46.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214130, 32.906334, 46.571594>,  <38.886520, 33.127151, 46.410057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214130, 32.906334, 46.571594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.183685, 33.259224, 46.385742>,  <38.165417, 33.470959, 46.274231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.183685, 33.259224, 46.385742>,  <38.214130, 32.906334, 46.571594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183685, 33.259224, 46.385742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787157, -0.339193, -0.515104,
		-0.612038, 0.326531, 0.720268,
		-0.076112, 0.882228, -0.464630,
		38.160851, 33.523891, 46.246353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394871, 33.177559, 46.619778>,  <38.214130, 32.906334, 46.571594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394871, 33.177559, 46.619778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.552559, 33.386261, 46.317158>,  <37.647171, 33.511482, 46.135586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.552559, 33.386261, 46.317158>,  <37.394871, 33.177559, 46.619778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552559, 33.386261, 46.317158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751969, -0.290127, -0.591920,
		-0.528332, 0.802246, 0.277971,
		0.394218, 0.521755, -0.756547,
		37.670826, 33.542786, 46.090195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836849, 33.367306, 46.289062>,  <37.394871, 33.177559, 46.619778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836849, 33.367306, 46.289062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.117081, 33.441425, 46.013424>,  <37.285221, 33.485897, 45.848042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.117081, 33.441425, 46.013424>,  <36.836849, 33.367306, 46.289062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117081, 33.441425, 46.013424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676546, -0.134542, -0.724006,
		-0.226868, 0.973429, 0.031104,
		0.700583, 0.185297, -0.689093,
		37.327255, 33.497013, 45.806698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464951, 33.959003, 46.458183>,  <36.836849, 33.367306, 46.289062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464951, 33.959003, 46.458183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133320, 34.024220, 46.672115>,  <35.934341, 34.063347, 46.800476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133320, 34.024220, 46.672115>,  <36.464951, 33.959003, 46.458183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133320, 34.024220, 46.672115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553814, 0.107844, 0.825627,
		0.076928, 0.980708, -0.179703,
		-0.829079, 0.163036, 0.534834,
		35.884598, 34.073132, 46.832565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645340, 34.543110, 46.937244>,  <36.464951, 33.959003, 46.458183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645340, 34.543110, 46.937244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.339119, 34.357796, 47.115814>,  <36.155388, 34.246605, 47.222954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.339119, 34.357796, 47.115814>,  <36.645340, 34.543110, 46.937244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339119, 34.357796, 47.115814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359936, 0.266720, 0.894039,
		-0.533268, 0.845117, -0.037434,
		-0.765553, -0.463289, 0.446421,
		36.109451, 34.218807, 47.249741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320072, 34.974976, 47.324158>,  <36.645340, 34.543110, 46.937244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320072, 34.974976, 47.324158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205826, 34.630615, 47.492573>,  <36.137280, 34.424000, 47.593620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205826, 34.630615, 47.492573>,  <36.320072, 34.974976, 47.324158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205826, 34.630615, 47.492573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235892, 0.362669, 0.901569,
		-0.928860, 0.356818, 0.099497,
		-0.285612, -0.860902, 0.421039,
		36.120144, 34.372345, 47.618885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811451, 35.139862, 47.762039>,  <36.320072, 34.974976, 47.324158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811451, 35.139862, 47.762039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.962257, 34.790031, 47.884003>,  <36.052742, 34.580132, 47.957180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.962257, 34.790031, 47.884003>,  <35.811451, 35.139862, 47.762039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962257, 34.790031, 47.884003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172317, 0.389687, 0.904683,
		-0.910037, -0.288537, 0.297623,
		0.377015, -0.874580, 0.304909,
		36.075363, 34.527657, 47.975475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458141, 34.965019, 48.446468>,  <35.811451, 35.139862, 47.762039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458141, 34.965019, 48.446468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.802380, 34.762089, 48.464375>,  <36.008923, 34.640331, 48.475117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.802380, 34.762089, 48.464375>,  <35.458141, 34.965019, 48.446468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802380, 34.762089, 48.464375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075229, 0.213563, 0.974029,
		-0.503706, -0.834875, 0.221956,
		0.860594, -0.507322, 0.044766,
		36.060558, 34.609894, 48.477806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501057, 34.722263, 49.091335>,  <35.458141, 34.965019, 48.446468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501057, 34.722263, 49.091335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.879818, 34.647846, 48.986446>,  <36.107075, 34.603195, 48.923515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.879818, 34.647846, 48.986446>,  <35.501057, 34.722263, 49.091335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879818, 34.647846, 48.986446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289955, 0.141772, 0.946481,
		-0.138913, -0.972259, 0.188189,
		0.946905, -0.186045, -0.262218,
		36.163891, 34.592033, 48.907780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835594, 34.276619, 49.664619>,  <35.501057, 34.722263, 49.091335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835594, 34.276619, 49.664619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.172821, 34.419075, 49.503422>,  <36.375156, 34.504547, 49.406704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.172821, 34.419075, 49.503422>,  <35.835594, 34.276619, 49.664619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172821, 34.419075, 49.503422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389181, 0.113183, 0.914181,
		0.371187, -0.927553, -0.043182,
		0.843065, 0.356138, -0.402998,
		36.425739, 34.525917, 49.382523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410309, 34.008526, 50.080433>,  <35.835594, 34.276619, 49.664619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410309, 34.008526, 50.080433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577152, 34.303967, 49.868587>,  <36.677258, 34.481232, 49.741478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577152, 34.303967, 49.868587>,  <36.410309, 34.008526, 50.080433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577152, 34.303967, 49.868587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651710, 0.163102, 0.740724,
		0.633481, -0.654115, -0.413323,
		0.417104, 0.738601, -0.529615,
		36.702282, 34.525547, 49.709702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152569, 33.827908, 49.939423>,  <36.410309, 34.008526, 50.080433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152569, 33.827908, 49.939423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101048, 34.223770, 49.914139>,  <37.070137, 34.461288, 49.898968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101048, 34.223770, 49.914139>,  <37.152569, 33.827908, 49.939423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101048, 34.223770, 49.914139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707151, 0.136346, 0.693792,
		0.695232, 0.044663, -0.717396,
		-0.128801, 0.989654, -0.063208,
		37.062408, 34.520668, 49.895176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799347, 34.123070, 49.794559>,  <37.152569, 33.827908, 49.939423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799347, 34.123070, 49.794559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587650, 34.426773, 49.946053>,  <37.460632, 34.608994, 50.036949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587650, 34.426773, 49.946053>,  <37.799347, 34.123070, 49.794559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587650, 34.426773, 49.946053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701292, 0.140191, 0.698954,
		0.477589, 0.635516, -0.606653,
		-0.529243, 0.759254, 0.378729,
		37.428879, 34.654549, 50.059669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274380, 34.664951, 49.820415>,  <37.799347, 34.123070, 49.794559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274380, 34.664951, 49.820415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.002338, 34.746120, 50.102207>,  <37.839115, 34.794823, 50.271282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.002338, 34.746120, 50.102207>,  <38.274380, 34.664951, 49.820415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002338, 34.746120, 50.102207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666916, -0.227801, 0.709457,
		0.304447, 0.952328, 0.019593,
		-0.680099, 0.202925, 0.704476,
		37.798309, 34.806999, 50.313549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570522, 35.035381, 50.302204>,  <38.274380, 34.664951, 49.820415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570522, 35.035381, 50.302204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.258808, 34.905785, 50.516769>,  <38.071781, 34.828026, 50.645508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.258808, 34.905785, 50.516769>,  <38.570522, 35.035381, 50.302204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258808, 34.905785, 50.516769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564397, 0.009135, 0.825453,
		-0.272339, 0.946016, 0.175740,
		-0.779286, -0.323991, 0.536417,
		38.025021, 34.808586, 50.677696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468094, 35.578041, 50.786938>,  <38.570522, 35.035381, 50.302204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468094, 35.578041, 50.786938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314678, 35.239426, 50.934597>,  <38.222630, 35.036255, 51.023193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314678, 35.239426, 50.934597>,  <38.468094, 35.578041, 50.786938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314678, 35.239426, 50.934597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562440, 0.102926, 0.820407,
		-0.732501, 0.522281, 0.436651,
		-0.383541, -0.846539, 0.369145,
		38.199615, 34.985462, 51.045341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128277, 35.859245, 51.384579>,  <38.468094, 35.578041, 50.786938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128277, 35.859245, 51.384579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.258415, 35.482231, 51.414993>,  <38.336498, 35.256023, 51.433243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.258415, 35.482231, 51.414993>,  <38.128277, 35.859245, 51.384579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258415, 35.482231, 51.414993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498116, 0.239178, 0.833471,
		-0.803761, -0.233290, 0.547306,
		0.325344, -0.942534, 0.076037,
		38.356018, 35.199471, 51.437805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510849, 36.150429, 51.031712>,  <38.128277, 35.859245, 51.384579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510849, 36.150429, 51.031712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485695, 36.535767, 51.136024>,  <37.470604, 36.766972, 51.198612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485695, 36.535767, 51.136024>,  <37.510849, 36.150429, 51.031712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485695, 36.535767, 51.136024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440722, 0.207634, -0.873299,
		-0.895438, -0.169850, 0.411512,
		-0.062886, 0.963348, 0.260780,
		37.466827, 36.824772, 51.214260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904831, 36.337036, 50.853237>,  <37.510849, 36.150429, 51.031712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904831, 36.337036, 50.853237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.122475, 36.671318, 50.883018>,  <37.253063, 36.871887, 50.900887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.122475, 36.671318, 50.883018>,  <36.904831, 36.337036, 50.853237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122475, 36.671318, 50.883018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454199, 0.368006, -0.811341,
		-0.705439, 0.407644, 0.579812,
		0.544113, 0.835702, 0.074455,
		37.285709, 36.922028, 50.905354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538898, 36.834423, 50.665211>,  <36.904831, 36.337036, 50.853237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538898, 36.834423, 50.665211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.881611, 37.035934, 50.621162>,  <37.087238, 37.156841, 50.594734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.881611, 37.035934, 50.621162>,  <36.538898, 36.834423, 50.665211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881611, 37.035934, 50.621162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363255, 0.438054, -0.822286,
		-0.366012, 0.744524, 0.558318,
		0.856785, 0.503778, -0.110119,
		37.138645, 37.187069, 50.588127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379116, 37.485386, 50.519985>,  <36.538898, 36.834423, 50.665211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379116, 37.485386, 50.519985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.754574, 37.483715, 50.382038>,  <36.979847, 37.482712, 50.299271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.754574, 37.483715, 50.382038>,  <36.379116, 37.485386, 50.519985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754574, 37.483715, 50.382038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330131, 0.278522, -0.901909,
		0.099817, 0.960421, 0.260055,
		0.938643, -0.004173, -0.344866,
		37.036167, 37.482464, 50.278580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253525, 37.953423, 49.981213>,  <36.379116, 37.485386, 50.519985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253525, 37.953423, 49.981213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620129, 37.833103, 49.875736>,  <36.840092, 37.760910, 49.812450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620129, 37.833103, 49.875736>,  <36.253525, 37.953423, 49.981213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620129, 37.833103, 49.875736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184579, 0.266831, -0.945903,
		0.354888, 0.915599, 0.189032,
		0.916507, -0.300799, -0.263695,
		36.895081, 37.742863, 49.796627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599190, 38.576252, 49.817097>,  <36.253525, 37.953423, 49.981213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599190, 38.576252, 49.817097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.734818, 38.247936, 49.633213>,  <36.816196, 38.050945, 49.522881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.734818, 38.247936, 49.633213>,  <36.599190, 38.576252, 49.817097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734818, 38.247936, 49.633213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322334, 0.357722, -0.876434,
		0.883816, 0.445357, -0.143273,
		0.339074, -0.820788, -0.459714,
		36.836540, 38.001701, 49.495300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933113, 38.786190, 49.150780>,  <36.599190, 38.576252, 49.817097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933113, 38.786190, 49.150780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896446, 38.389252, 49.117691>,  <36.874447, 38.151089, 49.097836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896446, 38.389252, 49.117691>,  <36.933113, 38.786190, 49.150780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896446, 38.389252, 49.117691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444046, 0.115094, -0.888581,
		0.891302, -0.044724, -0.451199,
		-0.091672, -0.992347, -0.082724,
		36.868946, 38.091549, 49.092873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608654, 38.773598, 48.712791>,  <36.933113, 38.786190, 49.150780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608654, 38.773598, 48.712791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.659340, 39.166470, 48.657261>,  <37.689751, 39.402191, 48.623943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.659340, 39.166470, 48.657261>,  <37.608654, 38.773598, 48.712791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659340, 39.166470, 48.657261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712183, 0.007338, 0.701956,
		0.690463, -0.187818, -0.698560,
		0.126714, 0.982177, -0.138828,
		37.697353, 39.461121, 48.615612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345779, 38.951958, 48.460670>,  <37.608654, 38.773598, 48.712791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345779, 38.951958, 48.460670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171391, 39.253468, 48.657345>,  <38.066757, 39.434376, 48.775349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171391, 39.253468, 48.657345>,  <38.345779, 38.951958, 48.460670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171391, 39.253468, 48.657345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741337, -0.008963, 0.671073,
		0.510247, 0.657070, -0.554895,
		-0.435968, 0.753777, 0.491683,
		38.040600, 39.479599, 48.804852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826969, 39.355881, 48.834587>,  <38.345779, 38.951958, 48.460670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826969, 39.355881, 48.834587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.511696, 39.499832, 49.034290>,  <38.322533, 39.586205, 49.154110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.511696, 39.499832, 49.034290>,  <38.826969, 39.355881, 48.834587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511696, 39.499832, 49.034290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539787, 0.014558, 0.841676,
		0.295633, 0.932885, -0.205732,
		-0.788182, 0.359879, 0.499256,
		38.275242, 39.607796, 49.184067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053715, 39.953739, 49.306103>,  <38.826969, 39.355881, 48.834587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053715, 39.953739, 49.306103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.689579, 39.868141, 49.447803>,  <38.471100, 39.816784, 49.532825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.689579, 39.868141, 49.447803>,  <39.053715, 39.953739, 49.306103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689579, 39.868141, 49.447803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378473, -0.084069, 0.921786,
		-0.167471, 0.973211, 0.157521,
		-0.910336, -0.213990, 0.354256,
		38.416477, 39.803944, 49.554081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838734, 40.523251, 49.801487>,  <39.053715, 39.953739, 49.306103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838734, 40.523251, 49.801487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.657478, 40.176991, 49.886639>,  <38.548725, 39.969234, 49.937729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.657478, 40.176991, 49.886639>,  <38.838734, 40.523251, 49.801487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657478, 40.176991, 49.886639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408801, 0.010419, 0.912564,
		-0.792180, 0.500540, 0.349158,
		-0.453137, -0.865651, 0.212875,
		38.521538, 39.917294, 49.950500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724003, 40.529312, 50.481808>,  <38.838734, 40.523251, 49.801487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724003, 40.529312, 50.481808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630493, 40.142483, 50.441574>,  <38.574387, 39.910385, 50.417435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630493, 40.142483, 50.441574>,  <38.724003, 40.529312, 50.481808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630493, 40.142483, 50.441574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255482, -0.160914, 0.953329,
		-0.938126, 0.197164, 0.284687,
		-0.233772, -0.967075, -0.100586,
		38.560360, 39.852360, 50.411400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635178, 40.293072, 51.118679>,  <38.724003, 40.529312, 50.481808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635178, 40.293072, 51.118679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706917, 39.946117, 50.933006>,  <38.749962, 39.737946, 50.821602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706917, 39.946117, 50.933006>,  <38.635178, 40.293072, 51.118679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706917, 39.946117, 50.933006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520614, -0.316673, 0.792893,
		-0.834743, -0.383864, 0.394781,
		0.179347, -0.867390, -0.464186,
		38.760719, 39.685902, 50.793751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485638, 39.787395, 51.606617>,  <38.635178, 40.293072, 51.118679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485638, 39.787395, 51.606617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.716900, 39.582138, 51.352867>,  <38.855656, 39.458984, 51.200619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.716900, 39.582138, 51.352867>,  <38.485638, 39.787395, 51.606617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716900, 39.582138, 51.352867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369894, -0.528164, 0.764344,
		-0.727267, -0.676558, -0.115552,
		0.578153, -0.513140, -0.634371,
		38.890347, 39.428196, 51.162556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557693, 39.191772, 51.957039>,  <38.485638, 39.787395, 51.606617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557693, 39.191772, 51.957039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.859253, 39.189243, 51.694256>,  <39.040188, 39.187725, 51.536587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.859253, 39.189243, 51.694256>,  <38.557693, 39.191772, 51.957039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859253, 39.189243, 51.694256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607691, -0.373336, 0.700951,
		-0.249702, -0.927675, -0.277613,
		0.753897, -0.006326, -0.656962,
		39.085423, 39.187344, 51.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.864513, 38.213734, 36.099258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234413, 38.062302, 36.114841>,  <35.456352, 37.971443, 36.124191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234413, 38.062302, 36.114841>,  <34.864513, 38.213734, 36.099258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234413, 38.062302, 36.114841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134976, 0.421957, 0.896512,
		-0.355839, -0.823790, 0.441303,
		0.924748, -0.378579, 0.038957,
		35.511837, 37.948727, 36.126530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002346, 37.665298, 36.684956>,  <34.864513, 38.213734, 36.099258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002346, 37.665298, 36.684956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312309, 37.903282, 36.599594>,  <35.498287, 38.046074, 36.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312309, 37.903282, 36.599594>,  <35.002346, 37.665298, 36.684956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312309, 37.903282, 36.599594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001197, 0.336242, 0.941774,
		0.632076, -0.730041, 0.259844,
		0.774905, 0.594962, -0.213405,
		35.544781, 38.081772, 36.535572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473118, 37.564072, 37.332867>,  <35.002346, 37.665298, 36.684956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473118, 37.564072, 37.332867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554867, 37.896351, 37.125725>,  <35.603916, 38.095718, 37.001438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554867, 37.896351, 37.125725>,  <35.473118, 37.564072, 37.332867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554867, 37.896351, 37.125725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120977, 0.503531, 0.855466,
		0.971390, -0.237479, 0.002411,
		0.204369, 0.830699, -0.517854,
		35.616177, 38.145561, 36.970367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217579, 37.703133, 37.510429>,  <35.473118, 37.564072, 37.332867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217579, 37.703133, 37.510429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038994, 38.031227, 37.367386>,  <35.931843, 38.228085, 37.281559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038994, 38.031227, 37.367386>,  <36.217579, 37.703133, 37.510429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038994, 38.031227, 37.367386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187411, 0.476498, 0.858969,
		0.874958, 0.316475, -0.366458,
		-0.446459, 0.820240, -0.357605,
		35.905056, 38.277298, 37.260105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591343, 38.185986, 37.837540>,  <36.217579, 37.703133, 37.510429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591343, 38.185986, 37.837540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304752, 38.431522, 37.704964>,  <36.132797, 38.578846, 37.625420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304752, 38.431522, 37.704964>,  <36.591343, 38.185986, 37.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304752, 38.431522, 37.704964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012855, 0.463408, 0.886052,
		0.697490, 0.639099, -0.324131,
		-0.716480, 0.613845, -0.331437,
		36.089809, 38.615677, 37.605534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794693, 38.929157, 37.940632>,  <36.591343, 38.185986, 37.837540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794693, 38.929157, 37.940632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394962, 38.937756, 37.928776>,  <36.155125, 38.942913, 37.921661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394962, 38.937756, 37.928776>,  <36.794693, 38.929157, 37.940632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394962, 38.937756, 37.928776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012821, 0.552739, 0.833256,
		0.034294, 0.833077, -0.552093,
		-0.999330, 0.021497, -0.029637,
		36.095165, 38.944206, 37.919884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620956, 39.596283, 38.106441>,  <36.794693, 38.929157, 37.940632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620956, 39.596283, 38.106441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276367, 39.411861, 38.191578>,  <36.069614, 39.301208, 38.242661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276367, 39.411861, 38.191578>,  <36.620956, 39.596283, 38.106441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276367, 39.411861, 38.191578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146438, 0.626881, 0.765229,
		-0.486234, 0.628055, -0.607555,
		-0.861471, -0.461050, 0.212839,
		36.017925, 39.273548, 38.255428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147217, 40.202106, 38.333344>,  <36.620956, 39.596283, 38.106441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147217, 40.202106, 38.333344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988857, 39.859592, 38.466030>,  <35.893841, 39.654083, 38.545643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988857, 39.859592, 38.466030>,  <36.147217, 40.202106, 38.333344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988857, 39.859592, 38.466030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207345, 0.435262, 0.876102,
		-0.894579, 0.278067, -0.349866,
		-0.395899, -0.856286, 0.331721,
		35.870087, 39.602707, 38.565548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635029, 40.382389, 38.693001>,  <36.147217, 40.202106, 38.333344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635029, 40.382389, 38.693001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714790, 40.013351, 38.825100>,  <35.762646, 39.791927, 38.904358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714790, 40.013351, 38.825100>,  <35.635029, 40.382389, 38.693001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714790, 40.013351, 38.825100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181481, 0.296414, 0.937658,
		-0.962966, -0.246902, -0.108328,
		0.199400, -0.922593, 0.330245,
		35.774609, 39.736572, 38.924175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066170, 40.208431, 39.143627>,  <35.635029, 40.382389, 38.693001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066170, 40.208431, 39.143627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369747, 39.974190, 39.257519>,  <35.551895, 39.833645, 39.325855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369747, 39.974190, 39.257519>,  <35.066170, 40.208431, 39.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369747, 39.974190, 39.257519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084745, 0.344722, 0.934872,
		-0.645620, -0.733643, 0.211997,
		0.758942, -0.585606, 0.284732,
		35.597431, 39.798508, 39.342937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758789, 39.820549, 39.619171>,  <35.066170, 40.208431, 39.143627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758789, 39.820549, 39.619171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155251, 39.802567, 39.669109>,  <35.393127, 39.791775, 39.699074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155251, 39.802567, 39.669109>,  <34.758789, 39.820549, 39.619171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155251, 39.802567, 39.669109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111615, 0.226404, 0.967617,
		-0.071771, -0.972995, 0.219384,
		0.991156, -0.044960, 0.124850,
		35.452599, 39.789078, 39.706566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948334, 39.307446, 40.087597>,  <34.758789, 39.820549, 39.619171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948334, 39.307446, 40.087597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266186, 39.549664, 40.104900>,  <35.456898, 39.694996, 40.115284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266186, 39.549664, 40.104900>,  <34.948334, 39.307446, 40.087597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266186, 39.549664, 40.104900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035735, -0.117788, 0.992395,
		0.606035, -0.787046, -0.115237,
		0.794635, 0.605545, 0.043259,
		35.504578, 39.731327, 40.117878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472069, 38.837563, 40.477573>,  <34.948334, 39.307446, 40.087597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472069, 38.837563, 40.477573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189106, 38.617718, 40.655338>,  <34.019329, 38.485813, 40.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189106, 38.617718, 40.655338>,  <34.472069, 38.837563, 40.477573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189106, 38.617718, 40.655338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541768, 0.017811, -0.840339,
		0.453944, -0.835231, -0.310361,
		-0.707405, -0.549610, 0.444417,
		33.976883, 38.452835, 40.788662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217125, 38.292393, 39.997463>,  <34.472069, 38.837563, 40.477573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217125, 38.292393, 39.997463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919338, 38.369621, 40.253117>,  <33.740665, 38.415958, 40.406509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919338, 38.369621, 40.253117>,  <34.217125, 38.292393, 39.997463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919338, 38.369621, 40.253117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663114, -0.325315, -0.674129,
		0.077768, -0.925686, 0.370212,
		-0.744468, 0.193067, 0.639134,
		33.695999, 38.427540, 40.444859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775291, 37.604195, 40.038399>,  <34.217125, 38.292393, 39.997463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775291, 37.604195, 40.038399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566364, 37.926620, 40.149712>,  <33.441006, 38.120075, 40.216499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566364, 37.926620, 40.149712>,  <33.775291, 37.604195, 40.038399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566364, 37.926620, 40.149712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766235, -0.300416, -0.568009,
		-0.374251, -0.509913, 0.774548,
		-0.522322, 0.806064, 0.278282,
		33.409668, 38.168438, 40.233196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176235, 37.200233, 40.278038>,  <33.775291, 37.604195, 40.038399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176235, 37.200233, 40.278038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054901, 37.580116, 40.246964>,  <32.982101, 37.808048, 40.228321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054901, 37.580116, 40.246964>,  <33.176235, 37.200233, 40.278038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054901, 37.580116, 40.246964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812761, -0.300424, -0.499164,
		-0.497400, -0.088277, 0.863018,
		-0.303336, 0.949712, -0.077683,
		32.963902, 37.865028, 40.223660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519966, 37.190674, 40.459381>,  <33.176235, 37.200233, 40.278038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519966, 37.190674, 40.459381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561340, 37.500050, 40.209232>,  <32.586166, 37.685677, 40.059143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561340, 37.500050, 40.209232>,  <32.519966, 37.190674, 40.459381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561340, 37.500050, 40.209232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710474, -0.382566, -0.590653,
		-0.696081, 0.505405, 0.509938,
		0.103434, 0.773440, -0.625374,
		32.592369, 37.732082, 40.021622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824432, 37.557510, 40.255497>,  <32.519966, 37.190674, 40.459381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824432, 37.557510, 40.255497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095104, 37.621834, 39.968098>,  <32.257507, 37.660427, 39.795658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095104, 37.621834, 39.968098>,  <31.824432, 37.557510, 40.255497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095104, 37.621834, 39.968098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641752, -0.349534, -0.682627,
		-0.360914, 0.923020, -0.133322,
		0.676679, 0.160810, -0.718502,
		32.298107, 37.670078, 39.752548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423893, 37.824429, 39.823978>,  <31.824432, 37.557510, 40.255497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423893, 37.824429, 39.823978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732195, 37.710224, 39.596146>,  <31.917175, 37.641701, 39.459446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732195, 37.710224, 39.596146>,  <31.423893, 37.824429, 39.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732195, 37.710224, 39.596146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636277, -0.391254, -0.664885,
		-0.033019, 0.874874, -0.483224,
		0.770754, -0.285510, -0.569581,
		31.963421, 37.624573, 39.425270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142906, 37.847324, 39.231567>,  <31.423893, 37.824429, 39.823978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142906, 37.847324, 39.231567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479723, 37.651733, 39.140472>,  <31.681812, 37.534378, 39.085815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479723, 37.651733, 39.140472>,  <31.142906, 37.847324, 39.231567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479723, 37.651733, 39.140472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484942, -0.501344, -0.716579,
		0.236215, 0.713830, -0.659279,
		0.842041, -0.488979, -0.227741,
		31.732336, 37.505039, 39.072151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013407, 37.770428, 38.541428>,  <31.142906, 37.847324, 39.231567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013407, 37.770428, 38.541428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301571, 37.521416, 38.663719>,  <31.474470, 37.372009, 38.737095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301571, 37.521416, 38.663719>,  <31.013407, 37.770428, 38.541428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301571, 37.521416, 38.663719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307602, -0.681888, -0.663634,
		0.621603, 0.384045, -0.682729,
		0.720410, -0.622526, 0.305730,
		31.517694, 37.334660, 38.755440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460093, 37.577751, 37.982620>,  <31.013407, 37.770428, 38.541428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460093, 37.577751, 37.982620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450634, 37.267773, 38.235256>,  <31.444960, 37.081787, 38.386837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450634, 37.267773, 38.235256>,  <31.460093, 37.577751, 37.982620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450634, 37.267773, 38.235256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236790, -0.609445, -0.756642,
		0.971273, -0.167445, -0.169088,
		-0.023646, -0.774945, 0.631587,
		31.443541, 37.035290, 38.424732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572628, 36.988686, 37.637066>,  <31.460093, 37.577751, 37.982620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572628, 36.988686, 37.637066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458534, 36.793823, 37.967236>,  <31.390078, 36.676907, 38.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458534, 36.793823, 37.967236>,  <31.572628, 36.988686, 37.637066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458534, 36.793823, 37.967236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572200, -0.604335, -0.554407,
		0.768913, -0.630442, -0.106373,
		-0.285237, -0.487157, 0.825420,
		31.372963, 36.647675, 38.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576223, 36.199638, 37.498898>,  <31.572628, 36.988686, 37.637066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576223, 36.199638, 37.498898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326866, 36.240055, 37.809040>,  <31.177252, 36.264305, 37.995125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326866, 36.240055, 37.809040>,  <31.576223, 36.199638, 37.498898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326866, 36.240055, 37.809040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597472, -0.701223, -0.388991,
		0.504391, -0.705746, 0.497506,
		-0.623392, 0.101043, 0.775354,
		31.139849, 36.270367, 38.041645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207821, 35.709728, 37.453930>,  <31.576223, 36.199638, 37.498898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207821, 35.709728, 37.453930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960342, 35.904648, 37.700428>,  <30.811855, 36.021599, 37.848328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960342, 35.904648, 37.700428>,  <31.207821, 35.709728, 37.453930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960342, 35.904648, 37.700428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777850, -0.490087, -0.393402,
		0.110306, -0.722738, 0.682262,
		-0.618694, 0.487303, 0.616241,
		30.774734, 36.050838, 37.885300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824320, 35.255539, 37.893959>,  <31.207821, 35.709728, 37.453930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824320, 35.255539, 37.893959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606030, 35.590515, 37.882172>,  <30.475056, 35.791500, 37.875099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606030, 35.590515, 37.882172>,  <30.824320, 35.255539, 37.893959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606030, 35.590515, 37.882172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669932, -0.457151, -0.584983,
		-0.503364, -0.299496, 0.810510,
		-0.545726, 0.837446, -0.029471,
		30.442310, 35.841747, 37.873333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058754, 35.049309, 37.913200>,  <30.824320, 35.255539, 37.893959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058754, 35.049309, 37.913200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060904, 35.419262, 37.761116>,  <30.062193, 35.641235, 37.669865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060904, 35.419262, 37.761116>,  <30.058754, 35.049309, 37.913200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060904, 35.419262, 37.761116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745046, -0.249898, -0.618431,
		-0.666991, 0.286597, 0.687739,
		0.005376, 0.924886, -0.380207,
		30.062517, 35.696728, 37.647053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477324, 34.517437, 37.666626>,  <30.058754, 35.049309, 37.913200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477324, 34.517437, 37.666626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598816, 34.204807, 37.448673>,  <30.671711, 34.017231, 37.317902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598816, 34.204807, 37.448673>,  <30.477324, 34.517437, 37.666626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598816, 34.204807, 37.448673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734054, -0.556547, 0.389129,
		-0.607383, 0.281780, -0.742756,
		0.303729, -0.781573, -0.544879,
		30.689934, 33.970337, 37.285210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031521, 34.336464, 38.167202>,  <30.477324, 34.517437, 37.666626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031521, 34.336464, 38.167202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379074, 34.138474, 38.169765>,  <30.587606, 34.019680, 38.171303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379074, 34.138474, 38.169765>,  <30.031521, 34.336464, 38.167202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379074, 34.138474, 38.169765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008244, -0.001523, 0.999965,
		-0.494945, -0.868908, -0.005404,
		0.868885, -0.494972, 0.006409,
		30.639740, 33.989983, 38.171688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077284, 33.902893, 38.776184>,  <30.031521, 34.336464, 38.167202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077284, 33.902893, 38.776184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457239, 33.924820, 38.653088>,  <30.685213, 33.937977, 38.579227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457239, 33.924820, 38.653088>,  <30.077284, 33.902893, 38.776184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457239, 33.924820, 38.653088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312061, -0.223461, 0.923408,
		-0.018147, -0.973170, -0.229371,
		0.949888, 0.054820, -0.307744,
		30.742207, 33.941265, 38.560764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363560, 33.218983, 38.943584>,  <30.077284, 33.902893, 38.776184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363560, 33.218983, 38.943584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621811, 33.524082, 38.958408>,  <30.776762, 33.707142, 38.967304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621811, 33.524082, 38.958408>,  <30.363560, 33.218983, 38.943584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621811, 33.524082, 38.958408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273198, -0.276019, 0.921508,
		0.713110, -0.584828, -0.386588,
		0.645629, 0.762751, 0.037059,
		30.815500, 33.752907, 38.969524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930655, 32.980793, 39.268887>,  <30.363560, 33.218983, 38.943584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930655, 32.980793, 39.268887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010199, 33.372364, 39.287418>,  <31.057924, 33.607307, 39.298538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010199, 33.372364, 39.287418>,  <30.930655, 32.980793, 39.268887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010199, 33.372364, 39.287418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433735, -0.130308, 0.891568,
		0.878822, -0.157201, -0.450510,
		0.198860, 0.978932, 0.046334,
		31.069857, 33.666042, 39.301319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620396, 33.009594, 39.452583>,  <30.930655, 32.980793, 39.268887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620396, 33.009594, 39.452583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487783, 33.362434, 39.586441>,  <31.408216, 33.574139, 39.666756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487783, 33.362434, 39.586441>,  <31.620396, 33.009594, 39.452583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487783, 33.362434, 39.586441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429592, -0.174656, 0.885972,
		0.839963, 0.437489, -0.321039,
		-0.331531, 0.882099, 0.334647,
		31.388325, 33.627064, 39.686836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090088, 33.317062, 39.886101>,  <31.620396, 33.009594, 39.452583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090088, 33.317062, 39.886101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771900, 33.528595, 40.004471>,  <31.580988, 33.655514, 40.075493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771900, 33.528595, 40.004471>,  <32.090088, 33.317062, 39.886101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771900, 33.528595, 40.004471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267141, -0.132312, 0.954531,
		0.543936, 0.838353, -0.036021,
		-0.795468, 0.528827, 0.295928,
		31.533260, 33.687244, 40.093250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342579, 33.689407, 40.333267>,  <32.090088, 33.317062, 39.886101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342579, 33.689407, 40.333267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950209, 33.683914, 40.410831>,  <31.714787, 33.680618, 40.457371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950209, 33.683914, 40.410831>,  <32.342579, 33.689407, 40.333267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950209, 33.683914, 40.410831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194393, -0.077909, 0.977825,
		0.001679, 0.996866, 0.079092,
		-0.980922, -0.013733, 0.193915,
		31.655931, 33.679794, 40.469006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192806, 34.130848, 40.805027>,  <32.342579, 33.689407, 40.333267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192806, 34.130848, 40.805027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858690, 33.914574, 40.844944>,  <31.658222, 33.784809, 40.868896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858690, 33.914574, 40.844944>,  <32.192806, 34.130848, 40.805027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858690, 33.914574, 40.844944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170654, -0.082412, 0.981879,
		-0.522659, 0.837181, 0.161107,
		-0.835287, -0.540682, 0.099794,
		31.608105, 33.752369, 40.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900633, 34.502811, 41.303795>,  <32.192806, 34.130848, 40.805027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900633, 34.502811, 41.303795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729355, 34.141380, 41.309345>,  <31.626589, 33.924522, 41.312675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729355, 34.141380, 41.309345>,  <31.900633, 34.502811, 41.303795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729355, 34.141380, 41.309345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154306, -0.057981, 0.986320,
		-0.890416, 0.424476, 0.164255,
		-0.428193, -0.903581, 0.013872,
		31.600897, 33.870308, 41.313507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401281, 34.460022, 41.976490>,  <31.900633, 34.502811, 41.303795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401281, 34.460022, 41.976490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473175, 34.088097, 41.848030>,  <31.516312, 33.864941, 41.770954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473175, 34.088097, 41.848030>,  <31.401281, 34.460022, 41.976490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473175, 34.088097, 41.848030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215956, -0.281205, 0.935033,
		-0.959718, -0.237413, 0.150257,
		0.179736, -0.929817, -0.321148,
		31.527096, 33.809151, 41.751686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182386, 34.021568, 42.493710>,  <31.401281, 34.460022, 41.976490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182386, 34.021568, 42.493710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444136, 33.778961, 42.313076>,  <31.601185, 33.633396, 42.204697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444136, 33.778961, 42.313076>,  <31.182386, 34.021568, 42.493710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444136, 33.778961, 42.313076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347453, -0.289253, 0.891970,
		-0.671618, -0.740587, 0.021457,
		0.654375, -0.606518, -0.451586,
		31.640448, 33.597004, 42.177601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147800, 33.469124, 42.804482>,  <31.182386, 34.021568, 42.493710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147800, 33.469124, 42.804482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496323, 33.433289, 42.611485>,  <31.705437, 33.411785, 42.495686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496323, 33.433289, 42.611485>,  <31.147800, 33.469124, 42.804482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496323, 33.433289, 42.611485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411585, -0.402031, 0.817905,
		-0.267253, -0.911233, -0.313417,
		0.871306, -0.089590, -0.482494,
		31.757713, 33.406410, 42.466736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426527, 32.755917, 42.834099>,  <31.147800, 33.469124, 42.804482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426527, 32.755917, 42.834099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715508, 33.029465, 42.793343>,  <31.888895, 33.193596, 42.768890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715508, 33.029465, 42.793343>,  <31.426527, 32.755917, 42.834099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715508, 33.029465, 42.793343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476330, -0.385462, 0.790272,
		0.501173, -0.619464, -0.604227,
		0.722451, 0.683874, -0.101886,
		31.932243, 33.234627, 42.762775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992250, 32.334473, 43.105209>,  <31.426527, 32.755917, 42.834099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992250, 32.334473, 43.105209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118534, 32.712353, 43.069710>,  <32.194305, 32.939079, 43.048409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118534, 32.712353, 43.069710>,  <31.992250, 32.334473, 43.105209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118534, 32.712353, 43.069710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550103, -0.106023, 0.828339,
		0.773119, -0.310336, -0.553153,
		0.315711, 0.944696, -0.088749,
		32.213249, 32.995762, 43.043083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786148, 32.344452, 43.215485>,  <31.992250, 32.334473, 43.105209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786148, 32.344452, 43.215485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676613, 32.722641, 43.286011>,  <32.610889, 32.949554, 43.328327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676613, 32.722641, 43.286011>,  <32.786148, 32.344452, 43.215485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676613, 32.722641, 43.286011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611058, 0.029471, 0.791037,
		0.742711, 0.324354, -0.585812,
		-0.273840, 0.945477, 0.176311,
		32.594460, 33.006283, 43.338905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426113, 32.761871, 43.165985>,  <32.786148, 32.344452, 43.215485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426113, 32.761871, 43.165985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174583, 32.967045, 43.399731>,  <33.023666, 33.090149, 43.539978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174583, 32.967045, 43.399731>,  <33.426113, 32.761871, 43.165985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174583, 32.967045, 43.399731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761553, 0.254639, 0.595983,
		0.156900, 0.819790, -0.550751,
		-0.628823, 0.512936, 0.584361,
		32.985935, 33.120926, 43.575039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819469, 33.351284, 43.388893>,  <33.426113, 32.761871, 43.165985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819469, 33.351284, 43.388893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521446, 33.354233, 43.655678>,  <33.342632, 33.356003, 43.815750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521446, 33.354233, 43.655678>,  <33.819469, 33.351284, 43.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521446, 33.354233, 43.655678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616677, 0.388651, 0.684588,
		-0.254166, 0.921356, -0.294115,
		-0.745057, 0.007375, 0.666961,
		33.297928, 33.356445, 43.855766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855541, 34.016006, 43.805981>,  <33.819469, 33.351284, 43.388893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855541, 34.016006, 43.805981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644447, 33.766613, 44.036720>,  <33.517792, 33.616978, 44.175163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644447, 33.766613, 44.036720>,  <33.855541, 34.016006, 43.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644447, 33.766613, 44.036720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531286, 0.287588, 0.796886,
		-0.662741, 0.727023, 0.179477,
		-0.527740, -0.623483, 0.576853,
		33.486126, 33.579567, 44.209778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623230, 34.453651, 44.333679>,  <33.855541, 34.016006, 43.805981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623230, 34.453651, 44.333679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611919, 34.076027, 44.465099>,  <33.605133, 33.849453, 44.543953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611919, 34.076027, 44.465099>,  <33.623230, 34.453651, 44.333679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611919, 34.076027, 44.465099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435956, 0.284127, 0.853941,
		-0.899524, 0.167383, 0.403534,
		-0.028280, -0.944063, 0.328550,
		33.603436, 33.792809, 44.563663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457943, 34.542637, 45.027153>,  <33.623230, 34.453651, 44.333679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457943, 34.542637, 45.027153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604073, 34.170982, 45.004398>,  <33.691750, 33.947990, 44.990746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604073, 34.170982, 45.004398>,  <33.457943, 34.542637, 45.027153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604073, 34.170982, 45.004398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445195, 0.120718, 0.887259,
		-0.817521, -0.349463, 0.457750,
		0.365323, -0.929141, -0.056890,
		33.713669, 33.892239, 44.987331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405796, 34.303303, 45.693596>,  <33.457943, 34.542637, 45.027153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405796, 34.303303, 45.693596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658936, 34.055698, 45.507553>,  <33.810822, 33.907135, 45.395927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658936, 34.055698, 45.507553>,  <33.405796, 34.303303, 45.693596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658936, 34.055698, 45.507553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571577, -0.031719, 0.819935,
		-0.522302, -0.784741, 0.333740,
		0.632851, -0.619012, -0.465107,
		33.848789, 33.869995, 45.368023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474808, 33.760151, 46.212627>,  <33.405796, 34.303303, 45.693596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474808, 33.760151, 46.212627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788261, 33.744038, 45.964661>,  <33.976334, 33.734371, 45.815880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788261, 33.744038, 45.964661>,  <33.474808, 33.760151, 46.212627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788261, 33.744038, 45.964661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612845, -0.113206, 0.782052,
		-0.101667, -0.992755, -0.064036,
		0.783635, -0.040265, -0.619915,
		34.023350, 33.731953, 45.778687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975021, 33.292961, 46.488815>,  <33.474808, 33.760151, 46.212627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975021, 33.292961, 46.488815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213860, 33.490005, 46.235577>,  <34.357162, 33.608231, 46.083633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213860, 33.490005, 46.235577>,  <33.975021, 33.292961, 46.488815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213860, 33.490005, 46.235577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718311, 0.022979, 0.695343,
		0.357080, -0.869948, -0.340125,
		0.597096, 0.492609, -0.633098,
		34.392990, 33.637787, 46.045647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669468, 33.025349, 46.624470>,  <33.975021, 33.292961, 46.488815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669468, 33.025349, 46.624470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723114, 33.369156, 46.427193>,  <34.755302, 33.575439, 46.308826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723114, 33.369156, 46.427193>,  <34.669468, 33.025349, 46.624470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723114, 33.369156, 46.427193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762655, 0.228259, 0.605190,
		0.632748, -0.457304, -0.624902,
		0.134116, 0.859518, -0.493196,
		34.763348, 33.627010, 46.279232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370552, 33.072086, 46.279804>,  <34.669468, 33.025349, 46.624470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370552, 33.072086, 46.279804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250656, 33.450855, 46.326260>,  <35.178719, 33.678116, 46.354134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250656, 33.450855, 46.326260>,  <35.370552, 33.072086, 46.279804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250656, 33.450855, 46.326260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813299, 0.189992, 0.549952,
		0.498699, 0.259296, -0.827082,
		-0.299739, 0.946926, 0.116137,
		35.160736, 33.734932, 46.361099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979919, 33.517803, 46.186192>,  <35.370552, 33.072086, 46.279804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979919, 33.517803, 46.186192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727669, 33.756119, 46.385124>,  <35.576317, 33.899109, 46.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727669, 33.756119, 46.385124>,  <35.979919, 33.517803, 46.186192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727669, 33.756119, 46.385124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735603, 0.254614, 0.627742,
		0.247376, 0.761712, -0.598833,
		-0.630630, 0.595791, 0.497332,
		35.538479, 33.934856, 46.534325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513641, 33.729214, 45.686626>,  <35.979919, 33.517803, 46.186192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513641, 33.729214, 45.686626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838596, 33.553661, 45.533047>,  <37.033569, 33.448330, 45.440899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838596, 33.553661, 45.533047>,  <36.513641, 33.729214, 45.686626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838596, 33.553661, 45.533047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535188, -0.299730, -0.789769,
		0.231532, 0.847081, -0.478379,
		0.812383, -0.438880, -0.383951,
		37.082310, 33.421997, 45.417862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402676, 33.785717, 45.033882>,  <36.513641, 33.729214, 45.686626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402676, 33.785717, 45.033882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716480, 33.537842, 45.024677>,  <36.904762, 33.389114, 45.019154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716480, 33.537842, 45.024677>,  <36.402676, 33.785717, 45.033882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716480, 33.537842, 45.024677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363256, -0.429160, -0.826963,
		0.502584, 0.657120, -0.561786,
		0.784509, -0.619690, -0.023014,
		36.951832, 33.351936, 45.017773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749851, 33.769093, 44.306427>,  <36.402676, 33.785717, 45.033882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749851, 33.769093, 44.306427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828739, 33.413654, 44.472080>,  <36.876072, 33.200394, 44.571472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828739, 33.413654, 44.472080>,  <36.749851, 33.769093, 44.306427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828739, 33.413654, 44.472080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413053, -0.458421, -0.786917,
		0.889095, -0.015860, -0.457448,
		0.197223, -0.888594, 0.414130,
		36.887905, 33.147076, 44.596321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127422, 33.435360, 43.799809>,  <36.749851, 33.769093, 44.306427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127422, 33.435360, 43.799809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021973, 33.132374, 44.038723>,  <36.958702, 32.950581, 44.182072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021973, 33.132374, 44.038723>,  <37.127422, 33.435360, 43.799809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021973, 33.132374, 44.038723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354453, -0.499802, -0.790292,
		0.897142, -0.420051, -0.136725,
		-0.263627, -0.757466, 0.597282,
		36.942883, 32.905132, 44.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472897, 32.818565, 43.536148>,  <37.127422, 33.435360, 43.799809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472897, 32.818565, 43.536148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131962, 32.731911, 43.726555>,  <36.927399, 32.679920, 43.840797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131962, 32.731911, 43.726555>,  <37.472897, 32.818565, 43.536148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131962, 32.731911, 43.726555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306085, -0.531385, -0.789900,
		0.424065, -0.818963, 0.386612,
		-0.852339, -0.216633, 0.476014,
		36.876259, 32.666920, 43.869358>
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
