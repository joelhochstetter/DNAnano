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
	<24.543699, 35.327557, 35.313717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377934, 35.001717, 35.151394>,  <24.278475, 34.806213, 35.054001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377934, 35.001717, 35.151394>,  <24.543699, 35.327557, 35.313717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377934, 35.001717, 35.151394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193897, 0.514691, -0.835163,
		0.889194, -0.267417, -0.371244,
		-0.414413, -0.814604, -0.405809,
		24.253609, 34.757336, 35.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109270, 35.579395, 34.801571>,  <24.543699, 35.327557, 35.313717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109270, 35.579395, 34.801571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954536, 35.356354, 34.507782>,  <24.861696, 35.222530, 34.331509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954536, 35.356354, 34.507782>,  <25.109270, 35.579395, 34.801571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954536, 35.356354, 34.507782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879908, -0.461494, -0.113074,
		-0.275903, -0.690005, 0.669157,
		-0.386834, -0.557599, -0.734468,
		24.838486, 35.189075, 34.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557623, 35.120224, 35.160965>,  <25.109270, 35.579395, 34.801571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557623, 35.120224, 35.160965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634972, 34.848419, 35.444057>,  <25.681381, 34.685337, 35.613911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634972, 34.848419, 35.444057>,  <25.557623, 35.120224, 35.160965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634972, 34.848419, 35.444057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927047, -0.109634, -0.358558,
		0.321234, 0.725431, 0.608736,
		0.193370, -0.679508, 0.707727,
		25.692984, 34.644566, 35.656376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242117, 35.264347, 35.328667>,  <25.557623, 35.120224, 35.160965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242117, 35.264347, 35.328667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181417, 34.883873, 35.436157>,  <26.144999, 34.655586, 35.500652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181417, 34.883873, 35.436157>,  <26.242117, 35.264347, 35.328667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181417, 34.883873, 35.436157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815075, -0.274215, -0.510352,
		0.559130, 0.141588, 0.816901,
		-0.151747, -0.951188, 0.268727,
		26.135893, 34.598518, 35.516777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928856, 34.960014, 35.529629>,  <26.242117, 35.264347, 35.328667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928856, 34.960014, 35.529629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694239, 34.640583, 35.475594>,  <26.553469, 34.448925, 35.443172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694239, 34.640583, 35.475594>,  <26.928856, 34.960014, 35.529629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694239, 34.640583, 35.475594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746698, -0.468580, -0.472096,
		0.313705, -0.377773, 0.871136,
		-0.586542, -0.798574, -0.135086,
		26.518276, 34.401012, 35.435066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318024, 34.340515, 35.788490>,  <26.928856, 34.960014, 35.529629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318024, 34.340515, 35.788490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082642, 34.234108, 35.483086>,  <26.941412, 34.170265, 35.299843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082642, 34.234108, 35.483086>,  <27.318024, 34.340515, 35.788490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082642, 34.234108, 35.483086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749556, -0.533529, -0.391807,
		-0.303130, -0.802858, 0.513353,
		-0.588454, -0.266018, -0.763515,
		26.906105, 34.154305, 35.254032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297102, 33.657471, 35.767147>,  <27.318024, 34.340515, 35.788490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297102, 33.657471, 35.767147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242270, 33.821194, 35.406330>,  <27.209370, 33.919426, 35.189838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242270, 33.821194, 35.406330>,  <27.297102, 33.657471, 35.767147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242270, 33.821194, 35.406330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918662, -0.288075, -0.270321,
		-0.370499, -0.865727, -0.336523,
		-0.137080, 0.409304, -0.902042,
		27.201145, 33.943985, 35.135719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570438, 33.160435, 35.343800>,  <27.297102, 33.657471, 35.767147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570438, 33.160435, 35.343800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567442, 33.497540, 35.128510>,  <27.565643, 33.699802, 34.999336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567442, 33.497540, 35.128510>,  <27.570438, 33.160435, 35.343800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567442, 33.497540, 35.128510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900567, -0.228270, -0.369962,
		-0.434652, -0.487482, -0.757257,
		-0.007491, 0.842766, -0.538229,
		27.565195, 33.750370, 34.967041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793650, 32.950600, 34.579937>,  <27.570438, 33.160435, 35.343800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793650, 32.950600, 34.579937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863026, 33.342590, 34.619041>,  <27.904652, 33.577785, 34.642506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863026, 33.342590, 34.619041>,  <27.793650, 32.950600, 34.579937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863026, 33.342590, 34.619041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895678, -0.115686, -0.429392,
		-0.409486, 0.162036, -0.897812,
		0.173441, 0.979980, 0.097760,
		27.915058, 33.636585, 34.648369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012892, 33.267551, 33.854736>,  <27.793650, 32.950600, 34.579937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012892, 33.267551, 33.854736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110310, 33.565735, 34.102921>,  <28.168760, 33.744644, 34.251831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110310, 33.565735, 34.102921>,  <28.012892, 33.267551, 33.854736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110310, 33.565735, 34.102921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938382, -0.019378, -0.345056,
		-0.245203, 0.666266, -0.704248,
		0.243546, 0.745462, 0.620461,
		28.183374, 33.789375, 34.289059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374216, 33.853115, 33.414703>,  <28.012892, 33.267551, 33.854736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374216, 33.853115, 33.414703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476107, 33.899773, 33.798683>,  <28.537241, 33.927765, 34.029072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476107, 33.899773, 33.798683>,  <28.374216, 33.853115, 33.414703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476107, 33.899773, 33.798683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965806, 0.018903, -0.258574,
		-0.048306, 0.992994, -0.107836,
		0.254724, 0.116640, 0.959954,
		28.552525, 33.934765, 34.086670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048090, 34.145763, 33.218876>,  <28.374216, 33.853115, 33.414703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048090, 34.145763, 33.218876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131508, 34.264118, 33.591747>,  <29.181559, 34.335129, 33.815472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131508, 34.264118, 33.591747>,  <29.048090, 34.145763, 33.218876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131508, 34.264118, 33.591747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528511, -0.836077, 0.147142,
		0.822912, 0.461982, -0.330739,
		0.208546, 0.295884, 0.932181,
		29.194073, 34.352882, 33.871403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778786, 34.076988, 33.327217>,  <29.048090, 34.145763, 33.218876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778786, 34.076988, 33.327217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601820, 34.041588, 33.684189>,  <29.495642, 34.020348, 33.898373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601820, 34.041588, 33.684189>,  <29.778786, 34.076988, 33.327217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601820, 34.041588, 33.684189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633488, -0.735219, 0.241135,
		0.634794, 0.672028, 0.381334,
		-0.442413, -0.088499, 0.892434,
		29.469095, 34.015038, 33.951920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640875, 33.485573, 33.766243>,  <29.778786, 34.076988, 33.327217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640875, 33.485573, 33.766243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760731, 33.727585, 34.061310>,  <29.832644, 33.872791, 34.238350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760731, 33.727585, 34.061310>,  <29.640875, 33.485573, 33.766243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760731, 33.727585, 34.061310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939674, 0.320890, 0.118502,
		-0.165014, -0.728678, 0.664680,
		0.299639, 0.605027, 0.737671,
		29.850622, 33.909092, 34.282612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204386, 33.382328, 34.280762>,  <29.640875, 33.485573, 33.766243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204386, 33.382328, 34.280762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346090, 33.752563, 34.334114>,  <29.431112, 33.974705, 34.366127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346090, 33.752563, 34.334114>,  <29.204386, 33.382328, 34.280762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346090, 33.752563, 34.334114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914637, 0.313240, 0.255579,
		0.194779, -0.212538, 0.957543,
		0.354261, 0.925585, 0.133382,
		29.452368, 34.030239, 34.374130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187468, 33.594826, 34.952690>,  <29.204386, 33.382328, 34.280762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187468, 33.594826, 34.952690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086966, 33.877346, 34.687962>,  <29.026665, 34.046860, 34.529125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086966, 33.877346, 34.687962>,  <29.187468, 33.594826, 34.952690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086966, 33.877346, 34.687962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962083, -0.107254, 0.250786,
		0.106149, 0.699736, 0.706471,
		-0.251256, 0.706305, -0.661819,
		29.011589, 34.089237, 34.489414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921597, 34.183903, 35.301678>,  <29.187468, 33.594826, 34.952690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921597, 34.183903, 35.301678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808437, 34.093487, 34.928825>,  <28.740541, 34.039238, 34.705112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808437, 34.093487, 34.928825>,  <28.921597, 34.183903, 35.301678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808437, 34.093487, 34.928825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936922, -0.142881, 0.319002,
		-0.205292, 0.963582, -0.171362,
		-0.282900, -0.226042, -0.932133,
		28.723568, 34.025673, 34.649185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482662, 34.658409, 35.198483>,  <28.921597, 34.183903, 35.301678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482662, 34.658409, 35.198483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400646, 34.372421, 34.931118>,  <28.351437, 34.200829, 34.770699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400646, 34.372421, 34.931118>,  <28.482662, 34.658409, 35.198483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400646, 34.372421, 34.931118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953788, -0.007308, 0.300393,
		-0.219656, 0.699118, -0.680430,
		-0.205038, -0.714969, -0.668416,
		28.339134, 34.157932, 34.730595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035719, 34.937523, 34.665676>,  <28.482662, 34.658409, 35.198483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035719, 34.937523, 34.665676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995651, 34.539932, 34.683441>,  <27.971611, 34.301376, 34.694099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995651, 34.539932, 34.683441>,  <28.035719, 34.937523, 34.665676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995651, 34.539932, 34.683441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969883, 0.107508, 0.218559,
		-0.222018, -0.021182, -0.974812,
		-0.100170, -0.993979, 0.044412,
		27.965601, 34.241737, 34.696766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478765, 34.755554, 34.218155>,  <28.035719, 34.937523, 34.665676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478765, 34.755554, 34.218155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496752, 34.429588, 34.449287>,  <27.507544, 34.234009, 34.587967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496752, 34.429588, 34.449287>,  <27.478765, 34.755554, 34.218155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496752, 34.429588, 34.449287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998289, -0.015010, 0.056518,
		-0.037385, -0.579386, -0.814195,
		0.044967, -0.814915, 0.577834,
		27.510242, 34.185116, 34.622639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625715, 34.144344, 33.813320>,  <27.478765, 34.755554, 34.218155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625715, 34.144344, 33.813320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397524, 33.849163, 33.669106>,  <27.260609, 33.672054, 33.582577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397524, 33.849163, 33.669106>,  <27.625715, 34.144344, 33.813320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397524, 33.849163, 33.669106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809498, -0.579392, -0.094964,
		-0.138810, -0.346025, 0.927900,
		-0.570478, -0.737951, -0.360532,
		27.226381, 33.627777, 33.560947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925089, 34.257088, 33.850491>,  <27.625715, 34.144344, 33.813320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925089, 34.257088, 33.850491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016243, 34.141270, 34.222347>,  <27.070936, 34.071781, 34.445461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016243, 34.141270, 34.222347>,  <26.925089, 34.257088, 33.850491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016243, 34.141270, 34.222347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971753, -0.007479, 0.235880,
		-0.061346, -0.957134, -0.283073,
		0.227886, -0.289547, 0.929640,
		27.084608, 34.054405, 34.501240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368185, 33.755016, 34.071430>,  <26.925089, 34.257088, 33.850491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368185, 33.755016, 34.071430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517414, 33.927269, 34.400154>,  <26.606951, 34.030621, 34.597389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517414, 33.927269, 34.400154>,  <26.368185, 33.755016, 34.071430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517414, 33.927269, 34.400154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927632, 0.190120, 0.321487,
		-0.017800, -0.882276, 0.470395,
		0.373071, 0.430631, 0.821812,
		26.629335, 34.056458, 34.646698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799931, 33.970798, 34.507179>,  <26.368185, 33.755016, 34.071430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799931, 33.970798, 34.507179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108438, 33.961327, 34.761604>,  <26.293543, 33.955643, 34.914261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108438, 33.961327, 34.761604>,  <25.799931, 33.970798, 34.507179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108438, 33.961327, 34.761604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597098, 0.319246, 0.735905,
		-0.220486, -0.947376, 0.232087,
		0.771272, -0.023678, 0.636066,
		26.339821, 33.954224, 34.952423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720284, 33.448845, 35.059681>,  <25.799931, 33.970798, 34.507179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720284, 33.448845, 35.059681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969076, 33.734200, 35.188816>,  <26.118353, 33.905411, 35.266296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969076, 33.734200, 35.188816>,  <25.720284, 33.448845, 35.059681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969076, 33.734200, 35.188816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578078, 0.140243, 0.803840,
		0.528170, -0.686598, 0.499620,
		0.621983, 0.713383, 0.322835,
		26.155670, 33.948215, 35.285667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791979, 33.330929, 35.803844>,  <25.720284, 33.448845, 35.059681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791979, 33.330929, 35.803844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866749, 33.710678, 35.702847>,  <25.911612, 33.938526, 35.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866749, 33.710678, 35.702847>,  <25.791979, 33.330929, 35.803844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866749, 33.710678, 35.702847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663901, 0.311532, 0.679841,
		0.724081, 0.040553, 0.688521,
		0.186927, 0.949370, -0.252498,
		25.922827, 33.995487, 35.627098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995630, 33.629047, 36.439068>,  <25.791979, 33.330929, 35.803844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995630, 33.629047, 36.439068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886770, 33.925720, 36.193844>,  <25.821455, 34.103725, 36.046711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886770, 33.925720, 36.193844>,  <25.995630, 33.629047, 36.439068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886770, 33.925720, 36.193844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724588, 0.261264, 0.637741,
		0.633173, 0.617775, 0.466312,
		-0.272150, 0.741684, -0.613057,
		25.805126, 34.148224, 36.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859858, 34.252548, 36.847580>,  <25.995630, 33.629047, 36.439068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859858, 34.252548, 36.847580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613859, 34.268642, 36.532578>,  <25.466261, 34.278297, 36.343575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613859, 34.268642, 36.532578>,  <25.859858, 34.252548, 36.847580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613859, 34.268642, 36.532578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759405, 0.238706, 0.605246,
		0.212335, 0.970258, -0.116246,
		-0.614994, 0.040237, -0.787505,
		25.429361, 34.280712, 36.296326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351362, 34.437614, 37.334953>,  <25.859858, 34.252548, 36.847580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351362, 34.437614, 37.334953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729971, 34.497089, 37.220421>,  <26.957136, 34.532776, 37.151703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729971, 34.497089, 37.220421>,  <26.351362, 34.437614, 37.334953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729971, 34.497089, 37.220421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055755, -0.949508, -0.308750,
		-0.317781, 0.276274, -0.907021,
		0.946523, 0.148686, -0.286332,
		27.013927, 34.541695, 37.134521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792671, 35.127380, 37.169949>,  <26.351362, 34.437614, 37.334953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792671, 35.127380, 37.169949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153992, 35.270885, 37.264046>,  <27.370785, 35.356987, 37.320503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153992, 35.270885, 37.264046>,  <26.792671, 35.127380, 37.169949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153992, 35.270885, 37.264046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376480, 0.925811, 0.033721,
		-0.205691, -0.119024, 0.971352,
		0.903302, 0.358758, 0.235242,
		27.424982, 35.378513, 37.334618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690704, 35.690174, 37.647564>,  <26.792671, 35.127380, 37.169949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690704, 35.690174, 37.647564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041346, 35.766758, 37.470970>,  <27.251730, 35.812710, 37.365013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041346, 35.766758, 37.470970>,  <26.690704, 35.690174, 37.647564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041346, 35.766758, 37.470970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225079, 0.974033, -0.024499,
		0.425333, 0.120846, 0.896933,
		0.876602, 0.191461, -0.441488,
		27.304327, 35.824196, 37.338524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973648, 36.245392, 38.051540>,  <26.690704, 35.690174, 37.647564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973648, 36.245392, 38.051540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209599, 36.242645, 37.728554>,  <27.351168, 36.240997, 37.534763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209599, 36.242645, 37.728554>,  <26.973648, 36.245392, 38.051540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209599, 36.242645, 37.728554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013317, 0.999911, 0.001231,
		0.807385, -0.011480, 0.589913,
		0.589875, -0.006862, -0.807465,
		27.386560, 36.240585, 37.486313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502123, 36.754990, 38.175255>,  <26.973648, 36.245392, 38.051540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502123, 36.754990, 38.175255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455118, 36.724682, 37.779182>,  <27.426916, 36.706497, 37.541538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455118, 36.724682, 37.779182>,  <27.502123, 36.754990, 38.175255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455118, 36.724682, 37.779182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098657, 0.991262, -0.087561,
		0.988159, -0.107977, -0.109009,
		-0.117511, -0.075770, -0.990177,
		27.419865, 36.701950, 37.482128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061729, 37.122532, 37.880577>,  <27.502123, 36.754990, 38.175255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061729, 37.122532, 37.880577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793028, 37.119415, 37.584282>,  <27.631807, 37.117546, 37.406506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793028, 37.119415, 37.584282>,  <28.061729, 37.122532, 37.880577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793028, 37.119415, 37.584282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054905, 0.996671, -0.060276,
		0.738737, -0.081160, -0.669089,
		-0.671754, -0.007792, -0.740733,
		27.591501, 37.117077, 37.362061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290054, 37.466633, 37.306320>,  <28.061729, 37.122532, 37.880577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290054, 37.466633, 37.306320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892822, 37.512024, 37.318432>,  <27.654484, 37.539261, 37.325699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892822, 37.512024, 37.318432>,  <28.290054, 37.466633, 37.306320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892822, 37.512024, 37.318432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106542, 0.978889, -0.174428,
		-0.049433, -0.169995, -0.984204,
		-0.993079, 0.113482, 0.030278,
		27.594898, 37.546070, 37.327515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981195, 37.524540, 36.646309>,  <28.290054, 37.466633, 37.306320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981195, 37.524540, 36.646309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840221, 37.715366, 36.968353>,  <27.755636, 37.829861, 37.161579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840221, 37.715366, 36.968353>,  <27.981195, 37.524540, 36.646309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840221, 37.715366, 36.968353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360084, 0.863205, -0.353860,
		-0.863787, 0.165193, -0.476008,
		-0.352437, 0.477063, 0.805108,
		27.734489, 37.858486, 37.209885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056257, 38.146797, 36.269444>,  <27.981195, 37.524540, 36.646309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056257, 38.146797, 36.269444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736534, 38.048050, 36.488594>,  <27.544701, 37.988804, 36.620083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736534, 38.048050, 36.488594>,  <28.056257, 38.146797, 36.269444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736534, 38.048050, 36.488594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473558, 0.820031, -0.321390,
		-0.369934, -0.516339, -0.772361,
		-0.799307, -0.246865, 0.547874,
		27.496742, 37.973991, 36.652958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487579, 38.141155, 35.864895>,  <28.056257, 38.146797, 36.269444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487579, 38.141155, 35.864895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355942, 38.184444, 36.240124>,  <27.276960, 38.210419, 36.465263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355942, 38.184444, 36.240124>,  <27.487579, 38.141155, 35.864895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355942, 38.184444, 36.240124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388972, 0.889681, -0.239100,
		-0.860464, -0.443571, -0.250691,
		-0.329093, 0.108225, 0.938075,
		27.257214, 38.216911, 36.521545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721296, 38.216541, 35.920540>,  <27.487579, 38.141155, 35.864895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721296, 38.216541, 35.920540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883205, 38.394867, 36.239891>,  <26.980350, 38.501862, 36.431503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883205, 38.394867, 36.239891>,  <26.721296, 38.216541, 35.920540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883205, 38.394867, 36.239891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432395, 0.862637, -0.262472,
		-0.805726, -0.238975, 0.541937,
		0.404770, 0.445812, 0.798381,
		27.004637, 38.528610, 36.479404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269331, 38.772564, 36.222599>,  <26.721296, 38.216541, 35.920540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269331, 38.772564, 36.222599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638472, 38.855335, 36.352539>,  <26.859957, 38.904999, 36.430504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638472, 38.855335, 36.352539>,  <26.269331, 38.772564, 36.222599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638472, 38.855335, 36.352539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170474, 0.975755, -0.137260,
		-0.345373, 0.071293, 0.935754,
		0.922852, 0.206928, 0.324846,
		26.915327, 38.917412, 36.449993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379179, 39.456589, 36.244930>,  <26.269331, 38.772564, 36.222599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379179, 39.456589, 36.244930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245546, 39.180000, 36.501133>,  <26.165367, 39.014046, 36.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245546, 39.180000, 36.501133>,  <26.379179, 39.456589, 36.244930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245546, 39.180000, 36.501133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924571, -0.372492, 0.080110,
		0.183190, 0.618960, 0.763761,
		-0.334079, -0.691476, 0.640509,
		26.145323, 38.972557, 36.693287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845512, 39.373455, 36.857506>,  <26.379179, 39.456589, 36.244930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845512, 39.373455, 36.857506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657660, 39.028763, 36.780704>,  <26.544947, 38.821949, 36.734623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657660, 39.028763, 36.780704>,  <26.845512, 39.373455, 36.857506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657660, 39.028763, 36.780704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860259, -0.495552, 0.119926,
		-0.198491, -0.108851, 0.974039,
		-0.469633, -0.861731, -0.192003,
		26.516769, 38.770245, 36.723103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171341, 38.958775, 37.383747>,  <26.845512, 39.373455, 36.857506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171341, 38.958775, 37.383747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992393, 38.745590, 37.096466>,  <26.885025, 38.617680, 36.924099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992393, 38.745590, 37.096466>,  <27.171341, 38.958775, 37.383747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992393, 38.745590, 37.096466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679188, -0.724919, 0.114876,
		-0.581862, -0.436401, 0.686288,
		-0.447371, -0.532960, -0.718201,
		26.858183, 38.585701, 36.881004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794056, 38.359863, 37.752403>,  <27.171341, 38.958775, 37.383747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794056, 38.359863, 37.752403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927752, 38.296841, 37.380714>,  <27.007969, 38.259026, 37.157700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927752, 38.296841, 37.380714>,  <26.794056, 38.359863, 37.752403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927752, 38.296841, 37.380714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538590, -0.777154, 0.325504,
		-0.773433, -0.609269, -0.174906,
		0.334248, -0.157553, -0.929223,
		27.028023, 38.249573, 37.101948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449781, 37.789803, 37.355061>,  <26.794056, 38.359863, 37.752403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449781, 37.789803, 37.355061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783823, 37.841862, 37.141270>,  <26.984247, 37.873096, 37.012997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783823, 37.841862, 37.141270>,  <26.449781, 37.789803, 37.355061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783823, 37.841862, 37.141270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232203, -0.964206, 0.128018,
		-0.498685, -0.231015, -0.835431,
		0.835102, 0.130149, -0.534478,
		27.034353, 37.880905, 36.980927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485416, 37.338173, 36.821766>,  <26.449781, 37.789803, 37.355061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485416, 37.338173, 36.821766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867647, 37.428658, 36.897343>,  <27.096987, 37.482948, 36.942688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867647, 37.428658, 36.897343>,  <26.485416, 37.338173, 36.821766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867647, 37.428658, 36.897343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214111, -0.973323, 0.082456,
		0.202552, -0.038340, -0.978521,
		0.955578, 0.226213, 0.188939,
		27.154320, 37.496521, 36.954025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782862, 36.898193, 36.374367>,  <26.485416, 37.338173, 36.821766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782862, 36.898193, 36.374367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035463, 36.982571, 36.672817>,  <27.187025, 37.033195, 36.851887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035463, 36.982571, 36.672817>,  <26.782862, 36.898193, 36.374367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035463, 36.982571, 36.672817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232370, -0.969541, 0.077429,
		0.739734, 0.124481, -0.661286,
		0.631505, 0.210939, 0.746127,
		27.224915, 37.045853, 36.896656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391834, 36.518246, 36.181217>,  <26.782862, 36.898193, 36.374367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391834, 36.518246, 36.181217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398678, 36.585640, 36.575439>,  <27.402784, 36.626076, 36.811974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398678, 36.585640, 36.575439>,  <27.391834, 36.518246, 36.181217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398678, 36.585640, 36.575439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355480, -0.922324, 0.151502,
		0.934527, 0.347754, -0.075673,
		0.017110, 0.168483, 0.985556,
		27.403811, 36.636185, 36.871105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983128, 36.197487, 36.367966>,  <27.391834, 36.518246, 36.181217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983128, 36.197487, 36.367966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784868, 36.221535, 36.714542>,  <27.665913, 36.235962, 36.922489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784868, 36.221535, 36.714542>,  <27.983128, 36.197487, 36.367966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784868, 36.221535, 36.714542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291207, -0.928351, 0.231003,
		0.818248, 0.366810, 0.442629,
		-0.495650, 0.060120, 0.866439,
		27.636173, 36.239571, 36.974476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454119, 36.265736, 36.936806>,  <27.983128, 36.197487, 36.367966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454119, 36.265736, 36.936806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109610, 36.098263, 37.051987>,  <27.902905, 35.997780, 37.121094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109610, 36.098263, 37.051987>,  <28.454119, 36.265736, 36.936806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109610, 36.098263, 37.051987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506491, -0.752968, 0.420127,
		0.040921, 0.507689, 0.860568,
		-0.861274, -0.418678, 0.287952,
		27.851227, 35.972660, 37.138371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586491, 35.973568, 37.616734>,  <28.454119, 36.265736, 36.936806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586491, 35.973568, 37.616734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244932, 35.792141, 37.514648>,  <28.039997, 35.683285, 37.453400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244932, 35.792141, 37.514648>,  <28.586491, 35.973568, 37.616734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244932, 35.792141, 37.514648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383600, -0.879916, 0.280353,
		-0.351723, 0.141494, 0.925349,
		-0.853898, -0.453571, -0.255210,
		27.988762, 35.656071, 37.438084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180794, 35.657310, 38.227844>,  <28.586491, 35.973568, 37.616734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180794, 35.657310, 38.227844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160532, 35.478512, 37.870605>,  <28.148375, 35.371235, 37.656261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160532, 35.478512, 37.870605>,  <28.180794, 35.657310, 38.227844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160532, 35.478512, 37.870605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497885, -0.786505, 0.365405,
		-0.865762, -0.426152, 0.262392,
		-0.050655, -0.446995, -0.893101,
		28.145336, 35.344414, 37.602676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884378, 34.905762, 38.231255>,  <28.180794, 35.657310, 38.227844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884378, 34.905762, 38.231255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169434, 34.991966, 37.964211>,  <28.340467, 35.043690, 37.803986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169434, 34.991966, 37.964211>,  <27.884378, 34.905762, 38.231255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169434, 34.991966, 37.964211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443173, -0.876007, 0.190286,
		-0.543823, -0.431472, -0.719784,
		0.712639, 0.215507, -0.667609,
		28.383224, 35.056618, 37.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039366, 34.357693, 37.673573>,  <27.884378, 34.905762, 38.231255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039366, 34.357693, 37.673573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379169, 34.541756, 37.776791>,  <28.583052, 34.652195, 37.838722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379169, 34.541756, 37.776791>,  <28.039366, 34.357693, 37.673573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379169, 34.541756, 37.776791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373904, -0.870202, 0.320850,
		0.372192, -0.176081, -0.911300,
		0.849511, 0.460157, 0.258045,
		28.634022, 34.679802, 37.854202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583162, 34.002094, 37.369297>,  <28.039366, 34.357693, 37.673573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583162, 34.002094, 37.369297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739929, 34.198803, 37.680309>,  <28.833988, 34.316830, 37.866917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739929, 34.198803, 37.680309>,  <28.583162, 34.002094, 37.369297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739929, 34.198803, 37.680309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211684, -0.870672, 0.443982,
		0.895317, -0.009411, -0.445330,
		0.391915, 0.491774, 0.777535,
		28.857504, 34.346336, 37.913570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198072, 33.726810, 37.493790>,  <28.583162, 34.002094, 37.369297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198072, 33.726810, 37.493790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062962, 33.876751, 37.839134>,  <28.981895, 33.966713, 38.046341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062962, 33.876751, 37.839134>,  <29.198072, 33.726810, 37.493790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062962, 33.876751, 37.839134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260092, -0.844386, 0.468363,
		0.904577, 0.382756, 0.187719,
		-0.337776, 0.374847, 0.863364,
		28.961628, 33.989204, 38.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751158, 33.603146, 37.933590>,  <29.198072, 33.726810, 37.493790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751158, 33.603146, 37.933590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432631, 33.636879, 38.173180>,  <29.241514, 33.657120, 38.316933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432631, 33.636879, 38.173180>,  <29.751158, 33.603146, 37.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432631, 33.636879, 38.173180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382720, -0.696574, 0.606885,
		0.468407, 0.712512, 0.522419,
		-0.796316, 0.084329, 0.598973,
		29.193735, 33.662178, 38.352871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950974, 33.621986, 38.648651>,  <29.751158, 33.603146, 37.933590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950974, 33.621986, 38.648651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579895, 33.473572, 38.632114>,  <29.357248, 33.384521, 38.622192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579895, 33.473572, 38.632114>,  <29.950974, 33.621986, 38.648651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579895, 33.473572, 38.632114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324443, -0.856042, 0.402403,
		-0.184698, 0.359894, 0.914529,
		-0.927698, -0.371036, -0.041344,
		29.301586, 33.362263, 38.619713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821157, 33.483986, 39.336349>,  <29.950974, 33.621986, 38.648651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821157, 33.483986, 39.336349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637623, 33.254330, 39.065105>,  <29.527502, 33.116535, 38.902359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637623, 33.254330, 39.065105>,  <29.821157, 33.483986, 39.336349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637623, 33.254330, 39.065105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357662, -0.817973, 0.450554,
		-0.813354, -0.035801, 0.580667,
		-0.458839, -0.574142, -0.678106,
		29.499971, 33.082088, 38.861675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322680, 33.084553, 39.676426>,  <29.821157, 33.483986, 39.336349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322680, 33.084553, 39.676426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528934, 32.936123, 39.367512>,  <29.652687, 32.847065, 39.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528934, 32.936123, 39.367512>,  <29.322680, 33.084553, 39.676426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528934, 32.936123, 39.367512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407629, -0.686562, 0.602055,
		-0.753630, -0.625246, -0.202754,
		0.515637, -0.371078, -0.772282,
		29.683626, 32.824799, 39.135826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112349, 32.343151, 39.545979>,  <29.322680, 33.084553, 39.676426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112349, 32.343151, 39.545979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471766, 32.505585, 39.479389>,  <29.687416, 32.603046, 39.439434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471766, 32.505585, 39.479389>,  <29.112349, 32.343151, 39.545979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471766, 32.505585, 39.479389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396039, -0.586765, 0.706300,
		0.189138, -0.700571, -0.688060,
		0.898543, 0.406087, -0.166475,
		29.741329, 32.627411, 39.429447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496702, 32.910141, 39.556675>,  <29.112349, 32.343151, 39.545979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496702, 32.910141, 39.556675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623268, 33.241020, 39.370934>,  <28.699207, 33.439548, 39.259491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623268, 33.241020, 39.370934>,  <28.496702, 32.910141, 39.556675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623268, 33.241020, 39.370934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852253, -0.462850, -0.243790,
		-0.416588, -0.318605, -0.851437,
		0.316415, 0.827200, -0.464350,
		28.718193, 33.489182, 39.231628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154280, 33.095177, 38.906010>,  <28.496702, 32.910141, 39.556675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154280, 33.095177, 38.906010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525459, 33.230377, 38.843189>,  <28.748167, 33.311497, 38.805496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525459, 33.230377, 38.843189>,  <28.154280, 33.095177, 38.906010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525459, 33.230377, 38.843189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372237, 0.819299, -0.436107,
		-0.018732, 0.463146, 0.886084,
		0.927949, 0.338002, -0.157053,
		28.803844, 33.331779, 38.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218548, 33.869362, 39.171764>,  <28.154280, 33.095177, 38.906010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218548, 33.869362, 39.171764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502882, 33.790527, 38.901691>,  <28.673483, 33.743229, 38.739647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502882, 33.790527, 38.901691>,  <28.218548, 33.869362, 39.171764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502882, 33.790527, 38.901691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207799, 0.858245, -0.469293,
		0.671961, 0.473893, 0.569118,
		0.710836, -0.197084, -0.675181,
		28.716133, 33.731403, 38.699139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525162, 34.475044, 39.215084>,  <28.218548, 33.869362, 39.171764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525162, 34.475044, 39.215084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611139, 34.307388, 38.862240>,  <28.662725, 34.206795, 38.650532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611139, 34.307388, 38.862240>,  <28.525162, 34.475044, 39.215084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611139, 34.307388, 38.862240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199362, 0.865373, -0.459766,
		0.956062, 0.274684, 0.102445,
		0.214944, -0.419141, -0.882111,
		28.675623, 34.181644, 38.597607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062941, 34.763874, 38.877869>,  <28.525162, 34.475044, 39.215084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062941, 34.763874, 38.877869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798899, 34.626987, 38.610394>,  <28.640474, 34.544853, 38.449909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798899, 34.626987, 38.610394>,  <29.062941, 34.763874, 38.877869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798899, 34.626987, 38.610394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149980, 0.932315, -0.329083,
		0.736050, -0.116938, -0.666750,
		-0.660103, -0.342220, -0.668692,
		28.600868, 34.524323, 38.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276485, 34.984173, 38.232353>,  <29.062941, 34.763874, 38.877869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276485, 34.984173, 38.232353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884899, 34.944614, 38.303738>,  <28.649948, 34.920879, 38.346569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884899, 34.944614, 38.303738>,  <29.276485, 34.984173, 38.232353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884899, 34.944614, 38.303738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124514, 0.982497, -0.138550,
		-0.161637, -0.157857, -0.974143,
		-0.978964, -0.098900, 0.178463,
		28.591209, 34.914944, 38.357277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374117, 34.532722, 37.513676>,  <29.276485, 34.984173, 38.232353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374117, 34.532722, 37.513676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573589, 34.864605, 37.413353>,  <29.693272, 35.063736, 37.353161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573589, 34.864605, 37.413353>,  <29.374117, 34.532722, 37.513676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573589, 34.864605, 37.413353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271382, -0.424253, -0.863922,
		-0.823208, 0.362756, -0.436734,
		0.498679, 0.829709, -0.250802,
		29.723192, 35.113518, 37.338112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216866, 34.613571, 36.776791>,  <29.374117, 34.532722, 37.513676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216866, 34.613571, 36.776791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548370, 34.815941, 36.872456>,  <29.747272, 34.937363, 36.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548370, 34.815941, 36.872456>,  <29.216866, 34.613571, 36.776791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548370, 34.815941, 36.872456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442309, -0.330404, -0.833784,
		-0.342811, 0.796791, -0.497600,
		0.828760, 0.505923, 0.239162,
		29.796999, 34.967716, 36.944202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464722, 34.735275, 36.179695>,  <29.216866, 34.613571, 36.776791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464722, 34.735275, 36.179695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783484, 34.821697, 36.405354>,  <29.974741, 34.873550, 36.540749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783484, 34.821697, 36.405354>,  <29.464722, 34.735275, 36.179695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783484, 34.821697, 36.405354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599375, -0.399427, -0.693691,
		0.075462, 0.890942, -0.447803,
		0.796903, 0.216055, 0.564150,
		30.022554, 34.886513, 36.574600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063070, 35.071148, 35.726727>,  <29.464722, 34.735275, 36.179695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063070, 35.071148, 35.726727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202272, 34.879692, 36.049164>,  <30.285793, 34.764820, 36.242626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202272, 34.879692, 36.049164>,  <30.063070, 35.071148, 35.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202272, 34.879692, 36.049164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603949, -0.543183, -0.583265,
		0.717033, 0.689822, 0.100043,
		0.348008, -0.478641, 0.806098,
		30.306675, 34.736099, 36.290993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775414, 35.268452, 35.711357>,  <30.063070, 35.071148, 35.726727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775414, 35.268452, 35.711357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713442, 34.941601, 35.933456>,  <30.676260, 34.745491, 36.066715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713442, 34.941601, 35.933456>,  <30.775414, 35.268452, 35.711357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713442, 34.941601, 35.933456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655375, -0.505563, -0.561150,
		0.739243, 0.276956, 0.613853,
		-0.154928, -0.817130, 0.555244,
		30.666964, 34.696461, 36.100029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447174, 35.060410, 35.800415>,  <30.775414, 35.268452, 35.711357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447174, 35.060410, 35.800415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197319, 34.753807, 35.860146>,  <31.047405, 34.569847, 35.895985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197319, 34.753807, 35.860146>,  <31.447174, 35.060410, 35.800415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197319, 34.753807, 35.860146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585249, -0.586090, -0.560341,
		0.517023, -0.262617, 0.814690,
		-0.624637, -0.766506, 0.149325,
		31.009928, 34.523857, 35.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848227, 34.479008, 35.965843>,  <31.447174, 35.060410, 35.800415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848227, 34.479008, 35.965843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500547, 34.315147, 35.855072>,  <31.291941, 34.216831, 35.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500547, 34.315147, 35.855072>,  <31.848227, 34.479008, 35.965843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500547, 34.315147, 35.855072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491138, -0.650355, -0.579502,
		0.057294, -0.639708, 0.766480,
		-0.869196, -0.409649, -0.276924,
		31.239788, 34.192253, 35.771996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062756, 33.789097, 35.996292>,  <31.848227, 34.479008, 35.965843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062756, 33.789097, 35.996292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734982, 33.799229, 35.767250>,  <31.538317, 33.805309, 35.629826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734982, 33.799229, 35.767250>,  <32.062756, 33.789097, 35.996292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734982, 33.799229, 35.767250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430538, -0.632279, -0.644097,
		-0.378362, -0.774327, 0.507208,
		-0.819438, 0.025329, -0.572607,
		31.489151, 33.806828, 35.595467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919790, 33.095222, 35.706802>,  <32.062756, 33.789097, 35.996292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919790, 33.095222, 35.706802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706577, 33.322800, 35.456306>,  <31.578650, 33.459347, 35.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706577, 33.322800, 35.456306>,  <31.919790, 33.095222, 35.706802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706577, 33.322800, 35.456306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309537, -0.557719, -0.770154,
		-0.787442, -0.604362, 0.121172,
		-0.533031, 0.568944, -0.626243,
		31.546667, 33.493484, 35.268433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626717, 32.651520, 35.236813>,  <31.919790, 33.095222, 35.706802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626717, 32.651520, 35.236813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626921, 33.006832, 35.053093>,  <31.627043, 33.220020, 34.942860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626921, 33.006832, 35.053093>,  <31.626717, 32.651520, 35.236813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626921, 33.006832, 35.053093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185770, -0.451390, -0.872776,
		-0.982593, -0.084879, -0.165246,
		0.000510, 0.888281, -0.459300,
		31.627073, 33.273315, 34.915302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232086, 32.490269, 34.696987>,  <31.626717, 32.651520, 35.236813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232086, 32.490269, 34.696987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434795, 32.820610, 34.598080>,  <31.556421, 33.018814, 34.538734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434795, 32.820610, 34.598080>,  <31.232086, 32.490269, 34.696987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434795, 32.820610, 34.598080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155709, -0.369802, -0.915970,
		-0.847900, 0.425688, -0.315999,
		0.506775, 0.825855, -0.247271,
		31.586828, 33.068367, 34.523899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013933, 32.677338, 34.122314>,  <31.232086, 32.490269, 34.696987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013933, 32.677338, 34.122314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357534, 32.881908, 34.131760>,  <31.563696, 33.004650, 34.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357534, 32.881908, 34.131760>,  <31.013933, 32.677338, 34.122314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357534, 32.881908, 34.131760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236149, -0.354873, -0.904599,
		-0.454253, 0.782631, -0.425610,
		0.859004, 0.511424, 0.023616,
		31.615236, 33.035336, 34.138844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121943, 32.969116, 33.430721>,  <31.013933, 32.677338, 34.122314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121943, 32.969116, 33.430721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483715, 32.994614, 33.599453>,  <31.700779, 33.009911, 33.700691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483715, 32.994614, 33.599453>,  <31.121943, 32.969116, 33.430721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483715, 32.994614, 33.599453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426182, -0.090325, -0.900117,
		-0.019273, 0.993870, -0.108858,
		0.904432, 0.063741, 0.421828,
		31.755045, 33.013737, 33.726002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464432, 33.474972, 32.945019>,  <31.121943, 32.969116, 33.430721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464432, 33.474972, 32.945019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738150, 33.275734, 33.158054>,  <31.902380, 33.156193, 33.285877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738150, 33.275734, 33.158054>,  <31.464432, 33.474972, 32.945019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738150, 33.275734, 33.158054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592216, -0.046543, -0.804434,
		0.425469, 0.865875, 0.263128,
		0.684293, -0.498090, 0.532588,
		31.943438, 33.126308, 33.317829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101429, 33.884739, 33.016373>,  <31.464432, 33.474972, 32.945019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101429, 33.884739, 33.016373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170002, 33.490948, 33.031422>,  <32.211143, 33.254673, 33.040451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170002, 33.490948, 33.031422>,  <32.101429, 33.884739, 33.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170002, 33.490948, 33.031422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556787, 0.065304, -0.828084,
		0.812773, 0.162907, 0.559340,
		0.171428, -0.984478, 0.037627,
		32.221432, 33.195606, 33.042709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779362, 33.781784, 32.768478>,  <32.101429, 33.884739, 33.016373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779362, 33.781784, 32.768478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610985, 33.420467, 32.735336>,  <32.509956, 33.203678, 32.715450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610985, 33.420467, 32.735336>,  <32.779362, 33.781784, 32.768478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610985, 33.420467, 32.735336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367809, -0.086482, -0.925871,
		0.829169, -0.420216, 0.368644,
		-0.420946, -0.903294, -0.082851,
		32.484699, 33.149479, 32.710480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383324, 33.277561, 32.545357>,  <32.779362, 33.781784, 32.768478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383324, 33.277561, 32.545357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023609, 33.130043, 32.451313>,  <32.807781, 33.041531, 32.394886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023609, 33.130043, 32.451313>,  <33.383324, 33.277561, 32.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023609, 33.130043, 32.451313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282919, -0.080570, -0.955754,
		0.333539, -0.926010, 0.176796,
		-0.899282, -0.368800, -0.235113,
		32.753826, 33.019402, 32.380779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543636, 32.691963, 32.115665>,  <33.383324, 33.277561, 32.545357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543636, 32.691963, 32.115665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157681, 32.769550, 32.044819>,  <32.926109, 32.816101, 32.002312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157681, 32.769550, 32.044819>,  <33.543636, 32.691963, 32.115665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157681, 32.769550, 32.044819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104726, -0.334312, -0.936626,
		-0.240883, -0.922287, 0.302261,
		-0.964887, 0.193962, -0.177118,
		32.868214, 32.827740, 31.991684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175846, 32.014263, 31.836164>,  <33.543636, 32.691963, 32.115665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175846, 32.014263, 31.836164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961792, 32.329601, 31.714748>,  <32.833359, 32.518806, 31.641899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961792, 32.329601, 31.714748>,  <33.175846, 32.014263, 31.836164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961792, 32.329601, 31.714748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129380, -0.431564, -0.892756,
		-0.834799, -0.438474, 0.332942,
		-0.535136, 0.788348, -0.303540,
		32.801250, 32.566105, 31.623686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710251, 31.649263, 31.321131>,  <33.175846, 32.014263, 31.836164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710251, 31.649263, 31.321131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651852, 32.038101, 31.247686>,  <32.616810, 32.271404, 31.203621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651852, 32.038101, 31.247686>,  <32.710251, 31.649263, 31.321131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651852, 32.038101, 31.247686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284746, -0.219037, -0.933243,
		-0.947419, -0.083974, 0.308780,
		-0.146002, 0.972096, -0.183609,
		32.608051, 32.329731, 31.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212036, 31.672009, 30.679321>,  <32.710251, 31.649263, 31.321131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212036, 31.672009, 30.679321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389122, 32.030487, 30.690853>,  <32.495373, 32.245575, 30.697773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389122, 32.030487, 30.690853>,  <32.212036, 31.672009, 30.679321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389122, 32.030487, 30.690853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088193, 0.075520, -0.993236,
		-0.892313, 0.437181, 0.112472,
		0.442718, 0.896197, 0.028831,
		32.521938, 32.299347, 30.699503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731222, 32.197830, 30.300596>,  <32.212036, 31.672009, 30.679321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731222, 32.197830, 30.300596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103077, 32.341576, 30.333187>,  <32.326191, 32.427822, 30.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103077, 32.341576, 30.333187>,  <31.731222, 32.197830, 30.300596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103077, 32.341576, 30.333187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006200, 0.236336, -0.971652,
		-0.368429, 0.902776, 0.221935,
		0.929635, 0.359361, 0.081476,
		32.381966, 32.449383, 30.357630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785952, 32.861988, 29.811583>,  <31.731222, 32.197830, 30.300596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785952, 32.861988, 29.811583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146965, 32.710037, 29.892704>,  <32.363571, 32.618866, 29.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146965, 32.710037, 29.892704>,  <31.785952, 32.861988, 29.811583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146965, 32.710037, 29.892704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302721, 0.224760, -0.926198,
		0.306258, 0.897317, 0.317850,
		0.902533, -0.379875, 0.202802,
		32.417725, 32.596073, 29.953545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266953, 33.308201, 29.400988>,  <31.785952, 32.861988, 29.811583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266953, 33.308201, 29.400988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474735, 32.973862, 29.472008>,  <32.599403, 32.773258, 29.514620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474735, 32.973862, 29.472008>,  <32.266953, 33.308201, 29.400988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474735, 32.973862, 29.472008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149661, -0.115576, -0.981959,
		0.841288, 0.536658, 0.065057,
		0.519457, -0.835847, 0.177550,
		32.630573, 32.723106, 29.525272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856247, 33.329674, 28.953781>,  <32.266953, 33.308201, 29.400988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856247, 33.329674, 28.953781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835289, 32.940536, 29.043970>,  <32.822716, 32.707054, 29.098083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835289, 32.940536, 29.043970>,  <32.856247, 33.329674, 28.953781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835289, 32.940536, 29.043970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188346, -0.231357, -0.954463,
		0.980704, -0.007538, 0.195351,
		-0.052391, -0.972839, 0.225473,
		32.819572, 32.648685, 29.111612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451630, 32.883251, 28.575043>,  <32.856247, 33.329674, 28.953781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451630, 32.883251, 28.575043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145260, 32.644650, 28.670996>,  <32.961437, 32.501488, 28.728567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145260, 32.644650, 28.670996>,  <33.451630, 32.883251, 28.575043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145260, 32.644650, 28.670996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111584, -0.490774, -0.864112,
		0.633179, -0.635074, 0.442454,
		-0.765920, -0.596508, 0.239884,
		32.915485, 32.465698, 28.742960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735172, 32.280785, 28.423374>,  <33.451630, 32.883251, 28.575043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735172, 32.280785, 28.423374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340816, 32.215706, 28.439095>,  <33.104202, 32.176659, 28.448526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340816, 32.215706, 28.439095>,  <33.735172, 32.280785, 28.423374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340816, 32.215706, 28.439095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044215, -0.479621, -0.876361,
		0.161433, -0.862261, 0.480048,
		-0.985893, -0.162699, 0.039302,
		33.045048, 32.166897, 28.450886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684731, 31.607872, 28.217993>,  <33.735172, 32.280785, 28.423374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684731, 31.607872, 28.217993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317051, 31.748995, 28.148024>,  <33.096443, 31.833670, 28.106041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317051, 31.748995, 28.148024>,  <33.684731, 31.607872, 28.217993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317051, 31.748995, 28.148024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070102, -0.583714, -0.808927,
		-0.387502, -0.731303, 0.561283,
		-0.919200, 0.352808, -0.174924,
		33.041290, 31.854837, 28.095547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157318, 31.047823, 28.059299>,  <33.684731, 31.607872, 28.217993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157318, 31.047823, 28.059299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019238, 31.390314, 27.905565>,  <32.936390, 31.595808, 27.813326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019238, 31.390314, 27.905565>,  <33.157318, 31.047823, 28.059299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019238, 31.390314, 27.905565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099616, -0.440620, -0.892150,
		-0.933227, -0.269686, 0.237396,
		-0.345202, 0.856227, -0.384333,
		32.915676, 31.647182, 27.790266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557590, 30.898762, 27.709908>,  <33.157318, 31.047823, 28.059299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557590, 30.898762, 27.709908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657055, 31.253016, 27.553028>,  <32.716732, 31.465569, 27.458900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657055, 31.253016, 27.553028>,  <32.557590, 30.898762, 27.709908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657055, 31.253016, 27.553028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216894, -0.343721, -0.913681,
		-0.943995, 0.312259, 0.106620,
		0.248657, 0.885635, -0.392198,
		32.731651, 31.518705, 27.435369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956465, 31.138241, 27.214466>,  <32.557590, 30.898762, 27.709908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956465, 31.138241, 27.214466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305984, 31.312181, 27.127398>,  <32.515697, 31.416546, 27.075155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305984, 31.312181, 27.127398>,  <31.956465, 31.138241, 27.214466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305984, 31.312181, 27.127398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132717, -0.217379, -0.967022,
		-0.467827, 0.873872, -0.132233,
		0.873799, 0.434850, -0.217674,
		32.568123, 31.442636, 27.062096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741999, 31.495708, 26.621576>,  <31.956465, 31.138241, 27.214466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741999, 31.495708, 26.621576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140514, 31.521755, 26.599049>,  <32.379623, 31.537384, 26.585531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140514, 31.521755, 26.599049>,  <31.741999, 31.495708, 26.621576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140514, 31.521755, 26.599049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059287, 0.044555, -0.997246,
		-0.062429, 0.996882, 0.048250,
		0.996287, 0.065118, -0.056321,
		32.439400, 31.541290, 26.582153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786201, 32.027779, 26.148546>,  <31.741999, 31.495708, 26.621576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786201, 32.027779, 26.148546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123081, 31.813341, 26.171537>,  <32.325211, 31.684679, 26.185331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123081, 31.813341, 26.171537>,  <31.786201, 32.027779, 26.148546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123081, 31.813341, 26.171537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028949, -0.061489, -0.997688,
		0.538385, 0.841918, -0.036267,
		0.842201, -0.536091, 0.057477,
		32.375740, 31.652514, 26.188780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160656, 32.288395, 25.632410>,  <31.786201, 32.027779, 26.148546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160656, 32.288395, 25.632410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331860, 31.935209, 25.709547>,  <32.434582, 31.723299, 25.755829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331860, 31.935209, 25.709547>,  <32.160656, 32.288395, 25.632410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331860, 31.935209, 25.709547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026192, -0.201166, -0.979207,
		0.903397, 0.424156, -0.062974,
		0.428005, -0.882963, 0.192842,
		32.460262, 31.670321, 25.767399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714790, 32.238403, 25.191170>,  <32.160656, 32.288395, 25.632410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714790, 32.238403, 25.191170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576462, 31.876757, 25.291557>,  <32.493465, 31.659769, 25.351789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576462, 31.876757, 25.291557>,  <32.714790, 32.238403, 25.191170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576462, 31.876757, 25.291557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208665, -0.186668, -0.960007,
		0.914804, -0.384358, -0.124103,
		-0.345821, -0.904115, 0.250967,
		32.472717, 31.605522, 25.366848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038292, 31.675058, 24.901342>,  <32.714790, 32.238403, 25.191170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038292, 31.675058, 24.901342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690590, 31.496838, 24.987026>,  <32.481968, 31.389906, 25.038437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690590, 31.496838, 24.987026>,  <33.038292, 31.675058, 24.901342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690590, 31.496838, 24.987026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230412, -0.018230, -0.972923,
		0.437393, -0.895070, -0.086814,
		-0.869251, -0.445552, 0.214208,
		32.429813, 31.363173, 25.051289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988575, 31.116751, 24.474455>,  <33.038292, 31.675058, 24.901342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988575, 31.116751, 24.474455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608280, 31.171961, 24.585480>,  <32.380104, 31.205088, 24.652094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608280, 31.171961, 24.585480>,  <32.988575, 31.116751, 24.474455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608280, 31.171961, 24.585480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297522, -0.154971, -0.942053,
		-0.087007, -0.978230, 0.188401,
		-0.950742, 0.138019, 0.277562,
		32.323059, 31.213369, 24.668747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721951, 30.645884, 24.064707>,  <32.988575, 31.116751, 24.474455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721951, 30.645884, 24.064707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417805, 30.879936, 24.177465>,  <32.235317, 31.020367, 24.245121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417805, 30.879936, 24.177465>,  <32.721951, 30.645884, 24.064707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417805, 30.879936, 24.177465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514437, -0.277620, -0.811345,
		-0.396484, -0.761937, 0.512106,
		-0.760365, 0.585132, 0.281897,
		32.189693, 31.055475, 24.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118401, 30.346128, 23.762363>,  <32.721951, 30.645884, 24.064707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118401, 30.346128, 23.762363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982164, 30.713032, 23.844950>,  <31.900421, 30.933174, 23.894503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982164, 30.713032, 23.844950>,  <32.118401, 30.346128, 23.762363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982164, 30.713032, 23.844950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537512, -0.009790, -0.843199,
		-0.771412, -0.398167, 0.496373,
		-0.340594, 0.917261, 0.206467,
		31.879986, 30.988211, 23.906889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443787, 30.291977, 23.540770>,  <32.118401, 30.346128, 23.762363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443787, 30.291977, 23.540770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516171, 30.682659, 23.586893>,  <31.559601, 30.917068, 23.614567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516171, 30.682659, 23.586893>,  <31.443787, 30.291977, 23.540770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516171, 30.682659, 23.586893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624048, 0.204648, -0.754111,
		-0.760144, 0.064505, 0.646545,
		0.180958, 0.976708, 0.115308,
		31.570457, 30.975672, 23.621485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779669, 30.713848, 23.594391>,  <31.443787, 30.291977, 23.540770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779669, 30.713848, 23.594391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049429, 30.984468, 23.476095>,  <31.211285, 31.146841, 23.405117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049429, 30.984468, 23.476095>,  <30.779669, 30.713848, 23.594391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049429, 30.984468, 23.476095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510905, 0.138412, -0.848421,
		-0.533066, 0.723271, 0.438998,
		0.674401, 0.676551, -0.295741,
		31.251749, 31.187433, 23.387373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391375, 31.038307, 23.060457>,  <30.779669, 30.713848, 23.594391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391375, 31.038307, 23.060457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757751, 31.186922, 22.999783>,  <30.977577, 31.276091, 22.963377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757751, 31.186922, 22.999783>,  <30.391375, 31.038307, 23.060457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757751, 31.186922, 22.999783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249084, 0.229970, -0.940782,
		-0.314654, 0.899485, 0.303184,
		0.915942, 0.371539, -0.151686,
		31.032534, 31.298384, 22.954277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302631, 31.642282, 22.722155>,  <30.391375, 31.038307, 23.060457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302631, 31.642282, 22.722155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665670, 31.509457, 22.619396>,  <30.883495, 31.429760, 22.557741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665670, 31.509457, 22.619396>,  <30.302631, 31.642282, 22.722155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665670, 31.509457, 22.619396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166740, 0.276466, -0.946448,
		0.385306, 0.901831, 0.195552,
		0.907600, -0.332065, -0.256895,
		30.937950, 31.409838, 22.542328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307861, 32.110687, 22.071077>,  <30.302631, 31.642282, 22.722155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307861, 32.110687, 22.071077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304440, 32.467392, 21.890106>,  <30.302385, 32.681416, 21.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304440, 32.467392, 21.890106>,  <30.307861, 32.110687, 22.071077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304440, 32.467392, 21.890106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265005, -0.438288, -0.858881,
		-0.964209, 0.112546, 0.240071,
		-0.008556, 0.891761, -0.452427,
		30.301872, 32.734921, 21.754377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687096, 32.076088, 21.659916>,  <30.307861, 32.110687, 22.071077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687096, 32.076088, 21.659916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888500, 32.390392, 21.516218>,  <30.009342, 32.578976, 21.430000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888500, 32.390392, 21.516218>,  <29.687096, 32.076088, 21.659916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888500, 32.390392, 21.516218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069592, -0.451330, -0.889639,
		-0.861183, 0.422941, -0.281931,
		0.503509, 0.785762, -0.359244,
		30.039553, 32.626122, 21.408445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376091, 32.163387, 21.006285>,  <29.687096, 32.076088, 21.659916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376091, 32.163387, 21.006285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724440, 32.358517, 20.982225>,  <29.933449, 32.475594, 20.967791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724440, 32.358517, 20.982225>,  <29.376091, 32.163387, 21.006285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724440, 32.358517, 20.982225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067457, -0.239834, -0.968467,
		-0.486864, 0.839352, -0.241771,
		0.870869, 0.487821, -0.060147,
		29.985701, 32.504864, 20.964182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421999, 32.777504, 20.518042>,  <29.376091, 32.163387, 21.006285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421999, 32.777504, 20.518042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772516, 32.589134, 20.558710>,  <29.982826, 32.476112, 20.583111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772516, 32.589134, 20.558710>,  <29.421999, 32.777504, 20.518042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772516, 32.589134, 20.558710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092782, -0.372039, -0.923568,
		0.472757, 0.799885, -0.369710,
		0.876295, -0.470925, 0.101669,
		30.035404, 32.447857, 20.589211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748354, 32.863495, 19.977095>,  <29.421999, 32.777504, 20.518042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748354, 32.863495, 19.977095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919445, 32.528328, 20.112709>,  <30.022100, 32.327229, 20.194078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919445, 32.528328, 20.112709>,  <29.748354, 32.863495, 19.977095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919445, 32.528328, 20.112709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121254, -0.424878, -0.897093,
		0.895738, 0.342602, -0.283333,
		0.427728, -0.837916, 0.339037,
		30.047764, 32.276955, 20.214420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197950, 32.576778, 19.507715>,  <29.748354, 32.863495, 19.977095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197950, 32.576778, 19.507715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060032, 32.268024, 19.721375>,  <29.977282, 32.082771, 19.849571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060032, 32.268024, 19.721375>,  <30.197950, 32.576778, 19.507715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060032, 32.268024, 19.721375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420856, -0.381527, -0.822993,
		0.839046, -0.508563, -0.193303,
		-0.344794, -0.771881, 0.534150,
		29.956594, 32.036461, 19.881620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859280, 32.630447, 19.885584>,  <30.197950, 32.576778, 19.507715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859280, 32.630447, 19.885584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857437, 32.902508, 20.178808>,  <30.856331, 33.065742, 20.354742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857437, 32.902508, 20.178808>,  <30.859280, 32.630447, 19.885584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857437, 32.902508, 20.178808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982861, 0.138179, -0.122030,
		-0.184292, 0.719933, -0.669128,
		-0.004606, 0.680149, 0.733059,
		30.856056, 33.106552, 20.398726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319136, 32.494095, 20.563866>,  <30.859280, 32.630447, 19.885584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319136, 32.494095, 20.563866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919439, 32.505096, 20.552828>,  <30.679621, 32.511696, 20.546206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919439, 32.505096, 20.552828>,  <31.319136, 32.494095, 20.563866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919439, 32.505096, 20.552828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000511, 0.699030, 0.715092,
		0.038955, 0.714564, -0.698485,
		-0.999241, 0.027499, -0.027596,
		30.619667, 32.513348, 20.544550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212658, 33.065182, 20.840500>,  <31.319136, 32.494095, 20.563866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212658, 33.065182, 20.840500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843611, 32.918941, 20.889673>,  <30.622183, 32.831196, 20.919176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843611, 32.918941, 20.889673>,  <31.212658, 33.065182, 20.840500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843611, 32.918941, 20.889673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127050, 0.588974, 0.798103,
		-0.364193, 0.720725, -0.589847,
		-0.922617, -0.365603, 0.122932,
		30.566826, 32.809261, 20.926554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748520, 33.628490, 21.009445>,  <31.212658, 33.065182, 20.840500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748520, 33.628490, 21.009445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539188, 33.313339, 21.139290>,  <30.413589, 33.124249, 21.217197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539188, 33.313339, 21.139290>,  <30.748520, 33.628490, 21.009445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539188, 33.313339, 21.139290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277088, 0.517579, 0.809527,
		-0.805823, 0.333701, -0.489175,
		-0.523327, -0.787880, 0.324613,
		30.382191, 33.076977, 21.236673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111755, 33.903751, 21.286327>,  <30.748520, 33.628490, 21.009445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111755, 33.903751, 21.286327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163395, 33.536484, 21.436152>,  <30.194380, 33.316124, 21.526047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163395, 33.536484, 21.436152>,  <30.111755, 33.903751, 21.286327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163395, 33.536484, 21.436152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123101, 0.359962, 0.924810,
		-0.983961, -0.165502, -0.066556,
		0.129100, -0.918170, 0.374562,
		30.202126, 33.261032, 21.548519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672180, 33.922993, 21.835470>,  <30.111755, 33.903751, 21.286327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672180, 33.922993, 21.835470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936220, 33.633263, 21.915087>,  <30.094645, 33.459423, 21.962856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936220, 33.633263, 21.915087>,  <29.672180, 33.922993, 21.835470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936220, 33.633263, 21.915087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066571, 0.320337, 0.944962,
		-0.748221, -0.610520, 0.259674,
		0.660101, -0.724327, 0.199040,
		30.134251, 33.415966, 21.974798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425396, 33.682419, 22.395302>,  <29.672180, 33.922993, 21.835470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425396, 33.682419, 22.395302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808584, 33.567719, 22.392019>,  <30.038498, 33.498898, 22.390049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808584, 33.567719, 22.392019>,  <29.425396, 33.682419, 22.395302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808584, 33.567719, 22.392019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080065, 0.239789, 0.967518,
		-0.275469, -0.927510, 0.252670,
		0.957970, -0.286751, -0.008207,
		30.095976, 33.481693, 22.389557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541771, 33.293728, 23.028522>,  <29.425396, 33.682419, 22.395302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541771, 33.293728, 23.028522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915340, 33.384056, 22.917677>,  <30.139482, 33.438251, 22.851170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915340, 33.384056, 22.917677>,  <29.541771, 33.293728, 23.028522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915340, 33.384056, 22.917677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246580, 0.154308, 0.956759,
		0.258815, -0.961871, 0.088429,
		0.933923, 0.225819, -0.277116,
		30.195518, 33.451801, 22.834541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043552, 32.880325, 23.396343>,  <29.541771, 33.293728, 23.028522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043552, 32.880325, 23.396343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220030, 33.223019, 23.289497>,  <30.325916, 33.428635, 23.225389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220030, 33.223019, 23.289497>,  <30.043552, 32.880325, 23.396343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220030, 33.223019, 23.289497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167096, 0.214019, 0.962431,
		0.881719, -0.469251, -0.048734,
		0.441192, 0.856737, -0.267114,
		30.352388, 33.480042, 23.209364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403275, 32.920700, 23.971756>,  <30.043552, 32.880325, 23.396343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403275, 32.920700, 23.971756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465727, 33.269180, 23.785583>,  <30.503199, 33.478268, 23.673880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465727, 33.269180, 23.785583>,  <30.403275, 32.920700, 23.971756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465727, 33.269180, 23.785583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264554, 0.417111, 0.869500,
		0.951648, -0.258890, -0.165356,
		0.156133, 0.871203, -0.465433,
		30.512568, 33.530540, 23.645954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094873, 33.253922, 24.238739>,  <30.403275, 32.920700, 23.971756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094873, 33.253922, 24.238739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843081, 33.532997, 24.101933>,  <30.692005, 33.700443, 24.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843081, 33.532997, 24.101933>,  <31.094873, 33.253922, 24.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843081, 33.532997, 24.101933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152929, 0.542805, 0.825818,
		0.761816, 0.467534, -0.448385,
		-0.629484, 0.697692, -0.342018,
		30.654236, 33.742306, 23.999327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530430, 33.743073, 24.068808>,  <31.094873, 33.253922, 24.238739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530430, 33.743073, 24.068808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166189, 33.895020, 24.133934>,  <30.947645, 33.986187, 24.173010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166189, 33.895020, 24.133934>,  <31.530430, 33.743073, 24.068808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166189, 33.895020, 24.133934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359944, 0.535329, 0.764109,
		0.203099, 0.754403, -0.624201,
		-0.910599, 0.379867, 0.162818,
		30.893009, 34.008980, 24.182779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556318, 34.512344, 23.913412>,  <31.530430, 33.743073, 24.068808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556318, 34.512344, 23.913412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250784, 34.444603, 24.162531>,  <31.067463, 34.403957, 24.312002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250784, 34.444603, 24.162531>,  <31.556318, 34.512344, 23.913412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250784, 34.444603, 24.162531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400790, 0.631901, 0.663376,
		-0.505890, 0.756321, -0.414794,
		-0.763834, -0.169350, 0.622799,
		31.021633, 34.393799, 24.349371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481714, 35.133541, 24.349327>,  <31.556318, 34.512344, 23.913412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481714, 35.133541, 24.349327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250702, 34.891933, 24.569008>,  <31.112095, 34.746971, 24.700817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250702, 34.891933, 24.569008>,  <31.481714, 35.133541, 24.349327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250702, 34.891933, 24.569008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165663, 0.572029, 0.803330,
		-0.799385, 0.554929, -0.230300,
		-0.577529, -0.604017, 0.549202,
		31.077442, 34.710728, 24.733768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948692, 35.531597, 24.739985>,  <31.481714, 35.133541, 24.349327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948692, 35.531597, 24.739985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957636, 35.182575, 24.935188>,  <30.963003, 34.973164, 25.052311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957636, 35.182575, 24.935188>,  <30.948692, 35.531597, 24.739985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957636, 35.182575, 24.935188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009686, 0.487920, 0.872835,
		-0.999703, -0.024243, 0.002458,
		0.022360, -0.872552, 0.488010,
		30.964344, 34.920811, 25.081591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725645, 35.709782, 25.436607>,  <30.948692, 35.531597, 24.739985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725645, 35.709782, 25.436607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836777, 35.329243, 25.489908>,  <30.903456, 35.100922, 25.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836777, 35.329243, 25.489908>,  <30.725645, 35.709782, 25.436607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836777, 35.329243, 25.489908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016909, 0.143535, 0.989501,
		-0.960482, -0.272659, 0.055964,
		0.277829, -0.951344, 0.133252,
		30.920126, 35.043839, 25.529884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202806, 35.276985, 25.671406>,  <30.725645, 35.709782, 25.436607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202806, 35.276985, 25.671406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574242, 35.178669, 25.782625>,  <30.797102, 35.119678, 25.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574242, 35.178669, 25.782625>,  <30.202806, 35.276985, 25.671406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574242, 35.178669, 25.782625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208514, 0.274230, 0.938786,
		-0.306997, -0.929722, 0.203395,
		0.928588, -0.245794, 0.278048,
		30.852818, 35.104931, 25.866039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043480, 34.903797, 26.232964>,  <30.202806, 35.276985, 25.671406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043480, 34.903797, 26.232964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432964, 34.961674, 26.303339>,  <30.666655, 34.996399, 26.345564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432964, 34.961674, 26.303339>,  <30.043480, 34.903797, 26.232964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432964, 34.961674, 26.303339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207653, 0.246264, 0.946696,
		0.093647, -0.958342, 0.269835,
		0.973710, 0.144687, 0.175941,
		30.725077, 35.005081, 26.356121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185553, 34.519966, 26.842400>,  <30.043480, 34.903797, 26.232964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185553, 34.519966, 26.842400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483229, 34.785496, 26.812695>,  <30.661835, 34.944813, 26.794872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483229, 34.785496, 26.812695>,  <30.185553, 34.519966, 26.842400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483229, 34.785496, 26.812695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129487, 0.252437, 0.958910,
		0.655297, -0.703995, 0.273818,
		0.744190, 0.663827, -0.074263,
		30.706486, 34.984642, 26.790415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503529, 34.447926, 27.507519>,  <30.185553, 34.519966, 26.842400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503529, 34.447926, 27.507519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642334, 34.793873, 27.362421>,  <30.725618, 35.001442, 27.275362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642334, 34.793873, 27.362421>,  <30.503529, 34.447926, 27.507519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642334, 34.793873, 27.362421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161413, 0.436082, 0.885313,
		0.923865, -0.248666, 0.290928,
		0.347015, 0.864869, -0.362743,
		30.746439, 35.053333, 27.253599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019793, 34.736382, 28.054167>,  <30.503529, 34.447926, 27.507519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019793, 34.736382, 28.054167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896866, 35.047508, 27.834873>,  <30.823111, 35.234184, 27.703297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896866, 35.047508, 27.834873>,  <31.019793, 34.736382, 28.054167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896866, 35.047508, 27.834873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314456, 0.460742, 0.829960,
		0.898150, 0.427455, 0.102996,
		-0.307316, 0.777817, -0.548232,
		30.804670, 35.280853, 27.670404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277376, 35.369339, 28.417307>,  <31.019793, 34.736382, 28.054167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277376, 35.369339, 28.417307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986433, 35.487633, 28.169600>,  <30.811867, 35.558609, 28.020975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986433, 35.487633, 28.169600>,  <31.277376, 35.369339, 28.417307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986433, 35.487633, 28.169600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355942, 0.608943, 0.708868,
		0.586734, 0.736024, -0.337656,
		-0.727357, 0.295731, -0.619269,
		30.768227, 35.576351, 27.983818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413403, 36.125385, 28.327488>,  <31.277376, 35.369339, 28.417307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413403, 36.125385, 28.327488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039589, 36.008312, 28.246510>,  <30.815300, 35.938068, 28.197922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039589, 36.008312, 28.246510>,  <31.413403, 36.125385, 28.327488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039589, 36.008312, 28.246510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354036, 0.706865, 0.612373,
		-0.036126, 0.643957, -0.764209,
		-0.934534, -0.292681, -0.202448,
		30.759230, 35.920509, 28.185776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952660, 36.690308, 28.447540>,  <31.413403, 36.125385, 28.327488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952660, 36.690308, 28.447540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713083, 36.370205, 28.459263>,  <30.569338, 36.178143, 28.466297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713083, 36.370205, 28.459263>,  <30.952660, 36.690308, 28.447540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713083, 36.370205, 28.459263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601472, 0.473721, 0.643288,
		-0.528680, 0.367663, -0.765063,
		-0.598939, -0.800258, 0.029308,
		30.533401, 36.130127, 28.468056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324156, 36.906883, 28.354630>,  <30.952660, 36.690308, 28.447540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324156, 36.906883, 28.354630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273764, 36.557465, 28.542690>,  <30.243528, 36.347813, 28.655527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273764, 36.557465, 28.542690>,  <30.324156, 36.906883, 28.354630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273764, 36.557465, 28.542690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537624, 0.458415, 0.707683,
		-0.833720, -0.163609, -0.527393,
		-0.125981, -0.873549, 0.470150,
		30.235970, 36.295399, 28.683735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544313, 36.812515, 28.622171>,  <30.324156, 36.906883, 28.354630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544313, 36.812515, 28.622171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782589, 36.578304, 28.842104>,  <29.925554, 36.437778, 28.974064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782589, 36.578304, 28.842104>,  <29.544313, 36.812515, 28.622171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782589, 36.578304, 28.842104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538995, 0.216126, 0.814109,
		-0.595516, -0.781311, -0.186853,
		0.595688, -0.585528, 0.549829,
		29.961296, 36.402645, 29.007053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126352, 36.797066, 29.296505>,  <29.544313, 36.812515, 28.622171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126352, 36.797066, 29.296505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439789, 36.579174, 29.416010>,  <29.627850, 36.448441, 29.487713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439789, 36.579174, 29.416010>,  <29.126352, 36.797066, 29.296505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439789, 36.579174, 29.416010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229608, 0.192922, 0.953971,
		-0.577293, -0.816120, 0.026097,
		0.783590, -0.544729, 0.298760,
		29.674866, 36.415756, 29.505638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871647, 36.352417, 29.826307>,  <29.126352, 36.797066, 29.296505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871647, 36.352417, 29.826307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268145, 36.396374, 29.855574>,  <29.506044, 36.422749, 29.873133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268145, 36.396374, 29.855574>,  <28.871647, 36.352417, 29.826307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268145, 36.396374, 29.855574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100531, 0.269056, 0.957863,
		0.085578, -0.956834, 0.277749,
		0.991247, 0.109895, 0.073166,
		29.565519, 36.429344, 29.877523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009985, 35.899174, 30.329157>,  <28.871647, 36.352417, 29.826307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009985, 35.899174, 30.329157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325523, 36.144905, 30.321968>,  <29.514847, 36.292343, 30.317654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325523, 36.144905, 30.321968>,  <29.009985, 35.899174, 30.329157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325523, 36.144905, 30.321968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162761, 0.237020, 0.957774,
		0.592648, -0.752610, 0.286961,
		0.788846, 0.614329, -0.017974,
		29.562178, 36.329205, 30.316576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467613, 35.762100, 31.014980>,  <29.009985, 35.899174, 30.329157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467613, 35.762100, 31.014980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570765, 36.120903, 30.871386>,  <29.632654, 36.336185, 30.785229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570765, 36.120903, 30.871386>,  <29.467613, 35.762100, 31.014980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570765, 36.120903, 30.871386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086310, 0.348679, 0.933260,
		0.962315, -0.271649, 0.012495,
		0.257876, 0.897012, -0.358985,
		29.648127, 36.390007, 30.763691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156878, 35.932388, 31.392900>,  <29.467613, 35.762100, 31.014980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156878, 35.932388, 31.392900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005669, 36.278755, 31.261885>,  <29.914944, 36.486576, 31.183275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005669, 36.278755, 31.261885>,  <30.156878, 35.932388, 31.392900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005669, 36.278755, 31.261885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031112, 0.341708, 0.939291,
		0.925273, 0.365265, -0.102233,
		-0.378024, 0.865920, -0.327538,
		29.892262, 36.538532, 31.163624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657604, 36.405228, 31.522230>,  <30.156878, 35.932388, 31.392900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657604, 36.405228, 31.522230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309223, 36.600773, 31.502443>,  <30.100195, 36.718102, 31.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309223, 36.600773, 31.502443>,  <30.657604, 36.405228, 31.522230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309223, 36.600773, 31.502443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073592, 0.229321, 0.970565,
		0.485821, 0.841677, -0.235705,
		-0.870955, 0.488867, -0.049468,
		30.047937, 36.747433, 31.487602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763590, 36.982971, 31.895617>,  <30.657604, 36.405228, 31.522230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763590, 36.982971, 31.895617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363667, 36.978306, 31.889292>,  <30.123713, 36.975506, 31.885498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363667, 36.978306, 31.889292>,  <30.763590, 36.982971, 31.895617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363667, 36.978306, 31.889292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017817, 0.199142, 0.979809,
		-0.008279, 0.979901, -0.199311,
		-0.999807, -0.011663, -0.015810,
		30.063725, 36.974808, 31.884548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433575, 37.605530, 32.249657>,  <30.763590, 36.982971, 31.895617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433575, 37.605530, 32.249657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164959, 37.309311, 32.259617>,  <30.003790, 37.131580, 32.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164959, 37.309311, 32.259617>,  <30.433575, 37.605530, 32.249657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164959, 37.309311, 32.259617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040069, 0.069855, 0.996752,
		-0.739884, 0.668361, -0.076584,
		-0.671540, -0.740549, 0.024904,
		29.963497, 37.087147, 32.267090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007801, 37.815353, 32.815830>,  <30.433575, 37.605530, 32.249657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007801, 37.815353, 32.815830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944351, 37.424946, 32.756199>,  <29.906281, 37.190701, 32.720421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944351, 37.424946, 32.756199>,  <30.007801, 37.815353, 32.815830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944351, 37.424946, 32.756199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110528, -0.167594, 0.979641,
		-0.981133, 0.138918, 0.134462,
		-0.158624, -0.976020, -0.149078,
		29.896765, 37.132141, 32.711475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491716, 37.638672, 33.246395>,  <30.007801, 37.815353, 32.815830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491716, 37.638672, 33.246395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643843, 37.276855, 33.169273>,  <29.735119, 37.059765, 33.123001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643843, 37.276855, 33.169273>,  <29.491716, 37.638672, 33.246395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643843, 37.276855, 33.169273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157055, -0.142274, 0.977288,
		-0.911424, -0.401959, 0.087952,
		0.380317, -0.904537, -0.192802,
		29.757938, 37.005493, 33.111431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245279, 37.162411, 33.677116>,  <29.491716, 37.638672, 33.246395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245279, 37.162411, 33.677116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569904, 36.955395, 33.568665>,  <29.764679, 36.831184, 33.503593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569904, 36.955395, 33.568665>,  <29.245279, 37.162411, 33.677116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569904, 36.955395, 33.568665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092076, -0.344971, 0.934086,
		-0.576964, -0.783034, -0.232312,
		0.811563, -0.517544, -0.271134,
		29.813374, 36.800133, 33.487324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178852, 36.471493, 33.919815>,  <29.245279, 37.162411, 33.677116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178852, 36.471493, 33.919815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571922, 36.501266, 33.851921>,  <29.807764, 36.519131, 33.811184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571922, 36.501266, 33.851921>,  <29.178852, 36.471493, 33.919815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571922, 36.501266, 33.851921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184769, -0.321526, 0.928699,
		0.014556, -0.943971, -0.329709,
		0.982674, 0.074438, -0.169736,
		29.866724, 36.523598, 33.800999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585463, 35.836998, 34.047951>,  <29.178852, 36.471493, 33.919815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585463, 35.836998, 34.047951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858021, 36.127277, 34.086048>,  <30.021555, 36.301445, 34.108906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858021, 36.127277, 34.086048>,  <29.585463, 35.836998, 34.047951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858021, 36.127277, 34.086048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352933, -0.439776, 0.825854,
		0.641203, -0.529118, -0.555782,
		0.681394, 0.725694, 0.095242,
		30.062439, 36.344986, 34.114620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202475, 35.582123, 34.392776>,  <29.585463, 35.836998, 34.047951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202475, 35.582123, 34.392776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218727, 35.975922, 34.461037>,  <30.228479, 36.212200, 34.501995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218727, 35.975922, 34.461037>,  <30.202475, 35.582123, 34.392776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218727, 35.975922, 34.461037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433272, -0.171262, 0.884842,
		0.900347, 0.037985, -0.433512,
		0.040633, 0.984493, 0.170653,
		30.230917, 36.271271, 34.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773685, 35.732861, 34.796452>,  <30.202475, 35.582123, 34.392776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773685, 35.732861, 34.796452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539278, 36.052204, 34.851883>,  <30.398634, 36.243809, 34.885143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539278, 36.052204, 34.851883>,  <30.773685, 35.732861, 34.796452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539278, 36.052204, 34.851883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220898, -0.007145, 0.975271,
		0.779606, 0.602139, -0.172169,
		-0.586019, 0.798359, 0.138581,
		30.363472, 36.291714, 34.893456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192699, 36.168842, 35.147461>,  <30.773685, 35.732861, 34.796452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192699, 36.168842, 35.147461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816200, 36.284203, 35.217751>,  <30.590302, 36.353420, 35.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816200, 36.284203, 35.217751>,  <31.192699, 36.168842, 35.147461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816200, 36.284203, 35.217751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220688, 0.131380, 0.966455,
		0.255641, 0.948453, -0.187308,
		-0.941246, 0.288403, 0.175726,
		30.533827, 36.370724, 35.270470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292067, 36.724346, 35.712204>,  <31.192699, 36.168842, 35.147461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292067, 36.724346, 35.712204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909472, 36.607853, 35.719250>,  <30.679914, 36.537956, 35.723476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909472, 36.607853, 35.719250>,  <31.292067, 36.724346, 35.712204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909472, 36.607853, 35.719250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086938, -0.226873, 0.970036,
		-0.278513, 0.929361, 0.242321,
		-0.956490, -0.291234, 0.017610,
		30.622524, 36.520481, 35.724533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949738, 36.526020, 36.048092>,  <31.292067, 36.724346, 35.712204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949738, 36.526020, 36.048092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329048, 36.610374, 36.143005>,  <32.556633, 36.660988, 36.199951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329048, 36.610374, 36.143005>,  <31.949738, 36.526020, 36.048092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329048, 36.610374, 36.143005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236199, 0.030679, -0.971220,
		-0.212094, 0.977030, -0.020718,
		0.948275, 0.210884, 0.237280,
		32.613529, 36.673641, 36.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106712, 37.056946, 35.641289>,  <31.949738, 36.526020, 36.048092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106712, 37.056946, 35.641289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458866, 36.894051, 35.738510>,  <32.670158, 36.796314, 35.796844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458866, 36.894051, 35.738510>,  <32.106712, 37.056946, 35.641289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458866, 36.894051, 35.738510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258723, -0.017106, -0.965800,
		0.397467, 0.913163, 0.090301,
		0.880388, -0.407236, 0.243055,
		32.722984, 36.771881, 35.811428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582535, 37.375286, 35.238491>,  <32.106712, 37.056946, 35.641289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582535, 37.375286, 35.238491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782887, 37.047340, 35.349449>,  <32.903095, 36.850574, 35.416023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782887, 37.047340, 35.349449>,  <32.582535, 37.375286, 35.238491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782887, 37.047340, 35.349449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338940, -0.109107, -0.934460,
		0.796394, 0.562070, 0.223235,
		0.500875, -0.819862, 0.277400,
		32.933147, 36.801380, 35.432671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278988, 37.518272, 35.149273>,  <32.582535, 37.375286, 35.238491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278988, 37.518272, 35.149273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252041, 37.119480, 35.133842>,  <33.235874, 36.880203, 35.124584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252041, 37.119480, 35.133842>,  <33.278988, 37.518272, 35.149273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252041, 37.119480, 35.133842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461963, 0.003103, -0.886893,
		0.884337, -0.077569, 0.460360,
		-0.067367, -0.996982, -0.038578,
		33.231831, 36.820385, 35.122269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858963, 37.314869, 34.821362>,  <33.278988, 37.518272, 35.149273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858963, 37.314869, 34.821362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633492, 36.984772, 34.807301>,  <33.498207, 36.786713, 34.798862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633492, 36.984772, 34.807301>,  <33.858963, 37.314869, 34.821362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633492, 36.984772, 34.807301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305591, -0.168817, -0.937078,
		0.767383, -0.538956, 0.347346,
		-0.563682, -0.825244, -0.035153,
		33.464386, 36.737198, 34.796753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266140, 36.808514, 34.496170>,  <33.858963, 37.314869, 34.821362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266140, 36.808514, 34.496170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905708, 36.636539, 34.473461>,  <33.689449, 36.533356, 34.459835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905708, 36.636539, 34.473461>,  <34.266140, 36.808514, 34.496170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905708, 36.636539, 34.473461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189495, -0.272588, -0.943285,
		0.390072, -0.860729, 0.327092,
		-0.901074, -0.429932, -0.056775,
		33.635387, 36.507561, 34.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388470, 36.219379, 34.087399>,  <34.266140, 36.808514, 34.496170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388470, 36.219379, 34.087399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993996, 36.285557, 34.084000>,  <33.757313, 36.325264, 34.081959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993996, 36.285557, 34.084000>,  <34.388470, 36.219379, 34.087399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993996, 36.285557, 34.084000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029178, -0.223968, -0.974160,
		-0.163064, -0.960453, 0.225701,
		-0.986184, 0.165436, -0.008497,
		33.698139, 36.335190, 34.081451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937370, 35.538143, 33.818256>,  <34.388470, 36.219379, 34.087399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937370, 35.538143, 33.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738434, 35.877850, 33.747383>,  <33.619072, 36.081673, 33.704861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738434, 35.877850, 33.747383>,  <33.937370, 35.538143, 33.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738434, 35.877850, 33.747383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019363, -0.215050, -0.976411,
		-0.867337, -0.482183, 0.123398,
		-0.497345, 0.849266, -0.177184,
		33.589230, 36.132629, 33.694229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376415, 35.381626, 33.401779>,  <33.937370, 35.538143, 33.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376415, 35.381626, 33.401779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419571, 35.774731, 33.341732>,  <33.445465, 36.010593, 33.305706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419571, 35.774731, 33.341732>,  <33.376415, 35.381626, 33.401779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419571, 35.774731, 33.341732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147256, -0.133535, -0.980043,
		-0.983197, 0.127842, 0.130311,
		0.107890, 0.982764, -0.150116,
		33.451939, 36.069561, 33.296696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880608, 35.537270, 32.900314>,  <33.376415, 35.381626, 33.401779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880608, 35.537270, 32.900314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142441, 35.837444, 32.863720>,  <33.299541, 36.017548, 32.841763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142441, 35.837444, 32.863720>,  <32.880608, 35.537270, 32.900314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142441, 35.837444, 32.863720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082968, -0.048968, -0.995348,
		-0.751423, 0.659129, 0.030208,
		0.654583, 0.750434, -0.091482,
		33.338818, 36.062576, 32.836277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574997, 35.896793, 32.439590>,  <32.880608, 35.537270, 32.900314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574997, 35.896793, 32.439590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946537, 36.040688, 32.404205>,  <33.169460, 36.127022, 32.382977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946537, 36.040688, 32.404205>,  <32.574997, 35.896793, 32.439590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946537, 36.040688, 32.404205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118474, 0.062217, -0.991006,
		-0.350992, 0.930979, 0.100409,
		0.928853, 0.359731, -0.088459,
		33.225193, 36.148605, 32.377666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571747, 36.383327, 31.957783>,  <32.574997, 35.896793, 32.439590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571747, 36.383327, 31.957783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965969, 36.317650, 31.974415>,  <33.202503, 36.278244, 31.984394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965969, 36.317650, 31.974415>,  <32.571747, 36.383327, 31.957783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965969, 36.317650, 31.974415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059858, 0.107998, -0.992347,
		0.158450, 0.980498, 0.116266,
		0.985551, -0.164197, 0.041578,
		33.261635, 36.268391, 31.986889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008270, 36.947998, 31.567612>,  <32.571747, 36.383327, 31.957783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008270, 36.947998, 31.567612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206192, 36.600410, 31.570524>,  <33.324947, 36.391857, 31.572271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206192, 36.600410, 31.570524>,  <33.008270, 36.947998, 31.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206192, 36.600410, 31.570524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136894, 0.069671, -0.988133,
		0.858153, 0.489932, 0.153431,
		0.494807, -0.868972, 0.007280,
		33.354633, 36.339718, 31.572708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298271, 36.981880, 31.020884>,  <33.008270, 36.947998, 31.567612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298271, 36.981880, 31.020884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370155, 36.595070, 31.093065>,  <33.413284, 36.362984, 31.136374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370155, 36.595070, 31.093065>,  <33.298271, 36.981880, 31.020884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370155, 36.595070, 31.093065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093069, -0.199331, -0.975503,
		0.979308, 0.158510, -0.125822,
		0.179707, -0.967027, 0.180454,
		33.424068, 36.304962, 31.147202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763676, 36.872757, 30.539928>,  <33.298271, 36.981880, 31.020884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763676, 36.872757, 30.539928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581581, 36.532413, 30.644854>,  <33.472324, 36.328209, 30.707808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581581, 36.532413, 30.644854>,  <33.763676, 36.872757, 30.539928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581581, 36.532413, 30.644854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075256, -0.256785, -0.963534,
		0.887186, -0.458373, 0.052865,
		-0.455233, -0.850856, 0.262312,
		33.445011, 36.277157, 30.723547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136833, 36.254662, 30.362507>,  <33.763676, 36.872757, 30.539928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136833, 36.254662, 30.362507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753418, 36.143135, 30.386049>,  <33.523369, 36.076221, 30.400175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753418, 36.143135, 30.386049>,  <34.136833, 36.254662, 30.362507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753418, 36.143135, 30.386049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020189, -0.272476, -0.961951,
		0.284242, -0.920880, 0.266808,
		-0.958540, -0.278813, 0.058858,
		33.465855, 36.059490, 30.403706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123634, 35.551449, 30.121433>,  <34.136833, 36.254662, 30.362507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123634, 35.551449, 30.121433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737320, 35.654903, 30.113718>,  <33.505531, 35.716976, 30.109089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737320, 35.654903, 30.113718>,  <34.123634, 35.551449, 30.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737320, 35.654903, 30.113718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079618, -0.366426, -0.927035,
		-0.246833, -0.893777, 0.374480,
		-0.965782, 0.258638, -0.019286,
		33.447586, 35.732494, 30.107933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730812, 34.985390, 29.760685>,  <34.123634, 35.551449, 30.121433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730812, 34.985390, 29.760685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478271, 35.294807, 29.738682>,  <33.326748, 35.480457, 29.725481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478271, 35.294807, 29.738682>,  <33.730812, 34.985390, 29.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478271, 35.294807, 29.738682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188223, -0.221659, -0.956786,
		-0.752311, -0.593711, 0.285543,
		-0.631348, 0.773547, -0.055006,
		33.288868, 35.526871, 29.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086006, 34.799461, 29.470095>,  <33.730812, 34.985390, 29.760685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086006, 34.799461, 29.470095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114529, 35.190029, 29.388586>,  <33.131641, 35.424370, 29.339680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114529, 35.190029, 29.388586>,  <33.086006, 34.799461, 29.470095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114529, 35.190029, 29.388586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117712, -0.194629, -0.973788,
		-0.990484, 0.093421, 0.101058,
		0.071303, 0.976418, -0.203774,
		33.135921, 35.482956, 29.327454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621284, 34.806770, 28.873877>,  <33.086006, 34.799461, 29.470095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621284, 34.806770, 28.873877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841404, 35.140465, 28.859871>,  <32.973476, 35.340679, 28.851467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841404, 35.140465, 28.859871>,  <32.621284, 34.806770, 28.873877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841404, 35.140465, 28.859871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077942, 0.009571, -0.996912,
		-0.831322, 0.551328, 0.070289,
		0.550298, 0.834233, -0.035015,
		33.006493, 35.390736, 28.849367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299099, 35.226063, 28.490118>,  <32.621284, 34.806770, 28.873877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299099, 35.226063, 28.490118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668945, 35.378353, 28.485535>,  <32.890854, 35.469727, 28.482784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668945, 35.378353, 28.485535>,  <32.299099, 35.226063, 28.490118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668945, 35.378353, 28.485535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032505, 0.048902, -0.998275,
		-0.379505, 0.923396, 0.057591,
		0.924619, 0.380722, -0.011456,
		32.946331, 35.492569, 28.482098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321320, 35.730820, 27.999092>,  <32.299099, 35.226063, 28.490118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321320, 35.730820, 27.999092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714630, 35.672718, 28.043026>,  <32.950619, 35.637856, 28.069386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714630, 35.672718, 28.043026>,  <32.321320, 35.730820, 27.999092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714630, 35.672718, 28.043026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091908, -0.124850, -0.987910,
		0.157215, 0.981485, -0.109411,
		0.983278, -0.145259, 0.109835,
		33.009613, 35.629139, 28.075975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643326, 36.140484, 27.462141>,  <32.321320, 35.730820, 27.999092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643326, 36.140484, 27.462141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888298, 35.839745, 27.559839>,  <33.035282, 35.659302, 27.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888298, 35.839745, 27.559839>,  <32.643326, 36.140484, 27.462141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888298, 35.839745, 27.559839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102580, -0.230770, -0.967586,
		0.783842, 0.617632, -0.064206,
		0.612429, -0.751848, 0.244244,
		33.072025, 35.614189, 27.633112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100166, 36.050549, 26.844599>,  <32.643326, 36.140484, 27.462141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100166, 36.050549, 26.844599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145695, 35.720383, 27.065773>,  <33.173012, 35.522285, 27.198477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145695, 35.720383, 27.065773>,  <33.100166, 36.050549, 26.844599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145695, 35.720383, 27.065773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130688, -0.539277, -0.831926,
		0.984868, 0.166955, 0.046489,
		0.113824, -0.825413, 0.552935,
		33.179840, 35.472759, 27.231653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706635, 35.712303, 26.544691>,  <33.100166, 36.050549, 26.844599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706635, 35.712303, 26.544691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553249, 35.403275, 26.747112>,  <33.461216, 35.217857, 26.868565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553249, 35.403275, 26.747112>,  <33.706635, 35.712303, 26.544691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553249, 35.403275, 26.747112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438699, -0.634548, -0.636311,
		0.812710, -0.021998, 0.582253,
		-0.383465, -0.772570, 0.506053,
		33.438210, 35.171505, 26.898928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233902, 35.213478, 26.602316>,  <33.706635, 35.712303, 26.544691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233902, 35.213478, 26.602316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880993, 35.029762, 26.643604>,  <33.669247, 34.919533, 26.668377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880993, 35.029762, 26.643604>,  <34.233902, 35.213478, 26.602316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880993, 35.029762, 26.643604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352050, -0.789325, -0.503017,
		0.312506, -0.407458, 0.858090,
		-0.882270, -0.459287, 0.103223,
		33.616310, 34.891975, 26.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395325, 34.479019, 26.553511>,  <34.233902, 35.213478, 26.602316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395325, 34.479019, 26.553511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000305, 34.507309, 26.497307>,  <33.763294, 34.524284, 26.463585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000305, 34.507309, 26.497307>,  <34.395325, 34.479019, 26.553511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000305, 34.507309, 26.497307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061557, -0.648245, -0.758939,
		-0.144759, -0.758140, 0.635821,
		-0.987550, 0.070724, -0.140508,
		33.704041, 34.528526, 26.455154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090309, 33.882702, 26.672321>,  <34.395325, 34.479019, 26.553511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090309, 33.882702, 26.672321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832230, 34.076248, 26.435818>,  <33.677380, 34.192375, 26.293917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832230, 34.076248, 26.435818>,  <34.090309, 33.882702, 26.672321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832230, 34.076248, 26.435818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093830, -0.717845, -0.689851,
		-0.758227, -0.500572, 0.417755,
		-0.645203, 0.483866, -0.591258,
		33.638668, 34.221409, 26.258440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571083, 33.367573, 26.476315>,  <34.090309, 33.882702, 26.672321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571083, 33.367573, 26.476315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552464, 33.670547, 26.215815>,  <33.541290, 33.852333, 26.059515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552464, 33.670547, 26.215815>,  <33.571083, 33.367573, 26.476315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552464, 33.670547, 26.215815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124017, -0.642532, -0.756157,
		-0.991188, -0.115965, -0.064024,
		-0.046551, 0.757433, -0.651251,
		33.538498, 33.897778, 26.020439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128254, 33.145905, 25.907854>,  <33.571083, 33.367573, 26.476315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128254, 33.145905, 25.907854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350540, 33.439865, 25.752369>,  <33.483910, 33.616241, 25.659077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350540, 33.439865, 25.752369>,  <33.128254, 33.145905, 25.907854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350540, 33.439865, 25.752369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059068, -0.501277, -0.863268,
		-0.829273, 0.456769, -0.321975,
		0.555713, 0.734904, -0.388715,
		33.517254, 33.660336, 25.635754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840527, 33.171963, 25.314285>,  <33.128254, 33.145905, 25.907854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840527, 33.171963, 25.314285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200550, 33.340546, 25.269995>,  <33.416565, 33.441696, 25.243420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200550, 33.340546, 25.269995>,  <32.840527, 33.171963, 25.314285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200550, 33.340546, 25.269995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164733, -0.564332, -0.808945,
		-0.403424, 0.709861, -0.577362,
		0.900062, 0.421458, -0.110727,
		33.470570, 33.466984, 25.236776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938599, 33.345184, 24.595285>,  <32.840527, 33.171963, 25.314285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938599, 33.345184, 24.595285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315887, 33.327011, 24.726898>,  <33.542263, 33.316109, 24.805866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315887, 33.327011, 24.726898>,  <32.938599, 33.345184, 24.595285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315887, 33.327011, 24.726898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290479, -0.367586, -0.883461,
		0.161084, 0.928879, -0.333519,
		0.943225, -0.045431, 0.329032,
		33.598854, 33.313381, 24.825607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360882, 33.586418, 23.972101>,  <32.938599, 33.345184, 24.595285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360882, 33.586418, 23.972101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598976, 33.398849, 24.233116>,  <33.741833, 33.286308, 24.389725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598976, 33.398849, 24.233116>,  <33.360882, 33.586418, 23.972101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598976, 33.398849, 24.233116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424244, -0.506273, -0.750802,
		0.682428, 0.723742, -0.102417,
		0.595238, -0.468919, 0.652539,
		33.777546, 33.258175, 24.428877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003468, 33.643166, 23.737646>,  <33.360882, 33.586418, 23.972101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003468, 33.643166, 23.737646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018894, 33.330486, 23.986631>,  <34.028152, 33.142879, 24.136023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018894, 33.330486, 23.986631>,  <34.003468, 33.643166, 23.737646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018894, 33.330486, 23.986631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438249, -0.546588, -0.713568,
		0.898026, 0.300317, 0.321496,
		0.038571, -0.781698, 0.622463,
		34.030464, 33.095978, 24.173370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685104, 33.424759, 23.737524>,  <34.003468, 33.643166, 23.737646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685104, 33.424759, 23.737524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487183, 33.100670, 23.863197>,  <34.368431, 32.906216, 23.938602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487183, 33.100670, 23.863197>,  <34.685104, 33.424759, 23.737524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487183, 33.100670, 23.863197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549211, -0.571748, -0.609484,
		0.673451, -0.129021, 0.727885,
		-0.494803, -0.810221, 0.314185,
		34.338741, 32.857605, 23.957453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215565, 32.938438, 23.920061>,  <34.685104, 33.424759, 23.737524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215565, 32.938438, 23.920061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891415, 32.711647, 23.860975>,  <34.696922, 32.575573, 23.825523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891415, 32.711647, 23.860975>,  <35.215565, 32.938438, 23.920061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891415, 32.711647, 23.860975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524765, -0.590231, -0.613392,
		0.260597, -0.574594, 0.775842,
		-0.810377, -0.566983, -0.147714,
		34.648300, 32.541553, 23.816662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470901, 32.269489, 24.053999>,  <35.215565, 32.938438, 23.920061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470901, 32.269489, 24.053999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139217, 32.198990, 23.841831>,  <34.940208, 32.156689, 23.714531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139217, 32.198990, 23.841831>,  <35.470901, 32.269489, 24.053999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139217, 32.198990, 23.841831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506674, -0.637699, -0.580190,
		-0.235989, -0.749850, 0.618089,
		-0.829211, -0.176251, -0.530420,
		34.890453, 32.146114, 23.682705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429134, 31.543516, 24.030582>,  <35.470901, 32.269489, 24.053999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429134, 31.543516, 24.030582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233269, 31.714367, 23.726532>,  <35.115749, 31.816877, 23.544102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233269, 31.714367, 23.726532>,  <35.429134, 31.543516, 24.030582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233269, 31.714367, 23.726532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556578, -0.517944, -0.649581,
		-0.671156, -0.741146, 0.015889,
		-0.489663, 0.427126, -0.760127,
		35.086369, 31.842505, 23.498493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687214, 31.090187, 23.446787>,  <35.429134, 31.543516, 24.030582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687214, 31.090187, 23.446787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041790, 30.938053, 23.341286>,  <36.254536, 30.846773, 23.277985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041790, 30.938053, 23.341286>,  <35.687214, 31.090187, 23.446787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041790, 30.938053, 23.341286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184775, -0.231678, 0.955083,
		-0.424358, -0.895360, -0.135093,
		0.886442, -0.380335, -0.263754,
		36.307724, 30.823952, 23.262159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747486, 30.347322, 23.623390>,  <35.687214, 31.090187, 23.446787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747486, 30.347322, 23.623390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104965, 30.526743, 23.619148>,  <36.319450, 30.634396, 23.616604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104965, 30.526743, 23.619148>,  <35.747486, 30.347322, 23.623390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104965, 30.526743, 23.619148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056784, -0.089629, 0.994355,
		0.445069, -0.889251, -0.105572,
		0.893694, 0.448552, -0.010604,
		36.373074, 30.661308, 23.615967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084023, 30.046625, 24.163376>,  <35.747486, 30.347322, 23.623390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084023, 30.046625, 24.163376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334763, 30.348991, 24.087845>,  <36.485207, 30.530411, 24.042526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334763, 30.348991, 24.087845>,  <36.084023, 30.046625, 24.163376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334763, 30.348991, 24.087845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090486, 0.170081, 0.981267,
		0.773870, -0.632191, 0.038215,
		0.626847, 0.755915, -0.188825,
		36.522816, 30.575766, 24.031197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706902, 29.963671, 24.568752>,  <36.084023, 30.046625, 24.163376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706902, 29.963671, 24.568752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676483, 30.357485, 24.505619>,  <36.658234, 30.593773, 24.467739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676483, 30.357485, 24.505619>,  <36.706902, 29.963671, 24.568752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676483, 30.357485, 24.505619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094034, 0.164668, 0.981857,
		0.992661, 0.059820, -0.105101,
		-0.076041, 0.984533, -0.157834,
		36.653671, 30.652845, 24.458269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144367, 30.224564, 24.977343>,  <36.706902, 29.963671, 24.568752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144367, 30.224564, 24.977343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939606, 30.557259, 24.891399>,  <36.816750, 30.756876, 24.839832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939606, 30.557259, 24.891399>,  <37.144367, 30.224564, 24.977343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939606, 30.557259, 24.891399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141421, 0.328297, 0.933928,
		0.847322, 0.447697, -0.285682,
		-0.511905, 0.831738, -0.214860,
		36.786034, 30.806780, 24.826941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575134, 30.790590, 25.258688>,  <37.144367, 30.224564, 24.977343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575134, 30.790590, 25.258688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194504, 30.908089, 25.222441>,  <36.966125, 30.978588, 25.200691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194504, 30.908089, 25.222441>,  <37.575134, 30.790590, 25.258688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194504, 30.908089, 25.222441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071851, 0.499159, 0.863526,
		0.298890, 0.815202, -0.496095,
		-0.951579, 0.293745, -0.090620,
		36.909031, 30.996212, 25.195255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610909, 31.550158, 25.439146>,  <37.575134, 30.790590, 25.258688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610909, 31.550158, 25.439146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238182, 31.411751, 25.482939>,  <37.014545, 31.328707, 25.509214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238182, 31.411751, 25.482939>,  <37.610909, 31.550158, 25.439146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238182, 31.411751, 25.482939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069968, 0.467282, 0.881335,
		-0.356118, 0.813584, -0.459632,
		-0.931818, -0.346019, 0.109483,
		36.958637, 31.307945, 25.515783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110485, 32.117107, 25.635735>,  <37.610909, 31.550158, 25.439146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110485, 32.117107, 25.635735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909817, 31.783560, 25.727816>,  <36.789417, 31.583431, 25.783064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909817, 31.783560, 25.727816>,  <37.110485, 32.117107, 25.635735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909817, 31.783560, 25.727816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357107, 0.442007, 0.822863,
		-0.787911, 0.330597, -0.519521,
		-0.501669, -0.833868, 0.230203,
		36.759315, 31.533400, 25.796877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455547, 32.276794, 25.800991>,  <37.110485, 32.117107, 25.635735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455547, 32.276794, 25.800991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511917, 31.925741, 25.984253>,  <36.545738, 31.715111, 26.094210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511917, 31.925741, 25.984253>,  <36.455547, 32.276794, 25.800991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511917, 31.925741, 25.984253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260538, 0.413582, 0.872393,
		-0.955122, -0.242311, -0.170371,
		0.140929, -0.877631, 0.458152,
		36.554195, 31.662453, 26.121698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846027, 32.244953, 26.230522>,  <36.455547, 32.276794, 25.800991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846027, 32.244953, 26.230522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138073, 32.009472, 26.369289>,  <36.313301, 31.868183, 26.452549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138073, 32.009472, 26.369289>,  <35.846027, 32.244953, 26.230522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138073, 32.009472, 26.369289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159566, 0.346771, 0.924277,
		-0.664429, -0.730188, 0.159246,
		0.730118, -0.588707, 0.346918,
		36.357109, 31.832859, 26.473364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534309, 31.814053, 26.735157>,  <35.846027, 32.244953, 26.230522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534309, 31.814053, 26.735157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925514, 31.786957, 26.814056>,  <36.160236, 31.770699, 26.861395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925514, 31.786957, 26.814056>,  <35.534309, 31.814053, 26.735157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925514, 31.786957, 26.814056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180035, 0.203186, 0.962446,
		-0.105275, -0.976794, 0.186522,
		0.978011, -0.067741, 0.197247,
		36.218918, 31.766634, 26.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620895, 31.375042, 27.256235>,  <35.534309, 31.814053, 26.735157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620895, 31.375042, 27.256235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969414, 31.570538, 27.274014>,  <36.178524, 31.687836, 27.284679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969414, 31.570538, 27.274014>,  <35.620895, 31.375042, 27.256235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969414, 31.570538, 27.274014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183529, 0.240512, 0.953137,
		0.455146, -0.838623, 0.299255,
		0.871297, 0.488739, 0.044444,
		36.230804, 31.717159, 27.287346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812313, 31.167124, 27.880383>,  <35.620895, 31.375042, 27.256235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812313, 31.167124, 27.880383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034782, 31.491215, 27.806414>,  <36.168266, 31.685669, 27.762032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034782, 31.491215, 27.806414>,  <35.812313, 31.167124, 27.880383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034782, 31.491215, 27.806414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245704, 0.372878, 0.894758,
		0.793913, -0.452207, 0.406462,
		0.556177, 0.810229, -0.184924,
		36.201637, 31.734283, 27.750937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198406, 31.285961, 28.488020>,  <35.812313, 31.167124, 27.880383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198406, 31.285961, 28.488020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167915, 31.635191, 28.295382>,  <36.149620, 31.844728, 28.179798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167915, 31.635191, 28.295382>,  <36.198406, 31.285961, 28.488020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167915, 31.635191, 28.295382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013488, 0.483858, 0.875042,
		0.996999, 0.060208, -0.048660,
		-0.076229, 0.873073, -0.481594,
		36.145046, 31.897112, 28.150904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682365, 31.753788, 28.756079>,  <36.198406, 31.285961, 28.488020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682365, 31.753788, 28.756079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409882, 31.983109, 28.573971>,  <36.246391, 32.120701, 28.464706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409882, 31.983109, 28.573971>,  <36.682365, 31.753788, 28.756079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409882, 31.983109, 28.573971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091462, 0.550363, 0.829901,
		0.726349, 0.606980, -0.322479,
		-0.681214, 0.573303, -0.455271,
		36.205517, 32.155098, 28.437389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813431, 32.334862, 29.115505>,  <36.682365, 31.753788, 28.756079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813431, 32.334862, 29.115505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477081, 32.424644, 28.918509>,  <36.275272, 32.478516, 28.800310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477081, 32.424644, 28.918509>,  <36.813431, 32.334862, 29.115505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477081, 32.424644, 28.918509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289129, 0.582934, 0.759337,
		0.457531, 0.780900, -0.425276,
		-0.840874, 0.224461, -0.492491,
		36.224819, 32.491982, 28.770761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731892, 33.038197, 29.173271>,  <36.813431, 32.334862, 29.115505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731892, 33.038197, 29.173271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362942, 32.928650, 29.064299>,  <36.141571, 32.862923, 28.998915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362942, 32.928650, 29.064299>,  <36.731892, 33.038197, 29.173271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362942, 32.928650, 29.064299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386230, 0.666920, 0.637215,
		0.007176, 0.692973, -0.720927,
		-0.922375, -0.273871, -0.272433,
		36.086227, 32.846489, 28.982569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367279, 33.707157, 29.081772>,  <36.731892, 33.038197, 29.173271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367279, 33.707157, 29.081772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111633, 33.407814, 29.152754>,  <35.958244, 33.228207, 29.195343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111633, 33.407814, 29.152754>,  <36.367279, 33.707157, 29.081772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111633, 33.407814, 29.152754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414743, 0.529651, 0.739904,
		-0.647703, 0.399286, -0.648885,
		-0.639116, -0.748358, 0.177456,
		35.919899, 33.183308, 29.205990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797825, 34.106625, 29.203426>,  <36.367279, 33.707157, 29.081772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797825, 34.106625, 29.203426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750931, 33.744476, 29.366673>,  <35.722794, 33.527187, 29.464621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750931, 33.744476, 29.366673>,  <35.797825, 34.106625, 29.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750931, 33.744476, 29.366673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304326, 0.423928, 0.853036,
		-0.945327, -0.024197, -0.325226,
		-0.117231, -0.905372, 0.408115,
		35.715763, 33.472866, 29.489107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111496, 34.240242, 29.381571>,  <35.797825, 34.106625, 29.203426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111496, 34.240242, 29.381571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275017, 33.953167, 29.607069>,  <35.373131, 33.780922, 29.742367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275017, 33.953167, 29.607069>,  <35.111496, 34.240242, 29.381571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275017, 33.953167, 29.607069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465270, 0.367515, 0.805268,
		-0.785113, -0.591491, -0.183674,
		0.408806, -0.717684, 0.563744,
		35.397659, 33.737862, 29.776192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620964, 33.969780, 29.843122>,  <35.111496, 34.240242, 29.381571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620964, 33.969780, 29.843122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981491, 33.883904, 29.993605>,  <35.197807, 33.832378, 30.083895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981491, 33.883904, 29.993605>,  <34.620964, 33.969780, 29.843122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981491, 33.883904, 29.993605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282542, 0.366920, 0.886307,
		-0.328321, -0.905139, 0.270052,
		0.901318, -0.214692, 0.376207,
		35.251888, 33.819496, 30.106466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398277, 33.925541, 30.506615>,  <34.620964, 33.969780, 29.843122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398277, 33.925541, 30.506615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797882, 33.936279, 30.520733>,  <35.037647, 33.942722, 30.529203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797882, 33.936279, 30.520733>,  <34.398277, 33.925541, 30.506615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797882, 33.936279, 30.520733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043976, 0.497321, 0.866452,
		0.005712, -0.867151, 0.498012,
		0.999017, 0.026850, 0.035293,
		35.097588, 33.944336, 30.531321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548260, 33.739754, 31.150215>,  <34.398277, 33.925541, 30.506615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548260, 33.739754, 31.150215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873398, 33.932896, 31.019905>,  <35.068481, 34.048782, 30.941719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873398, 33.932896, 31.019905>,  <34.548260, 33.739754, 31.150215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873398, 33.932896, 31.019905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031687, 0.521803, 0.852477,
		0.581616, -0.703256, 0.408845,
		0.812846, 0.482860, -0.325773,
		35.117252, 34.077755, 30.922173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920765, 33.753609, 31.810591>,  <34.548260, 33.739754, 31.150215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920765, 33.753609, 31.810591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075611, 34.023136, 31.558842>,  <35.168518, 34.184853, 31.407793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075611, 34.023136, 31.558842>,  <34.920765, 33.753609, 31.810591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075611, 34.023136, 31.558842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254899, 0.577778, 0.775370,
		0.886099, -0.460581, 0.051908,
		0.387112, 0.673823, -0.629371,
		35.191746, 34.225285, 31.370031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705601, 33.861343, 32.110771>,  <34.920765, 33.753609, 31.810591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705601, 33.861343, 32.110771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596718, 34.164761, 31.873953>,  <35.531387, 34.346809, 31.731863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596718, 34.164761, 31.873953>,  <35.705601, 33.861343, 32.110771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596718, 34.164761, 31.873953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340516, 0.651401, 0.678032,
		0.899974, -0.017035, -0.435611,
		-0.272207, 0.758543, -0.592044,
		35.515057, 34.392323, 31.696341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292854, 34.331966, 32.182785>,  <35.705601, 33.861343, 32.110771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292854, 34.331966, 32.182785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014458, 34.572239, 32.025421>,  <35.847420, 34.716404, 31.931004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014458, 34.572239, 32.025421>,  <36.292854, 34.331966, 32.182785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014458, 34.572239, 32.025421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318916, 0.749479, 0.580150,
		0.643339, 0.278316, -0.713200,
		-0.695993, 0.600684, -0.393410,
		35.805660, 34.752445, 31.907398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634113, 34.945061, 31.954470>,  <36.292854, 34.331966, 32.182785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634113, 34.945061, 31.954470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255150, 35.030346, 32.049927>,  <36.027771, 35.081516, 32.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255150, 35.030346, 32.049927>,  <36.634113, 34.945061, 31.954470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255150, 35.030346, 32.049927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319544, 0.670741, 0.669326,
		-0.017358, 0.710385, -0.703600,
		-0.947413, 0.213213, 0.238642,
		35.970924, 35.094311, 32.121521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700211, 35.573025, 32.025154>,  <36.634113, 34.945061, 31.954470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700211, 35.573025, 32.025154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353954, 35.504971, 32.213505>,  <36.146202, 35.464138, 32.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353954, 35.504971, 32.213505>,  <36.700211, 35.573025, 32.025154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353954, 35.504971, 32.213505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231965, 0.697172, 0.678339,
		-0.443688, 0.696424, -0.564035,
		-0.865641, -0.170134, 0.470872,
		36.094261, 35.453930, 32.354767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512974, 36.288292, 32.245205>,  <36.700211, 35.573025, 32.025154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512974, 36.288292, 32.245205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283508, 36.026852, 32.442680>,  <36.145828, 35.869987, 32.561165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283508, 36.026852, 32.442680>,  <36.512974, 36.288292, 32.245205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283508, 36.026852, 32.442680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287436, 0.403757, 0.868539,
		-0.767003, 0.640150, -0.043752,
		-0.573661, -0.653596, 0.493685,
		36.111408, 35.830772, 32.590786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073513, 36.733643, 32.646938>,  <36.512974, 36.288292, 32.245205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073513, 36.733643, 32.646938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108925, 36.368557, 32.806496>,  <36.130173, 36.149506, 32.902229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108925, 36.368557, 32.806496>,  <36.073513, 36.733643, 32.646938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108925, 36.368557, 32.806496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482517, 0.389638, 0.784449,
		-0.871402, 0.123031, 0.474892,
		0.088525, -0.912713, 0.398895,
		36.135483, 36.094742, 32.926163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002373, 36.788521, 33.437832>,  <36.073513, 36.733643, 32.646938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002373, 36.788521, 33.437832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158909, 36.424961, 33.380199>,  <36.252831, 36.206825, 33.345619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158909, 36.424961, 33.380199>,  <36.002373, 36.788521, 33.437832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158909, 36.424961, 33.380199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335554, -0.004848, 0.942008,
		-0.856887, -0.416994, 0.303086,
		0.391342, -0.908896, -0.144078,
		36.276310, 36.152290, 33.336975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774597, 36.316696, 33.993347>,  <36.002373, 36.788521, 33.437832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774597, 36.316696, 33.993347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113865, 36.157440, 33.853577>,  <36.317425, 36.061886, 33.769714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113865, 36.157440, 33.853577>,  <35.774597, 36.316696, 33.993347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113865, 36.157440, 33.853577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370422, -0.025776, 0.928506,
		-0.378686, -0.916961, 0.125619,
		0.848165, -0.398144, -0.349424,
		36.368313, 36.037998, 33.748749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033367, 35.732494, 34.465015>,  <35.774597, 36.316696, 33.993347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033367, 35.732494, 34.465015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367031, 35.829483, 34.266869>,  <36.567230, 35.887676, 34.147980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367031, 35.829483, 34.266869>,  <36.033367, 35.732494, 34.465015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367031, 35.829483, 34.266869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512607, -0.009417, 0.858572,
		0.203516, -0.970112, -0.132149,
		0.834155, 0.242473, -0.495370,
		36.617279, 35.902225, 34.118259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481449, 35.385883, 34.825089>,  <36.033367, 35.732494, 34.465015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481449, 35.385883, 34.825089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722534, 35.616821, 34.604759>,  <36.867184, 35.755383, 34.472561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722534, 35.616821, 34.604759>,  <36.481449, 35.385883, 34.825089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722534, 35.616821, 34.604759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653962, 0.038167, 0.755564,
		0.457245, -0.815607, -0.354559,
		0.602711, 0.577346, -0.550827,
		36.903347, 35.790024, 34.439510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179634, 35.095329, 34.838547>,  <36.481449, 35.385883, 34.825089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179634, 35.095329, 34.838547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211655, 35.485172, 34.754894>,  <37.230865, 35.719078, 34.704704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211655, 35.485172, 34.754894>,  <37.179634, 35.095329, 34.838547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211655, 35.485172, 34.754894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805357, 0.060388, 0.589706,
		0.587360, -0.215631, -0.780071,
		0.080052, 0.974606, -0.209130,
		37.235672, 35.777554, 34.692154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962784, 35.216022, 34.718369>,  <37.179634, 35.095329, 34.838547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962784, 35.216022, 34.718369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807060, 35.573235, 34.808647>,  <37.713627, 35.787563, 34.862812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807060, 35.573235, 34.808647>,  <37.962784, 35.216022, 34.718369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807060, 35.573235, 34.808647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813978, 0.218854, 0.538092,
		0.431139, 0.393191, -0.812108,
		-0.389306, 0.893031, 0.225693,
		37.690269, 35.841145, 34.876354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457230, 35.756714, 34.710693>,  <37.962784, 35.216022, 34.718369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457230, 35.756714, 34.710693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163811, 35.904179, 34.939079>,  <37.987759, 35.992657, 35.076111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163811, 35.904179, 34.939079>,  <38.457230, 35.756714, 34.710693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163811, 35.904179, 34.939079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661748, 0.195920, 0.723675,
		0.154926, 0.908683, -0.387676,
		-0.733545, 0.368660, 0.570966,
		37.943748, 36.014778, 35.110371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659374, 36.360893, 34.921055>,  <38.457230, 35.756714, 34.710693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659374, 36.360893, 34.921055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369801, 36.302330, 35.190716>,  <38.196056, 36.267193, 35.352512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369801, 36.302330, 35.190716>,  <38.659374, 36.360893, 34.921055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369801, 36.302330, 35.190716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596425, 0.358278, 0.718272,
		-0.346695, 0.922064, -0.172049,
		-0.723934, -0.146407, 0.674155,
		38.152622, 36.258408, 35.392963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812042, 36.844109, 35.450237>,  <38.659374, 36.360893, 34.921055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812042, 36.844109, 35.450237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548634, 36.599335, 35.625458>,  <38.390591, 36.452469, 35.730591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548634, 36.599335, 35.625458>,  <38.812042, 36.844109, 35.450237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548634, 36.599335, 35.625458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429717, 0.172108, 0.886409,
		-0.617817, 0.771956, 0.149623,
		-0.658518, -0.611934, 0.438054,
		38.351078, 36.415756, 35.756874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549793, 37.226212, 36.027035>,  <38.812042, 36.844109, 35.450237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549793, 37.226212, 36.027035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507835, 36.836552, 36.107059>,  <38.482662, 36.602757, 36.155075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507835, 36.836552, 36.107059>,  <38.549793, 37.226212, 36.027035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507835, 36.836552, 36.107059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583604, 0.102593, 0.805531,
		-0.805235, 0.201254, 0.557758,
		-0.104894, -0.974152, 0.200064,
		38.476368, 36.544308, 36.167080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149483, 37.116688, 36.596218>,  <38.549793, 37.226212, 36.027035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149483, 37.116688, 36.596218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364311, 36.779823, 36.576958>,  <38.493210, 36.577705, 36.565399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364311, 36.779823, 36.576958>,  <38.149483, 37.116688, 36.596218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364311, 36.779823, 36.576958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371161, 0.184668, 0.910020,
		-0.757490, -0.506620, 0.411757,
		0.537073, -0.842160, -0.048153,
		38.525433, 36.527176, 36.562511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953278, 36.796078, 37.274879>,  <38.149483, 37.116688, 36.596218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953278, 36.796078, 37.274879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299450, 36.654381, 37.133148>,  <38.507153, 36.569363, 37.048111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299450, 36.654381, 37.133148>,  <37.953278, 36.796078, 37.274879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299450, 36.654381, 37.133148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419977, 0.127241, 0.898571,
		-0.273229, -0.926456, 0.258892,
		0.865428, -0.354244, -0.354324,
		38.559078, 36.548107, 37.026852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195885, 36.396339, 37.794575>,  <37.953278, 36.796078, 37.274879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195885, 36.396339, 37.794575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517799, 36.466496, 37.567749>,  <38.710949, 36.508591, 37.431652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517799, 36.466496, 37.567749>,  <38.195885, 36.396339, 37.794575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517799, 36.466496, 37.567749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550393, 0.137196, 0.823556,
		0.222245, -0.974892, 0.013878,
		0.804783, 0.175393, -0.567065,
		38.759235, 36.519112, 37.397629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762043, 36.012005, 37.963028>,  <38.195885, 36.396339, 37.794575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762043, 36.012005, 37.963028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977184, 36.313114, 37.811214>,  <39.106270, 36.493778, 37.720127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977184, 36.313114, 37.811214>,  <38.762043, 36.012005, 37.963028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977184, 36.313114, 37.811214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568119, 0.008972, 0.822897,
		0.622862, -0.658217, -0.422840,
		0.537851, 0.752775, -0.379534,
		39.138538, 36.538948, 37.697353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391293, 35.995461, 38.321136>,  <38.762043, 36.012005, 37.963028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391293, 35.995461, 38.321136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419537, 36.354874, 38.147858>,  <39.436481, 36.570522, 38.043888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419537, 36.354874, 38.147858>,  <39.391293, 35.995461, 38.321136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419537, 36.354874, 38.147858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640572, 0.292061, 0.710189,
		0.764645, -0.327639, -0.554951,
		0.070606, 0.898528, -0.433199,
		39.440720, 36.624432, 38.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121387, 36.173740, 38.404667>,  <39.391293, 35.995461, 38.321136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121387, 36.173740, 38.404667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939049, 36.515560, 38.305107>,  <39.829643, 36.720650, 38.245369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939049, 36.515560, 38.305107>,  <40.121387, 36.173740, 38.404667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939049, 36.515560, 38.305107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515426, 0.481435, 0.708912,
		0.725628, 0.194867, -0.659917,
		-0.455851, 0.854545, -0.248903,
		39.802292, 36.771923, 38.230434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631153, 36.613552, 38.294174>,  <40.121387, 36.173740, 38.404667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631153, 36.613552, 38.294174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313339, 36.832439, 38.399445>,  <40.122650, 36.963772, 38.462605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313339, 36.832439, 38.399445>,  <40.631153, 36.613552, 38.294174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313339, 36.832439, 38.399445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563639, 0.503419, 0.654889,
		0.225883, 0.668668, -0.708420,
		-0.794536, 0.547221, 0.263174,
		40.074978, 36.996605, 38.478397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922131, 37.269386, 38.431217>,  <40.631153, 36.613552, 38.294174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922131, 37.269386, 38.431217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587444, 37.229942, 38.646694>,  <40.386635, 37.206276, 38.775982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587444, 37.229942, 38.646694>,  <40.922131, 37.269386, 38.431217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587444, 37.229942, 38.646694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454432, 0.423928, 0.783439,
		-0.305621, 0.900312, -0.309894,
		-0.836712, -0.098609, 0.538692,
		40.336430, 37.200359, 38.808300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876984, 37.885284, 38.925919>,  <40.922131, 37.269386, 38.431217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876984, 37.885284, 38.925919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680450, 37.565796, 39.064850>,  <40.562531, 37.374104, 39.148209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680450, 37.565796, 39.064850>,  <40.876984, 37.885284, 38.925919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680450, 37.565796, 39.064850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266253, 0.241957, 0.933041,
		-0.829277, 0.550913, 0.093779,
		-0.491334, -0.798718, 0.347332,
		40.533051, 37.326180, 39.169048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457813, 38.065727, 39.589642>,  <40.876984, 37.885284, 38.925919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457813, 38.065727, 39.589642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519585, 37.670528, 39.590469>,  <40.556648, 37.433407, 39.590965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519585, 37.670528, 39.590469>,  <40.457813, 38.065727, 39.589642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519585, 37.670528, 39.590469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248980, 0.040941, 0.967643,
		-0.956117, -0.148920, 0.252315,
		0.154431, -0.988001, 0.002066,
		40.565914, 37.374126, 39.591087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046425, 37.991844, 39.947048>,  <40.457813, 38.065727, 39.589642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046425, 37.991844, 39.947048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071243, 37.619659, 40.091488>,  <41.086136, 37.396347, 40.178150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071243, 37.619659, 40.091488>,  <41.046425, 37.991844, 39.947048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071243, 37.619659, 40.091488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997172, 0.042416, -0.062048,
		0.042416, 0.363929, 0.930460,
		0.062048, -0.930460, 0.361101,
		41.089859, 37.340523, 40.199818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502090, 38.146133, 40.428093>,  <41.046425, 37.991844, 39.947048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502090, 38.146133, 40.428093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522472, 37.760571, 40.323566>,  <41.534702, 37.529232, 40.260853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522472, 37.760571, 40.323566>,  <41.502090, 38.146133, 40.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522472, 37.760571, 40.323566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995191, 0.070927, -0.067555,
		0.083651, -0.256615, 0.962887,
		0.050959, -0.963908, -0.261314,
		41.537762, 37.471397, 40.245171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007957, 37.780380, 40.856773>,  <41.502090, 38.146133, 40.428093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007957, 37.780380, 40.856773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991093, 37.552288, 40.528614>,  <41.980972, 37.415432, 40.331718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991093, 37.552288, 40.528614>,  <42.007957, 37.780380, 40.856773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991093, 37.552288, 40.528614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982247, -0.173891, 0.070383,
		-0.182795, -0.802869, 0.567439,
		-0.042164, -0.570230, -0.820402,
		41.978443, 37.381218, 40.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462173, 37.184425, 41.047100>,  <42.007957, 37.780380, 40.856773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462173, 37.184425, 41.047100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406300, 37.231308, 40.653805>,  <42.372776, 37.259438, 40.417828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406300, 37.231308, 40.653805>,  <42.462173, 37.184425, 41.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406300, 37.231308, 40.653805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982145, -0.109971, -0.152636,
		-0.126017, -0.987000, -0.099749,
		-0.139683, 0.117203, -0.983235,
		42.364395, 37.266468, 40.358833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917782, 36.655701, 40.612900>,  <42.462173, 37.184425, 41.047100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917782, 36.655701, 40.612900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828884, 36.970875, 40.383198>,  <42.775547, 37.159981, 40.245377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828884, 36.970875, 40.383198>,  <42.917782, 36.655701, 40.612900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828884, 36.970875, 40.383198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952892, 0.050841, -0.299018,
		-0.206412, -0.613652, -0.762118,
		-0.222240, 0.787938, -0.574250,
		42.762211, 37.207256, 40.210922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234695, 36.608212, 39.942356>,  <42.917782, 36.655701, 40.612900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234695, 36.608212, 39.942356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195591, 37.002438, 39.997646>,  <43.172127, 37.238972, 40.030823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195591, 37.002438, 39.997646>,  <43.234695, 36.608212, 39.942356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195591, 37.002438, 39.997646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844499, 0.155643, -0.512442,
		-0.526559, 0.066636, -0.847523,
		-0.097764, 0.985563, 0.138229,
		43.166264, 37.298107, 40.039116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687229, 36.688560, 39.507244>,  <43.234695, 36.608212, 39.942356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687229, 36.688560, 39.507244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611805, 37.057140, 39.643116>,  <43.566551, 37.278286, 39.724640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611805, 37.057140, 39.643116>,  <43.687229, 36.688560, 39.507244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611805, 37.057140, 39.643116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770857, 0.353175, -0.530139,
		-0.608460, 0.161876, -0.776900,
		-0.188565, 0.921446, 0.339676,
		43.555237, 37.333576, 39.745018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678135, 37.111256, 38.921116>,  <43.687229, 36.688560, 39.507244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678135, 37.111256, 38.921116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765118, 37.329510, 39.244843>,  <43.817307, 37.460464, 39.439079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765118, 37.329510, 39.244843>,  <43.678135, 37.111256, 38.921116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765118, 37.329510, 39.244843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754003, 0.432637, -0.494272,
		-0.619834, 0.717708, -0.317334,
		0.217452, 0.545637, 0.809318,
		43.830353, 37.493202, 39.487637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003307, 37.734749, 38.674362>,  <43.678135, 37.111256, 38.921116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003307, 37.734749, 38.674362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112869, 37.675014, 39.054398>,  <44.178604, 37.639175, 39.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112869, 37.675014, 39.054398>,  <44.003307, 37.734749, 38.674362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112869, 37.675014, 39.054398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925164, 0.310820, -0.217859,
		-0.262773, 0.938664, 0.223295,
		0.273901, -0.149337, 0.950093,
		44.195038, 37.630215, 39.339424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330421, 38.338303, 38.834160>,  <44.003307, 37.734749, 38.674362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330421, 38.338303, 38.834160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457726, 38.034752, 39.061428>,  <44.534107, 37.852619, 39.197788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457726, 38.034752, 39.061428>,  <44.330421, 38.338303, 38.834160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457726, 38.034752, 39.061428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946173, 0.291510, -0.140637,
		-0.058901, 0.582345, 0.810805,
		0.318257, -0.758879, 0.568169,
		44.553204, 37.807087, 39.231880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874035, 38.606140, 39.332424>,  <44.330421, 38.338303, 38.834160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874035, 38.606140, 39.332424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918182, 38.211288, 39.286125>,  <44.944672, 37.974377, 39.258347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918182, 38.211288, 39.286125>,  <44.874035, 38.606140, 39.332424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918182, 38.211288, 39.286125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929040, 0.143841, -0.340873,
		0.353135, -0.069916, 0.932956,
		0.110365, -0.987128, -0.115750,
		44.951290, 37.915150, 39.251400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514950, 38.323711, 39.667458>,  <44.874035, 38.606140, 39.332424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514950, 38.323711, 39.667458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400379, 38.111671, 39.348221>,  <45.331635, 37.984447, 39.156677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400379, 38.111671, 39.348221>,  <45.514950, 38.323711, 39.667458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400379, 38.111671, 39.348221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950612, -0.053290, -0.305771,
		0.119558, -0.846262, 0.519179,
		-0.286430, -0.530095, -0.798096,
		45.314449, 37.952644, 39.108791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655411, 37.670658, 39.649372>,  <45.514950, 38.323711, 39.667458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655411, 37.670658, 39.649372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649441, 37.785248, 39.266182>,  <45.645859, 37.854004, 39.036270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649441, 37.785248, 39.266182>,  <45.655411, 37.670658, 39.649372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649441, 37.785248, 39.266182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980118, -0.185391, -0.070706,
		-0.197854, -0.939980, -0.278015,
		-0.014921, 0.286477, -0.957971,
		45.644966, 37.871189, 38.978790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857948, 37.175014, 39.145180>,  <45.655411, 37.670658, 39.649372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857948, 37.175014, 39.145180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925228, 37.527214, 38.967896>,  <45.965595, 37.738533, 38.861526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925228, 37.527214, 38.967896>,  <45.857948, 37.175014, 39.145180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925228, 37.527214, 38.967896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980747, -0.194733, -0.014659,
		-0.099215, -0.432210, -0.896299,
		0.168203, 0.880496, -0.443209,
		45.975689, 37.791363, 38.834934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286320, 36.902122, 39.533810>,  <45.857948, 37.175014, 39.145180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286320, 36.902122, 39.533810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192413, 37.289616, 39.565914>,  <45.136070, 37.522110, 39.585178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192413, 37.289616, 39.565914>,  <45.286320, 36.902122, 39.533810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192413, 37.289616, 39.565914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863933, -0.245788, 0.439555,
		0.445539, 0.033850, 0.894622,
		-0.234766, 0.968733, 0.080264,
		45.121983, 37.580235, 39.589993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847355, 37.071514, 40.115059>,  <45.286320, 36.902122, 39.533810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847355, 37.071514, 40.115059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772430, 37.398129, 39.896637>,  <44.727478, 37.594097, 39.765583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772430, 37.398129, 39.896637>,  <44.847355, 37.071514, 40.115059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772430, 37.398129, 39.896637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927270, 0.036474, 0.372611,
		0.324168, 0.576137, 0.750321,
		-0.187308, 0.816539, -0.546059,
		44.716240, 37.643089, 39.732819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495861, 37.535648, 40.609238>,  <44.847355, 37.071514, 40.115059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495861, 37.535648, 40.609238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399521, 37.621044, 40.230522>,  <44.341717, 37.672283, 40.003292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399521, 37.621044, 40.230522>,  <44.495861, 37.535648, 40.609238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399521, 37.621044, 40.230522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968992, -0.108345, 0.222071,
		-0.055170, 0.970918, 0.232969,
		-0.240854, 0.213494, -0.946789,
		44.327263, 37.685093, 39.946484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003727, 38.098339, 40.668411>,  <44.495861, 37.535648, 40.609238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003727, 38.098339, 40.668411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963989, 37.925091, 40.310074>,  <43.940147, 37.821144, 40.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963989, 37.925091, 40.310074>,  <44.003727, 38.098339, 40.668411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963989, 37.925091, 40.310074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964391, -0.179866, 0.193905,
		-0.245116, 0.883208, -0.399827,
		-0.099343, -0.433118, -0.895845,
		43.934185, 37.795155, 40.041321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538795, 38.467506, 40.311520>,  <44.003727, 38.098339, 40.668411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538795, 38.467506, 40.311520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547581, 38.103916, 40.145016>,  <43.552853, 37.885761, 40.045113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547581, 38.103916, 40.145016>,  <43.538795, 38.467506, 40.311520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547581, 38.103916, 40.145016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948987, -0.149949, 0.277378,
		-0.314549, 0.388937, -0.865902,
		0.021959, -0.908979, -0.416263,
		43.554169, 37.831223, 40.020138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066631, 38.527958, 39.834564>,  <43.538795, 38.467506, 40.311520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066631, 38.527958, 39.834564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090919, 38.140205, 39.929733>,  <43.105492, 37.907555, 39.986835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090919, 38.140205, 39.929733>,  <43.066631, 38.527958, 39.834564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090919, 38.140205, 39.929733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991147, -0.030365, 0.129247,
		-0.118066, -0.243660, -0.962647,
		0.060723, -0.969385, 0.237918,
		43.109135, 37.849388, 40.001110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484131, 38.234848, 39.578648>,  <43.066631, 38.527958, 39.834564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484131, 38.234848, 39.578648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572903, 37.916912, 39.804558>,  <42.626163, 37.726151, 39.940105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572903, 37.916912, 39.804558>,  <42.484131, 38.234848, 39.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572903, 37.916912, 39.804558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965290, -0.260897, 0.012130,
		0.137708, -0.547867, -0.825154,
		0.221926, -0.794842, 0.564778,
		42.639481, 37.678459, 39.973991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757164, 37.632996, 39.203411>,  <42.484131, 38.234848, 39.578648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757164, 37.632996, 39.203411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730938, 37.371227, 39.504723>,  <42.715202, 37.214165, 39.685509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730938, 37.371227, 39.504723>,  <42.757164, 37.632996, 39.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730938, 37.371227, 39.504723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971037, 0.215663, 0.102844,
		-0.229758, -0.724720, -0.649609,
		-0.065563, -0.654423, 0.753280,
		42.711269, 37.174900, 39.730705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280262, 37.241932, 39.027290>,  <42.757164, 37.632996, 39.203411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280262, 37.241932, 39.027290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310425, 37.263695, 39.425556>,  <42.328522, 37.276752, 39.664516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310425, 37.263695, 39.425556>,  <42.280262, 37.241932, 39.027290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310425, 37.263695, 39.425556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993642, 0.087823, 0.070452,
		-0.083610, -0.994649, 0.060686,
		0.075405, 0.054410, 0.995667,
		42.333046, 37.280018, 39.724258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928665, 36.704670, 39.215595>,  <42.280262, 37.241932, 39.027290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928665, 36.704670, 39.215595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947399, 36.940418, 39.538197>,  <41.958637, 37.081867, 39.731758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947399, 36.940418, 39.538197>,  <41.928665, 36.704670, 39.215595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947399, 36.940418, 39.538197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957589, -0.203310, 0.204179,
		0.284308, -0.781859, 0.554856,
		0.046831, 0.589374, 0.806502,
		41.961449, 37.117229, 39.780148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313286, 36.619820, 39.471741>,  <41.928665, 36.704670, 39.215595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313286, 36.619820, 39.471741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060356, 36.764931, 39.745544>,  <40.908600, 36.851997, 39.909828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060356, 36.764931, 39.745544>,  <41.313286, 36.619820, 39.471741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060356, 36.764931, 39.745544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765530, -0.157014, -0.623947,
		-0.118877, -0.918552, 0.377002,
		-0.632323, 0.362779, 0.684514,
		40.870659, 36.873764, 39.950897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704742, 36.084812, 39.640236>,  <41.313286, 36.619820, 39.471741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704742, 36.084812, 39.640236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633411, 36.478222, 39.652157>,  <40.590614, 36.714268, 39.659309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633411, 36.478222, 39.652157>,  <40.704742, 36.084812, 39.640236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633411, 36.478222, 39.652157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633503, -0.091580, -0.768302,
		-0.752911, -0.155888, 0.639394,
		-0.178325, 0.983520, 0.029804,
		40.579914, 36.773277, 39.661098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928032, 36.195465, 39.648209>,  <40.704742, 36.084812, 39.640236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928032, 36.195465, 39.648209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105049, 36.521198, 39.497997>,  <40.211258, 36.716637, 39.407871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105049, 36.521198, 39.497997>,  <39.928032, 36.195465, 39.648209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105049, 36.521198, 39.497997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462323, -0.151637, -0.873649,
		-0.768383, 0.560244, 0.309378,
		0.442544, 0.814330, -0.375529,
		40.237812, 36.765495, 39.385338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563965, 36.847759, 39.737179>,  <39.928032, 36.195465, 39.648209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563965, 36.847759, 39.737179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816547, 37.103214, 39.561268>,  <39.968098, 37.256489, 39.455723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816547, 37.103214, 39.561268>,  <39.563965, 36.847759, 39.737179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816547, 37.103214, 39.561268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477854, -0.126157, -0.869333,
		-0.610670, 0.759096, 0.225512,
		0.631457, 0.638638, -0.439777,
		40.005985, 37.294807, 39.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198788, 37.330002, 39.396542>,  <39.563965, 36.847759, 39.737179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198788, 37.330002, 39.396542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556332, 37.324207, 39.217297>,  <39.770859, 37.320732, 39.109749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556332, 37.324207, 39.217297>,  <39.198788, 37.330002, 39.396542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556332, 37.324207, 39.217297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448264, -0.048135, -0.892604,
		-0.008641, 0.998736, -0.049519,
		0.893859, -0.014485, -0.448114,
		39.824490, 37.319862, 39.082863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157688, 37.784126, 38.771946>,  <39.198788, 37.330002, 39.396542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157688, 37.784126, 38.771946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445374, 37.519073, 38.688377>,  <39.617985, 37.360043, 38.638237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445374, 37.519073, 38.688377>,  <39.157688, 37.784126, 38.771946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445374, 37.519073, 38.688377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395040, -0.142645, -0.907522,
		0.571555, 0.735232, -0.364360,
		0.719213, -0.662636, -0.208917,
		39.661137, 37.320282, 38.625702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477879, 37.943058, 38.176498>,  <39.157688, 37.784126, 38.771946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477879, 37.943058, 38.176498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531761, 37.550392, 38.230442>,  <39.564091, 37.314793, 38.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531761, 37.550392, 38.230442>,  <39.477879, 37.943058, 38.176498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531761, 37.550392, 38.230442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313098, -0.171298, -0.934145,
		0.940120, 0.083608, -0.330432,
		0.134704, -0.981665, 0.134863,
		39.572174, 37.255894, 38.270901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457500, 37.800583, 37.447510>,  <39.477879, 37.943058, 38.176498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457500, 37.800583, 37.447510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430820, 37.450527, 37.639210>,  <39.414814, 37.240494, 37.754230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430820, 37.450527, 37.639210>,  <39.457500, 37.800583, 37.447510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430820, 37.450527, 37.639210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322217, -0.435691, -0.840446,
		0.944313, -0.210478, -0.252925,
		-0.066698, -0.875141, 0.479248,
		39.410812, 37.187984, 37.782986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658531, 37.348831, 36.933807>,  <39.457500, 37.800583, 37.447510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658531, 37.348831, 36.933807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453106, 37.129456, 37.197765>,  <39.329849, 36.997829, 37.356140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453106, 37.129456, 37.197765>,  <39.658531, 37.348831, 36.933807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453106, 37.129456, 37.197765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499767, -0.433956, -0.749610,
		0.697483, -0.714768, -0.051228,
		-0.513566, -0.548443, 0.659894,
		39.299038, 36.964924, 37.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696762, 36.774067, 36.535919>,  <39.658531, 37.348831, 36.933807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696762, 36.774067, 36.535919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421608, 36.697784, 36.816044>,  <39.256516, 36.652016, 36.984119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421608, 36.697784, 36.816044>,  <39.696762, 36.774067, 36.535919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421608, 36.697784, 36.816044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495247, -0.582035, -0.644954,
		0.530603, -0.790485, 0.305931,
		-0.687889, -0.190703, 0.700315,
		39.215240, 36.640572, 37.026138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682392, 36.024921, 36.552059>,  <39.696762, 36.774067, 36.535919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682392, 36.024921, 36.552059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347534, 36.184875, 36.701344>,  <39.146622, 36.280849, 36.790913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347534, 36.184875, 36.701344>,  <39.682392, 36.024921, 36.552059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347534, 36.184875, 36.701344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538788, -0.485136, -0.688731,
		-0.094356, -0.777647, 0.621581,
		-0.837141, 0.399886, 0.373211,
		39.096394, 36.304840, 36.813305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186470, 35.439896, 36.461063>,  <39.682392, 36.024921, 36.552059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186470, 35.439896, 36.461063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008369, 35.797272, 36.484756>,  <38.901508, 36.011700, 36.498970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008369, 35.797272, 36.484756>,  <39.186470, 35.439896, 36.461063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008369, 35.797272, 36.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560075, -0.226287, -0.796938,
		-0.698615, -0.388014, 0.601151,
		-0.445256, 0.893442, 0.059229,
		38.874794, 36.065304, 36.502525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424305, 35.360847, 35.709980>,  <39.186470, 35.439896, 36.461063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424305, 35.360847, 35.709980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415180, 35.740860, 35.585453>,  <39.409706, 35.968868, 35.510738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415180, 35.740860, 35.585453>,  <39.424305, 35.360847, 35.709980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415180, 35.740860, 35.585453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451948, -0.267960, -0.850847,
		-0.891753, -0.160108, -0.423253,
		-0.022813, 0.950033, -0.311314,
		39.408337, 36.025871, 35.492058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034882, 35.191105, 35.122173>,  <39.424305, 35.360847, 35.709980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034882, 35.191105, 35.122173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297531, 35.482937, 35.198662>,  <39.455120, 35.658035, 35.244556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297531, 35.482937, 35.198662>,  <39.034882, 35.191105, 35.122173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297531, 35.482937, 35.198662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612787, -0.368252, -0.699201,
		-0.439704, 0.576288, -0.688878,
		0.656622, 0.729577, 0.191220,
		39.494518, 35.701809, 35.256027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488876, 34.955246, 34.621712>,  <39.034882, 35.191105, 35.122173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488876, 34.955246, 34.621712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706810, 34.801586, 34.919865>,  <39.837570, 34.709393, 35.098755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706810, 34.801586, 34.919865>,  <39.488876, 34.955246, 34.621712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706810, 34.801586, 34.919865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627594, -0.402722, -0.666289,
		0.556132, 0.830811, 0.021671,
		0.544833, -0.384145, 0.745379,
		39.870258, 34.686344, 35.143478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338223, 34.928089, 34.424919>,  <39.488876, 34.955246, 34.621712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338223, 34.928089, 34.424919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276299, 34.643131, 34.698715>,  <40.239143, 34.472157, 34.862991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276299, 34.643131, 34.698715>,  <40.338223, 34.928089, 34.424919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276299, 34.643131, 34.698715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759962, -0.528572, -0.378245,
		0.631263, 0.461631, 0.623221,
		-0.154808, -0.712396, 0.684490,
		40.229855, 34.429413, 34.904060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968849, 34.768360, 34.638901>,  <40.338223, 34.928089, 34.424919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968849, 34.768360, 34.638901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725433, 34.457680, 34.703911>,  <40.579384, 34.271271, 34.742916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725433, 34.457680, 34.703911>,  <40.968849, 34.768360, 34.638901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725433, 34.457680, 34.703911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770911, -0.627212, -0.110912,
		0.188084, 0.057798, 0.980451,
		-0.608541, -0.776701, 0.162526,
		40.542870, 34.224670, 34.752670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236061, 34.296658, 35.200287>,  <40.968849, 34.768360, 34.638901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236061, 34.296658, 35.200287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022217, 34.104118, 34.922440>,  <40.893909, 33.988594, 34.755730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022217, 34.104118, 34.922440>,  <41.236061, 34.296658, 35.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022217, 34.104118, 34.922440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788960, -0.578850, -0.206093,
		-0.302877, -0.658205, 0.689225,
		-0.534610, -0.481351, -0.694618,
		40.861835, 33.959713, 34.714054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035648, 34.136093, 35.215420>,  <41.236061, 34.296658, 35.200287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035648, 34.136093, 35.215420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068192, 33.832150, 35.473408>,  <42.087719, 33.649784, 35.628201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068192, 33.832150, 35.473408>,  <42.035648, 34.136093, 35.215420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068192, 33.832150, 35.473408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996340, 0.079021, -0.032583,
		-0.026208, 0.645265, 0.763509,
		0.081359, -0.759861, 0.644974,
		42.092598, 33.604191, 35.666901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248764, 34.312363, 35.911945>,  <42.035648, 34.136093, 35.215420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248764, 34.312363, 35.911945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367172, 33.949585, 35.792068>,  <42.438217, 33.731918, 35.720142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367172, 33.949585, 35.792068>,  <42.248764, 34.312363, 35.911945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367172, 33.949585, 35.792068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955058, 0.286094, 0.077555,
		0.015402, -0.309185, 0.950877,
		0.296019, -0.906948, -0.299696,
		42.455978, 33.677502, 35.702160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779823, 34.058418, 36.286766>,  <42.248764, 34.312363, 35.911945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779823, 34.058418, 36.286766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800724, 33.914028, 35.914322>,  <42.813267, 33.827393, 35.690857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800724, 33.914028, 35.914322>,  <42.779823, 34.058418, 36.286766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800724, 33.914028, 35.914322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995635, 0.091031, 0.020584,
		0.077329, -0.928120, 0.364160,
		0.052255, -0.360979, -0.931109,
		42.816399, 33.805733, 35.634991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326462, 33.590919, 36.237701>,  <42.779823, 34.058418, 36.286766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326462, 33.590919, 36.237701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277935, 33.731712, 35.866455>,  <43.248821, 33.816189, 35.643707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277935, 33.731712, 35.866455>,  <43.326462, 33.590919, 36.237701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277935, 33.731712, 35.866455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953436, 0.301419, -0.010312,
		0.276121, -0.886147, -0.372156,
		-0.121312, 0.351980, -0.928113,
		43.241543, 33.837307, 35.588020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670422, 33.169872, 35.565880>,  <43.326462, 33.590919, 36.237701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670422, 33.169872, 35.565880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629826, 33.562057, 35.633289>,  <43.605469, 33.797367, 35.673737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629826, 33.562057, 35.633289>,  <43.670422, 33.169872, 35.565880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629826, 33.562057, 35.633289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993371, 0.109068, -0.036302,
		-0.053973, 0.163724, -0.985029,
		-0.101491, 0.980458, 0.168526,
		43.599377, 33.856194, 35.683846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123928, 33.684273, 35.126987>,  <43.670422, 33.169872, 35.565880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123928, 33.684273, 35.126987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108330, 33.867004, 35.482468>,  <44.098972, 33.976643, 35.695755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108330, 33.867004, 35.482468>,  <44.123928, 33.684273, 35.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108330, 33.867004, 35.482468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979739, 0.192327, -0.055878,
		-0.196448, 0.868515, -0.455072,
		-0.038992, 0.456828, 0.888700,
		44.096634, 34.004051, 35.749077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500011, 34.337864, 34.978584>,  <44.123928, 33.684273, 35.126987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500011, 34.337864, 34.978584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494488, 34.290462, 35.375729>,  <44.491173, 34.262024, 35.614014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494488, 34.290462, 35.375729>,  <44.500011, 34.337864, 34.978584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494488, 34.290462, 35.375729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986707, 0.159179, 0.032719,
		-0.161920, 0.980112, 0.114726,
		-0.013806, -0.118499, 0.992858,
		44.490345, 34.254913, 35.673588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735950, 34.899040, 35.344681>,  <44.500011, 34.337864, 34.978584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735950, 34.899040, 35.344681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.817463, 34.590706, 35.586105>,  <44.866371, 34.405704, 35.730961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.817463, 34.590706, 35.586105>,  <44.735950, 34.899040, 35.344681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817463, 34.590706, 35.586105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973717, 0.223638, -0.043130,
		-0.101733, 0.596486, 0.796150,
		0.203776, -0.770838, 0.603560,
		44.878597, 34.359455, 35.767174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276516, 35.271488, 35.700130>,  <44.735950, 34.899040, 35.344681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276516, 35.271488, 35.700130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250095, 34.872421, 35.706974>,  <45.234245, 34.632980, 35.711082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250095, 34.872421, 35.706974>,  <45.276516, 35.271488, 35.700130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250095, 34.872421, 35.706974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993906, -0.067298, -0.087301,
		0.088249, 0.011242, 0.996035,
		-0.066050, -0.997670, 0.017112,
		45.230282, 34.573120, 35.712109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922745, 35.047459, 36.115120>,  <45.276516, 35.271488, 35.700130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922745, 35.047459, 36.115120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781937, 34.791782, 35.841618>,  <45.697453, 34.638374, 35.677517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781937, 34.791782, 35.841618>,  <45.922745, 35.047459, 36.115120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781937, 34.791782, 35.841618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924687, -0.124286, -0.359872,
		0.145047, -0.758937, 0.634804,
		-0.352018, -0.639193, -0.683751,
		45.676331, 34.600025, 35.636494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265194, 34.454006, 36.272301>,  <45.922745, 35.047459, 36.115120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265194, 34.454006, 36.272301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150745, 34.475723, 35.889641>,  <46.082077, 34.488754, 35.660046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150745, 34.475723, 35.889641>,  <46.265194, 34.454006, 36.272301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150745, 34.475723, 35.889641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958191, 0.018528, -0.285530,
		0.002224, -0.998353, -0.057320,
		-0.286122, 0.054289, -0.956654,
		46.064907, 34.492008, 35.602646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492737, 33.911797, 35.794971>,  <46.265194, 34.454006, 36.272301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492737, 33.911797, 35.794971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454109, 34.255779, 35.594513>,  <46.430935, 34.462170, 35.474236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454109, 34.255779, 35.594513>,  <46.492737, 33.911797, 35.794971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454109, 34.255779, 35.594513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993760, 0.055057, -0.097009,
		-0.055832, -0.507389, -0.859907,
		-0.096565, 0.859957, -0.501149,
		46.425140, 34.513767, 35.444168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086891, 33.913731, 35.338860>,  <46.492737, 33.911797, 35.794971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086891, 33.913731, 35.338860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028538, 34.305874, 35.391964>,  <46.993526, 34.541161, 35.423828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028538, 34.305874, 35.391964>,  <47.086891, 33.913731, 35.338860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028538, 34.305874, 35.391964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983405, 0.158330, -0.088584,
		-0.107864, 0.117636, -0.987181,
		-0.145879, 0.980354, 0.132762,
		46.984776, 34.599979, 35.431793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.356968, 34.460026, 34.748100>,  <47.086891, 33.913731, 35.338860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.356968, 34.460026, 34.748100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345490, 34.650124, 35.099857>,  <47.338604, 34.764183, 35.310909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345490, 34.650124, 35.099857>,  <47.356968, 34.460026, 34.748100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345490, 34.650124, 35.099857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988111, 0.146420, -0.046884,
		-0.151041, 0.867588, -0.473791,
		-0.028697, 0.475240, 0.879388,
		47.336880, 34.792694, 35.363674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.586483, 35.165207, 34.658695>,  <47.356968, 34.460026, 34.748100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.586483, 35.165207, 34.658695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.653275, 35.033882, 35.030575>,  <47.693348, 34.955090, 35.253700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.653275, 35.033882, 35.030575>,  <47.586483, 35.165207, 34.658695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.653275, 35.033882, 35.030575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981303, -0.036214, -0.189033,
		0.095729, 0.943876, 0.316124,
		0.166976, -0.328309, 0.929695,
		47.703369, 34.935390, 35.309483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.374939, 29.571833, 30.030962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982094, 29.538935, 30.098703>,  <33.746387, 29.519196, 30.139349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982094, 29.538935, 30.098703>,  <34.374939, 29.571833, 30.030962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982094, 29.538935, 30.098703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088846, 0.590601, 0.802058,
		-0.165988, 0.802762, -0.572732,
		-0.982117, -0.082247, 0.169355,
		33.687458, 29.514261, 30.149509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278690, 30.244270, 30.241327>,  <34.374939, 29.571833, 30.030962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278690, 30.244270, 30.241327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966503, 30.030586, 30.371246>,  <33.779190, 29.902376, 30.449198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966503, 30.030586, 30.371246>,  <34.278690, 30.244270, 30.241327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966503, 30.030586, 30.371246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032123, 0.553092, 0.832501,
		-0.624372, 0.639305, -0.448830,
		-0.780466, -0.534208, 0.324799,
		33.732365, 29.870323, 30.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832088, 30.735296, 30.508495>,  <34.278690, 30.244270, 30.241327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832088, 30.735296, 30.508495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.702900, 30.388384, 30.660030>,  <33.625389, 30.180237, 30.750952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.702900, 30.388384, 30.660030>,  <33.832088, 30.735296, 30.508495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702900, 30.388384, 30.660030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123144, 0.435395, 0.891777,
		-0.938364, 0.241363, -0.247419,
		-0.322967, -0.867280, 0.378837,
		33.606010, 30.128201, 30.773682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161694, 30.846306, 30.887369>,  <33.832088, 30.735296, 30.508495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161694, 30.846306, 30.887369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347286, 30.523890, 31.034349>,  <33.458641, 30.330441, 31.122538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347286, 30.523890, 31.034349>,  <33.161694, 30.846306, 30.887369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347286, 30.523890, 31.034349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084607, 0.372585, 0.924133,
		-0.881796, -0.459869, 0.104676,
		0.463980, -0.806041, 0.367452,
		33.486481, 30.282078, 31.144585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712124, 30.776735, 31.461594>,  <33.161694, 30.846306, 30.887369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712124, 30.776735, 31.461594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.049644, 30.563559, 31.486788>,  <33.252159, 30.435654, 31.501905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.049644, 30.563559, 31.486788>,  <32.712124, 30.776735, 31.461594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049644, 30.563559, 31.486788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124584, 0.308700, 0.942965,
		-0.521988, -0.787832, 0.326879,
		0.843805, -0.532940, 0.062987,
		33.302788, 30.403677, 31.505684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733665, 30.611622, 32.210331>,  <32.712124, 30.776735, 31.461594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733665, 30.611622, 32.210331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.103466, 30.604986, 32.057999>,  <33.325344, 30.601006, 31.966600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.103466, 30.604986, 32.057999>,  <32.733665, 30.611622, 32.210331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103466, 30.604986, 32.057999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344564, 0.463664, 0.816267,
		0.163035, -0.885856, 0.434372,
		0.924497, -0.016589, -0.380828,
		33.380814, 30.600010, 31.943750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051155, 30.233240, 32.791672>,  <32.733665, 30.611622, 32.210331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051155, 30.233240, 32.791672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311375, 30.450880, 32.579731>,  <33.467506, 30.581465, 32.452568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311375, 30.450880, 32.579731>,  <33.051155, 30.233240, 32.791672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311375, 30.450880, 32.579731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370361, 0.381802, 0.846794,
		0.663040, -0.747115, 0.046865,
		0.650546, 0.544101, -0.529853,
		33.506538, 30.614111, 32.420776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606277, 30.119942, 33.189045>,  <33.051155, 30.233240, 32.791672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606277, 30.119942, 33.189045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699795, 30.445415, 32.976158>,  <33.755905, 30.640699, 32.848427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699795, 30.445415, 32.976158>,  <33.606277, 30.119942, 33.189045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699795, 30.445415, 32.976158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258229, 0.475764, 0.840813,
		0.937368, -0.334011, -0.098886,
		0.233795, 0.813686, -0.532217,
		33.769932, 30.689522, 32.816494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263897, 30.247831, 33.278053>,  <33.606277, 30.119942, 33.189045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263897, 30.247831, 33.278053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.121731, 30.606195, 33.171452>,  <34.036430, 30.821215, 33.107491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.121731, 30.606195, 33.171452>,  <34.263897, 30.247831, 33.278053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121731, 30.606195, 33.171452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481633, 0.419893, 0.769233,
		0.801068, 0.145038, -0.580736,
		-0.355415, 0.895910, -0.266507,
		34.015106, 30.874968, 33.091499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719612, 30.698519, 33.574867>,  <34.263897, 30.247831, 33.278053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719612, 30.698519, 33.574867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419395, 30.951735, 33.499035>,  <34.239265, 31.103664, 33.453537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419395, 30.951735, 33.499035>,  <34.719612, 30.698519, 33.574867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419395, 30.951735, 33.499035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330270, 0.607832, 0.722124,
		0.572367, 0.479374, -0.665280,
		-0.750545, 0.633042, -0.189580,
		34.194233, 31.141647, 33.442162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971195, 31.309599, 33.545223>,  <34.719612, 30.698519, 33.574867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971195, 31.309599, 33.545223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584927, 31.391178, 33.609573>,  <34.353165, 31.440125, 33.648186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584927, 31.391178, 33.609573>,  <34.971195, 31.309599, 33.545223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584927, 31.391178, 33.609573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256848, 0.657177, 0.708624,
		0.038795, 0.725620, -0.687001,
		-0.965673, 0.203946, 0.160878,
		34.295223, 31.452362, 33.657837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953423, 31.911850, 33.676281>,  <34.971195, 31.309599, 33.545223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953423, 31.911850, 33.676281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587231, 31.851627, 33.825539>,  <34.367516, 31.815495, 33.915092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587231, 31.851627, 33.825539>,  <34.953423, 31.911850, 33.676281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587231, 31.851627, 33.825539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152758, 0.727886, 0.668466,
		-0.372250, 0.668965, -0.643363,
		-0.915475, -0.150557, 0.373145,
		34.312588, 31.806459, 33.937481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666916, 32.558861, 33.782330>,  <34.953423, 31.911850, 33.676281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666916, 32.558861, 33.782330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454029, 32.317142, 34.019505>,  <34.326298, 32.172112, 34.161808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454029, 32.317142, 34.019505>,  <34.666916, 32.558861, 33.782330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454029, 32.317142, 34.019505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007802, 0.703835, 0.710320,
		-0.846573, 0.373417, -0.379306,
		-0.532215, -0.604298, 0.592935,
		34.294365, 32.135853, 34.197384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033459, 32.937489, 34.006577>,  <34.666916, 32.558861, 33.782330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033459, 32.937489, 34.006577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118069, 32.656910, 34.278820>,  <34.168835, 32.488564, 34.442165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118069, 32.656910, 34.278820>,  <34.033459, 32.937489, 34.006577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118069, 32.656910, 34.278820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108211, 0.708892, 0.696967,
		-0.971363, -0.073779, 0.225855,
		0.211528, -0.701448, 0.680608,
		34.181526, 32.446476, 34.483002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590569, 33.042355, 34.578011>,  <34.033459, 32.937489, 34.006577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590569, 33.042355, 34.578011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.908779, 32.840797, 34.712608>,  <34.099705, 32.719864, 34.793365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.908779, 32.840797, 34.712608>,  <33.590569, 33.042355, 34.578011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908779, 32.840797, 34.712608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157729, 0.708416, 0.687945,
		-0.585030, -0.494203, 0.643043,
		0.795526, -0.503895, 0.336494,
		34.147438, 32.689629, 34.813557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584301, 32.891220, 35.259747>,  <33.590569, 33.042355, 34.578011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584301, 32.891220, 35.259747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974533, 32.825314, 35.201656>,  <34.208672, 32.785770, 35.166801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974533, 32.825314, 35.201656>,  <33.584301, 32.891220, 35.259747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974533, 32.825314, 35.201656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217960, 0.644881, 0.732545,
		-0.027051, -0.746310, 0.665048,
		0.975583, -0.164770, -0.145221,
		34.267208, 32.775883, 35.158089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847057, 32.980686, 35.902584>,  <33.584301, 32.891220, 35.259747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847057, 32.980686, 35.902584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176315, 32.988220, 35.675579>,  <34.373871, 32.992741, 35.539375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176315, 32.988220, 35.675579>,  <33.847057, 32.980686, 35.902584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176315, 32.988220, 35.675579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403240, 0.684278, 0.607586,
		0.399778, -0.728978, 0.555669,
		0.823149, 0.018832, -0.567513,
		34.423260, 32.993870, 35.505325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399475, 33.209522, 36.454357>,  <33.847057, 32.980686, 35.902584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399475, 33.209522, 36.454357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542122, 33.237167, 36.081680>,  <34.627712, 33.253754, 35.858074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542122, 33.237167, 36.081680>,  <34.399475, 33.209522, 36.454357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542122, 33.237167, 36.081680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760155, 0.558291, 0.332378,
		0.543126, -0.826761, 0.146560,
		0.356621, 0.069114, -0.931689,
		34.649109, 33.257900, 35.802174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134136, 32.922550, 36.398552>,  <34.399475, 33.209522, 36.454357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134136, 32.922550, 36.398552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.075607, 33.205879, 36.122330>,  <35.040489, 33.375877, 35.956596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.075607, 33.205879, 36.122330>,  <35.134136, 32.922550, 36.398552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075607, 33.205879, 36.122330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684434, 0.576502, 0.446312,
		0.714240, -0.407332, -0.569159,
		-0.146324, 0.708326, -0.690553,
		35.031712, 33.418377, 35.915165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750149, 33.362595, 36.412449>,  <35.134136, 32.922550, 36.398552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750149, 33.362595, 36.412449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510456, 33.601330, 36.199017>,  <35.366642, 33.744572, 36.070957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510456, 33.601330, 36.199017>,  <35.750149, 33.362595, 36.412449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510456, 33.601330, 36.199017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398495, 0.800425, 0.447796,
		0.694353, 0.055704, -0.717476,
		-0.599229, 0.596840, -0.533579,
		35.330688, 33.780380, 36.038944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218292, 33.797863, 36.043011>,  <35.750149, 33.362595, 36.412449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218292, 33.797863, 36.043011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854164, 33.957600, 36.086536>,  <35.635685, 34.053440, 36.112652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854164, 33.957600, 36.086536>,  <36.218292, 33.797863, 36.043011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854164, 33.957600, 36.086536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412587, 0.854617, 0.315281,
		0.032912, 0.331902, -0.942740,
		-0.910323, 0.399339, 0.108811,
		35.581066, 34.077400, 36.119179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366127, 34.454456, 35.878815>,  <36.218292, 33.797863, 36.043011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366127, 34.454456, 35.878815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030548, 34.508358, 36.089722>,  <35.829201, 34.540699, 36.216267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030548, 34.508358, 36.089722>,  <36.366127, 34.454456, 35.878815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030548, 34.508358, 36.089722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302297, 0.921030, 0.245602,
		-0.452536, 0.365439, -0.813428,
		-0.838944, 0.134753, 0.527270,
		35.778866, 34.548782, 36.247902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876911, 34.237877, 36.513508>,  <36.366127, 34.454456, 35.878815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876911, 34.237877, 36.513508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198997, 34.000732, 36.508667>,  <37.392250, 33.858444, 36.505764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198997, 34.000732, 36.508667>,  <36.876911, 34.237877, 36.513508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198997, 34.000732, 36.508667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214131, -0.271676, -0.938264,
		0.552971, 0.758096, -0.345707,
		0.805215, -0.592860, -0.012102,
		37.440563, 33.822876, 36.505035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232998, 34.387211, 35.797489>,  <36.876911, 34.237877, 36.513508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232998, 34.387211, 35.797489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356407, 34.034340, 35.939804>,  <37.430450, 33.822617, 36.025192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356407, 34.034340, 35.939804>,  <37.232998, 34.387211, 35.797489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356407, 34.034340, 35.939804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115357, -0.405974, -0.906575,
		0.944197, 0.238653, -0.227016,
		0.308520, -0.882173, 0.355789,
		37.448963, 33.769688, 36.046539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752159, 34.079041, 35.258106>,  <37.232998, 34.387211, 35.797489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752159, 34.079041, 35.258106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677876, 33.774075, 35.506054>,  <37.633305, 33.591095, 35.654823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677876, 33.774075, 35.506054>,  <37.752159, 34.079041, 35.258106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677876, 33.774075, 35.506054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219098, -0.647091, -0.730253,
		0.957867, 0.000201, 0.287211,
		-0.185705, -0.762413, 0.619871,
		37.622166, 33.545349, 35.692017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206429, 33.540886, 34.887886>,  <37.752159, 34.079041, 35.258106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206429, 33.540886, 34.887886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921860, 33.386448, 35.122768>,  <37.751118, 33.293785, 35.263699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921860, 33.386448, 35.122768>,  <38.206429, 33.540886, 34.887886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921860, 33.386448, 35.122768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085269, -0.781972, -0.617454,
		0.697576, -0.489339, 0.523388,
		-0.711419, -0.386092, 0.587210,
		37.708435, 33.270618, 35.298931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424904, 32.957870, 35.051594>,  <38.206429, 33.540886, 34.887886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424904, 32.957870, 35.051594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028194, 32.925949, 35.091633>,  <37.790169, 32.906796, 35.115654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028194, 32.925949, 35.091633>,  <38.424904, 32.957870, 35.051594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028194, 32.925949, 35.091633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001462, -0.774804, -0.632200,
		0.128005, -0.627145, 0.768312,
		-0.991772, -0.079801, 0.100096,
		37.730663, 32.902008, 35.121662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269199, 32.313320, 35.049770>,  <38.424904, 32.957870, 35.051594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269199, 32.313320, 35.049770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905914, 32.460526, 34.970047>,  <37.687943, 32.548847, 34.922211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905914, 32.460526, 34.970047>,  <38.269199, 32.313320, 35.049770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905914, 32.460526, 34.970047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191637, -0.789052, -0.583671,
		-0.372064, -0.491900, 0.787149,
		-0.908209, 0.368010, -0.199311,
		37.633453, 32.570930, 34.910255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044491, 31.646286, 35.002102>,  <38.269199, 32.313320, 35.049770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044491, 31.646286, 35.002102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785664, 31.921909, 34.871559>,  <37.630367, 32.087284, 34.793232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785664, 31.921909, 34.871559>,  <38.044491, 31.646286, 35.002102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785664, 31.921909, 34.871559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318278, -0.633085, -0.705621,
		-0.692825, -0.352710, 0.628959,
		-0.647064, 0.689056, -0.326358,
		37.591545, 32.128628, 34.773651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332417, 31.382824, 34.880745>,  <38.044491, 31.646286, 35.002102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332417, 31.382824, 34.880745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375381, 31.700838, 34.641956>,  <37.401161, 31.891647, 34.498684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375381, 31.700838, 34.641956>,  <37.332417, 31.382824, 34.880745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375381, 31.700838, 34.641956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355760, -0.529956, -0.769793,
		-0.928384, 0.295068, 0.225916,
		0.107415, 0.795036, -0.596976,
		37.407604, 31.939348, 34.462864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672359, 31.541264, 34.602028>,  <37.332417, 31.382824, 34.880745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672359, 31.541264, 34.602028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947166, 31.702085, 34.359917>,  <37.112049, 31.798578, 34.214649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947166, 31.702085, 34.359917>,  <36.672359, 31.541264, 34.602028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947166, 31.702085, 34.359917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471677, -0.386884, -0.792364,
		-0.552745, 0.829863, -0.076157,
		0.687018, 0.402054, -0.605276,
		37.153271, 31.822702, 34.178333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373066, 31.773104, 34.003124>,  <36.672359, 31.541264, 34.602028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373066, 31.773104, 34.003124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749481, 31.752651, 33.869358>,  <36.975330, 31.740379, 33.789101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749481, 31.752651, 33.869358>,  <36.373066, 31.773104, 34.003124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749481, 31.752651, 33.869358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327264, -0.387999, -0.861600,
		-0.085697, 0.920240, -0.381856,
		0.941039, -0.051131, -0.334412,
		37.031792, 31.737312, 33.769035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223953, 31.851515, 33.306007>,  <36.373066, 31.773104, 34.003124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223953, 31.851515, 33.306007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601990, 31.723942, 33.334518>,  <36.828812, 31.647398, 33.351624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601990, 31.723942, 33.334518>,  <36.223953, 31.851515, 33.306007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601990, 31.723942, 33.334518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104882, -0.502586, -0.858142,
		0.309511, 0.803549, -0.508441,
		0.945094, -0.318931, 0.071278,
		36.885517, 31.628263, 33.355904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452560, 31.977488, 32.685131>,  <36.223953, 31.851515, 33.306007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452560, 31.977488, 32.685131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701775, 31.701283, 32.832115>,  <36.851303, 31.535561, 32.920307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701775, 31.701283, 32.832115>,  <36.452560, 31.977488, 32.685131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701775, 31.701283, 32.832115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134660, -0.368079, -0.919991,
		0.770519, 0.622665, -0.136340,
		0.623031, -0.690511, 0.367460,
		36.888683, 31.494129, 32.942352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986839, 32.042412, 32.239182>,  <36.452560, 31.977488, 32.685131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986839, 32.042412, 32.239182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027424, 31.676214, 32.394913>,  <37.051773, 31.456495, 32.488350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027424, 31.676214, 32.394913>,  <36.986839, 32.042412, 32.239182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027424, 31.676214, 32.394913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070397, -0.383757, -0.920747,
		0.992345, 0.120829, 0.025511,
		0.101463, -0.915495, 0.389325,
		37.057861, 31.401566, 32.511711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545135, 31.715193, 31.896488>,  <36.986839, 32.042412, 32.239182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545135, 31.715193, 31.896488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320145, 31.415295, 32.035915>,  <37.185150, 31.235355, 32.119572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320145, 31.415295, 32.035915>,  <37.545135, 31.715193, 31.896488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320145, 31.415295, 32.035915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102358, -0.355197, -0.929171,
		0.820451, -0.558318, 0.123048,
		-0.562479, -0.749744, 0.348570,
		37.151402, 31.190372, 32.140488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733181, 31.202490, 31.524075>,  <37.545135, 31.715193, 31.896488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733181, 31.202490, 31.524075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390957, 31.059605, 31.673967>,  <37.185623, 30.973873, 31.763903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390957, 31.059605, 31.673967>,  <37.733181, 31.202490, 31.524075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390957, 31.059605, 31.673967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032274, -0.685614, -0.727249,
		0.516703, -0.634297, 0.575052,
		-0.855556, -0.357213, 0.374730,
		37.134289, 30.952440, 31.786386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756916, 30.413195, 31.560947>,  <37.733181, 31.202490, 31.524075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756916, 30.413195, 31.560947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367470, 30.500122, 31.588781>,  <37.133801, 30.552279, 31.605482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367470, 30.500122, 31.588781>,  <37.756916, 30.413195, 31.560947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367470, 30.500122, 31.588781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194094, -0.628344, -0.753334,
		-0.119988, -0.746965, 0.653947,
		-0.973617, 0.217318, 0.069588,
		37.075386, 30.565317, 31.609657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410744, 29.694586, 31.461027>,  <37.756916, 30.413195, 31.560947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410744, 29.694586, 31.461027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137726, 29.972837, 31.371376>,  <36.973915, 30.139790, 31.317585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137726, 29.972837, 31.371376>,  <37.410744, 29.694586, 31.461027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137726, 29.972837, 31.371376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229235, -0.494962, -0.838132,
		-0.693965, -0.520683, 0.497295,
		-0.682542, 0.695631, -0.224128,
		36.932964, 30.181526, 31.304138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776512, 29.292259, 31.267174>,  <37.410744, 29.694586, 31.461027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776512, 29.292259, 31.267174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684029, 29.656158, 31.129248>,  <36.628536, 29.874498, 31.046492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684029, 29.656158, 31.129248>,  <36.776512, 29.292259, 31.267174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684029, 29.656158, 31.129248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459007, -0.414498, -0.785814,
		-0.857819, -0.023417, 0.513418,
		-0.231213, 0.909749, -0.344815,
		36.614666, 29.929083, 31.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.100399, 29.232868, 31.020548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223469, 29.573084, 30.849939>,  <36.297310, 29.777214, 30.747574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223469, 29.573084, 30.849939>,  <36.100399, 29.232868, 31.020548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223469, 29.573084, 30.849939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421978, -0.279797, -0.862350,
		-0.852803, 0.445302, 0.272824,
		0.307671, 0.850541, -0.426520,
		36.315769, 29.828247, 30.721983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454708, 29.491875, 30.639435>,  <36.100399, 29.232868, 31.020548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454708, 29.491875, 30.639435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779175, 29.659391, 30.476156>,  <35.973854, 29.759901, 30.378189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779175, 29.659391, 30.476156>,  <35.454708, 29.491875, 30.639435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779175, 29.659391, 30.476156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414275, -0.081168, -0.906525,
		-0.412779, 0.904446, 0.107655,
		0.811166, 0.418793, -0.408194,
		36.022526, 29.785030, 30.353699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174450, 29.960808, 30.161402>,  <35.454708, 29.491875, 30.639435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174450, 29.960808, 30.161402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556690, 29.931503, 30.047230>,  <35.786034, 29.913921, 29.978727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556690, 29.931503, 30.047230>,  <35.174450, 29.960808, 30.161402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556690, 29.931503, 30.047230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283905, 0.030643, -0.958363,
		0.078958, 0.996842, 0.008483,
		0.955596, -0.073262, -0.285428,
		35.843369, 29.909525, 29.961601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241745, 30.354315, 29.641039>,  <35.174450, 29.960808, 30.161402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241745, 30.354315, 29.641039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556915, 30.114546, 29.584660>,  <35.746017, 29.970684, 29.550831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556915, 30.114546, 29.584660>,  <35.241745, 30.354315, 29.641039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556915, 30.114546, 29.584660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174572, 0.002061, -0.984642,
		0.590506, 0.800431, -0.103018,
		0.787926, -0.599421, -0.140950,
		35.793293, 29.934719, 29.542376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382336, 30.645618, 28.987379>,  <35.241745, 30.354315, 29.641039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382336, 30.645618, 28.987379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547764, 30.284731, 29.036301>,  <35.647022, 30.068199, 29.065655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547764, 30.284731, 29.036301>,  <35.382336, 30.645618, 28.987379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547764, 30.284731, 29.036301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085145, -0.172070, -0.981398,
		0.906481, 0.395465, -0.147982,
		0.413572, -0.902219, 0.122306,
		35.671837, 30.014065, 29.072992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878242, 30.587984, 28.495096>,  <35.382336, 30.645618, 28.987379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878242, 30.587984, 28.495096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795559, 30.206890, 28.584152>,  <35.745949, 29.978233, 28.637587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795559, 30.206890, 28.584152>,  <35.878242, 30.587984, 28.495096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795559, 30.206890, 28.584152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275269, -0.161733, -0.947665,
		0.938882, -0.257177, -0.228827,
		-0.206709, -0.952734, 0.222641,
		35.733547, 29.921070, 28.650944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043381, 30.167589, 27.898264>,  <35.878242, 30.587984, 28.495096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043381, 30.167589, 27.898264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782139, 29.947578, 28.106466>,  <35.625393, 29.815571, 28.231388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782139, 29.947578, 28.106466>,  <36.043381, 30.167589, 27.898264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782139, 29.947578, 28.106466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443538, -0.279271, -0.851635,
		0.613786, -0.787068, -0.061567,
		-0.653101, -0.550029, 0.520507,
		35.586208, 29.782570, 28.262619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041611, 29.570137, 27.485043>,  <36.043381, 30.167589, 27.898264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041611, 29.570137, 27.485043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714596, 29.505682, 27.706194>,  <35.518387, 29.467009, 27.838884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714596, 29.505682, 27.706194>,  <36.041611, 29.570137, 27.485043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714596, 29.505682, 27.706194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360469, -0.605528, -0.709505,
		0.449110, -0.779340, 0.436955,
		-0.817534, -0.161137, 0.552877,
		35.469334, 29.457340, 27.872057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036247, 28.857784, 27.498499>,  <36.041611, 29.570137, 27.485043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036247, 28.857784, 27.498499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685070, 29.040571, 27.555626>,  <35.474365, 29.150244, 27.589903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685070, 29.040571, 27.555626>,  <36.036247, 28.857784, 27.498499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685070, 29.040571, 27.555626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401733, -0.540874, -0.738963,
		-0.260432, -0.706144, 0.658435,
		-0.877944, 0.456965, 0.142821,
		35.421688, 29.177660, 27.598473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566784, 28.318640, 27.626703>,  <36.036247, 28.857784, 27.498499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566784, 28.318640, 27.626703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378727, 28.642897, 27.487093>,  <35.265892, 28.837452, 27.403328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378727, 28.642897, 27.487093>,  <35.566784, 28.318640, 27.626703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378727, 28.642897, 27.487093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375556, -0.541615, -0.752071,
		-0.798699, -0.222504, 0.559081,
		-0.470145, 0.810644, -0.349025,
		35.237682, 28.886089, 27.382385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122002, 28.033468, 27.099463>,  <35.566784, 28.318640, 27.626703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122002, 28.033468, 27.099463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.082546, 28.419693, 27.003166>,  <35.058872, 28.651428, 26.945389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.082546, 28.419693, 27.003166>,  <35.122002, 28.033468, 27.099463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082546, 28.419693, 27.003166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284653, -0.259189, -0.922927,
		-0.953542, -0.022509, 0.300417,
		-0.098639, 0.965564, -0.240741,
		35.052956, 28.709362, 26.930944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504612, 28.086889, 26.779522>,  <35.122002, 28.033468, 27.099463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504612, 28.086889, 26.779522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697517, 28.406923, 26.636812>,  <34.813259, 28.598944, 26.551186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697517, 28.406923, 26.636812>,  <34.504612, 28.086889, 26.779522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697517, 28.406923, 26.636812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243883, -0.268544, -0.931882,
		-0.841396, 0.536420, 0.065620,
		0.482259, 0.800086, -0.356776,
		34.842194, 28.646950, 26.529779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096848, 28.318279, 26.187986>,  <34.504612, 28.086889, 26.779522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096848, 28.318279, 26.187986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453457, 28.491701, 26.135509>,  <34.667423, 28.595755, 26.104023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453457, 28.491701, 26.135509>,  <34.096848, 28.318279, 26.187986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453457, 28.491701, 26.135509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018909, -0.253759, -0.967083,
		-0.452574, 0.864661, -0.218035,
		0.891527, 0.433553, -0.131194,
		34.720917, 28.621767, 26.096151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027298, 28.873863, 25.678356>,  <34.096848, 28.318279, 26.187986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027298, 28.873863, 25.678356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414730, 28.775375, 25.664347>,  <34.647190, 28.716282, 25.655941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414730, 28.775375, 25.664347>,  <34.027298, 28.873863, 25.678356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414730, 28.775375, 25.664347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063396, -0.108270, -0.992098,
		0.240484, 0.963147, -0.120477,
		0.968581, -0.246221, -0.035022,
		34.705303, 28.701509, 25.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375763, 29.436634, 25.287661>,  <34.027298, 28.873863, 25.678356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375763, 29.436634, 25.287661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628864, 29.127142, 25.300047>,  <34.780727, 28.941446, 25.307478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628864, 29.127142, 25.300047>,  <34.375763, 29.436634, 25.287661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628864, 29.127142, 25.300047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189650, 0.116076, -0.974966,
		0.750767, 0.622789, 0.220186,
		0.632757, -0.773731, 0.030966,
		34.818691, 28.895023, 25.309336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882198, 29.625946, 24.907402>,  <34.375763, 29.436634, 25.287661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882198, 29.625946, 24.907402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909031, 29.226852, 24.905436>,  <34.925129, 28.987396, 24.904257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909031, 29.226852, 24.905436>,  <34.882198, 29.625946, 24.907402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909031, 29.226852, 24.905436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253515, 0.021808, -0.967086,
		0.965003, 0.063624, 0.254404,
		0.067078, -0.997736, -0.004915,
		34.929153, 28.927532, 24.903961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407524, 29.441538, 24.379490>,  <34.882198, 29.625946, 24.907402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407524, 29.441538, 24.379490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.212788, 29.099398, 24.450325>,  <35.095947, 28.894114, 24.492826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.212788, 29.099398, 24.450325>,  <35.407524, 29.441538, 24.379490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212788, 29.099398, 24.450325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227462, -0.319883, -0.919748,
		0.843355, -0.407490, 0.350292,
		-0.486840, -0.855352, 0.177086,
		35.066734, 28.842793, 24.503450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854710, 29.019135, 24.238844>,  <35.407524, 29.441538, 24.379490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854710, 29.019135, 24.238844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507050, 28.825081, 24.200428>,  <35.298454, 28.708649, 24.177378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507050, 28.825081, 24.200428>,  <35.854710, 29.019135, 24.238844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507050, 28.825081, 24.200428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208946, -0.184206, -0.960422,
		0.448243, -0.854817, 0.261470,
		-0.869149, -0.485135, -0.096041,
		35.246304, 28.679541, 24.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969795, 28.282982, 23.945154>,  <35.854710, 29.019135, 24.238844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969795, 28.282982, 23.945154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589382, 28.373741, 23.861193>,  <35.361134, 28.428198, 23.810816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589382, 28.373741, 23.861193>,  <35.969795, 28.282982, 23.945154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589382, 28.373741, 23.861193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148601, -0.259842, -0.954149,
		-0.271046, -0.938614, 0.213398,
		-0.951027, 0.226907, -0.209908,
		35.304073, 28.441811, 23.798222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680561, 27.693268, 23.580467>,  <35.969795, 28.282982, 23.945154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680561, 27.693268, 23.580467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457184, 28.015274, 23.500380>,  <35.323158, 28.208477, 23.452328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457184, 28.015274, 23.500380>,  <35.680561, 27.693268, 23.580467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457184, 28.015274, 23.500380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087231, -0.183036, -0.979228,
		-0.824941, -0.564313, 0.031994,
		-0.558448, 0.805015, -0.200220,
		35.289650, 28.256779, 23.440313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334454, 27.470858, 23.064524>,  <35.680561, 27.693268, 23.580467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334454, 27.470858, 23.064524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285641, 27.867720, 23.053659>,  <35.256351, 28.105837, 23.047140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285641, 27.867720, 23.053659>,  <35.334454, 27.470858, 23.064524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285641, 27.867720, 23.053659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045653, -0.032947, -0.998414,
		-0.991475, -0.120601, 0.049316,
		-0.122034, 0.992154, -0.027160,
		35.249031, 28.165365, 23.045511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685158, 27.693218, 22.821241>,  <35.334454, 27.470858, 23.064524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685158, 27.693218, 22.821241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890331, 28.031380, 22.761652>,  <35.013435, 28.234278, 22.725899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890331, 28.031380, 22.761652>,  <34.685158, 27.693218, 22.821241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890331, 28.031380, 22.761652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210599, -0.044309, -0.976568,
		-0.832196, 0.532284, 0.155314,
		0.512930, 0.845405, -0.148972,
		35.044209, 28.285002, 22.716961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336098, 28.281166, 22.400644>,  <34.685158, 27.693218, 22.821241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336098, 28.281166, 22.400644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726280, 28.365547, 22.375412>,  <34.960392, 28.416176, 22.360271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726280, 28.365547, 22.375412>,  <34.336098, 28.281166, 22.400644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726280, 28.365547, 22.375412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049204, -0.070409, -0.996304,
		-0.214612, 0.974958, -0.058302,
		0.975459, 0.210950, -0.063082,
		35.018917, 28.428833, 22.356487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691063, 28.399250, 22.382860>,  <34.336098, 28.281166, 22.400644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691063, 28.399250, 22.382860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443298, 28.663954, 22.213905>,  <33.294640, 28.822777, 22.112534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443298, 28.663954, 22.213905>,  <33.691063, 28.399250, 22.382860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443298, 28.663954, 22.213905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483898, 0.101848, 0.869178,
		0.618205, 0.742767, 0.257139,
		-0.619407, 0.661759, -0.422386,
		33.257477, 28.862482, 22.087191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688953, 29.195772, 22.625113>,  <33.691063, 28.399250, 22.382860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688953, 29.195772, 22.625113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331383, 29.047134, 22.524862>,  <33.116840, 28.957952, 22.464712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331383, 29.047134, 22.524862>,  <33.688953, 29.195772, 22.625113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331383, 29.047134, 22.524862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313356, 0.118325, 0.942235,
		-0.320474, 0.920824, -0.222216,
		-0.893926, -0.371595, -0.250626,
		33.063206, 28.935656, 22.449675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102020, 29.596035, 22.782885>,  <33.688953, 29.195772, 22.625113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102020, 29.596035, 22.782885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936531, 29.232592, 22.760029>,  <32.837238, 29.014526, 22.746315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936531, 29.232592, 22.760029>,  <33.102020, 29.596035, 22.782885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936531, 29.232592, 22.760029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433140, 0.141242, 0.890191,
		-0.800763, 0.393045, -0.451989,
		-0.413725, -0.908607, -0.057142,
		32.812412, 28.960009, 22.742886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495972, 29.789864, 22.898520>,  <33.102020, 29.596035, 22.782885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495972, 29.789864, 22.898520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528210, 29.401741, 22.989742>,  <32.547554, 29.168867, 23.044476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528210, 29.401741, 22.989742>,  <32.495972, 29.789864, 22.898520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528210, 29.401741, 22.989742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319595, 0.191567, 0.927988,
		-0.944120, -0.147678, -0.294666,
		0.080595, -0.970306, 0.228059,
		32.552387, 29.110649, 23.058161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813446, 29.597567, 23.282869>,  <32.495972, 29.789864, 22.898520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813446, 29.597567, 23.282869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083542, 29.313799, 23.363644>,  <32.245598, 29.143538, 23.412107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083542, 29.313799, 23.363644>,  <31.813446, 29.597567, 23.282869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083542, 29.313799, 23.363644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175106, 0.111772, 0.978185,
		-0.716514, -0.695867, -0.048751,
		0.675237, -0.709420, 0.201936,
		32.286114, 29.100973, 23.424225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471346, 29.262062, 23.854208>,  <31.813446, 29.597567, 23.282869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471346, 29.262062, 23.854208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843121, 29.119112, 23.890930>,  <32.066185, 29.033342, 23.912964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843121, 29.119112, 23.890930>,  <31.471346, 29.262062, 23.854208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843121, 29.119112, 23.890930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061551, 0.095155, 0.993558,
		-0.363809, -0.929101, 0.066444,
		0.929438, -0.357376, 0.091805,
		32.121952, 29.011900, 23.918472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420843, 28.807730, 24.356415>,  <31.471346, 29.262062, 23.854208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420843, 28.807730, 24.356415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810989, 28.895958, 24.355265>,  <32.045078, 28.948895, 24.354574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810989, 28.895958, 24.355265>,  <31.420843, 28.807730, 24.356415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810989, 28.895958, 24.355265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018951, 0.096771, 0.995126,
		0.219775, -0.970558, 0.098567,
		0.975366, 0.220572, -0.002875,
		32.103600, 28.962130, 24.354403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733238, 28.403412, 24.852573>,  <31.420843, 28.807730, 24.356415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733238, 28.403412, 24.852573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001987, 28.693804, 24.793869>,  <32.163239, 28.868038, 24.758646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001987, 28.693804, 24.793869>,  <31.733238, 28.403412, 24.852573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001987, 28.693804, 24.793869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117261, 0.091390, 0.988887,
		0.731326, -0.681616, -0.023726,
		0.671873, 0.725980, -0.146763,
		32.203548, 28.911598, 24.749840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174381, 28.314398, 25.427219>,  <31.733238, 28.403412, 24.852573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174381, 28.314398, 25.427219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258568, 28.686451, 25.306847>,  <32.309078, 28.909683, 25.234623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258568, 28.686451, 25.306847>,  <32.174381, 28.314398, 25.427219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258568, 28.686451, 25.306847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137544, 0.276593, 0.951093,
		0.967877, -0.241564, -0.069721,
		0.210466, 0.930131, -0.300933,
		32.321709, 28.965490, 25.216566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894264, 28.468246, 25.528490>,  <32.174381, 28.314398, 25.427219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894264, 28.468246, 25.528490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699505, 28.817131, 25.509851>,  <32.582649, 29.026463, 25.498669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699505, 28.817131, 25.509851>,  <32.894264, 28.468246, 25.528490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699505, 28.817131, 25.509851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311023, 0.222984, 0.923874,
		0.816205, 0.435343, -0.379850,
		-0.486903, 0.872212, -0.046599,
		32.553432, 29.078794, 25.495872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317364, 28.894855, 25.843060>,  <32.894264, 28.468246, 25.528490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317364, 28.894855, 25.843060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967178, 29.085802, 25.873224>,  <32.757069, 29.200371, 25.891323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967178, 29.085802, 25.873224>,  <33.317364, 28.894855, 25.843060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967178, 29.085802, 25.873224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106526, 0.038407, 0.993568,
		0.471399, 0.877865, -0.084476,
		-0.875463, 0.477366, 0.075410,
		32.704540, 29.229012, 25.895847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450668, 29.441448, 26.329979>,  <33.317364, 28.894855, 25.843060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450668, 29.441448, 26.329979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057037, 29.370798, 26.322008>,  <32.820858, 29.328407, 26.317226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057037, 29.370798, 26.322008>,  <33.450668, 29.441448, 26.329979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057037, 29.370798, 26.322008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054495, 0.193106, 0.979663,
		-0.169186, 0.965149, -0.199656,
		-0.984076, -0.176626, -0.019925,
		32.761814, 29.317810, 26.316031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190472, 29.955091, 26.651278>,  <33.450668, 29.441448, 26.329979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190472, 29.955091, 26.651278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938736, 29.646650, 26.689924>,  <32.787697, 29.461586, 26.713112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938736, 29.646650, 26.689924>,  <33.190472, 29.955091, 26.651278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938736, 29.646650, 26.689924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003869, 0.121212, 0.992619,
		-0.777123, 0.625066, -0.073300,
		-0.629337, -0.771103, 0.096616,
		32.749935, 29.415319, 26.718908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916573, 30.125078, 27.221508>,  <33.190472, 29.955091, 26.651278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916573, 30.125078, 27.221508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787506, 29.748987, 27.177948>,  <32.710068, 29.523333, 27.151812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787506, 29.748987, 27.177948>,  <32.916573, 30.125078, 27.221508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787506, 29.748987, 27.177948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000047, -0.115068, 0.993358,
		-0.946513, 0.320517, 0.037173,
		-0.322666, -0.940228, -0.108898,
		32.690708, 29.466919, 27.145279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249863, 30.079401, 27.655720>,  <32.916573, 30.125078, 27.221508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249863, 30.079401, 27.655720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401745, 29.710535, 27.626230>,  <32.492874, 29.489216, 27.608536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401745, 29.710535, 27.626230>,  <32.249863, 30.079401, 27.655720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401745, 29.710535, 27.626230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028985, -0.091514, 0.995382,
		-0.924654, -0.375814, -0.061477,
		0.379705, -0.922166, -0.073726,
		32.515656, 29.433886, 27.604113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937166, 29.708733, 28.089224>,  <32.249863, 30.079401, 27.655720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937166, 29.708733, 28.089224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256454, 29.470123, 28.055742>,  <32.448029, 29.326958, 28.035654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256454, 29.470123, 28.055742>,  <31.937166, 29.708733, 28.089224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256454, 29.470123, 28.055742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099898, -0.005939, 0.994980,
		-0.594025, -0.802574, 0.054851,
		0.798220, -0.596523, -0.083704,
		32.495922, 29.291166, 28.030632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950682, 29.193718, 28.685116>,  <31.937166, 29.708733, 28.089224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950682, 29.193718, 28.685116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324768, 29.177509, 28.544415>,  <32.549221, 29.167784, 28.459993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324768, 29.177509, 28.544415>,  <31.950682, 29.193718, 28.685116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324768, 29.177509, 28.544415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352185, 0.003878, 0.935922,
		-0.036562, -0.999171, 0.017898,
		0.935216, -0.040523, -0.351751,
		32.605331, 29.165352, 28.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341888, 28.642523, 28.995461>,  <31.950682, 29.193718, 28.685116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341888, 28.642523, 28.995461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618744, 28.908033, 28.882076>,  <32.784855, 29.067341, 28.814045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618744, 28.908033, 28.882076>,  <32.341888, 28.642523, 28.995461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618744, 28.908033, 28.882076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386141, -0.008734, 0.922399,
		0.609792, -0.747879, -0.262357,
		0.692134, 0.663777, -0.283461,
		32.826385, 29.107166, 28.797037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970428, 28.377773, 29.292093>,  <32.341888, 28.642523, 28.995461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970428, 28.377773, 29.292093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008904, 28.770065, 29.224077>,  <33.031986, 29.005442, 29.183268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008904, 28.770065, 29.224077>,  <32.970428, 28.377773, 29.292093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008904, 28.770065, 29.224077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478563, 0.104225, 0.871846,
		0.872769, -0.165234, -0.459316,
		0.096186, 0.980732, -0.170039,
		33.037758, 29.064285, 29.173065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632847, 28.487898, 29.531128>,  <32.970428, 28.377773, 29.292093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632847, 28.487898, 29.531128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445137, 28.841110, 29.528574>,  <33.332512, 29.053038, 29.527040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445137, 28.841110, 29.528574>,  <33.632847, 28.487898, 29.531128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445137, 28.841110, 29.528574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447021, 0.243788, 0.860662,
		0.761547, 0.401031, -0.509136,
		-0.469274, 0.883029, -0.006387,
		33.304356, 29.106020, 29.526657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203075, 28.925226, 29.811811>,  <33.632847, 28.487898, 29.531128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203075, 28.925226, 29.811811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855335, 29.121628, 29.834255>,  <33.646690, 29.239470, 29.847721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855335, 29.121628, 29.834255>,  <34.203075, 28.925226, 29.811811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855335, 29.121628, 29.834255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336031, 0.504041, 0.795629,
		0.362375, 0.710534, -0.603180,
		-0.869349, 0.491004, 0.056110,
		33.594532, 29.268929, 29.851088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.525455, 30.586773, 33.571152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.359489, 30.860851, 33.331703>,  <37.259911, 31.025299, 33.188034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.359489, 30.860851, 33.331703>,  <37.525455, 30.586773, 33.571152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359489, 30.860851, 33.331703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097796, 0.687703, 0.719375,
		0.904590, 0.239936, -0.352347,
		-0.414914, 0.685198, -0.598624,
		37.235016, 31.066410, 33.152115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043560, 31.015369, 33.651806>,  <37.525455, 30.586773, 33.571152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043560, 31.015369, 33.651806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702328, 31.199362, 33.553276>,  <37.497589, 31.309757, 33.494160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702328, 31.199362, 33.553276>,  <38.043560, 31.015369, 33.651806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702328, 31.199362, 33.553276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120587, 0.633096, 0.764623,
		0.507657, 0.622581, -0.595548,
		-0.853079, 0.459981, -0.246321,
		37.446404, 31.337357, 33.479382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242989, 31.679634, 33.556473>,  <38.043560, 31.015369, 33.651806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242989, 31.679634, 33.556473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850155, 31.670204, 33.631252>,  <37.614452, 31.664545, 33.676121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850155, 31.670204, 33.631252>,  <38.242989, 31.679634, 33.556473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850155, 31.670204, 33.631252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089846, 0.813507, 0.574573,
		-0.165632, 0.581077, -0.796816,
		-0.982086, -0.023577, 0.186950,
		37.555531, 31.663132, 33.687336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014824, 32.429081, 33.415039>,  <38.242989, 31.679634, 33.556473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014824, 32.429081, 33.415039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759941, 32.226982, 33.647831>,  <37.607014, 32.105724, 33.787506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759941, 32.226982, 33.647831>,  <38.014824, 32.429081, 33.415039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759941, 32.226982, 33.647831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081303, 0.706856, 0.702669,
		-0.766396, 0.495060, -0.409332,
		-0.637202, -0.505243, 0.581982,
		37.568779, 32.075409, 33.822426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592846, 32.962055, 33.710049>,  <38.014824, 32.429081, 33.415039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592846, 32.962055, 33.710049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.530586, 32.647461, 33.949120>,  <37.493233, 32.458706, 34.092564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.530586, 32.647461, 33.949120>,  <37.592846, 32.962055, 33.710049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530586, 32.647461, 33.949120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109890, 0.615083, 0.780767,
		-0.981681, 0.055846, -0.182163,
		-0.155647, -0.786483, 0.597678,
		37.483891, 32.411514, 34.128422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903412, 33.004715, 34.145351>,  <37.592846, 32.962055, 33.710049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903412, 33.004715, 34.145351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148609, 32.757877, 34.342709>,  <37.295727, 32.609776, 34.461124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148609, 32.757877, 34.342709>,  <36.903412, 33.004715, 34.145351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148609, 32.757877, 34.342709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086874, 0.568049, 0.818397,
		-0.785295, -0.544537, 0.294603,
		0.612997, -0.617090, 0.493392,
		37.332508, 32.572750, 34.490726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404728, 32.829247, 34.639732>,  <36.903412, 33.004715, 34.145351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404728, 32.829247, 34.639732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.774918, 32.731194, 34.755253>,  <36.997032, 32.672363, 34.824566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.774918, 32.731194, 34.755253>,  <36.404728, 32.829247, 34.639732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774918, 32.731194, 34.755253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169655, 0.413449, 0.894582,
		-0.338694, -0.876910, 0.341049,
		0.925475, -0.245129, 0.288805,
		37.052559, 32.657654, 34.841896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450043, 32.638496, 35.380859>,  <36.404728, 32.829247, 34.639732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450043, 32.638496, 35.380859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.822800, 32.749176, 35.287045>,  <37.046455, 32.815582, 35.230755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.822800, 32.749176, 35.287045>,  <36.450043, 32.638496, 35.380859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822800, 32.749176, 35.287045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111318, 0.397234, 0.910941,
		0.345216, -0.875012, 0.339380,
		0.931898, 0.276693, -0.234536,
		37.102367, 32.832184, 35.216682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846069, 32.538422, 35.989315>,  <36.450043, 32.638496, 35.380859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846069, 32.538422, 35.989315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.089397, 32.780396, 35.783794>,  <37.235394, 32.925579, 35.660480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.089397, 32.780396, 35.783794>,  <36.846069, 32.538422, 35.989315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089397, 32.780396, 35.783794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312044, 0.412942, 0.855633,
		0.729777, -0.680829, 0.062433,
		0.608321, 0.604939, -0.513804,
		37.271893, 32.961876, 35.629654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426346, 32.530388, 36.405121>,  <36.846069, 32.538422, 35.989315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426346, 32.530388, 36.405121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477318, 32.860348, 36.184834>,  <37.507900, 33.058323, 36.052662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477318, 32.860348, 36.184834>,  <37.426346, 32.530388, 36.405121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477318, 32.860348, 36.184834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311774, 0.493790, 0.811768,
		0.941572, -0.275146, -0.194259,
		0.127432, 0.824903, -0.550722,
		37.515549, 33.107819, 36.019615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054283, 32.687721, 36.443226>,  <37.426346, 32.530388, 36.405121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054283, 32.687721, 36.443226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859238, 33.022293, 36.343128>,  <37.742210, 33.223038, 36.283070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859238, 33.022293, 36.343128>,  <38.054283, 32.687721, 36.443226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859238, 33.022293, 36.343128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512314, 0.506213, 0.693745,
		0.706945, 0.210075, -0.675350,
		-0.487609, 0.836431, -0.250240,
		37.712955, 33.273224, 36.268055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564137, 33.158970, 36.535728>,  <38.054283, 32.687721, 36.443226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564137, 33.158970, 36.535728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224739, 33.370483, 36.544144>,  <38.021099, 33.497391, 36.549194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224739, 33.370483, 36.544144>,  <38.564137, 33.158970, 36.535728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224739, 33.370483, 36.544144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388476, 0.595361, 0.703300,
		0.359369, 0.604920, -0.710581,
		-0.848493, 0.528788, 0.021042,
		37.970192, 33.529121, 36.550457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657990, 33.870029, 36.302082>,  <38.564137, 33.158970, 36.535728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657990, 33.870029, 36.302082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.373829, 33.791943, 36.572556>,  <38.203331, 33.745090, 36.734840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.373829, 33.791943, 36.572556>,  <38.657990, 33.870029, 36.302082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373829, 33.791943, 36.572556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509699, 0.519814, 0.685566,
		-0.485323, 0.831675, -0.269774,
		-0.710400, -0.195218, 0.676181,
		38.160709, 33.733376, 36.775410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682076, 34.539600, 36.263687>,  <38.657990, 33.870029, 36.302082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682076, 34.539600, 36.263687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.797573, 34.702419, 35.917061>,  <38.866871, 34.800110, 35.709084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.797573, 34.702419, 35.917061>,  <38.682076, 34.539600, 36.263687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797573, 34.702419, 35.917061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376262, -0.784045, -0.493660,
		-0.880372, 0.468596, -0.073228,
		0.288741, 0.407051, -0.866567,
		38.884193, 34.824535, 35.657089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453255, 35.248116, 36.367298>,  <38.682076, 34.539600, 36.263687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453255, 35.248116, 36.367298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431545, 35.644287, 36.316536>,  <38.418518, 35.881989, 36.286079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431545, 35.644287, 36.316536>,  <38.453255, 35.248116, 36.367298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431545, 35.644287, 36.316536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625924, -0.132770, -0.768499,
		-0.777993, 0.037724, 0.627139,
		-0.054275, 0.990429, -0.126906,
		38.415264, 35.941414, 36.278465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755444, 35.586464, 36.453156>,  <38.453255, 35.248116, 36.367298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755444, 35.586464, 36.453156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934166, 35.834213, 36.194935>,  <38.041397, 35.982864, 36.040001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934166, 35.834213, 36.194935>,  <37.755444, 35.586464, 36.453156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934166, 35.834213, 36.194935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776970, -0.089060, -0.623207,
		-0.443491, 0.780028, 0.441443,
		0.446804, 0.619374, -0.645555,
		38.068207, 36.020027, 36.001266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196674, 36.117798, 36.228184>,  <37.755444, 35.586464, 36.453156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196674, 36.117798, 36.228184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495003, 36.170601, 35.967010>,  <37.674000, 36.202282, 35.810307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495003, 36.170601, 35.967010>,  <37.196674, 36.117798, 36.228184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495003, 36.170601, 35.967010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666142, 0.148794, -0.730832,
		0.000676, 0.980017, 0.198910,
		0.745824, 0.132008, -0.652932,
		37.718750, 36.210205, 35.771130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995277, 36.636322, 35.757198>,  <37.196674, 36.117798, 36.228184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995277, 36.636322, 35.757198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287159, 36.442245, 35.564484>,  <37.462288, 36.325798, 35.448853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287159, 36.442245, 35.564484>,  <36.995277, 36.636322, 35.757198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287159, 36.442245, 35.564484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430577, 0.221304, -0.875001,
		0.531168, 0.845938, -0.047427,
		0.729701, -0.485194, -0.481791,
		37.506069, 36.296688, 35.419945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074684, 37.002666, 35.076195>,  <36.995277, 36.636322, 35.757198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074684, 37.002666, 35.076195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.283108, 36.666416, 35.017082>,  <37.408161, 36.464664, 34.981617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.283108, 36.666416, 35.017082>,  <37.074684, 37.002666, 35.076195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283108, 36.666416, 35.017082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463189, -0.133072, -0.876212,
		0.716904, 0.525009, -0.458709,
		0.521060, -0.840629, -0.147779,
		37.439426, 36.414227, 34.972748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400646, 37.037090, 34.379395>,  <37.074684, 37.002666, 35.076195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400646, 37.037090, 34.379395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.350513, 36.653221, 34.480049>,  <37.320435, 36.422901, 34.540443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.350513, 36.653221, 34.480049>,  <37.400646, 37.037090, 34.379395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350513, 36.653221, 34.480049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380560, -0.187731, -0.905501,
		0.916224, -0.209251, -0.341684,
		-0.125332, -0.959672, 0.251636,
		37.312912, 36.365318, 34.555538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674923, 36.638561, 33.786339>,  <37.400646, 37.037090, 34.379395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674923, 36.638561, 33.786339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.423843, 36.407883, 33.995495>,  <37.273193, 36.269474, 34.120987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.423843, 36.407883, 33.995495>,  <37.674923, 36.638561, 33.786339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423843, 36.407883, 33.995495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458529, -0.268902, -0.847020,
		0.629080, -0.771434, -0.095642,
		-0.627702, -0.576698, 0.522886,
		37.235535, 36.234875, 34.152359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556644, 36.147903, 33.335819>,  <37.674923, 36.638561, 33.786339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556644, 36.147903, 33.335819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270554, 36.057301, 33.600288>,  <37.098900, 36.002941, 33.758968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270554, 36.057301, 33.600288>,  <37.556644, 36.147903, 33.335819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270554, 36.057301, 33.600288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539448, -0.422555, -0.728315,
		0.444348, -0.877578, 0.180035,
		-0.715228, -0.226505, 0.661169,
		37.055984, 35.989349, 33.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374294, 35.438461, 33.241184>,  <37.556644, 36.147903, 33.335819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374294, 35.438461, 33.241184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070038, 35.637676, 33.407742>,  <36.887482, 35.757206, 33.507675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070038, 35.637676, 33.407742>,  <37.374294, 35.438461, 33.241184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070038, 35.637676, 33.407742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608720, -0.324329, -0.724066,
		-0.225562, -0.804222, 0.549862,
		-0.760646, 0.498034, 0.416390,
		36.841843, 35.787086, 33.532658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799145, 34.966866, 33.266251>,  <37.374294, 35.438461, 33.241184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799145, 34.966866, 33.266251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.624691, 35.325169, 33.300682>,  <36.520020, 35.540150, 33.321342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.624691, 35.325169, 33.300682>,  <36.799145, 34.966866, 33.266251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624691, 35.325169, 33.300682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680848, -0.265919, -0.682446,
		-0.588413, -0.356248, 0.725849,
		-0.436137, 0.895753, 0.086080,
		36.493851, 35.593895, 33.326508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044422, 34.860661, 33.447742>,  <36.799145, 34.966866, 33.266251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044422, 34.860661, 33.447742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.073025, 35.234341, 33.307938>,  <36.090187, 35.458549, 33.224056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.073025, 35.234341, 33.307938>,  <36.044422, 34.860661, 33.447742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073025, 35.234341, 33.307938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677434, -0.211705, -0.704460,
		-0.732099, 0.287148, 0.617719,
		0.071510, 0.934199, -0.349513,
		36.094479, 35.514599, 33.203083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440571, 35.157619, 33.419460>,  <36.044422, 34.860661, 33.447742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440571, 35.157619, 33.419460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649994, 35.375271, 33.157219>,  <35.775646, 35.505863, 32.999874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649994, 35.375271, 33.157219>,  <35.440571, 35.157619, 33.419460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649994, 35.375271, 33.157219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653567, -0.237146, -0.718757,
		-0.546569, 0.804790, 0.231465,
		0.523558, 0.544128, -0.655600,
		35.807060, 35.538509, 32.960537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891129, 35.257217, 32.953339>,  <35.440571, 35.157619, 33.419460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891129, 35.257217, 32.953339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.220158, 35.338665, 32.740959>,  <35.417576, 35.387531, 32.613529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.220158, 35.338665, 32.740959>,  <34.891129, 35.257217, 32.953339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220158, 35.338665, 32.740959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369437, -0.518466, -0.771174,
		-0.432304, 0.830502, -0.351254,
		0.822575, 0.203616, -0.530953,
		35.466930, 35.399750, 32.581673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750282, 35.377777, 32.234303>,  <34.891129, 35.257217, 32.953339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750282, 35.377777, 32.234303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.139851, 35.304428, 32.180847>,  <35.373592, 35.260418, 32.148773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.139851, 35.304428, 32.180847>,  <34.750282, 35.377777, 32.234303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139851, 35.304428, 32.180847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215535, -0.563559, -0.797462,
		0.070924, 0.805465, -0.588384,
		0.973917, -0.183377, -0.133636,
		35.432026, 35.249416, 32.140755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522079, 36.077286, 31.939701>,  <34.750282, 35.377777, 32.234303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522079, 36.077286, 31.939701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.123077, 36.100887, 31.955217>,  <33.883675, 36.115047, 31.964527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.123077, 36.100887, 31.955217>,  <34.522079, 36.077286, 31.939701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123077, 36.100887, 31.955217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050377, 0.209710, 0.976465,
		0.049477, 0.975982, -0.212159,
		-0.997504, 0.059000, 0.038791,
		33.823826, 36.118587, 31.966854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471531, 36.616123, 32.483723>,  <34.522079, 36.077286, 31.939701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471531, 36.616123, 32.483723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.089825, 36.501434, 32.449841>,  <33.860802, 36.432621, 32.429512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.089825, 36.501434, 32.449841>,  <34.471531, 36.616123, 32.483723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089825, 36.501434, 32.449841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151899, 0.220925, 0.963389,
		-0.257508, 0.932193, -0.254373,
		-0.954262, -0.286719, -0.084709,
		33.803547, 36.415417, 32.424427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136623, 37.149483, 32.784943>,  <34.471531, 36.616123, 32.483723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136623, 37.149483, 32.784943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885311, 36.839169, 32.808334>,  <33.734524, 36.652981, 32.822369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885311, 36.839169, 32.808334>,  <34.136623, 37.149483, 32.784943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885311, 36.839169, 32.808334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200436, 0.234038, 0.951342,
		-0.751726, 0.585985, -0.302537,
		-0.628278, -0.775788, 0.058480,
		33.696827, 36.606434, 32.825878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537720, 37.345512, 33.117661>,  <34.136623, 37.149483, 32.784943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537720, 37.345512, 33.117661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485798, 36.953304, 33.176620>,  <33.454643, 36.717979, 33.211998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485798, 36.953304, 33.176620>,  <33.537720, 37.345512, 33.117661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485798, 36.953304, 33.176620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182642, 0.169762, 0.968412,
		-0.974573, 0.098784, -0.201120,
		-0.129806, -0.980521, 0.147403,
		33.446857, 36.659149, 33.220840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898350, 37.212673, 33.474560>,  <33.537720, 37.345512, 33.117661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898350, 37.212673, 33.474560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.114674, 36.884724, 33.549744>,  <33.244469, 36.687954, 33.594852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.114674, 36.884724, 33.549744>,  <32.898350, 37.212673, 33.474560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114674, 36.884724, 33.549744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273527, 0.039896, 0.961036,
		-0.795429, -0.571150, -0.202682,
		0.540810, -0.819875, 0.187960,
		33.276917, 36.638760, 33.606133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473114, 36.686340, 33.720165>,  <32.898350, 37.212673, 33.474560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473114, 36.686340, 33.720165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.832333, 36.587299, 33.865604>,  <33.047863, 36.527874, 33.952869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.832333, 36.587299, 33.865604>,  <32.473114, 36.686340, 33.720165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832333, 36.587299, 33.865604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385581, -0.045179, 0.921567,
		-0.211755, -0.967808, -0.136043,
		0.898046, -0.247602, 0.363601,
		33.101746, 36.513020, 33.974686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362259, 36.130726, 34.194321>,  <32.473114, 36.686340, 33.720165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362259, 36.130726, 34.194321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.725960, 36.265335, 34.292305>,  <32.944180, 36.346100, 34.351097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.725960, 36.265335, 34.292305>,  <32.362259, 36.130726, 34.194321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725960, 36.265335, 34.292305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231556, -0.080092, 0.969519,
		0.345886, -0.938263, 0.005100,
		0.909255, 0.336524, 0.244963,
		32.998737, 36.366291, 34.365795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642349, 35.736923, 34.764511>,  <32.362259, 36.130726, 34.194321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642349, 35.736923, 34.764511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.889183, 36.051682, 34.763554>,  <33.037281, 36.240536, 34.762978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.889183, 36.051682, 34.763554>,  <32.642349, 35.736923, 34.764511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889183, 36.051682, 34.763554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044282, 0.037761, 0.998305,
		0.785654, -0.615928, 0.058148,
		0.617080, 0.786897, -0.002393,
		33.074306, 36.287750, 34.762836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156586, 35.543121, 35.200005>,  <32.642349, 35.736923, 34.764511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156586, 35.543121, 35.200005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.153248, 35.941650, 35.165874>,  <33.151245, 36.180767, 35.145397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.153248, 35.941650, 35.165874>,  <33.156586, 35.543121, 35.200005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153248, 35.941650, 35.165874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020745, 0.085483, 0.996123,
		0.999750, 0.006544, -0.021382,
		-0.008346, 0.996318, -0.085326,
		33.150745, 36.240547, 35.140278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650520, 35.728001, 35.601887>,  <33.156586, 35.543121, 35.200005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650520, 35.728001, 35.601887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.415638, 36.047970, 35.552399>,  <33.274708, 36.239952, 35.522705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.415638, 36.047970, 35.552399>,  <33.650520, 35.728001, 35.601887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415638, 36.047970, 35.552399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054279, 0.113595, 0.992043,
		0.807612, 0.589254, -0.023285,
		-0.587210, 0.799923, -0.123725,
		33.239475, 36.287945, 35.515282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882889, 36.230148, 36.088814>,  <33.650520, 35.728001, 35.601887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882889, 36.230148, 36.088814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.512508, 36.364246, 36.019276>,  <33.290279, 36.444706, 35.977554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.512508, 36.364246, 36.019276>,  <33.882889, 36.230148, 36.088814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512508, 36.364246, 36.019276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117660, 0.181325, 0.976359,
		0.358839, 0.924518, -0.128454,
		-0.925954, 0.335242, -0.173845,
		33.234722, 36.464821, 35.967121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844551, 36.691471, 36.660625>,  <33.882889, 36.230148, 36.088814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844551, 36.691471, 36.660625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.474228, 36.699059, 36.509617>,  <33.252033, 36.703609, 36.419010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.474228, 36.699059, 36.509617>,  <33.844551, 36.691471, 36.660625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474228, 36.699059, 36.509617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358091, 0.275838, 0.892011,
		0.121054, 0.961017, -0.248581,
		-0.925806, 0.018967, -0.377522,
		33.196487, 36.704750, 36.396358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.165859, 35.948380, 28.563477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794060, 35.805870, 28.525337>,  <33.570980, 35.720364, 28.502455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794060, 35.805870, 28.525337>,  <34.165859, 35.948380, 28.563477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794060, 35.805870, 28.525337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256196, 0.437760, 0.861817,
		-0.265308, 0.825489, -0.498177,
		-0.929502, -0.356278, -0.095346,
		33.515209, 35.698986, 28.496733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732887, 36.517841, 28.713455>,  <34.165859, 35.948380, 28.563477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732887, 36.517841, 28.713455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523724, 36.186375, 28.793324>,  <33.398224, 35.987495, 28.841246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523724, 36.186375, 28.793324>,  <33.732887, 36.517841, 28.713455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523724, 36.186375, 28.793324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217199, 0.356055, 0.908873,
		-0.824250, 0.431892, -0.366171,
		-0.522912, -0.828671, 0.199672,
		33.366852, 35.937775, 28.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156864, 36.730927, 29.177174>,  <33.732887, 36.517841, 28.713455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156864, 36.730927, 29.177174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147705, 36.335274, 29.235273>,  <33.142208, 36.097881, 29.270134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147705, 36.335274, 29.235273>,  <33.156864, 36.730927, 29.177174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147705, 36.335274, 29.235273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019773, 0.145707, 0.989130,
		-0.999542, 0.019778, -0.022895,
		-0.022899, -0.989130, 0.145250,
		33.140835, 36.038536, 29.278849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616306, 36.610516, 29.751566>,  <33.156864, 36.730927, 29.177174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616306, 36.610516, 29.751566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829136, 36.272209, 29.735628>,  <32.956833, 36.069225, 29.726067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829136, 36.272209, 29.735628>,  <32.616306, 36.610516, 29.751566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829136, 36.272209, 29.735628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057901, -0.083292, 0.994842,
		-0.844719, -0.527018, -0.093288,
		0.532069, -0.845763, -0.039844,
		32.988758, 36.018482, 29.723675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220341, 36.006008, 30.168224>,  <32.616306, 36.610516, 29.751566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220341, 36.006008, 30.168224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612671, 35.934139, 30.138002>,  <32.848068, 35.891018, 30.119869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612671, 35.934139, 30.138002>,  <32.220341, 36.006008, 30.168224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612671, 35.934139, 30.138002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044302, -0.171998, 0.984101,
		-0.189814, -0.968573, -0.160739,
		0.980820, -0.179675, -0.075557,
		32.906918, 35.880238, 30.115335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327564, 35.426697, 30.586411>,  <32.220341, 36.006008, 30.168224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327564, 35.426697, 30.586411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688190, 35.592926, 30.538286>,  <32.904568, 35.692661, 30.509411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688190, 35.592926, 30.538286>,  <32.327564, 35.426697, 30.586411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688190, 35.592926, 30.538286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165785, -0.074991, 0.983306,
		0.399612, -0.906464, -0.136505,
		0.901568, 0.415571, -0.120311,
		32.958660, 35.717598, 30.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815845, 35.160412, 31.050711>,  <32.327564, 35.426697, 30.586411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815845, 35.160412, 31.050711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004532, 35.497761, 30.947790>,  <33.117744, 35.700172, 30.886038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004532, 35.497761, 30.947790>,  <32.815845, 35.160412, 31.050711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004532, 35.497761, 30.947790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390571, 0.061768, 0.918499,
		0.790532, -0.533763, -0.300261,
		0.471714, 0.843375, -0.257302,
		33.146046, 35.750774, 30.870600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549095, 35.051083, 31.297569>,  <32.815845, 35.160412, 31.050711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549095, 35.051083, 31.297569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470589, 35.442013, 31.265779>,  <33.423485, 35.676571, 31.246706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470589, 35.442013, 31.265779>,  <33.549095, 35.051083, 31.297569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470589, 35.442013, 31.265779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455616, 0.162664, 0.875188,
		0.868271, 0.135559, -0.477210,
		-0.196265, 0.977325, -0.079474,
		33.411709, 35.735210, 31.241938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075974, 35.232906, 31.751680>,  <33.549095, 35.051083, 31.297569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075974, 35.232906, 31.751680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852261, 35.559505, 31.694372>,  <33.718033, 35.755466, 31.659986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852261, 35.559505, 31.694372>,  <34.075974, 35.232906, 31.751680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852261, 35.559505, 31.694372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141850, 0.264543, 0.953884,
		0.816749, 0.513169, -0.263776,
		-0.559284, 0.816501, -0.143272,
		33.684475, 35.804455, 31.651390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812405, 35.420010, 31.496344>,  <34.075974, 35.232906, 31.751680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812405, 35.420010, 31.496344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129402, 35.214516, 31.627815>,  <35.319603, 35.091221, 31.706699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129402, 35.214516, 31.627815>,  <34.812405, 35.420010, 31.496344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129402, 35.214516, 31.627815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039018, -0.580534, -0.813301,
		0.608627, 0.631713, -0.480116,
		0.792496, -0.513730, 0.328680,
		35.367149, 35.060398, 31.726419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232208, 35.449726, 30.921780>,  <34.812405, 35.420010, 31.496344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232208, 35.449726, 30.921780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308098, 35.137794, 31.160400>,  <35.353630, 34.950634, 31.303574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308098, 35.137794, 31.160400>,  <35.232208, 35.449726, 30.921780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308098, 35.137794, 31.160400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032887, -0.612293, -0.789947,
		0.981287, 0.130252, -0.141811,
		0.189722, -0.779828, 0.596551,
		35.365013, 34.903847, 31.339365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778164, 35.131023, 30.702873>,  <35.232208, 35.449726, 30.921780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778164, 35.131023, 30.702873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610428, 34.838333, 30.917809>,  <35.509785, 34.662720, 31.046770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610428, 34.838333, 30.917809>,  <35.778164, 35.131023, 30.702873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610428, 34.838333, 30.917809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056563, -0.611802, -0.788986,
		0.906065, -0.300460, 0.297942,
		-0.419340, -0.731725, 0.537338,
		35.484627, 34.618816, 31.079010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180248, 34.657719, 30.526266>,  <35.778164, 35.131023, 30.702873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180248, 34.657719, 30.526266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870186, 34.443817, 30.660828>,  <35.684147, 34.315475, 30.741564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870186, 34.443817, 30.660828>,  <36.180248, 34.657719, 30.526266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870186, 34.443817, 30.660828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114654, -0.642712, -0.757480,
		0.621277, -0.548596, 0.559515,
		-0.775158, -0.534755, 0.336404,
		35.637638, 34.283390, 30.761749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392357, 34.069489, 30.520319>,  <36.180248, 34.657719, 30.526266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392357, 34.069489, 30.520319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996468, 34.012756, 30.527561>,  <35.758934, 33.978718, 30.531906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996468, 34.012756, 30.527561>,  <36.392357, 34.069489, 30.520319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996468, 34.012756, 30.527561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094566, -0.744296, -0.661121,
		0.107244, -0.652616, 0.750061,
		-0.989725, -0.141831, 0.018105,
		35.699551, 33.970207, 30.532993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305058, 33.300480, 30.610098>,  <36.392357, 34.069489, 30.520319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305058, 33.300480, 30.610098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971344, 33.448135, 30.446287>,  <35.771114, 33.536728, 30.348001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971344, 33.448135, 30.446287>,  <36.305058, 33.300480, 30.610098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971344, 33.448135, 30.446287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043389, -0.696524, -0.716220,
		-0.549626, -0.615299, 0.565083,
		-0.834284, 0.369135, -0.409525,
		35.721058, 33.558876, 30.323429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686920, 32.748371, 30.555508>,  <36.305058, 33.300480, 30.610098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686920, 32.748371, 30.555508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616283, 33.039623, 30.290588>,  <35.573902, 33.214375, 30.131638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616283, 33.039623, 30.290588>,  <35.686920, 32.748371, 30.555508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616283, 33.039623, 30.290588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028389, -0.676361, -0.736023,
		-0.983875, -0.111171, 0.140108,
		-0.176588, 0.728133, -0.662299,
		35.563309, 33.258064, 30.091898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565983, 32.306911, 30.027416>,  <35.686920, 32.748371, 30.555508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565983, 32.306911, 30.027416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575272, 32.661945, 29.843390>,  <35.580845, 32.874966, 29.732973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575272, 32.661945, 29.843390>,  <35.565983, 32.306911, 30.027416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575272, 32.661945, 29.843390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110433, -0.459651, -0.881207,
		-0.993612, -0.030339, -0.108695,
		0.023227, 0.887581, -0.460065,
		35.582241, 32.928219, 29.705370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983261, 32.335449, 29.484760>,  <35.565983, 32.306911, 30.027416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983261, 32.335449, 29.484760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284111, 32.581829, 29.391026>,  <35.464622, 32.729656, 29.334785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284111, 32.581829, 29.391026>,  <34.983261, 32.335449, 29.484760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284111, 32.581829, 29.391026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044465, -0.402205, -0.914469,
		-0.657514, 0.677379, -0.329898,
		0.752129, 0.615945, -0.234336,
		35.509750, 32.766613, 29.320724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006649, 32.201729, 28.786390>,  <34.983261, 32.335449, 29.484760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006649, 32.201729, 28.786390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319336, 32.444069, 28.845528>,  <35.506950, 32.589474, 28.881010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319336, 32.444069, 28.845528>,  <35.006649, 32.201729, 28.786390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319336, 32.444069, 28.845528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427325, -0.347719, -0.834557,
		-0.454208, 0.715568, -0.530714,
		0.781721, 0.605850, 0.147843,
		35.553852, 32.625824, 28.889881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052322, 32.651760, 28.260796>,  <35.006649, 32.201729, 28.786390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052322, 32.651760, 28.260796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414997, 32.610355, 28.424362>,  <35.632603, 32.585510, 28.522501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414997, 32.610355, 28.424362>,  <35.052322, 32.651760, 28.260796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414997, 32.610355, 28.424362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362566, -0.304191, -0.880916,
		0.215575, 0.946970, -0.238275,
		0.906683, -0.103513, 0.408915,
		35.687000, 32.579300, 28.547037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522751, 33.077488, 27.906368>,  <35.052322, 32.651760, 28.260796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522751, 33.077488, 27.906368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727215, 32.775681, 28.071009>,  <35.849892, 32.594597, 28.169792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727215, 32.775681, 28.071009>,  <35.522751, 33.077488, 27.906368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727215, 32.775681, 28.071009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463170, -0.161586, -0.871415,
		0.724009, 0.636073, 0.266875,
		0.511160, -0.754520, 0.411600,
		35.880562, 32.549324, 28.194489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086712, 33.114506, 27.588280>,  <35.522751, 33.077488, 27.906368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086712, 33.114506, 27.588280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110081, 32.745598, 27.741125>,  <36.124104, 32.524254, 27.832832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110081, 32.745598, 27.741125>,  <36.086712, 33.114506, 27.588280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110081, 32.745598, 27.741125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478339, -0.310103, -0.821601,
		0.876230, 0.230780, 0.423039,
		0.058423, -0.922267, 0.382112,
		36.127609, 32.468918, 27.855759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801716, 32.874397, 27.496904>,  <36.086712, 33.114506, 27.588280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801716, 32.874397, 27.496904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604424, 32.534470, 27.571230>,  <36.486050, 32.330513, 27.615826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604424, 32.534470, 27.571230>,  <36.801716, 32.874397, 27.496904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604424, 32.534470, 27.571230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580764, -0.480722, -0.656977,
		0.647638, -0.216128, 0.730653,
		-0.493232, -0.849821, 0.185814,
		36.456455, 32.279522, 27.626974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.806181, 32.247894, 27.850735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187176, 32.163189, 27.938305>,  <32.415771, 32.112366, 27.990847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187176, 32.163189, 27.938305>,  <31.806181, 32.247894, 27.850735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187176, 32.163189, 27.938305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156642, 0.275857, 0.948349,
		-0.261221, -0.937581, 0.229578,
		0.952485, -0.211767, 0.218924,
		32.472919, 32.099659, 28.003983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759090, 32.091465, 28.486130>,  <31.806181, 32.247894, 27.850735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759090, 32.091465, 28.486130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158657, 32.104202, 28.472549>,  <32.398396, 32.111843, 28.464401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158657, 32.104202, 28.472549>,  <31.759090, 32.091465, 28.486130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158657, 32.104202, 28.472549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025695, 0.230926, 0.972632,
		0.038806, -0.972450, 0.229858,
		0.998916, 0.031838, -0.033949,
		32.458332, 32.113754, 28.462364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935205, 31.760332, 29.100641>,  <31.759090, 32.091465, 28.486130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935205, 31.760332, 29.100641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.252262, 31.974096, 28.983252>,  <32.442497, 32.102356, 28.912817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.252262, 31.974096, 28.983252>,  <31.935205, 31.760332, 29.100641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252262, 31.974096, 28.983252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172146, 0.265596, 0.948591,
		0.584882, -0.802412, 0.118526,
		0.792641, 0.534409, -0.293474,
		32.490055, 32.134418, 28.895210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569839, 31.475784, 29.470366>,  <31.935205, 31.760332, 29.100641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569839, 31.475784, 29.470366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.624882, 31.859880, 29.373201>,  <32.657906, 32.090340, 29.314903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.624882, 31.859880, 29.373201>,  <32.569839, 31.475784, 29.470366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624882, 31.859880, 29.373201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132544, 0.225188, 0.965258,
		0.981579, -0.165018, -0.096287,
		0.137602, 0.960239, -0.242912,
		32.666164, 32.147953, 29.300327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212994, 31.632015, 29.822350>,  <32.569839, 31.475784, 29.470366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212994, 31.632015, 29.822350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.029583, 31.974733, 29.727982>,  <32.919537, 32.180363, 29.671362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.029583, 31.974733, 29.727982>,  <33.212994, 31.632015, 29.822350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029583, 31.974733, 29.727982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028480, 0.279501, 0.959723,
		0.888223, 0.433341, -0.152561,
		-0.458529, 0.856793, -0.235918,
		32.892025, 32.231770, 29.657206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628944, 32.173851, 30.224550>,  <33.212994, 31.632015, 29.822350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628944, 32.173851, 30.224550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.268715, 32.325466, 30.139423>,  <33.052578, 32.416435, 30.088348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.268715, 32.325466, 30.139423>,  <33.628944, 32.173851, 30.224550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268715, 32.325466, 30.139423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159775, 0.166672, 0.972981,
		0.404269, 0.910246, -0.089540,
		-0.900576, 0.379040, -0.212815,
		32.998543, 32.439178, 30.075579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561440, 32.875412, 30.492870>,  <33.628944, 32.173851, 30.224550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561440, 32.875412, 30.492870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191200, 32.729820, 30.451313>,  <32.969059, 32.642467, 30.426378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191200, 32.729820, 30.451313>,  <33.561440, 32.875412, 30.492870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191200, 32.729820, 30.451313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252400, 0.388959, 0.886005,
		-0.282077, 0.846305, -0.451887,
		-0.925595, -0.363978, -0.103891,
		32.913521, 32.620628, 30.420145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101028, 33.506519, 30.795549>,  <33.561440, 32.875412, 30.492870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101028, 33.506519, 30.795549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944080, 33.139065, 30.777012>,  <32.849911, 32.918591, 30.765890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944080, 33.139065, 30.777012>,  <33.101028, 33.506519, 30.795549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944080, 33.139065, 30.777012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309673, 0.084490, 0.947082,
		-0.866112, 0.385954, -0.317629,
		-0.392367, -0.918641, -0.046342,
		32.826370, 32.863472, 30.763109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394409, 33.545368, 30.933107>,  <33.101028, 33.506519, 30.795549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394409, 33.545368, 30.933107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.493568, 33.166367, 31.013893>,  <32.553062, 32.938965, 31.062365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.493568, 33.166367, 31.013893>,  <32.394409, 33.545368, 30.933107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493568, 33.166367, 31.013893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176342, 0.160857, 0.971097,
		-0.952603, -0.276343, -0.127209,
		0.247894, -0.947502, 0.201964,
		32.567936, 32.882114, 31.074482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874092, 33.421085, 31.297031>,  <32.394409, 33.545368, 30.933107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874092, 33.421085, 31.297031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.156792, 33.158230, 31.401854>,  <32.326412, 33.000515, 31.464746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.156792, 33.158230, 31.401854>,  <31.874092, 33.421085, 31.297031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156792, 33.158230, 31.401854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288436, 0.070581, 0.954894,
		-0.645995, -0.750458, -0.139659,
		0.706750, -0.657139, 0.262053,
		32.368816, 32.961090, 31.480469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585917, 33.003616, 31.713484>,  <31.874092, 33.421085, 31.297031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585917, 33.003616, 31.713484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.968922, 32.930412, 31.802635>,  <32.198727, 32.886490, 31.856125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.968922, 32.930412, 31.802635>,  <31.585917, 33.003616, 31.713484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968922, 32.930412, 31.802635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210807, 0.083202, 0.973980,
		-0.196789, -0.979585, 0.041088,
		0.957515, -0.183007, 0.222877,
		32.256176, 32.875511, 31.869497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641617, 32.386829, 32.076984>,  <31.585917, 33.003616, 31.713484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641617, 32.386829, 32.076984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.979780, 32.576111, 32.176067>,  <32.182678, 32.689682, 32.235519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.979780, 32.576111, 32.176067>,  <31.641617, 32.386829, 32.076984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979780, 32.576111, 32.176067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200060, -0.149467, 0.968316,
		0.495238, -0.868179, -0.031691,
		0.845408, 0.473207, 0.247710,
		32.233402, 32.718071, 32.250381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971565, 31.958817, 32.612450>,  <31.641617, 32.386829, 32.076984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971565, 31.958817, 32.612450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.120922, 32.329098, 32.636620>,  <32.210537, 32.551266, 32.651119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.120922, 32.329098, 32.636620>,  <31.971565, 31.958817, 32.612450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120922, 32.329098, 32.636620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089728, -0.028788, 0.995550,
		0.923324, -0.377152, 0.072312,
		0.373392, 0.925704, 0.060421,
		32.232941, 32.606808, 32.654747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378651, 31.930731, 33.198963>,  <31.971565, 31.958817, 32.612450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378651, 31.930731, 33.198963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347706, 32.327400, 33.157787>,  <32.329140, 32.565403, 33.133083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347706, 32.327400, 33.157787>,  <32.378651, 31.930731, 33.198963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347706, 32.327400, 33.157787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026331, 0.101180, 0.994520,
		0.996655, 0.079653, 0.018284,
		-0.077366, 0.991674, -0.102939,
		32.324497, 32.624901, 33.126907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137394, 31.943314, 33.240780>,  <32.378651, 31.930731, 33.198963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137394, 31.943314, 33.240780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468151, 31.724718, 33.293831>,  <33.666607, 31.593561, 33.325661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468151, 31.724718, 33.293831>,  <33.137394, 31.943314, 33.240780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468151, 31.724718, 33.293831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092119, -0.364284, -0.926720,
		0.554757, 0.754085, -0.351568,
		0.826897, -0.546491, 0.132623,
		33.716221, 31.560770, 33.333618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615086, 31.990719, 32.684113>,  <33.137394, 31.943314, 33.240780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615086, 31.990719, 32.684113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.730961, 31.633333, 32.821404>,  <33.800484, 31.418901, 32.903778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.730961, 31.633333, 32.821404>,  <33.615086, 31.990719, 32.684113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730961, 31.633333, 32.821404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078681, -0.379623, -0.921790,
		0.953883, 0.240022, -0.180270,
		0.289684, -0.893463, 0.343230,
		33.817867, 31.365294, 32.924374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018429, 31.745384, 32.119488>,  <33.615086, 31.990719, 32.684113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018429, 31.745384, 32.119488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911316, 31.428642, 32.339035>,  <33.847046, 31.238598, 32.470764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911316, 31.428642, 32.339035>,  <34.018429, 31.745384, 32.119488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911316, 31.428642, 32.339035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095166, -0.545149, -0.832920,
		0.958767, -0.275277, 0.070625,
		-0.267785, -0.791855, 0.548868,
		33.830982, 31.191086, 32.503696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464275, 31.230066, 31.774174>,  <34.018429, 31.745384, 32.119488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464275, 31.230066, 31.774174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.162376, 31.050148, 31.965187>,  <33.981236, 30.942196, 32.079796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.162376, 31.050148, 31.965187>,  <34.464275, 31.230066, 31.774174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162376, 31.050148, 31.965187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123739, -0.617255, -0.776971,
		0.644241, -0.645506, 0.410214,
		-0.754746, -0.449798, 0.477536,
		33.935951, 30.915209, 32.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486931, 30.559017, 31.471775>,  <34.464275, 31.230066, 31.774174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486931, 30.559017, 31.471775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.152988, 30.475931, 31.675682>,  <33.952621, 30.426079, 31.798027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.152988, 30.475931, 31.675682>,  <34.486931, 30.559017, 31.471775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152988, 30.475931, 31.675682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198271, -0.750443, -0.630496,
		0.513517, -0.627447, 0.585329,
		-0.834859, -0.207717, 0.509769,
		33.902531, 30.413616, 31.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509907, 29.869740, 31.643948>,  <34.486931, 30.559017, 31.471775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509907, 29.869740, 31.643948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.138260, 30.010851, 31.599621>,  <33.915272, 30.095518, 31.573025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.138260, 30.010851, 31.599621>,  <34.509907, 29.869740, 31.643948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138260, 30.010851, 31.599621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155632, -0.644932, -0.748225,
		-0.335427, -0.677945, 0.654124,
		-0.929122, 0.352778, -0.110818,
		33.859524, 30.116684, 31.566376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070816, 29.249523, 31.585966>,  <34.509907, 29.869740, 31.643948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070816, 29.249523, 31.585966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860027, 29.560421, 31.448454>,  <33.733555, 29.746960, 31.365948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860027, 29.560421, 31.448454>,  <34.070816, 29.249523, 31.585966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860027, 29.560421, 31.448454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295424, -0.546804, -0.783409,
		-0.796882, -0.311277, 0.517770,
		-0.526976, 0.777247, -0.343780,
		33.701935, 29.793594, 31.345320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490803, 28.978832, 31.310621>,  <34.070816, 29.249523, 31.585966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490803, 28.978832, 31.310621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487316, 29.349487, 31.160280>,  <33.485226, 29.571880, 31.070076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487316, 29.349487, 31.160280>,  <33.490803, 28.978832, 31.310621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487316, 29.349487, 31.160280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376168, -0.351293, -0.857374,
		-0.926510, 0.133914, 0.351633,
		-0.008712, 0.926639, -0.375851,
		33.484703, 29.627480, 31.047525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782200, 29.187012, 31.053621>,  <33.490803, 28.978832, 31.310621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782200, 29.187012, 31.053621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.060860, 29.389078, 30.849861>,  <33.228054, 29.510319, 30.727606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.060860, 29.389078, 30.849861>,  <32.782200, 29.187012, 31.053621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060860, 29.389078, 30.849861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316010, -0.421375, -0.850047,
		-0.644065, 0.753159, -0.133912,
		0.696648, 0.505168, -0.509399,
		33.269855, 29.540628, 30.697041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403175, 29.325104, 30.441668>,  <32.782200, 29.187012, 31.053621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403175, 29.325104, 30.441668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.789295, 29.406088, 30.375692>,  <33.020966, 29.454678, 30.336107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.789295, 29.406088, 30.375692>,  <32.403175, 29.325104, 30.441668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789295, 29.406088, 30.375692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128468, -0.181730, -0.974921,
		-0.227355, 0.962281, -0.149415,
		0.965301, 0.202458, -0.164939,
		33.078884, 29.466825, 30.326210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435497, 29.871637, 30.009722>,  <32.403175, 29.325104, 30.441668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435497, 29.871637, 30.009722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790813, 29.696066, 29.955627>,  <33.004002, 29.590723, 29.923170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790813, 29.696066, 29.955627>,  <32.435497, 29.871637, 30.009722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790813, 29.696066, 29.955627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163197, -0.026409, -0.986240,
		0.429318, 0.898134, -0.095090,
		0.888287, -0.438929, -0.135235,
		33.057301, 29.564386, 29.915056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747486, 30.278168, 29.578751>,  <32.435497, 29.871637, 30.009722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747486, 30.278168, 29.578751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916714, 29.916485, 29.555353>,  <33.018250, 29.699474, 29.541315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916714, 29.916485, 29.555353>,  <32.747486, 30.278168, 29.578751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916714, 29.916485, 29.555353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011828, 0.070063, -0.997472,
		0.906019, 0.421310, 0.040336,
		0.423071, -0.904206, -0.058495,
		33.043636, 29.645224, 29.537806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262833, 30.300127, 29.003119>,  <32.747486, 30.278168, 29.578751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262833, 30.300127, 29.003119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176762, 29.913445, 29.058516>,  <33.125118, 29.681435, 29.091755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176762, 29.913445, 29.058516>,  <33.262833, 30.300127, 29.003119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176762, 29.913445, 29.058516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042826, -0.132338, -0.990279,
		0.975635, -0.219021, -0.012924,
		-0.215181, -0.966704, 0.138493,
		33.112206, 29.623434, 29.100063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732277, 29.948496, 28.489595>,  <33.262833, 30.300127, 29.003119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732277, 29.948496, 28.489595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.442661, 29.692156, 28.591637>,  <33.268890, 29.538351, 28.652863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.442661, 29.692156, 28.591637>,  <33.732277, 29.948496, 28.489595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442661, 29.692156, 28.591637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101870, -0.266440, -0.958453,
		0.682196, -0.719944, 0.127629,
		-0.724038, -0.640851, 0.255105,
		33.225449, 29.499901, 28.668169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341518, 29.397585, 28.502584>,  <33.732277, 29.948496, 28.489595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341518, 29.397585, 28.502584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697079, 29.395884, 28.319349>,  <34.910416, 29.394863, 28.209408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697079, 29.395884, 28.319349>,  <34.341518, 29.397585, 28.502584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697079, 29.395884, 28.319349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444377, 0.250985, 0.859962,
		0.111316, -0.967982, 0.224990,
		0.888897, -0.004253, -0.458088,
		34.963749, 29.394608, 28.181923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792374, 29.128088, 28.997562>,  <34.341518, 29.397585, 28.502584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792374, 29.128088, 28.997562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075260, 29.281918, 28.760263>,  <35.244991, 29.374214, 28.617884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075260, 29.281918, 28.760263>,  <34.792374, 29.128088, 28.997562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075260, 29.281918, 28.760263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628327, 0.042787, 0.776772,
		0.324109, -0.922102, -0.211378,
		0.707219, 0.384573, -0.593249,
		35.287426, 29.397289, 28.582289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399174, 28.725397, 29.032732>,  <34.792374, 29.128088, 28.997562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399174, 28.725397, 29.032732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521626, 29.090366, 28.924091>,  <35.595097, 29.309347, 28.858908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521626, 29.090366, 28.924091>,  <35.399174, 28.725397, 29.032732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521626, 29.090366, 28.924091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524105, 0.076637, 0.848198,
		0.794730, -0.402010, -0.454744,
		0.306134, 0.912422, -0.271601,
		35.613464, 29.364094, 28.842611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048965, 28.694059, 29.360441>,  <35.399174, 28.725397, 29.032732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048965, 28.694059, 29.360441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976669, 29.078302, 29.275993>,  <35.933292, 29.308847, 29.225325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976669, 29.078302, 29.275993>,  <36.048965, 28.694059, 29.360441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976669, 29.078302, 29.275993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578907, 0.277435, 0.766744,
		0.795110, 0.016362, -0.606244,
		-0.180738, 0.960605, -0.211119,
		35.922447, 29.366484, 29.212658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711502, 29.025370, 29.380724>,  <36.048965, 28.694059, 29.360441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711502, 29.025370, 29.380724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.429630, 29.307812, 29.408564>,  <36.260506, 29.477276, 29.425266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.429630, 29.307812, 29.408564>,  <36.711502, 29.025370, 29.380724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429630, 29.307812, 29.408564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415744, 0.331426, 0.846944,
		0.574964, 0.625759, -0.527107,
		-0.704679, 0.706104, 0.069597,
		36.218227, 29.519644, 29.429443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132980, 29.636108, 29.599062>,  <36.711502, 29.025370, 29.380724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132980, 29.636108, 29.599062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758831, 29.746313, 29.687756>,  <36.534340, 29.812437, 29.740973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758831, 29.746313, 29.687756>,  <37.132980, 29.636108, 29.599062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758831, 29.746313, 29.687756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316441, 0.372048, 0.872609,
		0.157920, 0.886382, -0.435188,
		-0.935375, 0.275514, 0.221734,
		36.478218, 29.828968, 29.754276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050034, 30.431793, 29.689135>,  <37.132980, 29.636108, 29.599062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050034, 30.431793, 29.689135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.763165, 30.235214, 29.886780>,  <36.591045, 30.117268, 30.005367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.763165, 30.235214, 29.886780>,  <37.050034, 30.431793, 29.689135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763165, 30.235214, 29.886780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309607, 0.410525, 0.857679,
		-0.624350, 0.768082, -0.142260,
		-0.717168, -0.491447, 0.494114,
		36.548016, 30.087780, 30.035013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673859, 30.926252, 30.106396>,  <37.050034, 30.431793, 29.689135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673859, 30.926252, 30.106396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593414, 30.573215, 30.276375>,  <36.545147, 30.361393, 30.378363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593414, 30.573215, 30.276375>,  <36.673859, 30.926252, 30.106396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593414, 30.573215, 30.276375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467333, 0.294812, 0.833478,
		-0.860903, 0.366217, 0.353175,
		-0.201113, -0.882594, 0.424950,
		36.533081, 30.308437, 30.403860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472435, 31.164394, 30.654886>,  <36.673859, 30.926252, 30.106396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472435, 31.164394, 30.654886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.496452, 30.781307, 30.767437>,  <36.510860, 30.551455, 30.834967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.496452, 30.781307, 30.767437>,  <36.472435, 31.164394, 30.654886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496452, 30.781307, 30.767437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239044, 0.287477, 0.927478,
		-0.969151, 0.011576, 0.246196,
		0.060039, -0.957718, 0.281375,
		36.514465, 30.493992, 30.851851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938480, 31.035271, 31.174765>,  <36.472435, 31.164394, 30.654886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938480, 31.035271, 31.174765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.245110, 30.780643, 31.208584>,  <36.429085, 30.627867, 31.228874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.245110, 30.780643, 31.208584>,  <35.938480, 31.035271, 31.174765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245110, 30.780643, 31.208584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142356, 0.296839, 0.944257,
		-0.626182, -0.711804, 0.318168,
		0.766571, -0.636570, 0.084546,
		36.475082, 30.589672, 31.233948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789913, 30.695068, 31.749693>,  <35.938480, 31.035271, 31.174765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789913, 30.695068, 31.749693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185497, 30.657610, 31.703741>,  <36.422848, 30.635136, 31.676170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185497, 30.657610, 31.703741>,  <35.789913, 30.695068, 31.749693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185497, 30.657610, 31.703741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129646, 0.170987, 0.976706,
		-0.071823, -0.980813, 0.181240,
		0.988956, -0.093647, -0.114877,
		36.482185, 30.629517, 31.669277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048409, 30.391081, 32.468391>,  <35.789913, 30.695068, 31.749693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048409, 30.391081, 32.468391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.362553, 30.527344, 32.261639>,  <36.551041, 30.609102, 32.137589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.362553, 30.527344, 32.261639>,  <36.048409, 30.391081, 32.468391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362553, 30.527344, 32.261639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418176, 0.323706, 0.848731,
		0.456443, -0.882704, 0.111770,
		0.785359, 0.340658, -0.516879,
		36.598160, 30.629541, 32.106575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668186, 30.094753, 32.690174>,  <36.048409, 30.391081, 32.468391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668186, 30.094753, 32.690174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783333, 30.448229, 32.542542>,  <36.852421, 30.660315, 32.453960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783333, 30.448229, 32.542542>,  <36.668186, 30.094753, 32.690174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783333, 30.448229, 32.542542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315744, 0.276267, 0.907734,
		0.904122, -0.377845, -0.199491,
		0.287870, 0.883691, -0.369082,
		36.869694, 30.713337, 32.431816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289154, 30.222498, 32.937931>,  <36.668186, 30.094753, 32.690174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289154, 30.222498, 32.937931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186142, 30.590580, 32.820015>,  <37.124332, 30.811428, 32.749264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186142, 30.590580, 32.820015>,  <37.289154, 30.222498, 32.937931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186142, 30.590580, 32.820015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141606, 0.337733, 0.930529,
		0.955837, 0.197897, -0.217283,
		-0.257533, 0.920203, -0.294795,
		37.108883, 30.866640, 32.731575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.321712, 32.383202, 27.350422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970219, 32.192406, 27.343523>,  <36.759323, 32.077927, 27.339384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970219, 32.192406, 27.343523>,  <37.321712, 32.383202, 27.350422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970219, 32.192406, 27.343523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232431, -0.396074, -0.888314,
		0.416887, -0.784605, 0.458913,
		-0.878738, -0.476992, -0.017249,
		36.706596, 32.049309, 27.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437115, 31.628384, 27.208326>,  <37.321712, 32.383202, 27.350422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437115, 31.628384, 27.208326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054863, 31.679785, 27.102297>,  <36.825512, 31.710625, 27.038679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054863, 31.679785, 27.102297>,  <37.437115, 31.628384, 27.208326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054863, 31.679785, 27.102297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164742, -0.512833, -0.842533,
		-0.244206, -0.848816, 0.468908,
		-0.955627, 0.128503, -0.265072,
		36.768173, 31.718336, 27.022776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107143, 30.962461, 27.021366>,  <37.437115, 31.628384, 27.208326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107143, 30.962461, 27.021366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862957, 31.237171, 26.863544>,  <36.716446, 31.401997, 26.768852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862957, 31.237171, 26.863544>,  <37.107143, 30.962461, 27.021366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862957, 31.237171, 26.863544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037610, -0.522719, -0.851675,
		-0.791151, -0.505077, 0.344930,
		-0.610463, 0.686777, -0.394554,
		36.679817, 31.443205, 26.745178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558552, 30.559183, 26.720036>,  <37.107143, 30.962461, 27.021366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558552, 30.559183, 26.720036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.575951, 30.920723, 26.549784>,  <36.586391, 31.137648, 26.447632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.575951, 30.920723, 26.549784>,  <36.558552, 30.559183, 26.720036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575951, 30.920723, 26.549784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018928, -0.425212, -0.904896,
		-0.998874, 0.047417, -0.001387,
		0.043497, 0.903851, -0.425631,
		36.589001, 31.191877, 26.422094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148109, 30.470320, 26.158604>,  <36.558552, 30.559183, 26.720036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148109, 30.470320, 26.158604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347328, 30.802124, 26.057520>,  <36.466858, 31.001207, 25.996870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347328, 30.802124, 26.057520>,  <36.148109, 30.470320, 26.158604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347328, 30.802124, 26.057520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052384, -0.262112, -0.963615,
		-0.865566, 0.493163, -0.087091,
		0.498047, 0.829510, -0.252709,
		36.496742, 31.050978, 25.981707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722015, 30.904850, 25.690891>,  <36.148109, 30.470320, 26.158604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722015, 30.904850, 25.690891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091743, 31.044529, 25.629314>,  <36.313580, 31.128336, 25.592367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091743, 31.044529, 25.629314>,  <35.722015, 30.904850, 25.690891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091743, 31.044529, 25.629314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140909, -0.062595, -0.988042,
		-0.354655, 0.934957, -0.008653,
		0.924318, 0.349195, -0.153943,
		36.369038, 31.149288, 25.583132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723885, 31.444996, 25.206892>,  <35.722015, 30.904850, 25.690891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723885, 31.444996, 25.206892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095459, 31.298367, 25.186123>,  <36.318405, 31.210388, 25.173662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095459, 31.298367, 25.186123>,  <35.723885, 31.444996, 25.206892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095459, 31.298367, 25.186123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043784, 0.030482, -0.998576,
		0.367636, 0.929889, 0.012266,
		0.928939, -0.366575, -0.051921,
		36.374142, 31.188395, 25.170547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088524, 31.861355, 24.584288>,  <35.723885, 31.444996, 25.206892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088524, 31.861355, 24.584288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302132, 31.532412, 24.662821>,  <36.430298, 31.335045, 24.709942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302132, 31.532412, 24.662821>,  <36.088524, 31.861355, 24.584288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302132, 31.532412, 24.662821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200729, -0.102259, -0.974295,
		0.821298, 0.559703, 0.110463,
		0.534020, -0.822360, 0.196334,
		36.462337, 31.285704, 24.721722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649727, 31.872927, 24.058470>,  <36.088524, 31.861355, 24.584288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649727, 31.872927, 24.058470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631557, 31.500023, 24.202040>,  <36.620655, 31.276279, 24.288181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631557, 31.500023, 24.202040>,  <36.649727, 31.872927, 24.058470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631557, 31.500023, 24.202040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292348, -0.355969, -0.887591,
		0.955233, 0.064613, 0.288714,
		-0.045423, -0.932262, 0.358923,
		36.617931, 31.220345, 24.309717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254631, 31.607426, 23.774059>,  <36.649727, 31.872927, 24.058470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254631, 31.607426, 23.774059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017273, 31.293945, 23.847483>,  <36.874859, 31.105858, 23.891537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017273, 31.293945, 23.847483>,  <37.254631, 31.607426, 23.774059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017273, 31.293945, 23.847483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175166, -0.348315, -0.920866,
		0.785618, -0.514286, 0.343967,
		-0.593397, -0.783700, 0.183557,
		36.839252, 31.058836, 23.902550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572578, 31.071177, 23.417906>,  <37.254631, 31.607426, 23.774059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572578, 31.071177, 23.417906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204353, 30.928812, 23.482267>,  <36.983418, 30.843393, 23.520884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204353, 30.928812, 23.482267>,  <37.572578, 31.071177, 23.417906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204353, 30.928812, 23.482267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056211, -0.286940, -0.956298,
		0.386526, -0.889378, 0.244141,
		-0.920564, -0.355910, 0.160902,
		36.928185, 30.822039, 23.530539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556347, 30.411665, 23.163397>,  <37.572578, 31.071177, 23.417906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556347, 30.411665, 23.163397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.174908, 30.532038, 23.159590>,  <36.946045, 30.604261, 23.157305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.174908, 30.532038, 23.159590>,  <37.556347, 30.411665, 23.163397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174908, 30.532038, 23.159590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105108, -0.362364, -0.926091,
		-0.282139, -0.882118, 0.377180,
		-0.953598, 0.300931, -0.009519,
		36.888828, 30.622318, 23.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073654, 29.900702, 22.774757>,  <37.556347, 30.411665, 23.163397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073654, 29.900702, 22.774757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922741, 30.271086, 22.768339>,  <36.832191, 30.493317, 22.764488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922741, 30.271086, 22.768339>,  <37.073654, 29.900702, 22.774757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922741, 30.271086, 22.768339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146904, -0.076945, -0.986153,
		-0.914372, -0.369703, 0.165057,
		-0.377284, 0.925959, -0.016045,
		36.809555, 30.548874, 22.763525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292030, 29.946913, 22.552813>,  <37.073654, 29.900702, 22.774757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292030, 29.946913, 22.552813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531811, 30.254370, 22.463509>,  <36.675678, 30.438843, 22.409925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531811, 30.254370, 22.463509>,  <36.292030, 29.946913, 22.552813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531811, 30.254370, 22.463509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131196, -0.180802, -0.974730,
		-0.789582, 0.613598, -0.007541,
		0.599456, 0.768640, -0.223260,
		36.711647, 30.484962, 22.396530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723747, 29.343739, 22.573076>,  <36.292030, 29.946913, 22.552813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723747, 29.343739, 22.573076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509075, 29.007277, 22.599714>,  <35.380272, 28.805399, 22.615698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509075, 29.007277, 22.599714>,  <35.723747, 29.343739, 22.573076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509075, 29.007277, 22.599714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113300, 0.150046, 0.982166,
		-0.836146, 0.519561, -0.175829,
		-0.536678, -0.841155, 0.066595,
		35.348072, 28.754930, 22.619692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992283, 29.442755, 22.872681>,  <35.723747, 29.343739, 22.573076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992283, 29.442755, 22.872681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.069813, 29.054407, 22.929028>,  <35.116333, 28.821398, 22.962835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.069813, 29.054407, 22.929028>,  <34.992283, 29.442755, 22.872681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069813, 29.054407, 22.929028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370825, 0.060430, 0.926735,
		-0.908251, -0.231863, -0.348310,
		0.193827, -0.970870, 0.140866,
		35.127960, 28.763145, 22.971287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422466, 29.214329, 23.197550>,  <34.992283, 29.442755, 22.872681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422466, 29.214329, 23.197550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680561, 28.915518, 23.261583>,  <34.835419, 28.736231, 23.300003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680561, 28.915518, 23.261583>,  <34.422466, 29.214329, 23.197550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680561, 28.915518, 23.261583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338162, -0.091367, 0.936642,
		-0.685070, -0.658486, -0.311569,
		0.645233, -0.747026, 0.160082,
		34.874130, 28.691410, 23.309608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095287, 28.646593, 23.472136>,  <34.422466, 29.214329, 23.197550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095287, 28.646593, 23.472136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481197, 28.610216, 23.570881>,  <34.712742, 28.588390, 23.630127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481197, 28.610216, 23.570881>,  <34.095287, 28.646593, 23.472136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481197, 28.610216, 23.570881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257772, -0.139218, 0.956123,
		-0.052583, -0.986077, -0.157756,
		0.964773, -0.090941, 0.246863,
		34.770630, 28.582933, 23.644939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066837, 28.124617, 23.992308>,  <34.095287, 28.646593, 23.472136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066837, 28.124617, 23.992308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416306, 28.310476, 24.049990>,  <34.625988, 28.421991, 24.084599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416306, 28.310476, 24.049990>,  <34.066837, 28.124617, 23.992308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416306, 28.310476, 24.049990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186885, 0.046855, 0.981264,
		0.449186, -0.884255, 0.127772,
		0.873674, 0.464649, 0.144207,
		34.678410, 28.449871, 24.093252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385830, 27.731125, 24.596519>,  <34.066837, 28.124617, 23.992308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385830, 27.731125, 24.596519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583817, 28.078293, 24.579935>,  <34.702610, 28.286594, 24.569984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583817, 28.078293, 24.579935>,  <34.385830, 27.731125, 24.596519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583817, 28.078293, 24.579935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041364, 0.071199, 0.996604,
		0.867925, -0.491574, 0.071142,
		0.494970, 0.867920, -0.041461,
		34.732307, 28.338669, 24.567497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001411, 27.616701, 24.964518>,  <34.385830, 27.731125, 24.596519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001411, 27.616701, 24.964518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970985, 28.014978, 24.943325>,  <34.952732, 28.253944, 24.930609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970985, 28.014978, 24.943325>,  <35.001411, 27.616701, 24.964518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970985, 28.014978, 24.943325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147623, 0.063796, 0.986984,
		0.986115, 0.067250, -0.151840,
		-0.076061, 0.995694, -0.052983,
		34.948166, 28.313686, 24.927431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613346, 27.825777, 25.253309>,  <35.001411, 27.616701, 24.964518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613346, 27.825777, 25.253309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387505, 28.155401, 25.271872>,  <35.251999, 28.353176, 25.283009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387505, 28.155401, 25.271872>,  <35.613346, 27.825777, 25.253309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387505, 28.155401, 25.271872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275120, 0.134892, 0.951900,
		0.778161, 0.550211, -0.302875,
		-0.564601, 0.824059, 0.046406,
		35.218124, 28.402618, 25.285793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987720, 28.319778, 25.627800>,  <35.613346, 27.825777, 25.253309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987720, 28.319778, 25.627800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607021, 28.442461, 25.623480>,  <35.378601, 28.516071, 25.620888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607021, 28.442461, 25.623480>,  <35.987720, 28.319778, 25.627800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607021, 28.442461, 25.623480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116456, 0.393484, 0.911926,
		0.283942, 0.866662, -0.410213,
		-0.951743, 0.306706, -0.010798,
		35.321499, 28.534473, 25.620241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954674, 29.050085, 26.001394>,  <35.987720, 28.319778, 25.627800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954674, 29.050085, 26.001394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575424, 28.923782, 26.016117>,  <35.347874, 28.848000, 26.024952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575424, 28.923782, 26.016117>,  <35.954674, 29.050085, 26.001394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575424, 28.923782, 26.016117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156079, 0.563243, 0.811416,
		-0.276943, 0.763579, -0.583308,
		-0.948125, -0.315758, 0.036808,
		35.290985, 28.829056, 26.027159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413052, 29.683300, 26.029388>,  <35.954674, 29.050085, 26.001394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413052, 29.683300, 26.029388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258698, 29.356106, 26.200031>,  <35.166084, 29.159788, 26.302416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258698, 29.356106, 26.200031>,  <35.413052, 29.683300, 26.029388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258698, 29.356106, 26.200031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014652, 0.467797, 0.883715,
		-0.922432, 0.334758, -0.192499,
		-0.385881, -0.817987, 0.426606,
		35.142933, 29.110710, 26.328012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907089, 29.953014, 26.504053>,  <35.413052, 29.683300, 26.029388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907089, 29.953014, 26.504053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976906, 29.585546, 26.645805>,  <35.018795, 29.365067, 26.730856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976906, 29.585546, 26.645805>,  <34.907089, 29.953014, 26.504053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976906, 29.585546, 26.645805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079475, 0.345586, 0.935016,
		-0.981438, -0.191360, -0.012694,
		0.174538, -0.918669, 0.354379,
		35.029266, 29.309946, 26.752119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576588, 29.997540, 27.146286>,  <34.907089, 29.953014, 26.504053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576588, 29.997540, 27.146286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774815, 29.653175, 27.192310>,  <34.893753, 29.446556, 27.219925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774815, 29.653175, 27.192310>,  <34.576588, 29.997540, 27.146286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774815, 29.653175, 27.192310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130032, 0.204518, 0.970188,
		-0.858779, -0.465835, 0.213299,
		0.495570, -0.860913, 0.115063,
		34.923485, 29.394901, 27.226830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285988, 29.684113, 27.795530>,  <34.576588, 29.997540, 27.146286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285988, 29.684113, 27.795530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652874, 29.543787, 27.720016>,  <34.873005, 29.459593, 27.674707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652874, 29.543787, 27.720016>,  <34.285988, 29.684113, 27.795530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652874, 29.543787, 27.720016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232799, 0.087435, 0.968587,
		-0.323286, -0.932355, 0.161866,
		0.917219, -0.350813, -0.188785,
		34.928040, 29.438543, 27.663382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821159, 29.245762, 28.003443>,  <34.285988, 29.684113, 27.795530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821159, 29.245762, 28.003443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.446270, 29.217306, 28.140001>,  <33.221336, 29.200233, 28.221935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.446270, 29.217306, 28.140001>,  <33.821159, 29.245762, 28.003443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446270, 29.217306, 28.140001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291828, -0.375951, -0.879487,
		0.190913, -0.923905, 0.331590,
		-0.937224, -0.071138, 0.341395,
		33.165104, 29.195965, 28.242420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524055, 28.588884, 27.716320>,  <33.821159, 29.245762, 28.003443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524055, 28.588884, 27.716320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206348, 28.811388, 27.814066>,  <33.015724, 28.944891, 27.872713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206348, 28.811388, 27.814066>,  <33.524055, 28.588884, 27.716320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206348, 28.811388, 27.814066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376011, -0.134124, -0.916857,
		-0.477237, -0.820112, 0.315691,
		-0.794268, 0.556261, 0.244362,
		32.968067, 28.978266, 27.887375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912842, 28.200294, 27.501259>,  <33.524055, 28.588884, 27.716320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912842, 28.200294, 27.501259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790070, 28.580198, 27.525759>,  <32.716404, 28.808140, 27.540459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790070, 28.580198, 27.525759>,  <32.912842, 28.200294, 27.501259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790070, 28.580198, 27.525759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381112, -0.063681, -0.922333,
		-0.872093, -0.306437, 0.381510,
		-0.306932, 0.949758, 0.061251,
		32.697990, 28.865126, 27.544134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479671, 28.203459, 27.038782>,  <32.912842, 28.200294, 27.501259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479671, 28.203459, 27.038782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516232, 28.601393, 27.056438>,  <32.538170, 28.840153, 27.067032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516232, 28.601393, 27.056438>,  <32.479671, 28.203459, 27.038782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516232, 28.601393, 27.056438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448681, 0.080716, -0.890039,
		-0.889005, 0.061549, 0.453742,
		0.091405, 0.994835, 0.044141,
		32.543652, 28.899843, 27.069681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798979, 28.573383, 26.838619>,  <32.479671, 28.203459, 27.038782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798979, 28.573383, 26.838619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096367, 28.837719, 26.797550>,  <32.274799, 28.996321, 26.772909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096367, 28.837719, 26.797550>,  <31.798979, 28.573383, 26.838619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096367, 28.837719, 26.797550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314572, 0.210087, -0.925693,
		-0.590164, 0.720524, 0.364076,
		0.743472, 0.660839, -0.102670,
		32.319408, 29.035971, 26.766748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509438, 29.232042, 26.449743>,  <31.798979, 28.573383, 26.838619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509438, 29.232042, 26.449743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.907593, 29.241997, 26.412693>,  <32.146488, 29.247969, 26.390463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.907593, 29.241997, 26.412693>,  <31.509438, 29.232042, 26.449743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907593, 29.241997, 26.412693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094265, 0.075619, -0.992671,
		-0.017697, 0.996826, 0.077616,
		0.995390, 0.024884, -0.092627,
		32.206211, 29.249462, 26.384905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584957, 29.852842, 25.955095>,  <31.509438, 29.232042, 26.449743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584957, 29.852842, 25.955095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926571, 29.646097, 25.931499>,  <32.131538, 29.522051, 25.917341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926571, 29.646097, 25.931499>,  <31.584957, 29.852842, 25.955095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926571, 29.646097, 25.931499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060976, 0.013158, -0.998053,
		0.516632, 0.855968, -0.020279,
		0.854034, -0.516862, -0.058991,
		32.182781, 29.491039, 25.913801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136276, 30.463589, 26.030252>,  <31.584957, 29.852842, 25.955095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136276, 30.463589, 26.030252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289810, 30.756454, 25.805183>,  <32.381931, 30.932175, 25.670141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289810, 30.756454, 25.805183>,  <32.136276, 30.463589, 26.030252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289810, 30.756454, 25.805183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565475, 0.295353, 0.770068,
		0.730006, -0.613757, -0.300655,
		0.383835, 0.732167, -0.562674,
		32.404961, 30.976105, 25.636381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909828, 30.484364, 26.059637>,  <32.136276, 30.463589, 26.030252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909828, 30.484364, 26.059637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783409, 30.856527, 25.985392>,  <32.707558, 31.079826, 25.940844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783409, 30.856527, 25.985392>,  <32.909828, 30.484364, 26.059637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783409, 30.856527, 25.985392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367664, 0.300464, 0.880082,
		0.874607, 0.209902, -0.437038,
		-0.316046, 0.930410, -0.185614,
		32.688595, 31.135651, 25.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502598, 30.985689, 26.306896>,  <32.909828, 30.484364, 26.059637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502598, 30.985689, 26.306896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157009, 31.181763, 26.260811>,  <32.949657, 31.299406, 26.233160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157009, 31.181763, 26.260811>,  <33.502598, 30.985689, 26.306896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157009, 31.181763, 26.260811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133965, 0.444317, 0.885796,
		0.485394, 0.749868, -0.449545,
		-0.863971, 0.490184, -0.115213,
		32.897820, 31.328817, 26.226248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704201, 31.624670, 26.344070>,  <33.502598, 30.985689, 26.306896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704201, 31.624670, 26.344070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313412, 31.625360, 26.429405>,  <33.078938, 31.625774, 26.480606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313412, 31.625360, 26.429405>,  <33.704201, 31.624670, 26.344070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313412, 31.625360, 26.429405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191512, 0.447768, 0.873400,
		-0.094019, 0.894148, -0.437790,
		-0.976977, 0.001726, 0.213339,
		33.020317, 31.625877, 26.493406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647652, 32.166843, 26.757265>,  <33.704201, 31.624670, 26.344070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647652, 32.166843, 26.757265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321404, 31.948671, 26.834478>,  <33.125652, 31.817768, 26.880806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321404, 31.948671, 26.834478>,  <33.647652, 32.166843, 26.757265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321404, 31.948671, 26.834478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117385, 0.482691, 0.867889,
		-0.566549, 0.685212, -0.457719,
		-0.815624, -0.545431, 0.193034,
		33.076717, 31.785042, 26.892389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080196, 32.600838, 26.904163>,  <33.647652, 32.166843, 26.757265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080196, 32.600838, 26.904163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957962, 32.262016, 27.078114>,  <32.884621, 32.058723, 27.182484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957962, 32.262016, 27.078114>,  <33.080196, 32.600838, 26.904163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957962, 32.262016, 27.078114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249204, 0.511954, 0.822070,
		-0.918973, 0.142844, -0.367537,
		-0.305590, -0.847053, 0.434875,
		32.866283, 32.007900, 27.208576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482185, 32.739498, 27.232262>,  <33.080196, 32.600838, 26.904163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482185, 32.739498, 27.232262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630138, 32.414242, 27.412033>,  <32.718910, 32.219090, 27.519896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630138, 32.414242, 27.412033>,  <32.482185, 32.739498, 27.232262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630138, 32.414242, 27.412033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231168, 0.387977, 0.892208,
		-0.899860, -0.433907, -0.044466,
		0.369883, -0.813141, 0.449430,
		32.741104, 32.170300, 27.546862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.361271, 32.482552, 22.873276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519257, 32.142307, 23.012104>,  <34.614048, 31.938160, 23.095402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519257, 32.142307, 23.012104>,  <34.361271, 32.482552, 22.873276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519257, 32.142307, 23.012104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559807, 0.076714, 0.825065,
		-0.728438, -0.520162, -0.445881,
		0.394962, -0.850615, 0.347071,
		34.637745, 31.887123, 23.116226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793228, 31.990757, 23.027941>,  <34.361271, 32.482552, 22.873276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793228, 31.990757, 23.027941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.121082, 32.015167, 23.255793>,  <34.317795, 32.029812, 23.392504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.121082, 32.015167, 23.255793>,  <33.793228, 31.990757, 23.027941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121082, 32.015167, 23.255793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538839, 0.419793, 0.730361,
		-0.194557, -0.905566, 0.376958,
		0.819634, 0.061023, 0.569628,
		34.366974, 32.033474, 23.426682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572113, 31.784382, 23.724922>,  <33.793228, 31.990757, 23.027941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572113, 31.784382, 23.724922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.926559, 31.965635, 23.763834>,  <34.139229, 32.074387, 23.787180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.926559, 31.965635, 23.763834>,  <33.572113, 31.784382, 23.724922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926559, 31.965635, 23.763834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289031, 0.376232, 0.880290,
		0.362273, -0.808167, 0.464354,
		0.886126, 0.453118, 0.097287,
		34.192394, 32.101574, 23.793016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823040, 31.811823, 24.497948>,  <33.572113, 31.784382, 23.724922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823040, 31.811823, 24.497948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.968540, 32.138958, 24.319590>,  <34.055840, 32.335239, 24.212576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.968540, 32.138958, 24.319590>,  <33.823040, 31.811823, 24.497948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968540, 32.138958, 24.319590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224705, 0.541591, 0.810053,
		0.903986, -0.194466, 0.380779,
		0.363754, 0.817840, -0.445893,
		34.077667, 32.384312, 24.185822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307331, 32.056843, 24.959101>,  <33.823040, 31.811823, 24.497948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307331, 32.056843, 24.959101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.195232, 32.369556, 24.736294>,  <34.127972, 32.557186, 24.602610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.195232, 32.369556, 24.736294>,  <34.307331, 32.056843, 24.959101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195232, 32.369556, 24.736294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070452, 0.561955, 0.824162,
		0.957338, 0.270216, -0.102410,
		-0.280252, 0.781786, -0.557018,
		34.111156, 32.604092, 24.569189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355175, 32.555298, 25.390739>,  <34.307331, 32.056843, 24.959101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355175, 32.555298, 25.390739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.216923, 32.756207, 25.073687>,  <34.133972, 32.876751, 24.883455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.216923, 32.756207, 25.073687>,  <34.355175, 32.555298, 25.390739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216923, 32.756207, 25.073687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072667, 0.827825, 0.556260,
		0.935554, 0.249857, -0.249620,
		-0.345627, 0.502272, -0.792631,
		34.113235, 32.906887, 24.835897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747921, 33.167324, 25.295628>,  <34.355175, 32.555298, 25.390739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747921, 33.167324, 25.295628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392765, 33.235073, 25.124525>,  <34.179672, 33.275723, 25.021864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392765, 33.235073, 25.124525>,  <34.747921, 33.167324, 25.295628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392765, 33.235073, 25.124525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099052, 0.837591, 0.537243,
		0.449275, 0.519381, -0.726908,
		-0.887885, 0.169368, -0.427755,
		34.126400, 33.285885, 24.996199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679005, 33.921810, 25.219238>,  <34.747921, 33.167324, 25.295628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679005, 33.921810, 25.219238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.305283, 33.779255, 25.222651>,  <34.081051, 33.693722, 25.224697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.305283, 33.779255, 25.222651>,  <34.679005, 33.921810, 25.219238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305283, 33.779255, 25.222651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277827, 0.742928, 0.608991,
		-0.223370, 0.566611, -0.793132,
		-0.934301, -0.356384, 0.008529,
		34.024994, 33.672340, 25.225208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278488, 34.567921, 25.112186>,  <34.679005, 33.921810, 25.219238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278488, 34.567921, 25.112186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.043468, 34.290001, 25.278099>,  <33.902458, 34.123249, 25.377647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.043468, 34.290001, 25.278099>,  <34.278488, 34.567921, 25.112186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043468, 34.290001, 25.278099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310371, 0.666885, 0.677446,
		-0.747300, 0.269296, -0.607472,
		-0.587548, -0.694798, 0.414781,
		33.867203, 34.081562, 25.402533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703365, 34.934628, 25.221521>,  <34.278488, 34.567921, 25.112186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703365, 34.934628, 25.221521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652939, 34.621178, 25.464846>,  <33.622684, 34.433109, 25.610840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652939, 34.621178, 25.464846>,  <33.703365, 34.934628, 25.221521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652939, 34.621178, 25.464846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421393, 0.597431, 0.682279,
		-0.898074, -0.170329, -0.405527,
		-0.126062, -0.783623, 0.608312,
		33.615120, 34.386089, 25.647339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991493, 34.808491, 25.368406>,  <33.703365, 34.934628, 25.221521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991493, 34.808491, 25.368406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.208179, 34.647217, 25.663427>,  <33.338192, 34.550453, 25.840439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.208179, 34.647217, 25.663427>,  <32.991493, 34.808491, 25.368406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208179, 34.647217, 25.663427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362511, 0.679592, 0.637762,
		-0.758371, -0.612858, 0.221989,
		0.541719, -0.403186, 0.737551,
		33.370697, 34.526260, 25.884693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452694, 34.681755, 25.970264>,  <32.991493, 34.808491, 25.368406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452694, 34.681755, 25.970264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.821636, 34.648235, 26.121120>,  <33.043003, 34.628124, 26.211634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.821636, 34.648235, 26.121120>,  <32.452694, 34.681755, 25.970264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821636, 34.648235, 26.121120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288618, 0.499474, 0.816839,
		-0.256820, -0.862267, 0.436508,
		0.922357, -0.083796, 0.377141,
		33.098343, 34.623096, 26.234262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838579, 34.355778, 26.244371>,  <32.452694, 34.681755, 25.970264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838579, 34.355778, 26.244371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541019, 34.598969, 26.133398>,  <31.362484, 34.744884, 26.066814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541019, 34.598969, 26.133398>,  <31.838579, 34.355778, 26.244371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541019, 34.598969, 26.133398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006782, -0.421989, -0.906575,
		-0.668255, -0.672521, 0.318042,
		-0.743901, 0.607981, -0.277435,
		31.317848, 34.781364, 26.050167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638449, 34.050285, 25.611622>,  <31.838579, 34.355778, 26.244371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638449, 34.050285, 25.611622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.354181, 34.331692, 25.610397>,  <31.183620, 34.500538, 25.609663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.354181, 34.331692, 25.610397>,  <31.638449, 34.050285, 25.611622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354181, 34.331692, 25.610397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303523, -0.310524, -0.900804,
		-0.634684, -0.639244, 0.434214,
		-0.710668, 0.703521, -0.003059,
		31.140982, 34.542747, 25.609480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915861, 33.710785, 25.632727>,  <31.638449, 34.050285, 25.611622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915861, 33.710785, 25.632727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.908932, 34.079735, 25.478365>,  <30.904774, 34.301105, 25.385748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.908932, 34.079735, 25.478365>,  <30.915861, 33.710785, 25.632727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908932, 34.079735, 25.478365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387402, -0.362007, -0.847862,
		-0.921748, 0.134812, 0.363602,
		-0.017324, 0.922376, -0.385906,
		30.903734, 34.356449, 25.362593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282358, 33.936996, 25.387041>,  <30.915861, 33.710785, 25.632727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282358, 33.936996, 25.387041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548098, 34.150520, 25.177782>,  <30.707542, 34.278633, 25.052227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548098, 34.150520, 25.177782>,  <30.282358, 33.936996, 25.387041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548098, 34.150520, 25.177782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399031, -0.338526, -0.852158,
		-0.631991, 0.774885, -0.011893,
		0.664351, 0.533811, -0.523148,
		30.747402, 34.310665, 25.020838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834417, 34.300812, 24.888388>,  <30.282358, 33.936996, 25.387041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834417, 34.300812, 24.888388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205217, 34.311539, 24.738749>,  <30.427698, 34.317974, 24.648966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205217, 34.311539, 24.738749>,  <29.834417, 34.300812, 24.888388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205217, 34.311539, 24.738749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341317, -0.353134, -0.871091,
		-0.155466, 0.935188, -0.318203,
		0.927002, 0.026817, -0.374096,
		30.483318, 34.319584, 24.626520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783817, 34.600807, 24.276316>,  <29.834417, 34.300812, 24.888388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783817, 34.600807, 24.276316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142200, 34.426971, 24.239668>,  <30.357231, 34.322670, 24.217678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142200, 34.426971, 24.239668>,  <29.783817, 34.600807, 24.276316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142200, 34.426971, 24.239668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208212, -0.228773, -0.950953,
		0.392310, 0.871090, -0.295457,
		0.895958, -0.434586, -0.091622,
		30.410988, 34.296597, 24.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060146, 34.790894, 23.608007>,  <29.783817, 34.600807, 24.276316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060146, 34.790894, 23.608007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259132, 34.465054, 23.727306>,  <30.378525, 34.269550, 23.798885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259132, 34.465054, 23.727306>,  <30.060146, 34.790894, 23.608007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259132, 34.465054, 23.727306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066577, -0.378647, -0.923144,
		0.864925, 0.439376, -0.242597,
		0.497465, -0.814602, 0.298249,
		30.408373, 34.220673, 23.816782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614922, 34.745720, 23.214546>,  <30.060146, 34.790894, 23.608007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614922, 34.745720, 23.214546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556149, 34.366768, 23.328306>,  <30.520885, 34.139397, 23.396563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556149, 34.366768, 23.328306>,  <30.614922, 34.745720, 23.214546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556149, 34.366768, 23.328306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229784, -0.312345, -0.921759,
		0.962086, -0.070087, 0.263587,
		-0.146933, -0.947380, 0.284398,
		30.512068, 34.082554, 23.413626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055300, 34.481213, 22.768311>,  <30.614922, 34.745720, 23.214546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055300, 34.481213, 22.768311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850986, 34.169109, 22.912697>,  <30.728399, 33.981846, 22.999329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850986, 34.169109, 22.912697>,  <31.055300, 34.481213, 22.768311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850986, 34.169109, 22.912697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023720, -0.406917, -0.913157,
		0.859384, -0.474985, 0.189338,
		-0.510781, -0.780261, 0.360964,
		30.697752, 33.935032, 23.020987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358732, 33.888645, 22.476950>,  <31.055300, 34.481213, 22.768311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358732, 33.888645, 22.476950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.000481, 33.747025, 22.584648>,  <30.785530, 33.662052, 22.649267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.000481, 33.747025, 22.584648>,  <31.358732, 33.888645, 22.476950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000481, 33.747025, 22.584648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105011, -0.419902, -0.901474,
		0.432226, -0.835661, 0.338897,
		-0.895630, -0.354052, 0.269246,
		30.731792, 33.640808, 22.665422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353176, 33.163651, 22.254530>,  <31.358732, 33.888645, 22.476950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353176, 33.163651, 22.254530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.966045, 33.252129, 22.302504>,  <30.733767, 33.305218, 22.331287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.966045, 33.252129, 22.302504>,  <31.353176, 33.163651, 22.254530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966045, 33.252129, 22.302504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216649, -0.490155, -0.844281,
		-0.127967, -0.843101, 0.522308,
		-0.967826, 0.221198, 0.119933,
		30.675697, 33.318489, 22.338484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017248, 32.504341, 22.073723>,  <31.353176, 33.163651, 22.254530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017248, 32.504341, 22.073723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.734297, 32.787033, 22.068909>,  <30.564526, 32.956650, 22.066021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.734297, 32.787033, 22.068909>,  <31.017248, 32.504341, 22.073723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734297, 32.787033, 22.068909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437371, -0.451019, -0.778003,
		-0.555269, -0.545078, 0.628145,
		-0.707378, 0.706733, -0.012036,
		30.522083, 32.999054, 22.065298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348412, 31.774090, 21.742811>,  <31.017248, 32.504341, 22.073723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348412, 31.774090, 21.742811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203899, 32.060921, 21.504391>,  <31.117193, 32.233021, 21.361338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203899, 32.060921, 21.504391>,  <31.348412, 31.774090, 21.742811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203899, 32.060921, 21.504391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360217, -0.482275, -0.798533,
		-0.860071, -0.503201, -0.084068,
		-0.361279, 0.717078, -0.596052,
		31.095516, 32.276043, 21.325575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038483, 31.470261, 21.982021>,  <31.348412, 31.774090, 21.742811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038483, 31.470261, 21.982021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.702953, 31.461487, 22.199608>,  <31.501637, 31.456223, 22.330160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.702953, 31.461487, 22.199608>,  <32.038483, 31.470261, 21.982021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702953, 31.461487, 22.199608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543485, 0.024450, 0.839063,
		-0.031705, 0.999460, -0.008588,
		-0.838820, -0.021935, 0.543967,
		31.451307, 31.454906, 22.362799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237534, 31.583124, 22.641769>,  <32.038483, 31.470261, 21.982021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237534, 31.583124, 22.641769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.864212, 31.494957, 22.755163>,  <31.640219, 31.442057, 22.823200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.864212, 31.494957, 22.755163>,  <32.237534, 31.583124, 22.641769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864212, 31.494957, 22.755163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227887, 0.246542, 0.941958,
		-0.277515, 0.943733, -0.179868,
		-0.933302, -0.220418, 0.283484,
		31.584221, 31.428831, 22.840208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099743, 32.087181, 23.107050>,  <32.237534, 31.583124, 22.641769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099743, 32.087181, 23.107050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.837910, 31.795502, 23.186844>,  <31.680811, 31.620493, 23.234720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.837910, 31.795502, 23.186844>,  <32.099743, 32.087181, 23.107050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837910, 31.795502, 23.186844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193474, 0.093504, 0.976639,
		-0.730818, 0.677883, 0.079876,
		-0.654579, -0.729199, 0.199487,
		31.641537, 31.576742, 23.246691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929522, 32.255962, 23.716045>,  <32.099743, 32.087181, 23.107050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929522, 32.255962, 23.716045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796135, 31.879332, 23.697123>,  <31.716103, 31.653355, 23.685768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796135, 31.879332, 23.697123>,  <31.929522, 32.255962, 23.716045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796135, 31.879332, 23.697123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120787, -0.092436, 0.988366,
		-0.934992, 0.323875, 0.144554,
		-0.333469, -0.941574, -0.047307,
		31.696095, 31.596859, 23.682930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451406, 32.230232, 24.251854>,  <31.929522, 32.255962, 23.716045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451406, 32.230232, 24.251854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565214, 31.860600, 24.149780>,  <31.633499, 31.638819, 24.088535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565214, 31.860600, 24.149780>,  <31.451406, 32.230232, 24.251854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565214, 31.860600, 24.149780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216875, -0.197243, 0.956065,
		-0.933818, -0.327360, 0.144292,
		0.284517, -0.924084, -0.255185,
		31.650570, 31.583374, 24.073225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158306, 31.765846, 24.683681>,  <31.451406, 32.230232, 24.251854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158306, 31.765846, 24.683681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.470133, 31.546415, 24.562794>,  <31.657228, 31.414757, 24.490261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.470133, 31.546415, 24.562794>,  <31.158306, 31.765846, 24.683681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470133, 31.546415, 24.562794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137400, -0.320985, 0.937064,
		-0.611060, -0.772031, -0.174855,
		0.779569, -0.548577, -0.302218,
		31.704004, 31.381842, 24.472128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082674, 31.124899, 25.014034>,  <31.158306, 31.765846, 24.683681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082674, 31.124899, 25.014034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.466969, 31.159670, 24.908638>,  <31.697546, 31.180532, 24.845400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.466969, 31.159670, 24.908638>,  <31.082674, 31.124899, 25.014034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466969, 31.159670, 24.908638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277449, -0.310161, 0.909298,
		-0.002681, -0.946702, -0.322101,
		0.960737, 0.086929, -0.263493,
		31.755190, 31.185749, 24.829590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320410, 30.681610, 25.399389>,  <31.082674, 31.124899, 25.014034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320410, 30.681610, 25.399389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651268, 30.877384, 25.288916>,  <31.849783, 30.994848, 25.222631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651268, 30.877384, 25.288916>,  <31.320410, 30.681610, 25.399389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651268, 30.877384, 25.288916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357560, -0.079188, 0.930527,
		0.433564, -0.868435, -0.240503,
		0.827148, 0.489437, -0.276185,
		31.899412, 31.024216, 25.206060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810383, 30.146332, 25.311621>,  <31.320410, 30.681610, 25.399389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810383, 30.146332, 25.311621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046841, 29.831087, 25.380243>,  <32.188713, 29.641941, 25.421417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046841, 29.831087, 25.380243>,  <31.810383, 30.146332, 25.311621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046841, 29.831087, 25.380243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127034, -0.119073, -0.984725,
		0.796500, 0.603907, 0.029727,
		0.591142, -0.788110, 0.171558,
		32.224182, 29.594654, 25.431711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364460, 30.233278, 24.919264>,  <31.810383, 30.146332, 25.311621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364460, 30.233278, 24.919264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362331, 29.839512, 24.989573>,  <32.361053, 29.603252, 25.031757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362331, 29.839512, 24.989573>,  <32.364460, 30.233278, 24.919264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362331, 29.839512, 24.989573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231677, -0.172203, -0.957430,
		0.972778, 0.035628, 0.228983,
		-0.005321, -0.984417, 0.175770,
		32.360737, 29.544188, 25.042303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962334, 29.951487, 24.665409>,  <32.364460, 30.233278, 24.919264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962334, 29.951487, 24.665409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.712589, 29.640558, 24.696239>,  <32.562740, 29.454000, 24.714737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.712589, 29.640558, 24.696239>,  <32.962334, 29.951487, 24.665409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712589, 29.640558, 24.696239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285438, -0.318887, -0.903790,
		0.727114, -0.542294, 0.420978,
		-0.624364, -0.777321, 0.077076,
		32.525280, 29.407362, 24.719362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385273, 29.306944, 24.373096>,  <32.962334, 29.951487, 24.665409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385273, 29.306944, 24.373096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.006107, 29.180473, 24.357674>,  <32.778606, 29.104591, 24.348419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.006107, 29.180473, 24.357674>,  <33.385273, 29.306944, 24.373096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006107, 29.180473, 24.357674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158026, -0.361722, -0.918795,
		0.276554, -0.877034, 0.392847,
		-0.947916, -0.316177, -0.038559,
		32.721733, 29.085621, 24.346106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410168, 28.734928, 24.076153>,  <33.385273, 29.306944, 24.373096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410168, 28.734928, 24.076153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021687, 28.808111, 24.015112>,  <32.788597, 28.852022, 23.978487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021687, 28.808111, 24.015112>,  <33.410168, 28.734928, 24.076153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021687, 28.808111, 24.015112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064666, -0.414037, -0.907960,
		-0.229300, -0.891684, 0.390284,
		-0.971206, 0.182958, -0.152600,
		32.730324, 28.862999, 23.969332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096008, 28.163982, 23.848986>,  <33.410168, 28.734928, 24.076153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096008, 28.163982, 23.848986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.872978, 28.464319, 23.707373>,  <32.739159, 28.644522, 23.622404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.872978, 28.464319, 23.707373>,  <33.096008, 28.163982, 23.848986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872978, 28.464319, 23.707373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040015, -0.401676, -0.914908,
		-0.829159, -0.524300, 0.193920,
		-0.557579, 0.750844, -0.354033,
		32.705704, 28.689573, 23.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633347, 27.837862, 23.281065>,  <33.096008, 28.163982, 23.848986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633347, 27.837862, 23.281065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.609737, 28.232058, 23.217405>,  <32.595573, 28.468575, 23.179209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.609737, 28.232058, 23.217405>,  <32.633347, 27.837862, 23.281065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609737, 28.232058, 23.217405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060834, -0.155582, -0.985948,
		-0.996401, -0.067874, -0.050768,
		-0.059022, 0.985488, -0.159151,
		32.592030, 28.527704, 23.169661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123043, 27.884226, 22.724127>,  <32.633347, 27.837862, 23.281065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123043, 27.884226, 22.724127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.346954, 28.215326, 22.739500>,  <32.481300, 28.413986, 22.748724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.346954, 28.215326, 22.739500>,  <32.123043, 27.884226, 22.724127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346954, 28.215326, 22.739500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058527, 0.006770, -0.998263,
		-0.826572, 0.561057, -0.044656,
		0.559780, 0.827749, 0.038433,
		32.514889, 28.463652, 22.751030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826563, 28.288940, 22.273111>,  <32.123043, 27.884226, 22.724127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826563, 28.288940, 22.273111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.175037, 28.479124, 22.322054>,  <32.384121, 28.593233, 22.351419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.175037, 28.479124, 22.322054>,  <31.826563, 28.288940, 22.273111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175037, 28.479124, 22.322054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116505, 0.041893, -0.992306,
		-0.476926, 0.878740, -0.018897,
		0.871188, 0.475458, 0.122357,
		32.436394, 28.621761, 22.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.774261, 34.877224, 36.228352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533607, 35.149059, 36.396255>,  <33.389217, 35.312160, 36.496998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533607, 35.149059, 36.396255>,  <33.774261, 34.877224, 36.228352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533607, 35.149059, 36.396255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660456, 0.127663, 0.739933,
		0.449262, 0.722400, -0.525645,
		-0.601633, 0.679588, 0.419759,
		33.353119, 35.352936, 36.522182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369926, 34.643436, 36.076492>,  <33.774261, 34.877224, 36.228352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369926, 34.643436, 36.076492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749302, 34.516647, 36.076401>,  <34.976925, 34.440575, 36.076347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749302, 34.516647, 36.076401>,  <34.369926, 34.643436, 36.076492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749302, 34.516647, 36.076401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162228, -0.484798, -0.859449,
		0.272313, 0.815168, -0.511221,
		0.948434, -0.316974, -0.000227,
		35.033833, 34.421555, 36.076332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595436, 34.667099, 35.359440>,  <34.369926, 34.643436, 36.076492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595436, 34.667099, 35.359440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798748, 34.383911, 35.555576>,  <34.920734, 34.214001, 35.673260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798748, 34.383911, 35.555576>,  <34.595436, 34.667099, 35.359440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798748, 34.383911, 35.555576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174351, -0.642179, -0.746463,
		0.843359, 0.293920, -0.449841,
		0.508279, -0.707967, 0.490342,
		34.951233, 34.171520, 35.702679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614956, 34.093952, 34.890167>,  <34.595436, 34.667099, 35.359440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614956, 34.093952, 34.890167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786095, 33.926579, 35.210629>,  <34.888779, 33.826153, 35.402905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786095, 33.926579, 35.210629>,  <34.614956, 34.093952, 34.890167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786095, 33.926579, 35.210629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019911, -0.890532, -0.454485,
		0.903630, 0.178500, -0.389347,
		0.427851, -0.418439, 0.801157,
		34.914452, 33.801048, 35.450977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130020, 33.751411, 34.692352>,  <34.614956, 34.093952, 34.890167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130020, 33.751411, 34.692352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991505, 33.583786, 35.028084>,  <34.908394, 33.483212, 35.229523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991505, 33.583786, 35.028084>,  <35.130020, 33.751411, 34.692352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991505, 33.583786, 35.028084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094247, -0.874618, -0.475564,
		0.933382, -0.243786, 0.263374,
		-0.346288, -0.419061, 0.839329,
		34.887619, 33.458069, 35.279884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497940, 33.033909, 34.773682>,  <35.130020, 33.751411, 34.692352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497940, 33.033909, 34.773682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166805, 33.031132, 34.998055>,  <34.968124, 33.029465, 35.132679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166805, 33.031132, 34.998055>,  <35.497940, 33.033909, 34.773682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166805, 33.031132, 34.998055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282272, -0.858960, -0.427213,
		0.484779, -0.511996, 0.709119,
		-0.827836, -0.006939, 0.560928,
		34.918453, 33.029049, 35.166332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472141, 32.393978, 34.954178>,  <35.497940, 33.033909, 34.773682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472141, 32.393978, 34.954178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099083, 32.513260, 35.035416>,  <34.875248, 32.584827, 35.084156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099083, 32.513260, 35.035416>,  <35.472141, 32.393978, 34.954178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099083, 32.513260, 35.035416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359775, -0.810948, -0.461439,
		0.027095, -0.503427, 0.863613,
		-0.932645, 0.298204, 0.203093,
		34.819290, 32.602722, 35.096344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114643, 31.795599, 35.164268>,  <35.472141, 32.393978, 34.954178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114643, 31.795599, 35.164268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823059, 32.056427, 35.080921>,  <34.648109, 32.212925, 35.030910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823059, 32.056427, 35.080921>,  <35.114643, 31.795599, 35.164268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823059, 32.056427, 35.080921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493540, -0.711554, -0.500110,
		-0.474373, -0.261723, 0.840518,
		-0.728964, 0.652068, -0.208371,
		34.604370, 32.252048, 35.018410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450138, 31.503283, 35.423065>,  <35.114643, 31.795599, 35.164268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450138, 31.503283, 35.423065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391060, 31.762468, 35.124180>,  <34.355614, 31.917980, 34.944851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391060, 31.762468, 35.124180>,  <34.450138, 31.503283, 35.423065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391060, 31.762468, 35.124180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480103, -0.707487, -0.518616,
		-0.864688, 0.282140, 0.415586,
		-0.147699, 0.647966, -0.747211,
		34.346748, 31.956858, 34.900017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843887, 31.320704, 35.077343>,  <34.450138, 31.503283, 35.423065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843887, 31.320704, 35.077343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993427, 31.550972, 34.786457>,  <34.083153, 31.689133, 34.611927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993427, 31.550972, 34.786457>,  <33.843887, 31.320704, 35.077343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993427, 31.550972, 34.786457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437777, -0.581706, -0.685543,
		-0.817672, 0.574646, 0.034546,
		0.373849, 0.575673, -0.727212,
		34.105583, 31.723675, 34.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274212, 31.383339, 34.549438>,  <33.843887, 31.320704, 35.077343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274212, 31.383339, 34.549438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596333, 31.506786, 34.346958>,  <33.789604, 31.580854, 34.225468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596333, 31.506786, 34.346958>,  <33.274212, 31.383339, 34.549438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596333, 31.506786, 34.346958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257438, -0.587102, -0.767487,
		-0.534055, 0.748376, -0.393345,
		0.805302, 0.308618, -0.506205,
		33.837925, 31.599371, 34.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080685, 31.644875, 33.901863>,  <33.274212, 31.383339, 34.549438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080685, 31.644875, 33.901863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471409, 31.574217, 33.853481>,  <33.705845, 31.531822, 33.824451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471409, 31.574217, 33.853481>,  <33.080685, 31.644875, 33.901863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471409, 31.574217, 33.853481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198914, -0.539919, -0.817876,
		0.079164, 0.822973, -0.562538,
		0.976815, -0.176642, -0.120959,
		33.764454, 31.521225, 33.817192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754513, 32.375683, 33.851971>,  <33.080685, 31.644875, 33.901863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754513, 32.375683, 33.851971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504822, 32.652851, 33.707638>,  <32.355007, 32.819153, 33.621037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504822, 32.652851, 33.707638>,  <32.754513, 32.375683, 33.851971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504822, 32.652851, 33.707638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199791, 0.304927, 0.931184,
		0.755265, 0.653361, -0.051904,
		-0.624226, 0.692920, -0.360836,
		32.317554, 32.860725, 33.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961578, 33.056313, 34.149281>,  <32.754513, 32.375683, 33.851971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961578, 33.056313, 34.149281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582684, 33.048367, 34.021317>,  <32.355347, 33.043598, 33.944538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582684, 33.048367, 34.021317>,  <32.961578, 33.056313, 34.149281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582684, 33.048367, 34.021317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292274, 0.463265, 0.836637,
		0.131581, 0.885997, -0.444630,
		-0.947240, -0.019868, -0.319910,
		32.298512, 33.042408, 33.925343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663349, 33.777485, 34.099556>,  <32.961578, 33.056313, 34.149281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663349, 33.777485, 34.099556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336140, 33.547485, 34.105270>,  <32.139812, 33.409485, 34.108700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336140, 33.547485, 34.105270>,  <32.663349, 33.777485, 34.099556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336140, 33.547485, 34.105270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388239, 0.570312, 0.723889,
		-0.424386, 0.586614, -0.689769,
		-0.818026, -0.575003, 0.014286,
		32.090733, 33.374985, 34.109554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099564, 34.196308, 34.179386>,  <32.663349, 33.777485, 34.099556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099564, 34.196308, 34.179386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957813, 33.839790, 34.292530>,  <31.872763, 33.625881, 34.360416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957813, 33.839790, 34.292530>,  <32.099564, 34.196308, 34.179386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957813, 33.839790, 34.292530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617674, 0.450221, 0.644810,
		-0.702064, 0.053794, -0.710079,
		-0.354379, -0.891295, 0.282857,
		31.851500, 33.572403, 34.377388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370119, 34.296566, 34.234280>,  <32.099564, 34.196308, 34.179386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370119, 34.296566, 34.234280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.452131, 33.966579, 34.444954>,  <31.501339, 33.768589, 34.571358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.452131, 33.966579, 34.444954>,  <31.370119, 34.296566, 34.234280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452131, 33.966579, 34.444954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521842, 0.363116, 0.771899,
		-0.828036, -0.433109, -0.356051,
		0.205028, -0.824963, 0.526688,
		31.513639, 33.719090, 34.602959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766218, 34.048054, 34.427639>,  <31.370119, 34.296566, 34.234280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766218, 34.048054, 34.427639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.014959, 33.908466, 34.708073>,  <31.164204, 33.824715, 34.876335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.014959, 33.908466, 34.708073>,  <30.766218, 34.048054, 34.427639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014959, 33.908466, 34.708073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684634, 0.192413, 0.703031,
		-0.380232, -0.917169, -0.119263,
		0.621851, -0.348967, 0.701087,
		31.201515, 33.803776, 34.918400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342571, 33.853561, 34.939331>,  <30.766218, 34.048054, 34.427639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342571, 33.853561, 34.939331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700211, 33.859459, 35.118385>,  <30.914793, 33.862999, 35.225819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700211, 33.859459, 35.118385>,  <30.342571, 33.853561, 34.939331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700211, 33.859459, 35.118385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422621, 0.358637, 0.832329,
		-0.148266, -0.933361, 0.326887,
		0.894096, 0.014743, 0.447632,
		30.968439, 33.863884, 35.252674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100893, 33.593403, 35.517559>,  <30.342571, 33.853561, 34.939331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100893, 33.593403, 35.517559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452465, 33.768185, 35.594032>,  <30.663408, 33.873055, 35.639915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452465, 33.768185, 35.594032>,  <30.100893, 33.593403, 35.517559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452465, 33.768185, 35.594032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361734, 0.349464, 0.864305,
		0.310843, -0.828826, 0.465215,
		0.878934, 0.436947, 0.191186,
		30.716145, 33.899269, 35.651386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303961, 33.482559, 36.202263>,  <30.100893, 33.593403, 35.517559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303961, 33.482559, 36.202263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495178, 33.819729, 36.103512>,  <30.609909, 34.022030, 36.044262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495178, 33.819729, 36.103512>,  <30.303961, 33.482559, 36.202263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495178, 33.819729, 36.103512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311770, 0.425612, 0.849502,
		0.821143, -0.329129, 0.466260,
		0.478042, 0.842928, -0.246876,
		30.638590, 34.072609, 36.029449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433792, 33.724998, 36.869881>,  <30.303961, 33.482559, 36.202263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433792, 33.724998, 36.869881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.548300, 34.033722, 36.642776>,  <30.617004, 34.218956, 36.506512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.548300, 34.033722, 36.642776>,  <30.433792, 33.724998, 36.869881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548300, 34.033722, 36.642776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367474, 0.635690, 0.678867,
		0.884880, 0.014299, 0.465600,
		0.286271, 0.771812, -0.567764,
		30.634180, 34.265266, 36.472446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931141, 34.217194, 37.252396>,  <30.433792, 33.724998, 36.869881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931141, 34.217194, 37.252396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.717672, 34.384422, 36.958347>,  <30.589592, 34.484760, 36.781918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.717672, 34.384422, 36.958347>,  <30.931141, 34.217194, 37.252396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717672, 34.384422, 36.958347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382980, 0.655539, 0.650842,
		0.754004, 0.628874, -0.189727,
		-0.533670, 0.418076, -0.735125,
		30.557571, 34.509846, 36.737808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020384, 34.926834, 37.309212>,  <30.931141, 34.217194, 37.252396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020384, 34.926834, 37.309212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684175, 34.876606, 37.098400>,  <30.482450, 34.846470, 36.971912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684175, 34.876606, 37.098400>,  <31.020384, 34.926834, 37.309212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684175, 34.876606, 37.098400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468785, 0.656229, 0.591274,
		0.271601, 0.744040, -0.610441,
		-0.840520, -0.125575, -0.527027,
		30.432020, 34.838932, 36.940292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912792, 35.597317, 37.197536>,  <31.020384, 34.926834, 37.309212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912792, 35.597317, 37.197536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570751, 35.401348, 37.129681>,  <30.365526, 35.283768, 37.088966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570751, 35.401348, 37.129681>,  <30.912792, 35.597317, 37.197536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570751, 35.401348, 37.129681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492702, 0.666039, 0.560032,
		-0.161388, 0.562465, -0.810917,
		-0.855101, -0.489923, -0.169637,
		30.314220, 35.254372, 37.078789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485327, 36.152786, 37.078457>,  <30.912792, 35.597317, 37.197536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485327, 36.152786, 37.078457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257904, 35.832161, 37.152470>,  <30.121450, 35.639786, 37.196877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257904, 35.832161, 37.152470>,  <30.485327, 36.152786, 37.078457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257904, 35.832161, 37.152470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565576, 0.544205, 0.619649,
		-0.597385, 0.247655, -0.762757,
		-0.568555, -0.801566, 0.185033,
		30.087337, 35.591690, 37.207981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332067, 35.741772, 36.436630>,  <30.485327, 36.152786, 37.078457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332067, 35.741772, 36.436630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.185993, 36.109375, 36.496044>,  <30.098349, 36.329937, 36.531693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.185993, 36.109375, 36.496044>,  <30.332067, 35.741772, 36.436630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185993, 36.109375, 36.496044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098047, 0.120701, -0.987835,
		-0.925758, -0.375305, 0.046028,
		-0.365184, 0.919009, 0.148537,
		30.076439, 36.385078, 36.540604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847082, 35.739758, 35.930412>,  <30.332067, 35.741772, 36.436630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847082, 35.739758, 35.930412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.970917, 36.110569, 36.015057>,  <30.045218, 36.333057, 36.065842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.970917, 36.110569, 36.015057>,  <29.847082, 35.739758, 35.930412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970917, 36.110569, 36.015057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038763, 0.234660, -0.971304,
		-0.950081, 0.292498, 0.108582,
		0.309585, 0.927027, 0.211608,
		30.063791, 36.388676, 36.078541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369867, 36.323727, 35.743050>,  <29.847082, 35.739758, 35.930412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369867, 36.323727, 35.743050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.753658, 36.436039, 35.733562>,  <29.983932, 36.503426, 35.727871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.753658, 36.436039, 35.733562>,  <29.369867, 36.323727, 35.743050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753658, 36.436039, 35.733562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119029, 0.327556, -0.937304,
		-0.255405, 0.902147, 0.347704,
		0.959479, 0.280779, -0.023722,
		30.041502, 36.520271, 35.726444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324219, 36.877083, 35.333363>,  <29.369867, 36.323727, 35.743050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324219, 36.877083, 35.333363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702276, 36.746609, 35.326332>,  <29.929111, 36.668324, 35.322113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702276, 36.746609, 35.326332>,  <29.324219, 36.877083, 35.333363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702276, 36.746609, 35.326332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056596, 0.216502, -0.974640,
		0.321714, 0.920181, 0.223086,
		0.945144, -0.326181, -0.017573,
		29.985819, 36.648754, 35.321060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864790, 37.433918, 35.065880>,  <29.324219, 36.877083, 35.333363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864790, 37.433918, 35.065880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022221, 37.069912, 35.013783>,  <30.116678, 36.851509, 34.982525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022221, 37.069912, 35.013783>,  <29.864790, 37.433918, 35.065880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022221, 37.069912, 35.013783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214537, 0.228686, -0.949566,
		0.893908, 0.345785, 0.285239,
		0.393576, -0.910019, -0.130241,
		30.140293, 36.796906, 34.974709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462521, 37.491673, 34.747742>,  <29.864790, 37.433918, 35.065880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462521, 37.491673, 34.747742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.384327, 37.107758, 34.667152>,  <30.337410, 36.877407, 34.618797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.384327, 37.107758, 34.667152>,  <30.462521, 37.491673, 34.747742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384327, 37.107758, 34.667152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226818, 0.155623, -0.961423,
		0.954117, -0.233644, 0.187275,
		-0.195486, -0.959787, -0.201477,
		30.325682, 36.819820, 34.606709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995049, 37.266571, 34.189587>,  <30.462521, 37.491673, 34.747742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995049, 37.266571, 34.189587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.721571, 36.975235, 34.171307>,  <30.557486, 36.800434, 34.160339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.721571, 36.975235, 34.171307>,  <30.995049, 37.266571, 34.189587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721571, 36.975235, 34.171307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050591, 0.109775, -0.992668,
		0.728014, -0.676368, -0.111899,
		-0.683693, -0.728338, -0.045699,
		30.516462, 36.756733, 34.157597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113316, 36.731846, 33.538372>,  <30.995049, 37.266571, 34.189587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113316, 36.731846, 33.538372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731859, 36.631409, 33.604733>,  <30.502985, 36.571144, 33.644550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731859, 36.631409, 33.604733>,  <31.113316, 36.731846, 33.538372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731859, 36.631409, 33.604733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180404, 0.035717, -0.982944,
		0.240889, -0.967303, -0.079360,
		-0.953639, -0.251097, 0.165902,
		30.445768, 36.556080, 33.654503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910313, 36.261326, 33.048222>,  <31.113316, 36.731846, 33.538372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910313, 36.261326, 33.048222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.564705, 36.410496, 33.183514>,  <30.357340, 36.499996, 33.264690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.564705, 36.410496, 33.183514>,  <30.910313, 36.261326, 33.048222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564705, 36.410496, 33.183514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385798, -0.058787, -0.920709,
		-0.323468, -0.925999, 0.194665,
		-0.864019, 0.372921, 0.338232,
		30.305500, 36.522373, 33.284985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376125, 35.869076, 32.755165>,  <30.910313, 36.261326, 33.048222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376125, 35.869076, 32.755165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.194166, 36.212311, 32.850460>,  <30.084991, 36.418251, 32.907635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.194166, 36.212311, 32.850460>,  <30.376125, 35.869076, 32.755165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194166, 36.212311, 32.850460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397472, 0.043760, -0.916570,
		-0.796922, -0.511637, 0.321159,
		-0.454898, 0.858086, 0.238235,
		30.057697, 36.469738, 32.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665213, 35.856190, 32.537067>,  <30.376125, 35.869076, 32.755165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665213, 35.856190, 32.537067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.757442, 36.243271, 32.577847>,  <29.812780, 36.475517, 32.602314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.757442, 36.243271, 32.577847>,  <29.665213, 35.856190, 32.537067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757442, 36.243271, 32.577847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424342, 0.194279, -0.884415,
		-0.875654, 0.160662, 0.455431,
		0.230573, 0.967700, 0.101945,
		29.826614, 36.533581, 32.608429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059940, 36.205433, 32.267673>,  <29.665213, 35.856190, 32.537067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059940, 36.205433, 32.267673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.374411, 36.452522, 32.260277>,  <29.563093, 36.600777, 32.255840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.374411, 36.452522, 32.260277>,  <29.059940, 36.205433, 32.267673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374411, 36.452522, 32.260277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311450, 0.370188, -0.875192,
		-0.533785, 0.693812, 0.483424,
		0.786176, 0.617726, -0.018487,
		29.610264, 36.637840, 32.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831640, 36.673786, 31.805573>,  <29.059940, 36.205433, 32.267673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831640, 36.673786, 31.805573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.204147, 36.816628, 31.834465>,  <29.427652, 36.902332, 31.851801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.204147, 36.816628, 31.834465>,  <28.831640, 36.673786, 31.805573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204147, 36.816628, 31.834465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034549, 0.110802, -0.993242,
		-0.362691, 0.927471, 0.090849,
		0.931269, 0.357101, 0.072230,
		29.483528, 36.923759, 31.856134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880882, 37.317051, 31.361708>,  <28.831640, 36.673786, 31.805573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880882, 37.317051, 31.361708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244753, 37.156841, 31.405642>,  <29.463076, 37.060715, 31.432001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244753, 37.156841, 31.405642>,  <28.880882, 37.317051, 31.361708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244753, 37.156841, 31.405642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086886, -0.075070, -0.993386,
		0.406124, 0.913204, -0.033489,
		0.909678, -0.400528, 0.109833,
		29.517656, 37.036682, 31.438591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263273, 37.632843, 30.880966>,  <28.880882, 37.317051, 31.361708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263273, 37.632843, 30.880966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.439571, 37.282490, 30.959526>,  <29.545351, 37.072277, 31.006662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.439571, 37.282490, 30.959526>,  <29.263273, 37.632843, 30.880966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439571, 37.282490, 30.959526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195369, -0.119946, -0.973367,
		0.876113, 0.467378, 0.118255,
		0.440746, -0.875883, 0.196397,
		29.571795, 37.019726, 31.018446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857847, 37.616379, 30.306814>,  <29.263273, 37.632843, 30.880966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857847, 37.616379, 30.306814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845903, 37.243984, 30.452345>,  <29.838737, 37.020546, 30.539663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845903, 37.243984, 30.452345>,  <29.857847, 37.616379, 30.306814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845903, 37.243984, 30.452345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231618, -0.360527, -0.903534,
		0.972349, 0.057292, 0.226398,
		-0.029858, -0.930988, 0.363828,
		29.836946, 36.964687, 30.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456022, 37.301918, 30.196613>,  <29.857847, 37.616379, 30.306814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456022, 37.301918, 30.196613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.200176, 36.996044, 30.227983>,  <30.046669, 36.812519, 30.246805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.200176, 36.996044, 30.227983>,  <30.456022, 37.301918, 30.196613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200176, 36.996044, 30.227983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387843, -0.409117, -0.825955,
		0.663678, -0.497879, 0.558255,
		-0.639617, -0.764683, 0.078423,
		30.008291, 36.766640, 30.251511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842031, 36.659164, 30.164057>,  <30.456022, 37.301918, 30.196613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842031, 36.659164, 30.164057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461990, 36.584255, 30.064274>,  <30.233965, 36.539310, 30.004404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461990, 36.584255, 30.064274>,  <30.842031, 36.659164, 30.164057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461990, 36.584255, 30.064274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308973, -0.674891, -0.670118,
		-0.042860, -0.713758, 0.699080,
		-0.950104, -0.187275, -0.249458,
		30.176958, 36.528072, 29.989437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878109, 36.042801, 29.825119>,  <30.842031, 36.659164, 30.164057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878109, 36.042801, 29.825119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501791, 36.144070, 29.734959>,  <30.275999, 36.204830, 29.680862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501791, 36.144070, 29.734959>,  <30.878109, 36.042801, 29.825119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501791, 36.144070, 29.734959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070172, -0.505080, -0.860215,
		-0.331630, -0.825104, 0.457412,
		-0.940796, 0.253175, -0.225399,
		30.219553, 36.220024, 29.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522413, 35.403519, 29.616205>,  <30.878109, 36.042801, 29.825119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522413, 35.403519, 29.616205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345282, 35.715061, 29.438540>,  <30.239002, 35.901989, 29.331940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345282, 35.715061, 29.438540>,  <30.522413, 35.403519, 29.616205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345282, 35.715061, 29.438540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204552, -0.394562, -0.895812,
		-0.872962, -0.487545, 0.015406,
		-0.442827, 0.778859, -0.444165,
		30.212433, 35.948719, 29.305290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151831, 35.050514, 29.135899>,  <30.522413, 35.403519, 29.616205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151831, 35.050514, 29.135899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.179356, 35.429882, 29.012114>,  <30.195871, 35.657501, 28.937843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.179356, 35.429882, 29.012114>,  <30.151831, 35.050514, 29.135899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179356, 35.429882, 29.012114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059145, -0.313529, -0.947735,
		-0.995875, 0.046913, -0.077670,
		0.068813, 0.948419, -0.309461,
		30.199999, 35.714409, 28.919275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645624, 35.235588, 28.653414>,  <30.151831, 35.050514, 29.135899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645624, 35.235588, 28.653414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935362, 35.501553, 28.580503>,  <30.109203, 35.661129, 28.536757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935362, 35.501553, 28.580503>,  <29.645624, 35.235588, 28.653414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935362, 35.501553, 28.580503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062420, -0.326544, -0.943119,
		-0.686609, 0.671763, -0.278033,
		0.724343, 0.664908, -0.182276,
		30.152664, 35.701027, 28.525820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520859, 35.498173, 27.906046>,  <29.645624, 35.235588, 28.653414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520859, 35.498173, 27.906046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892525, 35.618523, 27.991959>,  <30.115524, 35.690731, 28.043507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892525, 35.618523, 27.991959>,  <29.520859, 35.498173, 27.906046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892525, 35.618523, 27.991959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299226, -0.270964, -0.914900,
		-0.217070, 0.914360, -0.341798,
		0.929163, 0.300872, 0.214783,
		30.171274, 35.708786, 28.056393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731468, 35.823147, 27.242805>,  <29.520859, 35.498173, 27.906046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731468, 35.823147, 27.242805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063992, 35.784595, 27.461763>,  <30.263506, 35.761463, 27.593138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063992, 35.784595, 27.461763>,  <29.731468, 35.823147, 27.242805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063992, 35.784595, 27.461763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509681, -0.260666, -0.819926,
		0.221710, 0.960606, -0.167572,
		0.831306, -0.096377, 0.547395,
		30.313383, 35.755684, 27.625982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312901, 36.288380, 26.982058>,  <29.731468, 35.823147, 27.242805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312901, 36.288380, 26.982058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.479956, 35.987000, 27.185192>,  <30.580189, 35.806171, 27.307074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.479956, 35.987000, 27.185192>,  <30.312901, 36.288380, 26.982058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479956, 35.987000, 27.185192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516882, -0.262659, -0.814766,
		0.747270, 0.602769, 0.279746,
		0.417637, -0.753446, 0.507837,
		30.605247, 35.760967, 27.337543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932787, 36.207722, 26.706703>,  <30.312901, 36.288380, 26.982058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932787, 36.207722, 26.706703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882263, 35.852257, 26.883034>,  <30.851948, 35.638977, 26.988832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882263, 35.852257, 26.883034>,  <30.932787, 36.207722, 26.706703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882263, 35.852257, 26.883034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484985, -0.442976, -0.754030,
		0.865353, 0.118552, 0.486939,
		-0.126311, -0.888660, 0.440827,
		30.844370, 35.585659, 27.015282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633833, 35.812706, 26.607498>,  <30.932787, 36.207722, 26.706703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633833, 35.812706, 26.607498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314646, 35.578979, 26.666578>,  <31.123133, 35.438744, 26.702026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314646, 35.578979, 26.666578>,  <31.633833, 35.812706, 26.607498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314646, 35.578979, 26.666578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271806, -0.567624, -0.777126,
		0.537929, -0.579976, 0.611768,
		-0.797968, -0.584321, 0.147701,
		31.075254, 35.403683, 26.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902733, 35.043331, 26.736078>,  <31.633833, 35.812706, 26.607498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902733, 35.043331, 26.736078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540792, 35.048851, 26.565878>,  <31.323627, 35.052162, 26.463758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540792, 35.048851, 26.565878>,  <31.902733, 35.043331, 26.736078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540792, 35.048851, 26.565878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340616, -0.576103, -0.743025,
		-0.255385, -0.817261, 0.516588,
		-0.904853, 0.013799, -0.425500,
		31.269337, 35.052990, 26.438229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409435, 34.460884, 26.724447>,  <31.902733, 35.043331, 26.736078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409435, 34.460884, 26.724447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792286, 34.576607, 26.718611>,  <33.021996, 34.646042, 26.715109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792286, 34.576607, 26.718611>,  <32.409435, 34.460884, 26.724447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792286, 34.576607, 26.718611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144391, 0.520143, 0.841785,
		0.251123, -0.803588, 0.539615,
		0.957125, 0.289307, -0.014589,
		33.079422, 34.663399, 26.714233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688446, 34.271374, 27.486790>,  <32.409435, 34.460884, 26.724447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688446, 34.271374, 27.486790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928856, 34.532505, 27.302361>,  <33.073101, 34.689182, 27.191702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928856, 34.532505, 27.302361>,  <32.688446, 34.271374, 27.486790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928856, 34.532505, 27.302361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019114, 0.588473, 0.808291,
		0.799003, -0.476988, 0.366164,
		0.601022, 0.652826, -0.461075,
		33.109161, 34.728352, 27.164038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305046, 34.421547, 27.866844>,  <32.688446, 34.271374, 27.486790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305046, 34.421547, 27.866844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307076, 34.755333, 27.646429>,  <33.308292, 34.955605, 27.514179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307076, 34.755333, 27.646429>,  <33.305046, 34.421547, 27.866844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307076, 34.755333, 27.646429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284420, 0.527083, 0.800806,
		0.958687, -0.160788, -0.234665,
		0.005072, 0.834465, -0.551038,
		33.308598, 35.005672, 27.481117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883926, 34.676460, 28.058371>,  <33.305046, 34.421547, 27.866844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883926, 34.676460, 28.058371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655964, 34.971107, 27.912708>,  <33.519188, 35.147896, 27.825310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655964, 34.971107, 27.912708>,  <33.883926, 34.676460, 28.058371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655964, 34.971107, 27.912708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024202, 0.427929, 0.903488,
		0.821355, 0.523714, -0.226051,
		-0.569903, 0.736614, -0.364157,
		33.484993, 35.192093, 27.803461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213337, 35.246174, 28.257002>,  <33.883926, 34.676460, 28.058371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213337, 35.246174, 28.257002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842167, 35.384327, 28.200909>,  <33.619465, 35.467216, 28.167253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842167, 35.384327, 28.200909>,  <34.213337, 35.246174, 28.257002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842167, 35.384327, 28.200909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003424, 0.368286, 0.929706,
		0.372749, 0.863179, -0.340560,
		-0.927926, 0.345381, -0.140234,
		33.563789, 35.487942, 28.158838>
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
