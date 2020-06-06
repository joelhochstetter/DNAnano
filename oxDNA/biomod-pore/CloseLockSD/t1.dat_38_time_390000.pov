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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.546997, 14.647882, 14.816125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.317997, 14.879178, 15.048635>,  <4.180596, 15.017956, 15.188140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.317997, 14.879178, 15.048635>,  <4.546997, 14.647882, 14.816125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.317997, 14.879178, 15.048635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559577, 0.793732, -0.238460,
		-0.599263, 0.188748, -0.777983,
		-0.572501, 0.578242, 0.581273,
		4.146246, 15.052650, 15.223017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.769696, 15.313018, 14.528718>,  <4.546997, 14.647882, 14.816125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.769696, 15.313018, 14.528718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.585998, 15.432673, 14.863289>,  <4.475780, 15.504467, 15.064032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.585998, 15.432673, 14.863289>,  <4.769696, 15.313018, 14.528718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.585998, 15.432673, 14.863289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387020, 0.914908, -0.114712,
		-0.799569, 0.271034, -0.535939,
		-0.459244, 0.299139, 0.836427,
		4.448225, 15.522415, 15.114217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.339639, 15.926072, 14.300544>,  <4.769696, 15.313018, 14.528718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.339639, 15.926072, 14.300544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.452657, 15.898811, 14.683276>,  <4.520468, 15.882455, 14.912915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.452657, 15.898811, 14.683276>,  <4.339639, 15.926072, 14.300544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.452657, 15.898811, 14.683276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532947, 0.840511, -0.097510,
		-0.797581, 0.537491, 0.273803,
		0.282545, -0.068151, 0.956830,
		4.537421, 15.878366, 14.970325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.906334, 16.322371, 14.706476>,  <4.339639, 15.926072, 14.300544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.906334, 16.322371, 14.706476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.283893, 16.403595, 14.810647>,  <5.510428, 16.452330, 14.873150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.283893, 16.403595, 14.810647>,  <4.906334, 16.322371, 14.706476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.283893, 16.403595, 14.810647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134570, 0.483651, -0.864854,
		-0.301575, 0.851380, 0.429191,
		0.943898, 0.203062, 0.260427,
		5.567062, 16.464514, 14.888775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.119261, 17.055525, 14.689615>,  <4.906334, 16.322371, 14.706476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.119261, 17.055525, 14.689615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.459687, 16.853926, 14.630724>,  <5.663942, 16.732965, 14.595389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.459687, 16.853926, 14.630724>,  <5.119261, 17.055525, 14.689615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.459687, 16.853926, 14.630724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176772, 0.539065, -0.823505,
		0.494411, 0.674829, 0.547871,
		0.851063, -0.503999, -0.147229,
		5.715006, 16.702726, 14.586555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635457, 17.620541, 14.595279>,  <5.119261, 17.055525, 14.689615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635457, 17.620541, 14.595279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.750941, 17.278130, 14.423759>,  <5.820231, 17.072683, 14.320848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.750941, 17.278130, 14.423759>,  <5.635457, 17.620541, 14.595279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.750941, 17.278130, 14.423759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406723, 0.515106, -0.754482,
		0.866732, 0.043424, 0.496881,
		0.288709, -0.856026, -0.428797,
		5.837554, 17.021322, 14.295120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.284335, 17.846640, 14.320771>,  <5.635457, 17.620541, 14.595279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.284335, 17.846640, 14.320771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233091, 17.497240, 14.132903>,  <6.202344, 17.287601, 14.020183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233091, 17.497240, 14.132903>,  <6.284335, 17.846640, 14.320771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.233091, 17.497240, 14.132903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256104, 0.428373, -0.866549,
		0.958122, -0.231298, 0.168827,
		-0.128111, -0.873498, -0.469670,
		6.194658, 17.235191, 13.992002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.704537, 17.882175, 13.765258>,  <6.284335, 17.846640, 14.320771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.704537, 17.882175, 13.765258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.491214, 17.570652, 13.633174>,  <6.363220, 17.383738, 13.553924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.491214, 17.570652, 13.633174>,  <6.704537, 17.882175, 13.765258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.491214, 17.570652, 13.633174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044740, 0.363840, -0.930386,
		0.844737, -0.510956, -0.159195,
		-0.533308, -0.778809, -0.330209,
		6.331222, 17.337009, 13.534111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.075325, 17.589863, 13.163630>,  <6.704537, 17.882175, 13.765258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.075325, 17.589863, 13.163630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689544, 17.491253, 13.125570>,  <6.458075, 17.432087, 13.102735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689544, 17.491253, 13.125570>,  <7.075325, 17.589863, 13.163630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.689544, 17.491253, 13.125570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008438, 0.331160, -0.943537,
		0.264110, -0.910802, -0.317309,
		-0.964456, -0.246520, -0.095148,
		6.400208, 17.417295, 13.097026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982330, 17.024281, 12.538619>,  <7.075325, 17.589863, 13.163630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982330, 17.024281, 12.538619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.638078, 17.220598, 12.592937>,  <6.431527, 17.338388, 12.625527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.638078, 17.220598, 12.592937>,  <6.982330, 17.024281, 12.538619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.638078, 17.220598, 12.592937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033944, 0.210780, -0.976944,
		-0.508100, -0.845396, -0.164744,
		-0.860629, 0.490793, 0.135794,
		6.379889, 17.367836, 12.633675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.621856, 16.874098, 11.976348>,  <6.982330, 17.024281, 12.538619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.621856, 16.874098, 11.976348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.428380, 17.198942, 12.106897>,  <6.312295, 17.393848, 12.185227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.428380, 17.198942, 12.106897>,  <6.621856, 16.874098, 11.976348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.428380, 17.198942, 12.106897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029335, 0.357644, -0.933397,
		-0.874749, -0.461047, -0.149164,
		-0.483688, 0.812112, 0.326374,
		6.283274, 17.442575, 12.204809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.948720, 16.993778, 11.597726>,  <6.621856, 16.874098, 11.976348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.948720, 16.993778, 11.597726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.050651, 17.354088, 11.738391>,  <6.111809, 17.570274, 11.822790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.050651, 17.354088, 11.738391>,  <5.948720, 16.993778, 11.597726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.050651, 17.354088, 11.738391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189776, 0.403183, -0.895225,
		-0.948182, 0.161389, 0.273687,
		0.254826, 0.900775, 0.351663,
		6.127098, 17.624321, 11.843890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.518389, 17.476233, 11.392879>,  <5.948720, 16.993778, 11.597726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.518389, 17.476233, 11.392879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.823356, 17.713400, 11.496546>,  <6.006336, 17.855701, 11.558745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.823356, 17.713400, 11.496546>,  <5.518389, 17.476233, 11.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.823356, 17.713400, 11.496546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108289, 0.511771, -0.852270,
		-0.637961, 0.621720, 0.454389,
		0.762416, 0.592920, 0.259165,
		6.052081, 17.891275, 11.574295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.352662, 18.150261, 11.112874>,  <5.518389, 17.476233, 11.392879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.352662, 18.150261, 11.112874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.738671, 18.218611, 11.192407>,  <5.970276, 18.259621, 11.240127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.738671, 18.218611, 11.192407>,  <5.352662, 18.150261, 11.112874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.738671, 18.218611, 11.192407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047429, 0.632110, -0.773426,
		-0.257842, 0.755804, 0.601895,
		0.965022, 0.170875, 0.198831,
		6.028177, 18.269873, 11.252056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441203, 18.866676, 10.929994>,  <5.352662, 18.150261, 11.112874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441203, 18.866676, 10.929994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.784599, 18.663488, 10.901814>,  <5.990637, 18.541576, 10.884907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.784599, 18.663488, 10.901814>,  <5.441203, 18.866676, 10.929994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.784599, 18.663488, 10.901814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120983, 0.334101, -0.934740,
		0.498355, 0.793942, 0.348278,
		0.858490, -0.507969, -0.070448,
		6.042146, 18.511097, 10.880680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.834726, 19.348927, 10.532954>,  <5.441203, 18.866676, 10.929994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.834726, 19.348927, 10.532954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.004285, 18.986744, 10.541520>,  <6.106020, 18.769434, 10.546659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.004285, 18.986744, 10.541520>,  <5.834726, 19.348927, 10.532954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.004285, 18.986744, 10.541520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188804, 0.065216, -0.979847,
		0.885813, 0.419397, 0.198599,
		0.423897, -0.905457, 0.021414,
		6.131454, 18.715107, 10.547944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.400383, 19.466648, 10.112941>,  <5.834726, 19.348927, 10.532954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.400383, 19.466648, 10.112941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.346778, 19.070301, 10.118890>,  <6.314616, 18.832493, 10.122459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.346778, 19.070301, 10.118890>,  <6.400383, 19.466648, 10.112941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.346778, 19.070301, 10.118890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090027, -0.027119, -0.995570,
		0.986882, -0.132079, 0.092839,
		-0.134012, -0.990868, 0.014872,
		6.306575, 18.773041, 10.123351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.947466, 19.258713, 9.696280>,  <6.400383, 19.466648, 10.112941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.947466, 19.258713, 9.696280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672889, 18.967901, 9.702307>,  <6.508143, 18.793415, 9.705922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672889, 18.967901, 9.702307>,  <6.947466, 19.258713, 9.696280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.672889, 18.967901, 9.702307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090126, -0.105616, -0.990314,
		0.721578, -0.678435, 0.138023,
		-0.686441, -0.727029, 0.015066,
		6.466957, 18.749792, 9.706826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.268591, 18.577749, 9.431620>,  <6.947466, 19.258713, 9.696280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.268591, 18.577749, 9.431620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.871189, 18.567602, 9.387248>,  <6.632748, 18.561514, 9.360625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.871189, 18.567602, 9.387248>,  <7.268591, 18.577749, 9.431620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.871189, 18.567602, 9.387248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112448, -0.069414, -0.991230,
		0.017447, -0.997265, 0.071816,
		-0.993505, -0.025369, -0.110929,
		6.573138, 18.559992, 9.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.242305, 18.260708, 8.778852>,  <7.268591, 18.577749, 9.431620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.242305, 18.260708, 8.778852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.867806, 18.359552, 8.878756>,  <6.643107, 18.418859, 8.938698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.867806, 18.359552, 8.878756>,  <7.242305, 18.260708, 8.778852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.867806, 18.359552, 8.878756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255863, 0.007634, -0.966683,
		-0.240787, -0.968956, 0.056080,
		-0.936246, 0.247114, 0.249758,
		6.586933, 18.433687, 8.953683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.713319, 17.776794, 8.412252>,  <7.242305, 18.260708, 8.778852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.713319, 17.776794, 8.412252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.516173, 18.118887, 8.476331>,  <6.397885, 18.324142, 8.514777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.516173, 18.118887, 8.476331>,  <6.713319, 17.776794, 8.412252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.516173, 18.118887, 8.476331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256880, 0.032883, -0.965884,
		-0.831323, -0.517201, 0.203485,
		-0.492865, 0.855232, 0.160195,
		6.368313, 18.375456, 8.524389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.026633, 17.653980, 8.147130>,  <6.713319, 17.776794, 8.412252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.026633, 17.653980, 8.147130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064775, 18.052151, 8.149573>,  <6.087660, 18.291052, 8.151039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064775, 18.052151, 8.149573>,  <6.026633, 17.653980, 8.147130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.064775, 18.052151, 8.149573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460886, 0.049587, -0.886073,
		-0.882322, 0.081676, 0.463505,
		0.095355, 0.995425, 0.006108,
		6.093381, 18.350779, 8.151405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.421215, 17.875420, 7.878479>,  <6.026633, 17.653980, 8.147130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.421215, 17.875420, 7.878479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.675725, 18.181000, 7.835525>,  <5.828431, 18.364347, 7.809752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.675725, 18.181000, 7.835525>,  <5.421215, 17.875420, 7.878479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.675725, 18.181000, 7.835525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412933, 0.219678, -0.883871,
		-0.651645, 0.606728, 0.455236,
		0.636275, 0.763952, -0.107386,
		5.866608, 18.410185, 7.803308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.995545, 18.408928, 7.731662>,  <5.421215, 17.875420, 7.878479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.995545, 18.408928, 7.731662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.361170, 18.515064, 7.608971>,  <5.580545, 18.578747, 7.535356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.361170, 18.515064, 7.608971>,  <4.995545, 18.408928, 7.731662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.361170, 18.515064, 7.608971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335284, 0.068854, -0.939598,
		-0.228196, 0.961693, 0.151902,
		0.914063, 0.265342, -0.306728,
		5.635389, 18.594667, 7.516952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791396, 18.868336, 7.203696>,  <4.995545, 18.408928, 7.731662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791396, 18.868336, 7.203696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165679, 18.760464, 7.112724>,  <5.390249, 18.695740, 7.058141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165679, 18.760464, 7.112724>,  <4.791396, 18.868336, 7.203696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.165679, 18.760464, 7.112724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267725, -0.123031, -0.955608,
		0.229727, 0.955058, -0.187322,
		0.935708, -0.269679, -0.227430,
		5.446391, 18.679560, 7.044496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.967827, 19.198298, 6.598585>,  <4.791396, 18.868336, 7.203696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.967827, 19.198298, 6.598585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.209208, 18.879683, 6.613419>,  <5.354036, 18.688515, 6.622319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.209208, 18.879683, 6.613419>,  <4.967827, 19.198298, 6.598585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.209208, 18.879683, 6.613419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271976, -0.249319, -0.929445,
		0.749583, 0.550790, -0.367091,
		0.603452, -0.796536, 0.037084,
		5.390244, 18.640722, 6.624544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.333285, 19.145357, 5.957377>,  <4.967827, 19.198298, 6.598585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.333285, 19.145357, 5.957377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.353296, 18.760687, 6.065212>,  <5.365303, 18.529884, 6.129912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.353296, 18.760687, 6.065212>,  <5.333285, 19.145357, 5.957377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.353296, 18.760687, 6.065212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082046, -0.272968, -0.958518,
		0.995372, 0.025834, -0.092558,
		0.050027, -0.961676, 0.269586,
		5.368305, 18.472183, 6.146088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.665237, 18.849337, 5.458509>,  <5.333285, 19.145357, 5.957377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.665237, 18.849337, 5.458509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.438713, 18.564877, 5.625151>,  <5.302799, 18.394201, 5.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.438713, 18.564877, 5.625151>,  <5.665237, 18.849337, 5.458509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.438713, 18.564877, 5.625151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286184, -0.304349, -0.908554,
		0.772912, -0.633748, -0.031164,
		-0.566309, -0.711151, 0.416604,
		5.268820, 18.351532, 5.750132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.843729, 18.126188, 5.088865>,  <5.665237, 18.849337, 5.458509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.843729, 18.126188, 5.088865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.475147, 18.188883, 5.231050>,  <5.253998, 18.226500, 5.316361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.475147, 18.188883, 5.231050>,  <5.843729, 18.126188, 5.088865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.475147, 18.188883, 5.231050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383593, -0.222341, -0.896337,
		-0.061453, -0.962288, 0.265000,
		-0.921455, 0.156735, 0.355463,
		5.198710, 18.235905, 5.337689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.197337, 17.561152, 5.366261>,  <5.843729, 18.126188, 5.088865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.197337, 17.561152, 5.366261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.364440, 17.321774, 5.639710>,  <6.464703, 17.178146, 5.803779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.364440, 17.321774, 5.639710>,  <6.197337, 17.561152, 5.366261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.364440, 17.321774, 5.639710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754539, -0.190614, -0.627962,
		0.506110, 0.778157, 0.371921,
		0.417760, -0.598447, 0.683621,
		6.489769, 17.142239, 5.844796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.910462, 17.745291, 5.420775>,  <6.197337, 17.561152, 5.366261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.910462, 17.745291, 5.420775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.841283, 17.364994, 5.523677>,  <6.799776, 17.136816, 5.585418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.841283, 17.364994, 5.523677>,  <6.910462, 17.745291, 5.420775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.841283, 17.364994, 5.523677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820564, -0.283546, -0.496262,
		0.544760, 0.125266, 0.829183,
		-0.172946, -0.950742, 0.257254,
		6.789400, 17.079771, 5.600853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.520725, 17.311193, 5.812410>,  <6.910462, 17.745291, 5.420775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.520725, 17.311193, 5.812410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.276426, 17.116463, 5.562615>,  <7.129846, 16.999624, 5.412738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.276426, 17.116463, 5.562615>,  <7.520725, 17.311193, 5.812410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.276426, 17.116463, 5.562615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785010, -0.269018, -0.558022,
		0.103663, -0.831040, 0.546467,
		-0.610748, -0.486829, -0.624487,
		7.093201, 16.970413, 5.375269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.067272, 17.828079, 5.752098>,  <7.520725, 17.311193, 5.812410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.067272, 17.828079, 5.752098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.405176, 18.029882, 5.680709>,  <8.607919, 18.150965, 5.637877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.405176, 18.029882, 5.680709>,  <8.067272, 17.828079, 5.752098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.405176, 18.029882, 5.680709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160809, 0.078773, 0.983837,
		0.510414, -0.859805, -0.014585,
		0.844760, 0.504510, -0.178471,
		8.658604, 18.181234, 5.627168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.726286, 17.489143, 6.007391>,  <8.067272, 17.828079, 5.752098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.726286, 17.489143, 6.007391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.785286, 17.884705, 6.000254>,  <8.820685, 18.122042, 5.995971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.785286, 17.884705, 6.000254>,  <8.726286, 17.489143, 6.007391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.785286, 17.884705, 6.000254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216753, -0.014717, 0.976116,
		0.965019, -0.147844, -0.216518,
		0.147499, 0.988901, -0.017844,
		8.829535, 18.181376, 5.994901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.430203, 17.647408, 6.345977>,  <8.726286, 17.489143, 6.007391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.430203, 17.647408, 6.345977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.214684, 17.981550, 6.389571>,  <9.085373, 18.182035, 6.415727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.214684, 17.981550, 6.389571>,  <9.430203, 17.647408, 6.345977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.214684, 17.981550, 6.389571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301058, 0.070106, 0.951025,
		0.786804, 0.545220, -0.289264,
		-0.538798, 0.835356, 0.108983,
		9.053045, 18.232157, 6.422266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851097, 18.203091, 6.531281>,  <9.430203, 17.647408, 6.345977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851097, 18.203091, 6.531281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.477748, 18.258224, 6.663836>,  <9.253738, 18.291306, 6.743370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.477748, 18.258224, 6.663836>,  <9.851097, 18.203091, 6.531281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.477748, 18.258224, 6.663836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343157, 0.072180, 0.936501,
		0.105163, 0.987822, -0.114670,
		-0.933373, 0.137835, 0.331387,
		9.197736, 18.299576, 6.763253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.908004, 18.706017, 7.068417>,  <9.851097, 18.203091, 6.531281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.908004, 18.706017, 7.068417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.550475, 18.538759, 7.133213>,  <9.335958, 18.438404, 7.172090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.550475, 18.538759, 7.133213>,  <9.908004, 18.706017, 7.068417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.550475, 18.538759, 7.133213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174795, 0.007782, 0.984574,
		-0.412954, 0.908347, 0.066134,
		-0.893821, -0.418144, 0.161988,
		9.282329, 18.413317, 7.181809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471170, 19.137554, 7.471405>,  <9.908004, 18.706017, 7.068417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471170, 19.137554, 7.471405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.323398, 18.769068, 7.520200>,  <9.234734, 18.547976, 7.549477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.323398, 18.769068, 7.520200>,  <9.471170, 19.137554, 7.471405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.323398, 18.769068, 7.520200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050074, 0.111347, 0.992519,
		-0.927908, 0.372777, 0.004994,
		-0.369432, -0.921216, 0.121987,
		9.212568, 18.492702, 7.556796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.889899, 19.219475, 8.039194>,  <9.471170, 19.137554, 7.471405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.889899, 19.219475, 8.039194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.991368, 18.833220, 8.016599>,  <9.052250, 18.601465, 8.003041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.991368, 18.833220, 8.016599>,  <8.889899, 19.219475, 8.039194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.991368, 18.833220, 8.016599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015757, -0.054265, 0.998402,
		-0.967162, -0.254157, 0.001449,
		0.253673, -0.965639, -0.056488,
		9.067471, 18.543528, 7.999652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.652094, 18.952362, 8.692371>,  <8.889899, 19.219475, 8.039194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.652094, 18.952362, 8.692371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.873548, 18.641363, 8.573048>,  <9.006420, 18.454763, 8.501453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.873548, 18.641363, 8.573048>,  <8.652094, 18.952362, 8.692371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.873548, 18.641363, 8.573048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129010, -0.433971, 0.891642,
		-0.822706, -0.455159, -0.340566,
		0.553635, -0.777496, -0.298310,
		9.039639, 18.408115, 8.483555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.341811, 18.338652, 8.957087>,  <8.652094, 18.952362, 8.692371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.341811, 18.338652, 8.957087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.725067, 18.236717, 8.904897>,  <8.955021, 18.175556, 8.873583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.725067, 18.236717, 8.904897>,  <8.341811, 18.338652, 8.957087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.725067, 18.236717, 8.904897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017621, -0.507360, 0.861554,
		-0.285755, -0.823191, -0.490613,
		0.958141, -0.254838, -0.130475,
		9.012509, 18.160265, 8.865754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.456441, 17.545334, 9.058199>,  <8.341811, 18.338652, 8.957087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.456441, 17.545334, 9.058199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.801388, 17.739408, 9.116045>,  <9.008356, 17.855854, 9.150753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.801388, 17.739408, 9.116045>,  <8.456441, 17.545334, 9.058199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.801388, 17.739408, 9.116045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176048, -0.555192, 0.812877,
		0.474688, -0.675540, -0.564196,
		0.862368, 0.485189, 0.144616,
		9.060099, 17.884966, 9.159430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.802045, 16.993971, 9.363255>,  <8.456441, 17.545334, 9.058199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.802045, 16.993971, 9.363255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.023582, 17.315472, 9.450192>,  <9.156504, 17.508373, 9.502355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.023582, 17.315472, 9.450192>,  <8.802045, 16.993971, 9.363255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.023582, 17.315472, 9.450192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107531, -0.327898, 0.938573,
		0.825649, -0.496450, -0.268032,
		0.553842, 0.803754, 0.217344,
		9.189734, 17.556599, 9.515396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.457636, 16.770844, 9.751658>,  <8.802045, 16.993971, 9.363255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.457636, 16.770844, 9.751658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.400014, 17.157249, 9.837510>,  <9.365440, 17.389093, 9.889021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.400014, 17.157249, 9.837510>,  <9.457636, 16.770844, 9.751658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.400014, 17.157249, 9.837510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059757, -0.208004, 0.976301,
		0.987764, 0.153468, -0.027762,
		-0.144056, 0.966013, 0.214630,
		9.356797, 17.447054, 9.901899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.044107, 16.921133, 10.230946>,  <9.457636, 16.770844, 9.751658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.044107, 16.921133, 10.230946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767158, 17.205862, 10.278146>,  <9.600987, 17.376699, 10.306466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767158, 17.205862, 10.278146>,  <10.044107, 16.921133, 10.230946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.767158, 17.205862, 10.278146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180717, -0.329406, 0.926732,
		0.698541, 0.620320, 0.356711,
		-0.692374, 0.711824, 0.118001,
		9.559445, 17.419409, 10.313546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216200, 17.002995, 10.918922>,  <10.044107, 16.921133, 10.230946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216200, 17.002995, 10.918922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.867248, 17.173122, 10.822543>,  <9.657876, 17.275200, 10.764715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.867248, 17.173122, 10.822543>,  <10.216200, 17.002995, 10.918922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.867248, 17.173122, 10.822543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333832, -0.158297, 0.929246,
		0.357085, 0.891092, 0.280081,
		-0.872380, 0.425320, -0.240949,
		9.605534, 17.300718, 10.750258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.044692, 17.345598, 11.519793>,  <10.216200, 17.002995, 10.918922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.044692, 17.345598, 11.519793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.698277, 17.318501, 11.321646>,  <9.490429, 17.302242, 11.202758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.698277, 17.318501, 11.321646>,  <10.044692, 17.345598, 11.519793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.698277, 17.318501, 11.321646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483629, -0.137791, 0.864359,
		-0.126813, 0.988142, 0.086568,
		-0.866038, -0.067745, -0.495368,
		9.438466, 17.298178, 11.173036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.575618, 17.697029, 11.931864>,  <10.044692, 17.345598, 11.519793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.575618, 17.697029, 11.931864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363769, 17.444870, 11.704849>,  <9.236659, 17.293575, 11.568641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363769, 17.444870, 11.704849>,  <9.575618, 17.697029, 11.931864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363769, 17.444870, 11.704849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540627, -0.264701, 0.798534,
		-0.653622, 0.729747, -0.200618,
		-0.529624, -0.630399, -0.567535,
		9.204882, 17.255751, 11.534589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907956, 17.675531, 12.197154>,  <9.575618, 17.697029, 11.931864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907956, 17.675531, 12.197154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922076, 17.334784, 11.988129>,  <8.930548, 17.130335, 11.862713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922076, 17.334784, 11.988129>,  <8.907956, 17.675531, 12.197154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.922076, 17.334784, 11.988129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477507, -0.473718, 0.739985,
		-0.877919, 0.223407, -0.423495,
		0.035299, -0.851869, -0.522564,
		8.932666, 17.079224, 11.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.355868, 17.364704, 12.532866>,  <8.907956, 17.675531, 12.197154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.355868, 17.364704, 12.532866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548826, 17.073000, 12.338763>,  <8.664601, 16.897978, 12.222301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548826, 17.073000, 12.338763>,  <8.355868, 17.364704, 12.532866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.548826, 17.073000, 12.338763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199939, -0.631018, 0.749560,
		-0.852830, -0.264563, -0.450208,
		0.482395, -0.729262, -0.485255,
		8.693544, 16.854221, 12.193187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.898649, 16.786602, 12.413306>,  <8.355868, 17.364704, 12.532866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.898649, 16.786602, 12.413306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.265232, 16.628176, 12.390545>,  <8.485182, 16.533119, 12.376888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.265232, 16.628176, 12.390545>,  <7.898649, 16.786602, 12.413306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.265232, 16.628176, 12.390545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232944, -0.643733, 0.728934,
		-0.325337, -0.654781, -0.682215,
		0.916457, -0.396067, -0.056903,
		8.540169, 16.509356, 12.373474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.740718, 16.169489, 12.643702>,  <7.898649, 16.786602, 12.413306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.740718, 16.169489, 12.643702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.139888, 16.179399, 12.667477>,  <8.379390, 16.185345, 12.681742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.139888, 16.179399, 12.667477>,  <7.740718, 16.169489, 12.643702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.139888, 16.179399, 12.667477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034340, -0.576087, 0.816667,
		0.054475, -0.817013, -0.574040,
		0.997924, 0.024775, 0.059439,
		8.439265, 16.186832, 12.685308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.028167, 15.523914, 12.488747>,  <7.740718, 16.169489, 12.643702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.028167, 15.523914, 12.488747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.261067, 15.738774, 12.732862>,  <8.400807, 15.867690, 12.879332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.261067, 15.738774, 12.732862>,  <8.028167, 15.523914, 12.488747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.261067, 15.738774, 12.732862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205977, -0.628702, 0.749871,
		0.786484, -0.562319, -0.255422,
		0.582252, 0.537151, 0.610289,
		8.435743, 15.899920, 12.915949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.242501, 15.037431, 12.939903>,  <8.028167, 15.523914, 12.488747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.242501, 15.037431, 12.939903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.333101, 15.351884, 13.169928>,  <8.387462, 15.540556, 13.307942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.333101, 15.351884, 13.169928>,  <8.242501, 15.037431, 12.939903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.333101, 15.351884, 13.169928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275700, -0.514512, 0.811952,
		0.934177, -0.342452, 0.100200,
		0.226501, 0.786132, 0.575060,
		8.401052, 15.587724, 13.342445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.634113, 14.702559, 13.485435>,  <8.242501, 15.037431, 12.939903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.634113, 14.702559, 13.485435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.513536, 15.061669, 13.613894>,  <8.441191, 15.277135, 13.690969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.513536, 15.061669, 13.613894>,  <8.634113, 14.702559, 13.485435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.513536, 15.061669, 13.613894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096719, -0.363867, 0.926416,
		0.948566, 0.248199, 0.196516,
		-0.301441, 0.897774, 0.321147,
		8.423104, 15.331001, 13.710238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.005751, 14.921988, 14.079647>,  <8.634113, 14.702559, 13.485435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.005751, 14.921988, 14.079647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.674514, 15.143536, 14.114267>,  <8.475772, 15.276464, 14.135039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.674514, 15.143536, 14.114267>,  <9.005751, 14.921988, 14.079647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.674514, 15.143536, 14.114267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083010, -0.273838, 0.958187,
		0.554411, 0.786283, 0.272740,
		-0.828093, 0.553869, 0.086550,
		8.426085, 15.309696, 14.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029929, 15.543131, 14.478212>,  <9.005751, 14.921988, 14.079647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029929, 15.543131, 14.478212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680261, 15.349031, 14.485782>,  <8.470460, 15.232572, 14.490323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680261, 15.349031, 14.485782>,  <9.029929, 15.543131, 14.478212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680261, 15.349031, 14.485782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132998, -0.201752, 0.970365,
		-0.467051, 0.850781, 0.240903,
		-0.874171, -0.485249, 0.018924,
		8.418010, 15.203457, 14.491459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.387328, 15.133810, 14.898037>,  <9.029929, 15.543131, 14.478212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.387328, 15.133810, 14.898037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.634316, 15.168454, 14.585313>,  <9.782510, 15.189240, 14.397678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.634316, 15.168454, 14.585313>,  <9.387328, 15.133810, 14.898037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.634316, 15.168454, 14.585313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776721, -0.224112, 0.588624,
		-0.124232, -0.970707, -0.205656,
		0.617471, 0.086611, -0.781810,
		9.819558, 15.194437, 14.350770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.956015, 14.734636, 15.076199>,  <9.387328, 15.133810, 14.898037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.956015, 14.734636, 15.076199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.067719, 15.013473, 14.812055>,  <10.134743, 15.180775, 14.653568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.067719, 15.013473, 14.812055>,  <9.956015, 14.734636, 15.076199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.067719, 15.013473, 14.812055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801348, 0.209692, 0.560242,
		0.529012, -0.685633, -0.500054,
		0.279263, 0.697092, -0.660360,
		10.151499, 15.222600, 14.613947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.721931, 14.833328, 14.957202>,  <9.956015, 14.734636, 15.076199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.721931, 14.833328, 14.957202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.591457, 15.210096, 14.925223>,  <10.513173, 15.436157, 14.906036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.591457, 15.210096, 14.925223>,  <10.721931, 14.833328, 14.957202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.591457, 15.210096, 14.925223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738867, 0.306791, 0.599962,
		0.589643, 0.136628, -0.796024,
		-0.326185, 0.941919, -0.079947,
		10.493602, 15.492672, 14.901239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241095, 15.271618, 14.666690>,  <10.721931, 14.833328, 14.957202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241095, 15.271618, 14.666690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983777, 15.466112, 14.903248>,  <10.829387, 15.582808, 15.045182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983777, 15.466112, 14.903248>,  <11.241095, 15.271618, 14.666690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.983777, 15.466112, 14.903248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764930, 0.375407, 0.523403,
		0.032483, 0.789078, -0.613434,
		-0.643293, 0.486236, 0.591395,
		10.790789, 15.611983, 15.080667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571042, 15.898277, 14.696315>,  <11.241095, 15.271618, 14.666690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571042, 15.898277, 14.696315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312663, 15.828516, 14.993591>,  <11.157636, 15.786659, 15.171957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312663, 15.828516, 14.993591>,  <11.571042, 15.898277, 14.696315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.312663, 15.828516, 14.993591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676984, 0.319015, 0.663266,
		-0.352765, 0.931565, -0.088000,
		-0.645948, -0.174403, 0.743192,
		11.118878, 15.776196, 15.216549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.390168, 16.555502, 14.910714>,  <11.571042, 15.898277, 14.696315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.390168, 16.555502, 14.910714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397688, 16.240688, 15.157363>,  <11.402200, 16.051800, 15.305352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397688, 16.240688, 15.157363>,  <11.390168, 16.555502, 14.910714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397688, 16.240688, 15.157363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629634, 0.488398, 0.604176,
		-0.776665, 0.376888, 0.504725,
		0.018800, -0.787034, 0.616623,
		11.403328, 16.004578, 15.342350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308287, 16.854183, 15.573501>,  <11.390168, 16.555502, 14.910714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308287, 16.854183, 15.573501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481642, 16.497702, 15.627060>,  <11.585655, 16.283812, 15.659195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481642, 16.497702, 15.627060>,  <11.308287, 16.854183, 15.573501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.481642, 16.497702, 15.627060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683469, 0.421872, 0.595730,
		-0.587405, -0.166668, 0.791945,
		0.433388, -0.891205, 0.133898,
		11.611658, 16.230341, 15.667230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.460094, 16.882092, 16.319435>,  <11.308287, 16.854183, 15.573501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.460094, 16.882092, 16.319435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.697728, 16.616047, 16.138462>,  <11.840308, 16.456421, 16.029879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.697728, 16.616047, 16.138462>,  <11.460094, 16.882092, 16.319435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.697728, 16.616047, 16.138462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801739, 0.443844, 0.400271,
		-0.065415, -0.600526, 0.796925,
		0.594083, -0.665110, -0.452431,
		11.875953, 16.416513, 16.002733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915878, 16.594929, 16.825539>,  <11.460094, 16.882092, 16.319435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915878, 16.594929, 16.825539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114890, 16.494047, 16.493549>,  <12.234297, 16.433519, 16.294355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114890, 16.494047, 16.493549>,  <11.915878, 16.594929, 16.825539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.114890, 16.494047, 16.493549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849200, 0.336830, 0.406701,
		0.176989, -0.907160, 0.381753,
		0.497529, -0.252203, -0.829975,
		12.264149, 16.418386, 16.244556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604336, 16.234613, 17.042982>,  <11.915878, 16.594929, 16.825539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604336, 16.234613, 17.042982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657453, 16.358839, 16.666491>,  <12.689322, 16.433374, 16.440596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657453, 16.358839, 16.666491>,  <12.604336, 16.234613, 17.042982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657453, 16.358839, 16.666491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921738, 0.310417, 0.232465,
		0.364370, -0.898438, -0.245039,
		0.132791, 0.310565, -0.941231,
		12.697289, 16.452009, 16.384121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.139240, 15.881145, 16.780535>,  <12.604336, 16.234613, 17.042982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.139240, 15.881145, 16.780535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104927, 16.220156, 16.571024>,  <13.084339, 16.423561, 16.445318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104927, 16.220156, 16.571024>,  <13.139240, 15.881145, 16.780535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.104927, 16.220156, 16.571024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902552, 0.288750, 0.319409,
		0.421948, -0.445336, -0.789706,
		-0.085783, 0.847525, -0.523776,
		13.079192, 16.474413, 16.413891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748771, 15.906153, 16.528419>,  <13.139240, 15.881145, 16.780535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748771, 15.906153, 16.528419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603056, 16.276094, 16.484711>,  <13.515627, 16.498060, 16.458485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603056, 16.276094, 16.484711>,  <13.748771, 15.906153, 16.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.603056, 16.276094, 16.484711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860826, 0.379170, 0.339425,
		0.355352, 0.029583, -0.934264,
		-0.364286, 0.924854, -0.109273,
		13.493771, 16.553551, 16.451929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.314268, 16.364159, 16.287640>,  <13.748771, 15.906153, 16.528419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.314268, 16.364159, 16.287640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.058678, 16.611273, 16.470964>,  <13.905323, 16.759541, 16.580959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.058678, 16.611273, 16.470964>,  <14.314268, 16.364159, 16.287640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.058678, 16.611273, 16.470964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767051, 0.466959, 0.439979,
		0.057800, 0.632685, -0.772249,
		-0.638977, 0.617786, 0.458312,
		13.866984, 16.796608, 16.608458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565919, 17.024597, 16.028114>,  <14.314268, 16.364159, 16.287640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565919, 17.024597, 16.028114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357910, 17.068642, 16.366924>,  <14.233105, 17.095068, 16.570210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357910, 17.068642, 16.366924>,  <14.565919, 17.024597, 16.028114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357910, 17.068642, 16.366924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771781, 0.485451, 0.410720,
		-0.365964, 0.867302, -0.337427,
		-0.520023, 0.110111, 0.847025,
		14.201903, 17.101675, 16.621033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745012, 17.689240, 16.264372>,  <14.565919, 17.024597, 16.028114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745012, 17.689240, 16.264372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.587722, 17.504055, 16.582125>,  <14.493348, 17.392944, 16.772776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.587722, 17.504055, 16.582125>,  <14.745012, 17.689240, 16.264372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587722, 17.504055, 16.582125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719481, 0.383000, 0.579361,
		-0.572470, 0.799360, 0.182487,
		-0.393226, -0.462962, 0.794380,
		14.469754, 17.365166, 16.820438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632663, 18.188164, 16.639984>,  <14.745012, 17.689240, 16.264372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.632663, 18.188164, 16.639984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612913, 17.873180, 16.885740>,  <14.601063, 17.684191, 17.033194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612913, 17.873180, 16.885740>,  <14.632663, 18.188164, 16.639984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612913, 17.873180, 16.885740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631386, 0.452026, 0.630098,
		-0.773895, 0.419028, 0.474871,
		-0.049375, -0.787456, 0.614390,
		14.598101, 17.636944, 17.070057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575086, 18.518089, 17.316029>,  <14.632663, 18.188164, 16.639984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575086, 18.518089, 17.316029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727086, 18.152130, 17.370529>,  <14.818286, 17.932554, 17.403231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727086, 18.152130, 17.370529>,  <14.575086, 18.518089, 17.316029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727086, 18.152130, 17.370529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709622, 0.382831, 0.591504,
		-0.593327, -0.128084, 0.794706,
		0.380001, -0.914896, 0.136253,
		14.841086, 17.877661, 17.411406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.674713, 18.487377, 18.026152>,  <14.575086, 18.518089, 17.316029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.674713, 18.487377, 18.026152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.895620, 18.189556, 17.876143>,  <15.028165, 18.010864, 17.786137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.895620, 18.189556, 17.876143>,  <14.674713, 18.487377, 18.026152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.895620, 18.189556, 17.876143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737717, 0.226941, 0.635823,
		-0.388296, -0.627806, 0.674601,
		0.552268, -0.744552, -0.375023,
		15.061301, 17.966190, 17.763636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688677, 18.054070, 18.532833>,  <14.674713, 18.487377, 18.026152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688677, 18.054070, 18.532833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023064, 17.995764, 18.321205>,  <15.223696, 17.960779, 18.194229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023064, 17.995764, 18.321205>,  <14.688677, 18.054070, 18.532833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023064, 17.995764, 18.321205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542307, 0.071776, 0.837109,
		-0.084047, -0.986712, 0.139051,
		0.835966, -0.145764, -0.529068,
		15.273853, 17.952034, 18.162485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017299, 17.561462, 18.817907>,  <14.688677, 18.054070, 18.532833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017299, 17.561462, 18.817907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291026, 17.798828, 18.648405>,  <15.455262, 17.941248, 18.546703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291026, 17.798828, 18.648405>,  <15.017299, 17.561462, 18.817907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291026, 17.798828, 18.648405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368978, 0.219445, 0.903161,
		0.628939, -0.774406, -0.068787,
		0.684318, 0.593414, -0.423756,
		15.496322, 17.976852, 18.521278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694107, 17.478750, 19.136248>,  <15.017299, 17.561462, 18.817907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694107, 17.478750, 19.136248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.676083, 17.847647, 18.982656>,  <15.665268, 18.068985, 18.890501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.676083, 17.847647, 18.982656>,  <15.694107, 17.478750, 19.136248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676083, 17.847647, 18.982656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384036, 0.370825, 0.845580,
		0.922218, -0.109358, -0.370884,
		-0.045062, 0.922241, -0.383979,
		15.662564, 18.124319, 18.867462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369061, 17.691092, 19.287064>,  <15.694107, 17.478750, 19.136248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369061, 17.691092, 19.287064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111309, 17.991886, 19.231508>,  <15.956658, 18.172363, 19.198175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111309, 17.991886, 19.231508>,  <16.369061, 17.691092, 19.287064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111309, 17.991886, 19.231508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401961, 0.487587, 0.775040,
		0.650541, 0.443591, -0.616461,
		-0.644379, 0.751988, -0.138888,
		15.917995, 18.217484, 19.189842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701609, 18.244667, 19.663519>,  <16.369061, 17.691092, 19.287064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701609, 18.244667, 19.663519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.345020, 18.403313, 19.575903>,  <16.131067, 18.498499, 19.523333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.345020, 18.403313, 19.575903>,  <16.701609, 18.244667, 19.663519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.345020, 18.403313, 19.575903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111041, 0.659958, 0.743051,
		0.439261, 0.638086, -0.632374,
		-0.891471, 0.396613, -0.219040,
		16.077579, 18.522297, 19.510191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697325, 18.981867, 19.759773>,  <16.701609, 18.244667, 19.663519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697325, 18.981867, 19.759773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314714, 18.870764, 19.795338>,  <16.085148, 18.804102, 19.816677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314714, 18.870764, 19.795338>,  <16.697325, 18.981867, 19.759773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314714, 18.870764, 19.795338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088655, 0.567370, 0.818677,
		-0.277840, 0.775204, -0.567330,
		-0.956528, -0.277757, 0.088912,
		16.027756, 18.787437, 19.822012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334932, 19.588335, 20.014200>,  <16.697325, 18.981867, 19.759773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334932, 19.588335, 20.014200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.047674, 19.315908, 20.071356>,  <15.875319, 19.152452, 20.105650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.047674, 19.315908, 20.071356>,  <16.334932, 19.588335, 20.014200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047674, 19.315908, 20.071356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281767, 0.472329, 0.835172,
		-0.636299, 0.559512, -0.531102,
		-0.718144, -0.681067, 0.142891,
		15.832231, 19.111589, 20.114223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748608, 19.929188, 20.051489>,  <16.334932, 19.588335, 20.014200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748608, 19.929188, 20.051489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.648709, 19.594887, 20.247099>,  <15.588771, 19.394306, 20.364464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.648709, 19.594887, 20.247099>,  <15.748608, 19.929188, 20.051489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648709, 19.594887, 20.247099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442434, 0.547717, 0.710111,
		-0.861324, -0.039014, -0.506555,
		-0.249745, -0.835753, 0.489023,
		15.573786, 19.344160, 20.393806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034913, 20.047173, 20.362846>,  <15.748608, 19.929188, 20.051489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034913, 20.047173, 20.362846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.232713, 19.765160, 20.566179>,  <15.351393, 19.595951, 20.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.232713, 19.765160, 20.566179>,  <15.034913, 20.047173, 20.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232713, 19.765160, 20.566179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318694, 0.397038, 0.860695,
		-0.808644, -0.587615, -0.028354,
		0.494499, -0.705031, 0.508331,
		15.381063, 19.553650, 20.718679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.519348, 19.768608, 20.825415>,  <15.034913, 20.047173, 20.362846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.519348, 19.768608, 20.825415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872125, 19.663721, 20.982092>,  <15.083791, 19.600788, 21.076097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872125, 19.663721, 20.982092>,  <14.519348, 19.768608, 20.825415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872125, 19.663721, 20.982092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297090, 0.335916, 0.893811,
		-0.365950, -0.904655, 0.218356,
		0.881940, -0.262219, 0.391692,
		15.136706, 19.585056, 21.099600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397345, 19.419996, 21.429993>,  <14.519348, 19.768608, 20.825415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397345, 19.419996, 21.429993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772487, 19.553421, 21.468283>,  <14.997572, 19.633476, 21.491257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772487, 19.553421, 21.468283>,  <14.397345, 19.419996, 21.429993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772487, 19.553421, 21.468283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244432, 0.439164, 0.864516,
		0.246328, -0.834190, 0.493406,
		0.937857, 0.333559, 0.095724,
		15.053843, 19.653490, 21.497000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588871, 19.266190, 22.137632>,  <14.397345, 19.419996, 21.429993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588871, 19.266190, 22.137632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863851, 19.533648, 22.024263>,  <15.028838, 19.694122, 21.956242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863851, 19.533648, 22.024263>,  <14.588871, 19.266190, 22.137632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863851, 19.533648, 22.024263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090825, 0.308044, 0.947027,
		0.720531, -0.676775, 0.151035,
		0.687449, 0.668644, -0.283423,
		15.070086, 19.734241, 21.939236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139699, 19.237114, 22.605627>,  <14.588871, 19.266190, 22.137632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139699, 19.237114, 22.605627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.146325, 19.603384, 22.444998>,  <15.150301, 19.823147, 22.348619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.146325, 19.603384, 22.444998>,  <15.139699, 19.237114, 22.605627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.146325, 19.603384, 22.444998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132621, 0.396067, 0.908594,
		0.991028, -0.068308, -0.114877,
		0.016565, 0.915677, -0.401573,
		15.151295, 19.878088, 22.324526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.591502, 19.547344, 23.068335>,  <15.139699, 19.237114, 22.605627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.591502, 19.547344, 23.068335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425282, 19.855350, 22.874676>,  <15.325550, 20.040154, 22.758480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425282, 19.855350, 22.874676>,  <15.591502, 19.547344, 23.068335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425282, 19.855350, 22.874676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025026, 0.541758, 0.840162,
		0.909226, 0.337013, -0.244398,
		-0.415550, 0.770013, -0.484146,
		15.300617, 20.086355, 22.729431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038389, 20.165491, 23.329590>,  <15.591502, 19.547344, 23.068335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038389, 20.165491, 23.329590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.697154, 20.291334, 23.163092>,  <15.492413, 20.366840, 23.063192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.697154, 20.291334, 23.163092>,  <16.038389, 20.165491, 23.329590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697154, 20.291334, 23.163092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037807, 0.758394, 0.650698,
		0.520394, 0.570841, -0.635083,
		-0.853089, 0.314609, -0.416246,
		15.441227, 20.385717, 23.038218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109118, 20.906748, 23.208363>,  <16.038389, 20.165491, 23.329590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109118, 20.906748, 23.208363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720633, 20.827950, 23.261932>,  <15.487541, 20.780670, 23.294075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720633, 20.827950, 23.261932>,  <16.109118, 20.906748, 23.208363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720633, 20.827950, 23.261932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070403, 0.774483, 0.628664,
		-0.227567, 0.601139, -0.766058,
		-0.971214, -0.196997, 0.133925,
		15.429268, 20.768850, 23.302111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621665, 21.358786, 22.901518>,  <16.109118, 20.906748, 23.208363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621665, 21.358786, 22.901518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524019, 21.207708, 23.258787>,  <15.465432, 21.117062, 23.473148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524019, 21.207708, 23.258787>,  <15.621665, 21.358786, 22.901518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524019, 21.207708, 23.258787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295012, 0.848459, 0.439414,
		-0.923784, 0.370764, -0.095697,
		-0.244114, -0.377692, 0.893173,
		15.450786, 21.094400, 23.526739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.154723, 21.918783, 23.193571>,  <15.621665, 21.358786, 22.901518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.154723, 21.918783, 23.193571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.313317, 21.700827, 23.489109>,  <15.408474, 21.570053, 23.666431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.313317, 21.700827, 23.489109>,  <15.154723, 21.918783, 23.193571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313317, 21.700827, 23.489109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201447, 0.836831, 0.509050,
		-0.895666, -0.052993, 0.441558,
		0.396486, -0.544890, 0.738846,
		15.432263, 21.537359, 23.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833418, 22.226812, 23.829090>,  <15.154723, 21.918783, 23.193571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833418, 22.226812, 23.829090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165403, 22.024759, 23.923748>,  <15.364594, 21.903526, 23.980543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165403, 22.024759, 23.923748>,  <14.833418, 22.226812, 23.829090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165403, 22.024759, 23.923748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360713, 0.809606, 0.463059,
		-0.425497, -0.298960, 0.854152,
		0.829963, -0.505134, 0.236646,
		15.414392, 21.873219, 23.994741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967521, 22.490685, 24.431501>,  <14.833418, 22.226812, 23.829090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967521, 22.490685, 24.431501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315714, 22.337851, 24.307392>,  <15.524630, 22.246151, 24.232927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315714, 22.337851, 24.307392>,  <14.967521, 22.490685, 24.431501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315714, 22.337851, 24.307392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484313, 0.777301, 0.401553,
		0.087749, -0.499814, 0.861676,
		0.870483, -0.382085, -0.310273,
		15.576859, 22.223225, 24.214310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296938, 22.395350, 25.008696>,  <14.967521, 22.490685, 24.431501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296938, 22.395350, 25.008696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602110, 22.359337, 24.752623>,  <15.785213, 22.337729, 24.598980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602110, 22.359337, 24.752623>,  <15.296938, 22.395350, 25.008696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602110, 22.359337, 24.752623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539223, 0.634876, 0.553327,
		0.356617, -0.767351, 0.532914,
		0.762930, -0.090033, -0.640181,
		15.830989, 22.332327, 24.560568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866488, 22.299612, 25.475002>,  <15.296938, 22.395350, 25.008696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866488, 22.299612, 25.475002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010773, 22.431473, 25.126011>,  <16.097343, 22.510590, 24.916616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010773, 22.431473, 25.126011>,  <15.866488, 22.299612, 25.475002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010773, 22.431473, 25.126011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572152, 0.660548, 0.486126,
		0.736565, -0.674541, 0.049657,
		0.360713, 0.329652, -0.872477,
		16.118986, 22.530369, 24.864267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867979, 21.657293, 25.117069>,  <15.866488, 22.299612, 25.475002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867979, 21.657293, 25.117069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265545, 21.623314, 25.145123>,  <16.504084, 21.602926, 25.161955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265545, 21.623314, 25.145123>,  <15.867979, 21.657293, 25.117069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265545, 21.623314, 25.145123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046149, 0.257021, 0.965303,
		-0.100028, -0.962665, 0.251537,
		0.993914, -0.084949, 0.070135,
		16.563719, 21.597830, 25.166162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058573, 21.213684, 25.673544>,  <15.867979, 21.657293, 25.117069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058573, 21.213684, 25.673544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.365025, 21.467081, 25.630205>,  <16.548895, 21.619120, 25.604202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.365025, 21.467081, 25.630205>,  <16.058573, 21.213684, 25.673544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365025, 21.467081, 25.630205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076889, 0.257720, 0.963156,
		0.638074, -0.729568, 0.246155,
		0.766127, 0.633491, -0.108348,
		16.594862, 21.657127, 25.597700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641136, 21.080198, 26.240149>,  <16.058573, 21.213684, 25.673544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641136, 21.080198, 26.240149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661589, 21.461887, 26.122271>,  <16.673861, 21.690901, 26.051544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661589, 21.461887, 26.122271>,  <16.641136, 21.080198, 26.240149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661589, 21.461887, 26.122271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069943, 0.290934, 0.954183,
		0.996240, -0.069398, -0.051866,
		0.051129, 0.954223, -0.294694,
		16.676928, 21.748154, 26.033863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142757, 21.440485, 26.628168>,  <16.641136, 21.080198, 26.240149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142757, 21.440485, 26.628168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941374, 21.755669, 26.486382>,  <16.820543, 21.944778, 26.401310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941374, 21.755669, 26.486382>,  <17.142757, 21.440485, 26.628168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941374, 21.755669, 26.486382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107126, 0.464016, 0.879325,
		0.857351, 0.404734, -0.318025,
		-0.503461, 0.787959, -0.354467,
		16.790335, 21.992056, 26.380041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523092, 21.998724, 27.014616>,  <17.142757, 21.440485, 26.628168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523092, 21.998724, 27.014616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.204800, 22.174305, 26.847700>,  <17.013824, 22.279654, 26.747551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.204800, 22.174305, 26.847700>,  <17.523092, 21.998724, 27.014616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204800, 22.174305, 26.847700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072257, 0.615272, 0.784997,
		0.601324, 0.654799, -0.457874,
		-0.795732, 0.438952, -0.417291,
		16.966080, 22.305990, 26.722513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618303, 22.759027, 26.973433>,  <17.523092, 21.998724, 27.014616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618303, 22.759027, 26.973433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.224470, 22.689760, 26.963591>,  <16.988171, 22.648199, 26.957685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.224470, 22.689760, 26.963591>,  <17.618303, 22.759027, 26.973433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224470, 22.689760, 26.963591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122029, 0.579298, 0.805930,
		-0.125308, 0.796509, -0.591500,
		-0.984585, -0.173170, -0.024607,
		16.929094, 22.637810, 26.956209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232664, 23.375273, 27.120262>,  <17.618303, 22.759027, 26.973433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232664, 23.375273, 27.120262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968657, 23.086668, 27.203978>,  <16.810253, 22.913506, 27.254206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968657, 23.086668, 27.203978>,  <17.232664, 23.375273, 27.120262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968657, 23.086668, 27.203978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298418, 0.507461, 0.808350,
		-0.689438, 0.471070, -0.550244,
		-0.660017, -0.721510, 0.209287,
		16.770651, 22.870214, 27.266764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634523, 23.723608, 27.282679>,  <17.232664, 23.375273, 27.120262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634523, 23.723608, 27.282679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570532, 23.355850, 27.426413>,  <16.532137, 23.135197, 27.512653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570532, 23.355850, 27.426413>,  <16.634523, 23.723608, 27.282679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570532, 23.355850, 27.426413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305521, 0.392267, 0.867631,
		-0.938650, 0.029019, -0.343649,
		-0.159980, -0.919394, 0.359336,
		16.522537, 23.080032, 27.534214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919001, 23.685663, 27.699392>,  <16.634523, 23.723608, 27.282679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919001, 23.685663, 27.699392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198019, 23.424274, 27.816969>,  <16.365431, 23.267441, 27.887514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198019, 23.424274, 27.816969>,  <15.919001, 23.685663, 27.699392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198019, 23.424274, 27.816969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230752, 0.183504, 0.955552,
		-0.678367, -0.734370, -0.022787,
		0.697547, -0.653473, 0.293940,
		16.407284, 23.228233, 27.905151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723845, 23.130369, 28.163332>,  <15.919001, 23.685663, 27.699392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723845, 23.130369, 28.163332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104958, 23.240334, 28.214920>,  <16.333624, 23.306313, 28.245872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104958, 23.240334, 28.214920>,  <15.723845, 23.130369, 28.163332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104958, 23.240334, 28.214920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175746, 0.152861, 0.972495,
		0.247641, -0.949239, 0.193958,
		0.952779, 0.274917, 0.128970,
		16.390791, 23.322807, 28.253611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094351, 22.940079, 28.869801>,  <15.723845, 23.130369, 28.163332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094351, 22.940079, 28.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235567, 23.275137, 28.703087>,  <16.320297, 23.476171, 28.603058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235567, 23.275137, 28.703087>,  <16.094351, 22.940079, 28.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235567, 23.275137, 28.703087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238053, 0.511232, 0.825816,
		0.904816, -0.192330, 0.379891,
		0.353042, 0.837646, -0.416786,
		16.341480, 23.526430, 28.578051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585972, 23.217281, 29.315910>,  <16.094351, 22.940079, 28.869801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.585972, 23.217281, 29.315910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377970, 23.477869, 29.094936>,  <16.253168, 23.634222, 28.962353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377970, 23.477869, 29.094936>,  <16.585972, 23.217281, 29.315910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377970, 23.477869, 29.094936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347367, 0.429567, 0.833552,
		0.780340, 0.625349, 0.002921,
		-0.520006, 0.651469, -0.552434,
		16.221968, 23.673309, 28.929207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633400, 23.825567, 29.561867>,  <16.585972, 23.217281, 29.315910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633400, 23.825567, 29.561867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282387, 23.896450, 29.383636>,  <16.071779, 23.938980, 29.276699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282387, 23.896450, 29.383636>,  <16.633400, 23.825567, 29.561867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282387, 23.896450, 29.383636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258043, 0.608691, 0.750273,
		0.404171, 0.773365, -0.488419,
		-0.877531, 0.177205, -0.445576,
		16.019127, 23.949612, 29.249964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858566, 24.330429, 28.917337>,  <16.633400, 23.825567, 29.561867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858566, 24.330429, 28.917337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153706, 24.271936, 29.180910>,  <17.330790, 24.236841, 29.339054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153706, 24.271936, 29.180910>,  <16.858566, 24.330429, 28.917337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153706, 24.271936, 29.180910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139184, -0.988231, -0.063455,
		0.660458, -0.044893, -0.749520,
		0.737850, -0.146230, 0.658934,
		17.375061, 24.228067, 29.378590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265669, 23.786764, 28.701809>,  <16.858566, 24.330429, 28.917337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265669, 23.786764, 28.701809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286877, 23.816513, 29.100138>,  <17.299603, 23.834362, 29.339134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286877, 23.816513, 29.100138>,  <17.265669, 23.786764, 28.701809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286877, 23.816513, 29.100138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051970, -0.995666, 0.077126,
		0.997240, -0.055842, -0.048926,
		0.053021, 0.074370, 0.995820,
		17.302782, 23.838823, 29.398884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726898, 23.369497, 29.017715>,  <17.265669, 23.786764, 28.701809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726898, 23.369497, 29.017715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.473351, 23.434582, 29.320168>,  <17.321222, 23.473633, 29.501638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.473351, 23.434582, 29.320168>,  <17.726898, 23.369497, 29.017715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473351, 23.434582, 29.320168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050776, -0.984266, 0.169239,
		0.771773, 0.068882, 0.632157,
		-0.633868, 0.162713, 0.756132,
		17.283190, 23.483395, 29.547007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927109, 23.055862, 29.660934>,  <17.726898, 23.369497, 29.017715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927109, 23.055862, 29.660934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527267, 23.049919, 29.651356>,  <17.287363, 23.046352, 29.645609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527267, 23.049919, 29.651356>,  <17.927109, 23.055862, 29.660934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527267, 23.049919, 29.651356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021820, -0.945813, -0.323976,
		-0.017837, -0.324370, 0.945762,
		-0.999603, -0.014858, -0.023949,
		17.227386, 23.045462, 29.644171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776606, 22.433596, 29.950493>,  <17.927109, 23.055862, 29.660934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776606, 22.433596, 29.950493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.455750, 22.555696, 29.745207>,  <17.263235, 22.628958, 29.622036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.455750, 22.555696, 29.745207>,  <17.776606, 22.433596, 29.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.455750, 22.555696, 29.745207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119588, -0.924172, -0.362773,
		-0.585035, -0.229622, 0.777822,
		-0.802143, 0.305253, -0.513213,
		17.215107, 22.647272, 29.591242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160860, 22.075930, 30.207008>,  <17.776606, 22.433596, 29.950493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160860, 22.075930, 30.207008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139208, 22.180601, 29.821554>,  <17.126217, 22.243404, 29.590282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139208, 22.180601, 29.821554>,  <17.160860, 22.075930, 30.207008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139208, 22.180601, 29.821554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307238, -0.922598, -0.233278,
		-0.950092, 0.283438, 0.130338,
		-0.054129, 0.261680, -0.963636,
		17.122969, 22.259106, 29.532463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557030, 21.660917, 29.937933>,  <17.160860, 22.075930, 30.207008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557030, 21.660917, 29.937933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793320, 21.747242, 29.626942>,  <16.935093, 21.799036, 29.440348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793320, 21.747242, 29.626942>,  <16.557030, 21.660917, 29.937933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793320, 21.747242, 29.626942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066369, -0.947306, -0.313380,
		-0.804140, 0.236721, -0.545273,
		0.590724, 0.215812, -0.777477,
		16.970537, 21.811985, 29.393698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.159231, 21.472652, 29.321140>,  <16.557030, 21.660917, 29.937933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.159231, 21.472652, 29.321140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551071, 21.471947, 29.240757>,  <16.786175, 21.471523, 29.192528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551071, 21.471947, 29.240757>,  <16.159231, 21.472652, 29.321140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551071, 21.471947, 29.240757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074360, -0.932170, -0.354301,
		-0.186700, 0.362016, -0.913284,
		0.979599, -0.001763, -0.200956,
		16.844952, 21.471418, 29.180470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078829, 21.181969, 28.735945>,  <16.159231, 21.472652, 29.321140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078829, 21.181969, 28.735945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474197, 21.162571, 28.793459>,  <16.711418, 21.150932, 28.827967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474197, 21.162571, 28.793459>,  <16.078829, 21.181969, 28.735945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474197, 21.162571, 28.793459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016847, -0.906629, -0.421592,
		0.150804, 0.419132, -0.895314,
		0.988420, -0.048494, 0.143784,
		16.770723, 21.148022, 28.836594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446892, 21.195854, 28.059895>,  <16.078829, 21.181969, 28.735945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446892, 21.195854, 28.059895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679871, 21.017622, 28.331841>,  <16.819658, 20.910683, 28.495008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679871, 21.017622, 28.331841>,  <16.446892, 21.195854, 28.059895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679871, 21.017622, 28.331841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017183, -0.829441, -0.558330,
		0.812687, 0.336880, -0.475450,
		0.582448, -0.445578, 0.679864,
		16.854605, 20.883949, 28.535799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854687, 20.860176, 27.597723>,  <16.446892, 21.195854, 28.059895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854687, 20.860176, 27.597723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917484, 20.687914, 27.953226>,  <16.955164, 20.584557, 28.166527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917484, 20.687914, 27.953226>,  <16.854687, 20.860176, 27.597723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917484, 20.687914, 27.953226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056314, -0.902356, -0.427297,
		0.985993, 0.017034, -0.165917,
		0.156995, -0.430655, 0.888757,
		16.964582, 20.558718, 28.219852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375484, 20.390686, 27.524992>,  <16.854687, 20.860176, 27.597723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375484, 20.390686, 27.524992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.135614, 20.282904, 27.826397>,  <16.991692, 20.218233, 28.007240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.135614, 20.282904, 27.826397>,  <17.375484, 20.390686, 27.524992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.135614, 20.282904, 27.826397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197001, -0.862919, -0.465362,
		0.775616, -0.427509, 0.464388,
		-0.599675, -0.269457, 0.753513,
		16.955711, 20.202066, 28.052450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355421, 19.693884, 27.461737>,  <17.375484, 20.390686, 27.524992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355421, 19.693884, 27.461737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047333, 19.733562, 27.713743>,  <16.862480, 19.757370, 27.864948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047333, 19.733562, 27.713743>,  <17.355421, 19.693884, 27.461737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047333, 19.733562, 27.713743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370911, -0.873268, -0.315954,
		0.518833, -0.477035, 0.709401,
		-0.770219, 0.099197, 0.630018,
		16.816267, 19.763321, 27.902748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255991, 18.974758, 27.767143>,  <17.355421, 19.693884, 27.461737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.255991, 18.974758, 27.767143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917150, 19.185089, 27.797937>,  <16.713846, 19.311287, 27.816414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917150, 19.185089, 27.797937>,  <17.255991, 18.974758, 27.767143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917150, 19.185089, 27.797937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514334, -0.774748, -0.367730,
		-0.133719, -0.351100, 0.926741,
		-0.847100, 0.525827, 0.076984,
		16.663021, 19.342836, 27.821033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861570, 18.443954, 28.027634>,  <17.255991, 18.974758, 27.767143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.861570, 18.443954, 28.027634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638271, 18.747747, 27.894039>,  <16.504292, 18.930023, 27.813883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638271, 18.747747, 27.894039>,  <16.861570, 18.443954, 28.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638271, 18.747747, 27.894039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701462, -0.647024, -0.298850,
		-0.443069, 0.067447, 0.893947,
		-0.558248, 0.759480, -0.333988,
		16.470797, 18.975592, 27.793842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271784, 18.201117, 28.185648>,  <16.861570, 18.443954, 28.027634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.271784, 18.201117, 28.185648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213409, 18.479784, 27.904692>,  <16.178385, 18.646984, 27.736118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213409, 18.479784, 27.904692>,  <16.271784, 18.201117, 28.185648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213409, 18.479784, 27.904692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604880, -0.624655, -0.493889,
		-0.782830, 0.352785, 0.512562,
		-0.145938, 0.696670, -0.702391,
		16.169628, 18.688786, 27.693974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.472924, 18.159895, 27.960327>,  <16.271784, 18.201117, 28.185648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.472924, 18.159895, 27.960327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693992, 18.334263, 27.676207>,  <15.826632, 18.438885, 27.505733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693992, 18.334263, 27.676207>,  <15.472924, 18.159895, 27.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693992, 18.334263, 27.676207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475094, -0.535449, -0.698269,
		-0.684722, 0.723372, -0.088821,
		0.552668, 0.435922, -0.710303,
		15.859792, 18.465040, 27.463116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921881, 18.236977, 27.363667>,  <15.472924, 18.159895, 27.960327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921881, 18.236977, 27.363667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.292954, 18.270220, 27.218067>,  <15.515598, 18.290165, 27.130707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.292954, 18.270220, 27.218067>,  <14.921881, 18.236977, 27.363667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292954, 18.270220, 27.218067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274048, -0.510552, -0.815006,
		-0.253573, 0.855821, -0.450856,
		0.927685, 0.083108, -0.363998,
		15.571259, 18.295153, 27.108868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.810935, 18.482531, 26.634670>,  <14.921881, 18.236977, 27.363667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.810935, 18.482531, 26.634670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176392, 18.320015, 26.640188>,  <15.395665, 18.222506, 26.643499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176392, 18.320015, 26.640188>,  <14.810935, 18.482531, 26.634670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176392, 18.320015, 26.640188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074419, -0.200523, -0.976858,
		0.399652, 0.891471, -0.213442,
		0.913641, -0.406288, 0.013797,
		15.450484, 18.198128, 26.644327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273569, 18.735144, 26.017546>,  <14.810935, 18.482531, 26.634670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.273569, 18.735144, 26.017546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.356804, 18.367065, 26.150173>,  <15.406745, 18.146217, 26.229750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.356804, 18.367065, 26.150173>,  <15.273569, 18.735144, 26.017546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356804, 18.367065, 26.150173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219283, -0.374249, -0.901029,
		0.953213, 0.114784, -0.279660,
		0.208086, -0.920197, 0.331569,
		15.419230, 18.091007, 26.249643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162546, 18.320843, 25.483084>,  <15.273569, 18.735144, 26.017546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162546, 18.320843, 25.483084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291109, 18.002670, 25.688602>,  <15.368247, 17.811768, 25.811914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291109, 18.002670, 25.688602>,  <15.162546, 18.320843, 25.483084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291109, 18.002670, 25.688602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279105, -0.598059, -0.751283,
		0.904874, 0.098065, -0.414230,
		0.321408, -0.795430, 0.513797,
		15.387531, 17.764042, 25.842741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559475, 17.946297, 25.004293>,  <15.162546, 18.320843, 25.483084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559475, 17.946297, 25.004293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472382, 17.698605, 25.306061>,  <15.420125, 17.549990, 25.487122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472382, 17.698605, 25.306061>,  <15.559475, 17.946297, 25.004293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472382, 17.698605, 25.306061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195505, -0.729626, -0.655304,
		0.956227, -0.290175, 0.037802,
		-0.217735, -0.619228, 0.754419,
		15.407062, 17.512836, 25.532387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993814, 17.264290, 24.910362>,  <15.559475, 17.946297, 25.004293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993814, 17.264290, 24.910362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.643229, 17.236721, 25.100967>,  <15.432878, 17.220181, 25.215330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.643229, 17.236721, 25.100967>,  <15.993814, 17.264290, 24.910362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643229, 17.236721, 25.100967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331495, -0.631379, -0.701050,
		0.349178, -0.772405, 0.530533,
		-0.876462, -0.068922, 0.476512,
		15.380290, 17.216045, 25.243921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748456, 16.701166, 24.606102>,  <15.993814, 17.264290, 24.910362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748456, 16.701166, 24.606102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426477, 16.794405, 24.824360>,  <15.233291, 16.850349, 24.955315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426477, 16.794405, 24.824360>,  <15.748456, 16.701166, 24.606102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426477, 16.794405, 24.824360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542668, -0.661094, -0.518137,
		0.239944, -0.713175, 0.658641,
		-0.804946, 0.233099, 0.545643,
		15.184994, 16.864334, 24.988052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.502454, 16.076721, 24.777170>,  <15.748456, 16.701166, 24.606102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.502454, 16.076721, 24.777170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.202424, 16.341085, 24.786833>,  <15.022407, 16.499704, 24.792631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.202424, 16.341085, 24.786833>,  <15.502454, 16.076721, 24.777170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202424, 16.341085, 24.786833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555072, -0.609256, -0.566306,
		-0.359560, -0.438181, 0.823841,
		-0.750075, 0.660912, 0.024158,
		14.977402, 16.539360, 24.794081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798311, 15.742277, 24.861315>,  <15.502454, 16.076721, 24.777170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798311, 15.742277, 24.861315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735630, 16.104923, 24.704603>,  <14.698022, 16.322512, 24.610577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735630, 16.104923, 24.704603>,  <14.798311, 15.742277, 24.861315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735630, 16.104923, 24.704603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579207, -0.405664, -0.707076,
		-0.799977, 0.116121, 0.588687,
		-0.156702, 0.906616, -0.391780,
		14.688620, 16.376907, 24.587069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062296, 15.694426, 24.586119>,  <14.798311, 15.742277, 24.861315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062296, 15.694426, 24.586119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215689, 16.017942, 24.407772>,  <14.307724, 16.212053, 24.300764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215689, 16.017942, 24.407772>,  <14.062296, 15.694426, 24.586119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215689, 16.017942, 24.407772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399959, -0.289718, -0.869538,
		-0.832451, 0.511780, 0.212383,
		0.383481, 0.808792, -0.445867,
		14.330733, 16.260580, 24.274012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480020, 15.981533, 24.183033>,  <14.062296, 15.694426, 24.586119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480020, 15.981533, 24.183033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827787, 16.126711, 24.048939>,  <14.036448, 16.213818, 23.968483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827787, 16.126711, 24.048939>,  <13.480020, 15.981533, 24.183033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827787, 16.126711, 24.048939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244059, -0.274461, -0.930111,
		-0.429587, 0.890473, -0.150042,
		0.869420, 0.362944, -0.335233,
		14.088614, 16.235594, 23.948368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248208, 16.224886, 23.597548>,  <13.480020, 15.981533, 24.183033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.248208, 16.224886, 23.597548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645502, 16.236311, 23.552530>,  <13.883879, 16.243166, 23.525520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645502, 16.236311, 23.552530>,  <13.248208, 16.224886, 23.597548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645502, 16.236311, 23.552530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107199, -0.146820, -0.983337,
		-0.044612, 0.988751, -0.142765,
		0.993236, 0.028565, -0.112543,
		13.943473, 16.244881, 23.518768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340458, 16.665749, 23.087183>,  <13.248208, 16.224886, 23.597548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340458, 16.665749, 23.087183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.632128, 16.392597, 23.104982>,  <13.807130, 16.228706, 23.115662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.632128, 16.392597, 23.104982>,  <13.340458, 16.665749, 23.087183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632128, 16.392597, 23.104982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136256, -0.208603, -0.968462,
		0.670625, 0.700116, -0.245155,
		0.729175, -0.682878, 0.044499,
		13.850881, 16.187733, 23.118332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673557, 16.781738, 22.517323>,  <13.340458, 16.665749, 23.087183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673557, 16.781738, 22.517323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.805659, 16.412113, 22.594307>,  <13.884920, 16.190338, 22.640497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.805659, 16.412113, 22.594307>,  <13.673557, 16.781738, 22.517323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805659, 16.412113, 22.594307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006370, -0.201713, -0.979424,
		0.943870, 0.324685, -0.060731,
		0.330255, -0.924062, 0.192460,
		13.904736, 16.134895, 22.652044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.361477, 16.663761, 22.164671>,  <13.673557, 16.781738, 22.517323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.361477, 16.663761, 22.164671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208342, 16.300444, 22.232128>,  <14.116461, 16.082453, 22.272602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208342, 16.300444, 22.232128>,  <14.361477, 16.663761, 22.164671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208342, 16.300444, 22.232128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144175, -0.239055, -0.960243,
		0.912496, -0.343303, 0.222473,
		-0.382837, -0.908293, 0.168641,
		14.093491, 16.027956, 22.282721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.629447, 16.270370, 21.581978>,  <14.361477, 16.663761, 22.164671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.629447, 16.270370, 21.581978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.340499, 16.028103, 21.715452>,  <14.167130, 15.882742, 21.795536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.340499, 16.028103, 21.715452>,  <14.629447, 16.270370, 21.581978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.340499, 16.028103, 21.715452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166937, -0.315535, -0.934114,
		0.671054, -0.730481, 0.126824,
		-0.722370, -0.605670, 0.333685,
		14.123788, 15.846402, 21.815557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778700, 15.476439, 21.355064>,  <14.629447, 16.270370, 21.581978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778700, 15.476439, 21.355064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.384945, 15.480311, 21.425364>,  <14.148692, 15.482635, 21.467543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.384945, 15.480311, 21.425364>,  <14.778700, 15.476439, 21.355064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384945, 15.480311, 21.425364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168174, -0.346448, -0.922871,
		0.051955, -0.938019, 0.342667,
		-0.984387, 0.009680, 0.175750,
		14.089629, 15.483215, 21.478088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.615463, 14.767214, 21.099377>,  <14.778700, 15.476439, 21.355064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.615463, 14.767214, 21.099377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.283568, 14.985706, 21.145277>,  <14.084432, 15.116802, 21.172817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.283568, 14.985706, 21.145277>,  <14.615463, 14.767214, 21.099377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.283568, 14.985706, 21.145277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297091, -0.258166, -0.919286,
		-0.472518, -0.796857, 0.376491,
		-0.829737, 0.546232, 0.114751,
		14.034647, 15.149576, 21.179703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049738, 14.378054, 20.754335>,  <14.615463, 14.767214, 21.099377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049738, 14.378054, 20.754335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937938, 14.762110, 20.755611>,  <13.870857, 14.992543, 20.756376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937938, 14.762110, 20.755611>,  <14.049738, 14.378054, 20.754335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937938, 14.762110, 20.755611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272800, -0.076227, -0.959046,
		-0.920576, -0.268925, 0.283232,
		-0.279501, 0.960140, 0.003190,
		13.854087, 15.050152, 20.756569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315029, 14.379150, 20.511280>,  <14.049738, 14.378054, 20.754335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315029, 14.379150, 20.511280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412486, 14.763089, 20.455666>,  <13.470961, 14.993453, 20.422297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412486, 14.763089, 20.455666>,  <13.315029, 14.379150, 20.511280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412486, 14.763089, 20.455666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288433, -0.065158, -0.955281,
		-0.925983, 0.272850, 0.260976,
		0.243643, 0.959848, -0.139034,
		13.485579, 15.051044, 20.413956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823878, 14.649542, 20.082790>,  <13.315029, 14.379150, 20.511280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823878, 14.649542, 20.082790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104936, 14.932214, 20.049568>,  <13.273570, 15.101817, 20.029634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104936, 14.932214, 20.049568>,  <12.823878, 14.649542, 20.082790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.104936, 14.932214, 20.049568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388365, 0.283079, -0.876949,
		-0.596210, 0.648438, 0.473352,
		0.702643, 0.706679, -0.083056,
		13.315728, 15.144217, 20.024651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.515863, 15.235222, 19.778046>,  <12.823878, 14.649542, 20.082790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.515863, 15.235222, 19.778046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905251, 15.310429, 19.725876>,  <13.138883, 15.355553, 19.694574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905251, 15.310429, 19.725876>,  <12.515863, 15.235222, 19.778046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905251, 15.310429, 19.725876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185838, 0.317024, -0.930032,
		-0.133514, 0.929594, 0.343554,
		0.973467, 0.188018, -0.130427,
		13.197290, 15.366834, 19.686749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453743, 15.848764, 19.360970>,  <12.515863, 15.235222, 19.778046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453743, 15.848764, 19.360970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.804539, 15.664526, 19.306213>,  <13.015017, 15.553983, 19.273359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.804539, 15.664526, 19.306213>,  <12.453743, 15.848764, 19.360970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.804539, 15.664526, 19.306213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090251, 0.121918, -0.988428,
		0.471956, 0.879196, 0.065352,
		0.876990, -0.460597, -0.136888,
		13.067636, 15.526347, 19.265146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.895221, 16.309273, 18.945457>,  <12.453743, 15.848764, 19.360970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.895221, 16.309273, 18.945457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008804, 15.928727, 18.897675>,  <13.076954, 15.700399, 18.869005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008804, 15.928727, 18.897675>,  <12.895221, 16.309273, 18.945457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008804, 15.928727, 18.897675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315987, 0.024778, -0.948440,
		0.905274, 0.307065, -0.293583,
		0.283958, -0.951366, -0.119459,
		13.093991, 15.643317, 18.861837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.203758, 16.288172, 18.281483>,  <12.895221, 16.309273, 18.945457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.203758, 16.288172, 18.281483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140685, 15.902788, 18.368095>,  <13.102841, 15.671558, 18.420063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140685, 15.902788, 18.368095>,  <13.203758, 16.288172, 18.281483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.140685, 15.902788, 18.368095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153474, -0.192702, -0.969181,
		0.975490, -0.186056, -0.117480,
		-0.157684, -0.963456, 0.216534,
		13.093380, 15.613751, 18.433056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563359, 15.922390, 17.713673>,  <13.203758, 16.288172, 18.281483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563359, 15.922390, 17.713673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.332538, 15.642140, 17.881546>,  <13.194045, 15.473990, 17.982269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.332538, 15.642140, 17.881546>,  <13.563359, 15.922390, 17.713673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.332538, 15.642140, 17.881546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222217, -0.359792, -0.906184,
		0.785894, -0.616177, 0.051929,
		-0.577054, -0.700625, 0.419683,
		13.159422, 15.431953, 18.007450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761851, 15.332105, 17.471224>,  <13.563359, 15.922390, 17.713673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761851, 15.332105, 17.471224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.385725, 15.261509, 17.587608>,  <13.160049, 15.219151, 17.657438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.385725, 15.261509, 17.587608>,  <13.761851, 15.332105, 17.471224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385725, 15.261509, 17.587608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189725, -0.437907, -0.878773,
		0.282508, -0.881526, 0.378286,
		-0.940315, -0.176490, 0.290960,
		13.103630, 15.208562, 17.674896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693250, 14.686628, 17.280664>,  <13.761851, 15.332105, 17.471224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693250, 14.686628, 17.280664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.328732, 14.849524, 17.304976>,  <13.110021, 14.947262, 17.319563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.328732, 14.849524, 17.304976>,  <13.693250, 14.686628, 17.280664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328732, 14.849524, 17.304976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301648, -0.559827, -0.771752,
		-0.280262, -0.721630, 0.633012,
		-0.911296, 0.407240, 0.060780,
		13.055343, 14.971697, 17.323210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392270, 14.744345, 17.578272>,  <13.693250, 14.686628, 17.280664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392270, 14.744345, 17.578272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756787, 14.683060, 17.425394>,  <14.975497, 14.646289, 17.333668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756787, 14.683060, 17.425394>,  <14.392270, 14.744345, 17.578272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756787, 14.683060, 17.425394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300327, -0.387676, 0.871500,
		-0.281691, -0.908974, -0.307273,
		0.911292, -0.153211, -0.382194,
		15.030175, 14.637095, 17.310736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575841, 14.014408, 17.651821>,  <14.392270, 14.744345, 17.578272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575841, 14.014408, 17.651821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915478, 14.220717, 17.606180>,  <15.119260, 14.344503, 17.578796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915478, 14.220717, 17.606180>,  <14.575841, 14.014408, 17.651821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915478, 14.220717, 17.606180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372525, -0.431512, 0.821597,
		0.374521, -0.740118, -0.558533,
		0.849093, 0.515773, -0.114102,
		15.170206, 14.375449, 17.571949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043842, 13.589522, 17.848248>,  <14.575841, 14.014408, 17.651821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043842, 13.589522, 17.848248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246305, 13.928714, 17.911165>,  <15.367782, 14.132229, 17.948915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246305, 13.928714, 17.911165>,  <15.043842, 13.589522, 17.848248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246305, 13.928714, 17.911165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399919, -0.392358, 0.828324,
		0.764116, -0.356356, -0.537716,
		0.506155, 0.847978, 0.157293,
		15.398151, 14.183107, 17.958353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540287, 13.372439, 18.203783>,  <15.043842, 13.589522, 17.848248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540287, 13.372439, 18.203783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600904, 13.762424, 18.268873>,  <15.637275, 13.996416, 18.307928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600904, 13.762424, 18.268873>,  <15.540287, 13.372439, 18.203783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600904, 13.762424, 18.268873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448649, -0.214539, 0.867575,
		0.880766, -0.058468, -0.469929,
		0.151543, 0.974964, 0.162728,
		15.646367, 14.054914, 18.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318001, 13.497723, 18.432640>,  <15.540287, 13.372439, 18.203783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318001, 13.497723, 18.432640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.116899, 13.821960, 18.552757>,  <15.996239, 14.016503, 18.624828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.116899, 13.821960, 18.552757>,  <16.318001, 13.497723, 18.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116899, 13.821960, 18.552757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351647, -0.125565, 0.927673,
		0.789673, 0.571988, -0.221915,
		-0.502753, 0.810594, 0.300293,
		15.966073, 14.065139, 18.642845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781130, 13.980103, 18.584118>,  <16.318001, 13.497723, 18.432640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781130, 13.980103, 18.584118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450470, 14.059134, 18.794874>,  <16.252075, 14.106552, 18.921328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450470, 14.059134, 18.794874>,  <16.781130, 13.980103, 18.584118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450470, 14.059134, 18.794874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541077, 0.021911, 0.840688,
		0.154556, 0.980042, -0.125017,
		-0.826649, 0.197577, 0.526892,
		16.202475, 14.118407, 18.952942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105310, 14.350698, 19.129822>,  <16.781130, 13.980103, 18.584118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105310, 14.350698, 19.129822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722157, 14.303364, 19.234476>,  <16.492264, 14.274962, 19.297270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722157, 14.303364, 19.234476>,  <17.105310, 14.350698, 19.129822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722157, 14.303364, 19.234476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242700, 0.153335, 0.957907,
		-0.153474, 0.981063, -0.118157,
		-0.957884, -0.118337, 0.261637,
		16.434792, 14.267862, 19.312967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.994024, 14.927031, 19.605715>,  <17.105310, 14.350698, 19.129822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.994024, 14.927031, 19.605715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.713764, 14.666957, 19.723257>,  <16.545609, 14.510913, 19.793781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.713764, 14.666957, 19.723257>,  <16.994024, 14.927031, 19.605715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713764, 14.666957, 19.723257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205540, 0.210463, 0.955750,
		-0.683259, 0.730045, -0.013822,
		-0.700650, -0.650184, 0.293855,
		16.503569, 14.471902, 19.811413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549513, 15.271749, 20.102982>,  <16.994024, 14.927031, 19.605715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549513, 15.271749, 20.102982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503580, 14.878576, 20.160479>,  <16.476021, 14.642673, 20.194977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503580, 14.878576, 20.160479>,  <16.549513, 15.271749, 20.102982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503580, 14.878576, 20.160479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013062, 0.143192, 0.989609,
		-0.993299, 0.115516, -0.003604,
		-0.114832, -0.982930, 0.143741,
		16.469131, 14.583697, 20.203602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952201, 15.189132, 20.575060>,  <16.549513, 15.271749, 20.102982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952201, 15.189132, 20.575060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.149952, 14.841635, 20.563229>,  <16.268602, 14.633137, 20.556129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.149952, 14.841635, 20.563229>,  <15.952201, 15.189132, 20.575060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149952, 14.841635, 20.563229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125795, -0.105175, 0.986465,
		-0.860096, -0.483966, -0.161280,
		0.494378, -0.868743, -0.029580,
		16.298265, 14.581012, 20.554354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517334, 14.690736, 20.857481>,  <15.952201, 15.189132, 20.575060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517334, 14.690736, 20.857481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900895, 14.581957, 20.889854>,  <16.131031, 14.516689, 20.909279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900895, 14.581957, 20.889854>,  <15.517334, 14.690736, 20.857481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900895, 14.581957, 20.889854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057045, 0.094642, 0.993876,
		-0.277941, -0.957647, 0.075239,
		0.958903, -0.271947, 0.080933,
		16.188566, 14.500373, 20.914135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526089, 14.315906, 21.450403>,  <15.517334, 14.690736, 20.857481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526089, 14.315906, 21.450403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.921979, 14.357059, 21.410686>,  <16.159513, 14.381752, 21.386856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.921979, 14.357059, 21.410686>,  <15.526089, 14.315906, 21.450403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.921979, 14.357059, 21.410686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072399, 0.238239, 0.968504,
		0.123297, -0.965742, 0.228343,
		0.989725, 0.102882, -0.099293,
		16.218897, 14.387924, 21.380899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775492, 13.922617, 22.052979>,  <15.526089, 14.315906, 21.450403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.775492, 13.922617, 22.052979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064716, 14.168394, 21.926714>,  <16.238251, 14.315861, 21.850956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064716, 14.168394, 21.926714>,  <15.775492, 13.922617, 22.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064716, 14.168394, 21.926714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346779, 0.072338, 0.935153,
		0.597433, -0.785637, -0.160771,
		0.723062, 0.614444, -0.315659,
		16.281635, 14.352727, 21.832016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.361431, 13.715609, 22.453787>,  <15.775492, 13.922617, 22.052979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.361431, 13.715609, 22.453787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450638, 14.074563, 22.301491>,  <16.504162, 14.289935, 22.210114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450638, 14.074563, 22.301491>,  <16.361431, 13.715609, 22.453787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450638, 14.074563, 22.301491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442534, 0.254808, 0.859788,
		0.868577, -0.360239, -0.340297,
		0.223019, 0.897386, -0.380738,
		16.517544, 14.343779, 22.187269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012360, 13.789620, 22.696814>,  <16.361431, 13.715609, 22.453787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012360, 13.789620, 22.696814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869263, 14.148582, 22.593519>,  <16.783405, 14.363959, 22.531542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869263, 14.148582, 22.593519>,  <17.012360, 13.789620, 22.696814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869263, 14.148582, 22.593519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264908, 0.362704, 0.893459,
		0.895458, 0.251217, -0.367484,
		-0.357740, 0.897405, -0.258237,
		16.761940, 14.417804, 22.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503096, 14.268806, 22.908823>,  <17.012360, 13.789620, 22.696814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503096, 14.268806, 22.908823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161320, 14.476443, 22.900106>,  <16.956255, 14.601027, 22.894876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161320, 14.476443, 22.900106>,  <17.503096, 14.268806, 22.908823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161320, 14.476443, 22.900106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302022, 0.530385, 0.792133,
		0.422750, 0.670248, -0.609960,
		-0.854439, 0.519095, -0.021791,
		16.904987, 14.632172, 22.893570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687820, 14.950840, 22.836807>,  <17.503096, 14.268806, 22.908823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687820, 14.950840, 22.836807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.310499, 14.944505, 22.969429>,  <17.084106, 14.940703, 23.049002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.310499, 14.944505, 22.969429>,  <17.687820, 14.950840, 22.836807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.310499, 14.944505, 22.969429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242373, 0.649601, 0.720606,
		-0.226791, 0.760110, -0.608933,
		-0.943303, -0.015838, 0.331554,
		17.027508, 14.939754, 23.068895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592993, 15.660492, 23.033194>,  <17.687820, 14.950840, 22.836807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592993, 15.660492, 23.033194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312380, 15.455635, 23.231411>,  <17.144012, 15.332721, 23.350342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312380, 15.455635, 23.231411>,  <17.592993, 15.660492, 23.033194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312380, 15.455635, 23.231411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038407, 0.667182, 0.743904,
		-0.711602, 0.540905, -0.448379,
		-0.701532, -0.512143, 0.495543,
		17.101921, 15.301992, 23.380074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167166, 16.247818, 23.224150>,  <17.592993, 15.660492, 23.033194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167166, 16.247818, 23.224150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126974, 15.929405, 23.462893>,  <17.102859, 15.738358, 23.606138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126974, 15.929405, 23.462893>,  <17.167166, 16.247818, 23.224150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126974, 15.929405, 23.462893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153382, 0.580328, 0.799808,
		-0.983045, 0.171911, 0.063786,
		-0.100479, -0.796031, 0.596857,
		17.096830, 15.690596, 23.641949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869041, 16.546631, 23.819109>,  <17.167166, 16.247818, 23.224150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869041, 16.546631, 23.819109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017038, 16.203354, 23.961441>,  <17.105837, 15.997388, 24.046841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017038, 16.203354, 23.961441>,  <16.869041, 16.546631, 23.819109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.017038, 16.203354, 23.961441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140156, 0.430190, 0.891792,
		-0.918402, -0.280083, 0.279447,
		0.369991, -0.858190, 0.355831,
		17.128036, 15.945897, 24.068190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515306, 16.499802, 24.428125>,  <16.869041, 16.546631, 23.819109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515306, 16.499802, 24.428125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828449, 16.251606, 24.446575>,  <17.016335, 16.102690, 24.457645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828449, 16.251606, 24.446575>,  <16.515306, 16.499802, 24.428125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828449, 16.251606, 24.446575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316275, 0.460687, 0.829300,
		-0.535819, -0.634636, 0.556897,
		0.782859, -0.620487, 0.046125,
		17.063307, 16.065460, 24.460413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588610, 16.167940, 25.142437>,  <16.515306, 16.499802, 24.428125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588610, 16.167940, 25.142437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.942421, 16.175152, 24.955982>,  <17.154709, 16.179480, 24.844110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.942421, 16.175152, 24.955982>,  <16.588610, 16.167940, 25.142437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942421, 16.175152, 24.955982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405923, 0.462620, 0.788168,
		0.229853, -0.886373, 0.401883,
		0.884530, 0.018029, -0.466134,
		17.207781, 16.180561, 24.816141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052393, 16.110216, 25.685297>,  <16.588610, 16.167940, 25.142437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052393, 16.110216, 25.685297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304296, 16.217552, 25.393709>,  <17.455439, 16.281954, 25.218756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304296, 16.217552, 25.393709>,  <17.052393, 16.110216, 25.685297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304296, 16.217552, 25.393709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487813, 0.593701, 0.639967,
		0.604520, -0.758626, 0.242987,
		0.629757, 0.268341, -0.728971,
		17.493223, 16.298054, 25.175018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818792, 16.007727, 25.854811>,  <17.052393, 16.110216, 25.685297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818792, 16.007727, 25.854811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.787064, 16.296684, 25.580044>,  <17.768026, 16.470058, 25.415184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.787064, 16.296684, 25.580044>,  <17.818792, 16.007727, 25.854811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787064, 16.296684, 25.580044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505368, 0.623112, 0.596937,
		0.859250, -0.299796, -0.414501,
		-0.079321, 0.722394, -0.686917,
		17.763268, 16.513403, 25.373968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443037, 16.277668, 25.824879>,  <17.818792, 16.007727, 25.854811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443037, 16.277668, 25.824879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.244602, 16.574522, 25.644596>,  <18.125542, 16.752634, 25.536427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.244602, 16.574522, 25.644596>,  <18.443037, 16.277668, 25.824879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.244602, 16.574522, 25.644596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538651, 0.670170, 0.510615,
		0.680994, 0.010535, -0.732213,
		-0.496086, 0.742133, -0.450707,
		18.095776, 16.797161, 25.509384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961765, 16.726629, 25.688244>,  <18.443037, 16.277668, 25.824879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.961765, 16.726629, 25.688244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.636160, 16.957420, 25.661459>,  <18.440798, 17.095894, 25.645388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.636160, 16.957420, 25.661459>,  <18.961765, 16.726629, 25.688244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.636160, 16.957420, 25.661459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513594, 0.768808, 0.380992,
		0.271305, 0.275740, -0.922150,
		-0.814011, 0.576976, -0.066963,
		18.391956, 17.130514, 25.641371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.141638, 17.313452, 25.400341>,  <18.961765, 16.726629, 25.688244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.141638, 17.313452, 25.400341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811165, 17.403612, 25.606882>,  <18.612881, 17.457708, 25.730806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811165, 17.403612, 25.606882>,  <19.141638, 17.313452, 25.400341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.811165, 17.403612, 25.606882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475596, 0.770353, 0.424695,
		-0.302046, 0.596450, -0.743650,
		-0.826182, 0.225399, 0.516351,
		18.563311, 17.471231, 25.761787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074867, 18.037834, 25.330248>,  <19.141638, 17.313452, 25.400341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074867, 18.037834, 25.330248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889147, 17.888405, 25.651463>,  <18.777714, 17.798746, 25.844191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889147, 17.888405, 25.651463>,  <19.074867, 18.037834, 25.330248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889147, 17.888405, 25.651463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456887, 0.675710, 0.578507,
		-0.758735, 0.635498, -0.143052,
		-0.464302, -0.373575, 0.803035,
		18.749857, 17.776333, 25.892374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185863, 18.508194, 25.836086>,  <19.074867, 18.037834, 25.330248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.185863, 18.508194, 25.836086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009649, 18.245996, 26.081446>,  <18.903921, 18.088678, 26.228661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009649, 18.245996, 26.081446>,  <19.185863, 18.508194, 25.836086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009649, 18.245996, 26.081446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396800, 0.470730, 0.788012,
		-0.805281, 0.590544, 0.052726,
		-0.440536, -0.655493, 0.613398,
		18.877489, 18.049349, 26.265465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987236, 18.963072, 26.332403>,  <19.185863, 18.508194, 25.836086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987236, 18.963072, 26.332403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.965160, 18.610058, 26.519201>,  <18.951916, 18.398249, 26.631281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.965160, 18.610058, 26.519201>,  <18.987236, 18.963072, 26.332403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965160, 18.610058, 26.519201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323870, 0.426599, 0.844465,
		-0.944490, 0.197852, 0.262283,
		-0.055190, -0.882535, 0.466997,
		18.948603, 18.345297, 26.659300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545349, 19.007746, 26.944157>,  <18.987236, 18.963072, 26.332403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545349, 19.007746, 26.944157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.810726, 18.711168, 26.984362>,  <18.969954, 18.533222, 27.008484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.810726, 18.711168, 26.984362>,  <18.545349, 19.007746, 26.944157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810726, 18.711168, 26.984362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350239, 0.426446, 0.833953,
		-0.661192, -0.518078, 0.542606,
		0.663445, -0.741444, 0.100512,
		19.009760, 18.488735, 27.014515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518055, 18.916910, 27.663715>,  <18.545349, 19.007746, 26.944157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518055, 18.916910, 27.663715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.848833, 18.744539, 27.519238>,  <19.047300, 18.641117, 27.432550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.848833, 18.744539, 27.519238>,  <18.518055, 18.916910, 27.663715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848833, 18.744539, 27.519238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539804, 0.428634, 0.724489,
		-0.157381, -0.794088, 0.587073,
		0.826948, -0.430926, -0.361193,
		19.096918, 18.615261, 27.410879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060368, 18.921606, 28.216722>,  <18.518055, 18.916910, 27.663715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060368, 18.921606, 28.216722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217909, 18.924341, 27.849064>,  <19.312433, 18.925983, 27.628468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217909, 18.924341, 27.849064>,  <19.060368, 18.921606, 28.216722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217909, 18.924341, 27.849064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647395, 0.707796, 0.282673,
		0.652503, -0.706383, 0.274340,
		0.393852, 0.006838, -0.919148,
		19.336063, 18.926394, 27.573318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809036, 18.663197, 28.201073>,  <19.060368, 18.921606, 28.216722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809036, 18.663197, 28.201073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723997, 18.928640, 27.914179>,  <19.672974, 19.087906, 27.742043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723997, 18.928640, 27.914179>,  <19.809036, 18.663197, 28.201073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723997, 18.928640, 27.914179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665939, 0.635551, 0.390640,
		0.715071, -0.394585, -0.577040,
		-0.212598, 0.663609, -0.717234,
		19.660217, 19.127724, 27.699009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409008, 18.864042, 27.815083>,  <19.809036, 18.663197, 28.201073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409008, 18.864042, 27.815083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.134964, 19.154922, 27.832098>,  <19.970537, 19.329451, 27.842306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.134964, 19.154922, 27.832098>,  <20.409008, 18.864042, 27.815083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134964, 19.154922, 27.832098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696805, 0.637212, 0.329279,
		0.212346, 0.255232, -0.943274,
		-0.685108, 0.727199, 0.042537,
		19.929432, 19.373081, 27.844860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.622198, 19.521454, 27.440289>,  <20.409008, 18.864042, 27.815083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.622198, 19.521454, 27.440289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356651, 19.595360, 27.730156>,  <20.197323, 19.639704, 27.904076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356651, 19.595360, 27.730156>,  <20.622198, 19.521454, 27.440289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356651, 19.595360, 27.730156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597735, 0.713433, 0.365687,
		-0.449435, 0.675926, -0.584065,
		-0.663868, 0.184763, 0.724666,
		20.157492, 19.650789, 27.947556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545290, 20.297182, 27.415642>,  <20.622198, 19.521454, 27.440289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545290, 20.297182, 27.415642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.514147, 20.118578, 27.772196>,  <20.495461, 20.011415, 27.986128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.514147, 20.118578, 27.772196>,  <20.545290, 20.297182, 27.415642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514147, 20.118578, 27.772196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532787, 0.737081, 0.415753,
		-0.842660, 0.507288, 0.180507,
		-0.077858, -0.446510, 0.891385,
		20.490789, 19.984625, 28.039612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477175, 20.756159, 27.912781>,  <20.545290, 20.297182, 27.415642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477175, 20.756159, 27.912781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.620907, 20.464548, 28.145815>,  <20.707146, 20.289581, 28.285635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.620907, 20.464548, 28.145815>,  <20.477175, 20.756159, 27.912781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.620907, 20.464548, 28.145815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604877, 0.657333, 0.449486,
		-0.710638, 0.190878, 0.677170,
		0.359329, -0.729026, 0.582583,
		20.728706, 20.245840, 28.320589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674042, 20.758961, 28.064943>,  <20.477175, 20.756159, 27.912781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674042, 20.758961, 28.064943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865269, 21.059793, 27.883472>,  <19.980005, 21.240294, 27.774590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865269, 21.059793, 27.883472>,  <19.674042, 20.758961, 28.064943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865269, 21.059793, 27.883472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461242, -0.224603, -0.858376,
		-0.747466, 0.619619, 0.239516,
		0.478070, 0.752081, -0.453678,
		20.008690, 21.285418, 27.747370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172504, 21.283014, 27.782740>,  <19.674042, 20.758961, 28.064943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172504, 21.283014, 27.782740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516542, 21.329941, 27.584156>,  <19.722965, 21.358097, 27.465006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516542, 21.329941, 27.584156>,  <19.172504, 21.283014, 27.782740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516542, 21.329941, 27.584156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482504, -0.128851, -0.866365,
		-0.165608, 0.984700, -0.054219,
		0.860096, 0.117317, -0.496460,
		19.774570, 21.365135, 27.435219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102192, 21.781950, 27.261711>,  <19.172504, 21.283014, 27.782740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102192, 21.781950, 27.261711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396797, 21.539345, 27.141916>,  <19.573561, 21.393782, 27.070040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396797, 21.539345, 27.141916>,  <19.102192, 21.781950, 27.261711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396797, 21.539345, 27.141916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509603, -0.206375, -0.835293,
		0.444810, 0.767821, -0.461079,
		0.736511, -0.606514, -0.299487,
		19.617750, 21.357391, 27.052071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.085634, 21.858677, 26.482632>,  <19.102192, 21.781950, 27.261711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.085634, 21.858677, 26.482632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.296991, 21.528564, 26.562340>,  <19.423805, 21.330496, 26.610165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.296991, 21.528564, 26.562340>,  <19.085634, 21.858677, 26.482632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296991, 21.528564, 26.562340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560675, -0.515449, -0.648040,
		0.637530, 0.230695, -0.735076,
		0.528394, -0.825283, 0.199269,
		19.455509, 21.280979, 26.622120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363420, 21.635622, 25.820774>,  <19.085634, 21.858677, 26.482632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363420, 21.635622, 25.820774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333363, 21.329123, 26.076029>,  <19.315329, 21.145224, 26.229181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333363, 21.329123, 26.076029>,  <19.363420, 21.635622, 25.820774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333363, 21.329123, 26.076029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453863, -0.543536, -0.706100,
		0.887897, -0.342687, -0.306927,
		-0.075145, -0.766246, 0.638137,
		19.310820, 21.099249, 26.267469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591726, 21.093245, 25.502619>,  <19.363420, 21.635622, 25.820774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591726, 21.093245, 25.502619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.386427, 20.918968, 25.798389>,  <19.263248, 20.814404, 25.975851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.386427, 20.918968, 25.798389>,  <19.591726, 21.093245, 25.502619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386427, 20.918968, 25.798389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564108, -0.478053, -0.673237,
		0.646808, -0.762653, -0.000417,
		-0.513247, -0.435690, 0.739427,
		19.232452, 20.788261, 26.020218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563290, 20.489349, 25.181736>,  <19.591726, 21.093245, 25.502619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563290, 20.489349, 25.181736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291334, 20.462765, 25.473854>,  <19.128160, 20.446814, 25.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291334, 20.462765, 25.473854>,  <19.563290, 20.489349, 25.181736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291334, 20.462765, 25.473854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597232, -0.527690, -0.604034,
		0.425515, -0.846833, 0.319078,
		-0.679890, -0.066462, 0.730296,
		19.087368, 20.442825, 25.692944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.287411, 19.806719, 25.256340>,  <19.563290, 20.489349, 25.181736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.287411, 19.806719, 25.256340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987394, 20.009501, 25.426249>,  <18.807384, 20.131170, 25.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987394, 20.009501, 25.426249>,  <19.287411, 19.806719, 25.256340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987394, 20.009501, 25.426249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661312, -0.565033, -0.493360,
		-0.010100, -0.650949, 0.759054,
		-0.750043, 0.506955, 0.424773,
		18.762381, 20.161587, 25.553680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817194, 19.232384, 25.519861>,  <19.287411, 19.806719, 25.256340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817194, 19.232384, 25.519861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647491, 19.591642, 25.473658>,  <18.545670, 19.807198, 25.445936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647491, 19.591642, 25.473658>,  <18.817194, 19.232384, 25.519861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647491, 19.591642, 25.473658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754609, -0.421167, -0.503174,
		-0.500572, -0.126311, 0.856431,
		-0.424256, 0.898144, -0.115509,
		18.520214, 19.861086, 25.439005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025290, 19.077126, 25.533762>,  <18.817194, 19.232384, 25.519861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.025290, 19.077126, 25.533762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086561, 19.431749, 25.359154>,  <18.123323, 19.644524, 25.254389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086561, 19.431749, 25.359154>,  <18.025290, 19.077126, 25.533762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086561, 19.431749, 25.359154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484962, -0.317439, -0.814889,
		-0.861016, 0.336518, 0.381324,
		0.153177, 0.886560, -0.436519,
		18.132515, 19.697718, 25.228199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375982, 19.329659, 25.227989>,  <18.025290, 19.077126, 25.533762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375982, 19.329659, 25.227989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.649542, 19.552397, 25.039433>,  <17.813677, 19.686039, 24.926298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.649542, 19.552397, 25.039433>,  <17.375982, 19.329659, 25.227989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.649542, 19.552397, 25.039433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435686, -0.206541, -0.876081,
		-0.585202, 0.804529, 0.101355,
		0.683898, 0.556843, -0.471390,
		17.854712, 19.719450, 24.898016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026770, 19.409582, 24.658058>,  <17.375982, 19.329659, 25.227989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026770, 19.409582, 24.658058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382187, 19.545534, 24.534786>,  <17.595438, 19.627106, 24.460823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382187, 19.545534, 24.534786>,  <17.026770, 19.409582, 24.658058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382187, 19.545534, 24.534786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214770, -0.285436, -0.934024,
		-0.405420, 0.896107, -0.180627,
		0.888543, 0.339878, -0.308178,
		17.648750, 19.647497, 24.442333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855858, 19.737597, 24.047453>,  <17.026770, 19.409582, 24.658058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855858, 19.737597, 24.047453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247679, 19.662411, 24.018766>,  <17.482771, 19.617300, 24.001554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247679, 19.662411, 24.018766>,  <16.855858, 19.737597, 24.047453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247679, 19.662411, 24.018766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132780, -0.336218, -0.932377,
		0.151139, 0.922836, -0.354302,
		0.979554, -0.187962, -0.071718,
		17.541546, 19.606022, 23.997252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074593, 20.023903, 23.345213>,  <16.855858, 19.737597, 24.047453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074593, 20.023903, 23.345213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380531, 19.782768, 23.436073>,  <17.564095, 19.638086, 23.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380531, 19.782768, 23.436073>,  <17.074593, 20.023903, 23.345213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380531, 19.782768, 23.436073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004327, -0.357399, -0.933942,
		0.644198, 0.713339, -0.275964,
		0.764846, -0.602838, 0.227149,
		17.609985, 19.601917, 23.504217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620077, 20.023930, 22.839943>,  <17.074593, 20.023903, 23.345213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620077, 20.023930, 22.839943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664988, 19.668839, 23.018528>,  <17.691935, 19.455784, 23.125679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664988, 19.668839, 23.018528>,  <17.620077, 20.023930, 22.839943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664988, 19.668839, 23.018528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178711, -0.423939, -0.887884,
		0.977475, 0.179477, 0.111048,
		0.112277, -0.887730, 0.446464,
		17.698671, 19.402519, 23.152468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156796, 19.623028, 22.466579>,  <17.620077, 20.023930, 22.839943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156796, 19.623028, 22.466579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951691, 19.344007, 22.666779>,  <17.828629, 19.176596, 22.786898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951691, 19.344007, 22.666779>,  <18.156796, 19.623028, 22.466579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951691, 19.344007, 22.666779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172254, -0.654706, -0.735995,
		0.841074, -0.291175, 0.455863,
		-0.512760, -0.697551, 0.500500,
		17.797863, 19.134743, 22.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539860, 18.908262, 22.552628>,  <18.156796, 19.623028, 22.466579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539860, 18.908262, 22.552628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.151255, 18.829464, 22.605328>,  <17.918091, 18.782185, 22.636948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.151255, 18.829464, 22.605328>,  <18.539860, 18.908262, 22.552628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151255, 18.829464, 22.605328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110223, -0.867727, -0.484666,
		0.209799, -0.456337, 0.864720,
		-0.971512, -0.196994, 0.131749,
		17.859800, 18.770365, 22.644852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579992, 18.109859, 22.595303>,  <18.539860, 18.908262, 22.552628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579992, 18.109859, 22.595303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.188208, 18.185429, 22.567116>,  <17.953136, 18.230770, 22.550203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.188208, 18.185429, 22.567116>,  <18.579992, 18.109859, 22.595303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.188208, 18.185429, 22.567116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131051, -0.862043, -0.489600,
		-0.153242, -0.470309, 0.869095,
		-0.979460, 0.188923, -0.070467,
		17.894369, 18.242105, 22.545977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250525, 17.456049, 22.890123>,  <18.579992, 18.109859, 22.595303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250525, 17.456049, 22.890123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.022264, 17.660820, 22.633286>,  <17.885307, 17.783682, 22.479183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.022264, 17.660820, 22.633286>,  <18.250525, 17.456049, 22.890123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022264, 17.660820, 22.633286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046917, -0.800955, -0.596884,
		-0.819855, -0.310484, 0.481080,
		-0.570646, 0.511929, -0.642100,
		17.851068, 17.814398, 22.440657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870710, 16.891247, 22.580170>,  <18.250525, 17.456049, 22.890123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870710, 16.891247, 22.580170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795534, 17.185381, 22.319719>,  <17.750429, 17.361860, 22.163450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795534, 17.185381, 22.319719>,  <17.870710, 16.891247, 22.580170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795534, 17.185381, 22.319719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116295, -0.674934, -0.728657,
		-0.975271, -0.061221, 0.212362,
		-0.187940, 0.735334, -0.651124,
		17.739153, 17.405981, 22.124382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061312, 16.864855, 22.329145>,  <17.870710, 16.891247, 22.580170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061312, 16.864855, 22.329145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329342, 17.039906, 22.089317>,  <17.490160, 17.144936, 21.945421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329342, 17.039906, 22.089317>,  <17.061312, 16.864855, 22.329145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329342, 17.039906, 22.089317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096179, -0.749728, -0.654719,
		-0.736037, 0.496376, -0.460283,
		0.670074, 0.437628, -0.599568,
		17.530365, 17.171194, 21.909447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952612, 16.518728, 21.641626>,  <17.061312, 16.864855, 22.329145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952612, 16.518728, 21.641626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.301395, 16.710705, 21.602970>,  <17.510666, 16.825891, 21.579777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.301395, 16.710705, 21.602970>,  <16.952612, 16.518728, 21.641626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.301395, 16.710705, 21.602970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295116, -0.672777, -0.678438,
		-0.390629, 0.563051, -0.728274,
		0.871961, 0.479942, -0.096641,
		17.562984, 16.854687, 21.573978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067842, 16.580446, 20.873074>,  <16.952612, 16.518728, 21.641626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067842, 16.580446, 20.873074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431482, 16.619532, 21.035055>,  <17.649666, 16.642982, 21.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431482, 16.619532, 21.035055>,  <17.067842, 16.580446, 20.873074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431482, 16.619532, 21.035055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379061, -0.597200, -0.706869,
		0.172770, 0.796118, -0.579954,
		0.909100, 0.097712, 0.404956,
		17.704212, 16.648846, 21.156542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548719, 16.689730, 20.380108>,  <17.067842, 16.580446, 20.873074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548719, 16.689730, 20.380108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.768961, 16.528097, 20.672287>,  <17.901106, 16.431118, 20.847595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.768961, 16.528097, 20.672287>,  <17.548719, 16.689730, 20.380108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768961, 16.528097, 20.672287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369822, -0.666396, -0.647416,
		0.748376, 0.626606, -0.217482,
		0.550604, -0.404081, 0.730448,
		17.934143, 16.406874, 20.891420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181507, 16.589315, 20.016462>,  <17.548719, 16.689730, 20.380108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181507, 16.589315, 20.016462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210421, 16.359991, 20.342920>,  <18.227770, 16.222397, 20.538795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210421, 16.359991, 20.342920>,  <18.181507, 16.589315, 20.016462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210421, 16.359991, 20.342920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519582, -0.676833, -0.521470,
		0.851358, 0.461748, 0.248957,
		0.072285, -0.573311, 0.816143,
		18.232107, 16.187998, 20.587763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865713, 16.412634, 20.069733>,  <18.181507, 16.589315, 20.016462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.865713, 16.412634, 20.069733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.695906, 16.130974, 20.297400>,  <18.594021, 15.961977, 20.434000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.695906, 16.130974, 20.297400>,  <18.865713, 16.412634, 20.069733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695906, 16.130974, 20.297400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476230, -0.708297, -0.521077,
		0.770058, 0.049849, 0.636023,
		-0.424518, -0.704153, 0.569170,
		18.568550, 15.919728, 20.468151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.429182, 15.881618, 20.359339>,  <18.865713, 16.412634, 20.069733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.429182, 15.881618, 20.359339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076817, 15.692778, 20.372669>,  <18.865396, 15.579473, 20.380667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076817, 15.692778, 20.372669>,  <19.429182, 15.881618, 20.359339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076817, 15.692778, 20.372669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402060, -0.783644, -0.473550,
		0.249679, -0.403758, 0.880136,
		-0.880913, -0.472103, 0.033324,
		18.812542, 15.551147, 20.382666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594727, 15.213108, 20.611515>,  <19.429182, 15.881618, 20.359339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594727, 15.213108, 20.611515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248312, 15.181510, 20.414034>,  <19.040464, 15.162551, 20.295546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248312, 15.181510, 20.414034>,  <19.594727, 15.213108, 20.611515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248312, 15.181510, 20.414034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371261, -0.762985, -0.529169,
		-0.334885, -0.641571, 0.690100,
		-0.866036, -0.078997, -0.493702,
		18.988501, 15.157811, 20.265923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478699, 14.475425, 20.547087>,  <19.594727, 15.213108, 20.611515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478699, 14.475425, 20.547087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232424, 14.640422, 20.278526>,  <19.084660, 14.739420, 20.117390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232424, 14.640422, 20.278526>,  <19.478699, 14.475425, 20.547087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232424, 14.640422, 20.278526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303222, -0.662413, -0.685030,
		-0.727314, -0.625348, 0.282763,
		-0.615688, 0.412492, -0.671401,
		19.047718, 14.764170, 20.077106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061300, 13.931675, 20.340794>,  <19.478699, 14.475425, 20.547087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061300, 13.931675, 20.340794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033945, 14.204629, 20.049679>,  <19.017532, 14.368402, 19.875010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033945, 14.204629, 20.049679>,  <19.061300, 13.931675, 20.340794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033945, 14.204629, 20.049679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108267, -0.720110, -0.685361,
		-0.991767, -0.125667, -0.024632,
		-0.068389, 0.682385, -0.727787,
		19.013428, 14.409345, 19.831343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739523, 13.568500, 19.917313>,  <19.061300, 13.931675, 20.340794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739523, 13.568500, 19.917313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869976, 13.865645, 19.683462>,  <18.948248, 14.043933, 19.543152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869976, 13.865645, 19.683462>,  <18.739523, 13.568500, 19.917313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869976, 13.865645, 19.683462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004373, -0.617248, -0.786756,
		-0.945313, 0.259145, -0.198058,
		0.326135, 0.742865, -0.584626,
		18.967817, 14.088505, 19.508074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363514, 13.614104, 19.221676>,  <18.739523, 13.568500, 19.917313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363514, 13.614104, 19.221676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715191, 13.797319, 19.169182>,  <18.926197, 13.907248, 19.137686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715191, 13.797319, 19.169182>,  <18.363514, 13.614104, 19.221676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715191, 13.797319, 19.169182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065555, -0.389099, -0.918860,
		-0.471937, 0.799251, -0.372119,
		0.879192, 0.458038, -0.131236,
		18.978949, 13.934731, 19.129810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.248716, 13.803769, 18.567188>,  <18.363514, 13.614104, 19.221676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.248716, 13.803769, 18.567188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.637617, 13.829581, 18.657137>,  <18.870956, 13.845069, 18.711105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.637617, 13.829581, 18.657137>,  <18.248716, 13.803769, 18.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637617, 13.829581, 18.657137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230712, -0.423732, -0.875913,
		0.038761, 0.903486, -0.426861,
		0.972250, 0.064531, 0.224869,
		18.929293, 13.848941, 18.724598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615494, 14.056213, 18.004749>,  <18.248716, 13.803769, 18.567188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615494, 14.056213, 18.004749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899220, 13.867379, 18.214130>,  <19.069456, 13.754079, 18.339760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899220, 13.867379, 18.214130>,  <18.615494, 14.056213, 18.004749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899220, 13.867379, 18.214130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258583, -0.516563, -0.816270,
		0.655747, 0.714351, -0.244333,
		0.709317, -0.472087, 0.523454,
		19.112015, 13.725753, 18.371166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179394, 14.218805, 17.636942>,  <18.615494, 14.056213, 18.004749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179394, 14.218805, 17.636942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277140, 13.883292, 17.831562>,  <19.335787, 13.681985, 17.948334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277140, 13.883292, 17.831562>,  <19.179394, 14.218805, 17.636942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.277140, 13.883292, 17.831562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344365, -0.393987, -0.852166,
		0.906475, 0.375791, 0.192570,
		0.244366, -0.838782, 0.486549,
		19.350451, 13.631658, 17.977526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841814, 14.089011, 17.375826>,  <19.179394, 14.218805, 17.636942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.841814, 14.089011, 17.375826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739691, 13.745325, 17.553169>,  <19.678417, 13.539113, 17.659575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739691, 13.745325, 17.553169>,  <19.841814, 14.089011, 17.375826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739691, 13.745325, 17.553169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508256, -0.509354, -0.694432,
		0.822492, 0.048045, 0.566743,
		-0.255309, -0.859215, 0.443359,
		19.663097, 13.487560, 17.686176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490934, 13.683010, 17.413204>,  <19.841814, 14.089011, 17.375826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490934, 13.683010, 17.413204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195395, 13.414120, 17.432020>,  <20.018070, 13.252786, 17.443310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195395, 13.414120, 17.432020>,  <20.490934, 13.683010, 17.413204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195395, 13.414120, 17.432020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431456, -0.525529, -0.733256,
		0.517634, -0.521471, 0.678323,
		-0.738850, -0.672225, 0.047040,
		19.973740, 13.212452, 17.446133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827503, 12.947245, 17.589220>,  <20.490934, 13.683010, 17.413204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827503, 12.947245, 17.589220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473724, 12.919310, 17.404665>,  <20.261457, 12.902549, 17.293932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473724, 12.919310, 17.404665>,  <20.827503, 12.947245, 17.589220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473724, 12.919310, 17.404665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392072, -0.647386, -0.653583,
		-0.253051, -0.758956, 0.599959,
		-0.884446, -0.069837, -0.461387,
		20.208391, 12.898358, 17.266249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.815834, 12.309418, 17.482336>,  <20.827503, 12.947245, 17.589220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.815834, 12.309418, 17.482336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.518080, 12.420686, 17.239515>,  <20.339428, 12.487447, 17.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.518080, 12.420686, 17.239515>,  <20.815834, 12.309418, 17.482336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518080, 12.420686, 17.239515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291479, -0.682557, -0.670191,
		-0.600773, -0.675823, 0.427007,
		-0.744387, 0.278169, -0.607050,
		20.294764, 12.504137, 17.057400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438257, 11.671882, 17.361271>,  <20.815834, 12.309418, 17.482336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438257, 11.671882, 17.361271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327843, 11.906910, 17.057016>,  <20.261595, 12.047927, 16.874464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327843, 11.906910, 17.057016>,  <20.438257, 11.671882, 17.361271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327843, 11.906910, 17.057016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352496, -0.674353, -0.648842,
		-0.894176, -0.447224, -0.020970,
		-0.276037, 0.587570, -0.760634,
		20.245031, 12.083181, 16.828827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892836, 11.253037, 16.939701>,  <20.438257, 11.671882, 17.361271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892836, 11.253037, 16.939701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.156178, 11.502135, 16.770582>,  <20.314182, 11.651594, 16.669111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.156178, 11.502135, 16.770582>,  <19.892836, 11.253037, 16.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.156178, 11.502135, 16.770582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232464, -0.702462, -0.672687,
		-0.715910, 0.344583, -0.607236,
		0.658357, 0.622744, -0.422796,
		20.353685, 11.688958, 16.643744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940363, 10.966558, 16.139624>,  <19.892836, 11.253037, 16.939701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940363, 10.966558, 16.139624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278376, 11.135817, 16.270388>,  <20.481182, 11.237372, 16.348846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278376, 11.135817, 16.270388>,  <19.940363, 10.966558, 16.139624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278376, 11.135817, 16.270388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526743, -0.553543, -0.645083,
		-0.092007, 0.717312, -0.690651,
		0.845030, 0.423148, 0.326909,
		20.531885, 11.262761, 16.368460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296299, 11.260586, 15.611259>,  <19.940363, 10.966558, 16.139624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296299, 11.260586, 15.611259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.592070, 11.184512, 15.869584>,  <20.769533, 11.138868, 16.024580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.592070, 11.184512, 15.869584>,  <20.296299, 11.260586, 15.611259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.592070, 11.184512, 15.869584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495183, -0.496263, -0.713104,
		0.456114, 0.847085, -0.272775,
		0.739428, -0.190183, 0.645815,
		20.813898, 11.127458, 16.063328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.052694, 11.460217, 15.239284>,  <20.296299, 11.260586, 15.611259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.052694, 11.460217, 15.239284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.997948, 11.157286, 15.494695>,  <20.965099, 10.975527, 15.647942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.997948, 11.157286, 15.494695>,  <21.052694, 11.460217, 15.239284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997948, 11.157286, 15.494695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320754, -0.643749, -0.694770,
		0.937222, 0.109721, 0.331023,
		-0.136865, -0.757330, 0.638529,
		20.956888, 10.930086, 15.686254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658064, 10.959915, 15.206344>,  <21.052694, 11.460217, 15.239284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658064, 10.959915, 15.206344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322369, 10.775545, 15.321741>,  <21.120953, 10.664923, 15.390980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322369, 10.775545, 15.321741>,  <21.658064, 10.959915, 15.206344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322369, 10.775545, 15.321741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219513, -0.772576, -0.595769,
		0.497489, -0.436663, 0.749554,
		-0.839237, -0.460925, 0.288495,
		21.070597, 10.637267, 15.408290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483932, 10.845256, 14.483966>,  <21.658064, 10.959915, 15.206344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483932, 10.845256, 14.483966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260365, 11.133089, 14.319134>,  <21.126225, 11.305789, 14.220235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260365, 11.133089, 14.319134>,  <21.483932, 10.845256, 14.483966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260365, 11.133089, 14.319134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829174, 0.490391, -0.268303,
		0.009014, -0.491645, -0.870749,
		-0.558918, 0.719584, -0.412080,
		21.092690, 11.348965, 14.195510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.700205, 10.927982, 13.741684>,  <21.483932, 10.845256, 14.483966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.700205, 10.927982, 13.741684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571962, 11.270220, 13.904250>,  <21.495018, 11.475562, 14.001790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571962, 11.270220, 13.904250>,  <21.700205, 10.927982, 13.741684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571962, 11.270220, 13.904250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757237, 0.489272, -0.432672,
		-0.569039, 0.169036, -0.804750,
		-0.320605, 0.855593, 0.406415,
		21.475780, 11.526897, 14.026175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567698, 11.433270, 13.236377>,  <21.700205, 10.927982, 13.741684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567698, 11.433270, 13.236377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.677647, 11.598527, 13.583653>,  <21.743616, 11.697681, 13.792020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.677647, 11.598527, 13.583653>,  <21.567698, 11.433270, 13.236377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677647, 11.598527, 13.583653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742008, 0.483090, -0.464810,
		-0.611448, 0.771969, -0.173768,
		0.274873, 0.413144, 0.868192,
		21.760109, 11.722470, 13.844110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913681, 11.013883, 12.696776>,  <21.567698, 11.433270, 13.236377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913681, 11.013883, 12.696776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.240458, 10.892587, 12.500550>,  <22.436523, 10.819809, 12.382814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.240458, 10.892587, 12.500550>,  <21.913681, 11.013883, 12.696776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240458, 10.892587, 12.500550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069074, 0.895933, -0.438786,
		0.572571, 0.324577, 0.752870,
		0.816940, -0.303239, -0.490565,
		22.485540, 10.801615, 12.353380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261257, 11.596456, 12.840289>,  <21.913681, 11.013883, 12.696776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261257, 11.596456, 12.840289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403719, 11.386045, 12.531367>,  <22.489197, 11.259800, 12.346014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403719, 11.386045, 12.531367>,  <22.261257, 11.596456, 12.840289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403719, 11.386045, 12.531367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067083, 0.809974, -0.582617,
		0.932016, 0.259310, 0.253188,
		0.356154, -0.526024, -0.772304,
		22.510565, 11.228238, 12.299676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.731182, 12.033026, 12.544062>,  <22.261257, 11.596456, 12.840289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.731182, 12.033026, 12.544062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.669588, 11.775533, 12.244223>,  <22.632631, 11.621037, 12.064320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.669588, 11.775533, 12.244223>,  <22.731182, 12.033026, 12.544062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.669588, 11.775533, 12.244223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065637, 0.763634, -0.642304,
		0.985891, -0.049704, -0.159842,
		-0.153986, -0.643733, -0.749597,
		22.623392, 11.582413, 12.019343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.288265, 12.088895, 12.025641>,  <22.731182, 12.033026, 12.544062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.288265, 12.088895, 12.025641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952250, 11.967456, 11.845790>,  <22.750641, 11.894592, 11.737879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952250, 11.967456, 11.845790>,  <23.288265, 12.088895, 12.025641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952250, 11.967456, 11.845790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083161, 0.746914, -0.659699,
		0.536116, -0.591564, -0.602189,
		-0.840038, -0.303596, -0.449628,
		22.700237, 11.876377, 11.710901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.408524, 12.317753, 11.397832>,  <23.288265, 12.088895, 12.025641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.408524, 12.317753, 11.397832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.018639, 12.242168, 11.350114>,  <22.784708, 12.196817, 11.321483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.018639, 12.242168, 11.350114>,  <23.408524, 12.317753, 11.397832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018639, 12.242168, 11.350114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040320, 0.673786, -0.737826,
		0.219799, -0.714357, -0.664366,
		-0.974712, -0.188960, -0.119295,
		22.726225, 12.185480, 11.314325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.253422, 12.328773, 10.672453>,  <23.408524, 12.317753, 11.397832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.253422, 12.328773, 10.672453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.900942, 12.391623, 10.850801>,  <22.689453, 12.429333, 10.957808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.900942, 12.391623, 10.850801>,  <23.253422, 12.328773, 10.672453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.900942, 12.391623, 10.850801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227608, 0.685628, -0.691454,
		-0.414345, -0.710792, -0.568412,
		-0.881200, 0.157125, 0.445868,
		22.636581, 12.438760, 10.984561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.921251, 12.603899, 10.120301>,  <23.253422, 12.328773, 10.672453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.921251, 12.603899, 10.120301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664841, 12.686034, 10.416117>,  <22.510994, 12.735315, 10.593606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664841, 12.686034, 10.416117>,  <22.921251, 12.603899, 10.120301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664841, 12.686034, 10.416117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356239, 0.773872, -0.523657,
		-0.679835, -0.599132, -0.422925,
		-0.641029, 0.205338, 0.739539,
		22.472532, 12.747636, 10.637979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.226591, 12.533813, 9.804989>,  <22.921251, 12.603899, 10.120301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.226591, 12.533813, 9.804989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225071, 12.782902, 10.117962>,  <22.224159, 12.932355, 10.305746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225071, 12.782902, 10.117962>,  <22.226591, 12.533813, 9.804989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225071, 12.782902, 10.117962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394533, 0.718034, -0.573385,
		-0.918874, -0.310874, 0.242957,
		-0.003799, 0.622723, 0.782433,
		22.223930, 12.969719, 10.352692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.693922, 12.980392, 9.658039>,  <22.226591, 12.533813, 9.804989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.693922, 12.980392, 9.658039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887945, 13.192441, 9.936230>,  <22.004360, 13.319670, 10.103145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887945, 13.192441, 9.936230>,  <21.693922, 12.980392, 9.658039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887945, 13.192441, 9.936230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145513, 0.833145, -0.533569,
		-0.862290, 0.157612, 0.481264,
		0.485059, 0.530121, 0.695478,
		22.033463, 13.351478, 10.144873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249649, 13.517183, 9.838539>,  <21.693922, 12.980392, 9.658039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249649, 13.517183, 9.838539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599186, 13.665483, 9.964363>,  <21.808908, 13.754462, 10.039857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599186, 13.665483, 9.964363>,  <21.249649, 13.517183, 9.838539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599186, 13.665483, 9.964363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231213, 0.885992, -0.401944,
		-0.427716, 0.278506, 0.859938,
		0.873842, 0.370747, 0.314559,
		21.861338, 13.776707, 10.058731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.139536, 14.187394, 10.078864>,  <21.249649, 13.517183, 9.838539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.139536, 14.187394, 10.078864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530323, 14.202686, 9.994891>,  <21.764795, 14.211862, 9.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530323, 14.202686, 9.994891>,  <21.139536, 14.187394, 10.078864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530323, 14.202686, 9.994891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144298, 0.843136, -0.517978,
		0.157199, 0.536340, 0.829233,
		0.976968, 0.038231, -0.209932,
		21.823414, 14.214155, 9.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.207418, 14.949769, 10.015496>,  <21.139536, 14.187394, 10.078864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.207418, 14.949769, 10.015496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.549181, 14.810019, 9.861650>,  <21.754238, 14.726170, 9.769341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.549181, 14.810019, 9.861650>,  <21.207418, 14.949769, 10.015496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549181, 14.810019, 9.861650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094399, 0.623521, -0.776086,
		0.510960, 0.699400, 0.499760,
		0.854405, -0.349373, -0.384617,
		21.805502, 14.705208, 9.746264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630665, 15.512952, 10.000756>,  <21.207418, 14.949769, 10.015496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630665, 15.512952, 10.000756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735107, 15.259523, 9.709438>,  <21.797773, 15.107467, 9.534648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735107, 15.259523, 9.709438>,  <21.630665, 15.512952, 10.000756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735107, 15.259523, 9.709438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014291, 0.756921, -0.653350,
		0.965204, 0.160186, 0.206691,
		0.261106, -0.633570, -0.728294,
		21.813438, 15.069452, 9.490950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230721, 15.815265, 9.638085>,  <21.630665, 15.512952, 10.000756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230721, 15.815265, 9.638085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093582, 15.538377, 9.384066>,  <22.011299, 15.372244, 9.231654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093582, 15.538377, 9.384066>,  <22.230721, 15.815265, 9.638085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093582, 15.538377, 9.384066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216250, 0.599708, -0.770445,
		0.914162, -0.401473, -0.055915,
		-0.342846, -0.692220, -0.635049,
		21.990728, 15.330710, 9.193551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.702440, 15.717957, 9.060378>,  <22.230721, 15.815265, 9.638085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.702440, 15.717957, 9.060378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395781, 15.560275, 8.857656>,  <22.211784, 15.465666, 8.736023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395781, 15.560275, 8.857656>,  <22.702440, 15.717957, 9.060378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395781, 15.560275, 8.857656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290866, 0.490461, -0.821489,
		0.572405, -0.777206, -0.261350,
		-0.766648, -0.394207, -0.506805,
		22.165785, 15.442014, 8.705615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.053680, 15.399340, 8.547148>,  <22.702440, 15.717957, 9.060378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.053680, 15.399340, 8.547148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.674288, 15.452851, 8.432266>,  <22.446651, 15.484958, 8.363338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.674288, 15.452851, 8.432266>,  <23.053680, 15.399340, 8.547148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.674288, 15.452851, 8.432266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316118, 0.460426, -0.829504,
		0.021266, -0.877560, -0.478995,
		-0.948481, 0.133779, -0.287204,
		22.389744, 15.492985, 8.346105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.101061, 15.371681, 7.864584>,  <23.053680, 15.399340, 8.547148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.101061, 15.371681, 7.864584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732590, 15.525244, 7.890046>,  <22.511507, 15.617381, 7.905324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732590, 15.525244, 7.890046>,  <23.101061, 15.371681, 7.864584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732590, 15.525244, 7.890046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186254, 0.578578, -0.794076,
		-0.341680, -0.719628, -0.604476,
		-0.921176, 0.383906, 0.063655,
		22.456238, 15.640415, 7.909142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.728193, 15.212195, 7.228941>,  <23.101061, 15.371681, 7.864584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.728193, 15.212195, 7.228941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.532288, 15.519977, 7.392929>,  <22.414745, 15.704645, 7.491322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.532288, 15.519977, 7.392929>,  <22.728193, 15.212195, 7.228941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532288, 15.519977, 7.392929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051275, 0.494834, -0.867474,
		-0.870347, -0.403835, -0.281804,
		-0.489762, 0.769453, 0.409970,
		22.385359, 15.750813, 7.515920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.282085, 15.453476, 6.697685>,  <22.728193, 15.212195, 7.228941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.282085, 15.453476, 6.697685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.305553, 15.754783, 6.959722>,  <22.319633, 15.935567, 7.116944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.305553, 15.754783, 6.959722>,  <22.282085, 15.453476, 6.697685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.305553, 15.754783, 6.959722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081074, 0.650460, -0.755201,
		-0.994980, 0.097418, -0.022908,
		0.058670, 0.753267, 0.655092,
		22.323154, 15.980762, 7.156250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.829060, 15.972326, 6.441803>,  <22.282085, 15.453476, 6.697685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.829060, 15.972326, 6.441803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067837, 16.189617, 6.677960>,  <22.211103, 16.319992, 6.819654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067837, 16.189617, 6.677960>,  <21.829060, 15.972326, 6.441803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067837, 16.189617, 6.677960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095070, 0.682809, -0.724385,
		-0.796630, 0.488546, 0.355954,
		0.596944, 0.543227, 0.590392,
		22.246920, 16.352585, 6.855078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726963, 16.761589, 6.410306>,  <21.829060, 15.972326, 6.441803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726963, 16.761589, 6.410306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.105080, 16.740526, 6.539086>,  <22.331949, 16.727888, 6.616354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.105080, 16.740526, 6.539086>,  <21.726963, 16.761589, 6.410306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.105080, 16.740526, 6.539086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269849, 0.680787, -0.680963,
		-0.183323, 0.730586, 0.657751,
		0.945291, -0.052657, 0.321951,
		22.388666, 16.724730, 6.635672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070469, 17.299923, 6.122172>,  <21.726963, 16.761589, 6.410306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070469, 17.299923, 6.122172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384029, 17.195148, 6.347344>,  <22.572166, 17.132284, 6.482447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384029, 17.195148, 6.347344>,  <22.070469, 17.299923, 6.122172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384029, 17.195148, 6.347344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349362, 0.935590, -0.051165,
		-0.513269, 0.236774, 0.824920,
		0.783901, -0.261935, 0.562929,
		22.619200, 17.116568, 6.516222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.270473, 17.696596, 6.826828>,  <22.070469, 17.299923, 6.122172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.270473, 17.696596, 6.826828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550598, 17.529387, 6.595374>,  <22.718674, 17.429060, 6.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550598, 17.529387, 6.595374>,  <22.270473, 17.696596, 6.826828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550598, 17.529387, 6.595374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419458, 0.896872, -0.140268,
		0.577598, -0.144482, 0.803433,
		0.700311, -0.418025, -0.578636,
		22.760691, 17.403978, 6.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.842690, 18.197975, 6.726835>,  <22.270473, 17.696596, 6.826828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.842690, 18.197975, 6.726835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971416, 17.944746, 6.445225>,  <23.048653, 17.792809, 6.276259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971416, 17.944746, 6.445225>,  <22.842690, 18.197975, 6.726835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971416, 17.944746, 6.445225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475984, 0.750963, -0.457705,
		0.818457, -0.187806, 0.543007,
		0.321819, -0.633075, -0.704023,
		23.067963, 17.754824, 6.234018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.579082, 18.861076, 6.669216>,  <22.842690, 18.197975, 6.726835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.579082, 18.861076, 6.669216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608891, 18.829824, 7.066877>,  <22.626776, 18.811073, 7.305474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608891, 18.829824, 7.066877>,  <22.579082, 18.861076, 6.669216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608891, 18.829824, 7.066877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996102, -0.041346, -0.077915,
		0.047192, 0.996085, 0.074744,
		0.074520, -0.078129, 0.994154,
		22.631247, 18.806385, 7.365124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.060549, 19.363533, 6.726732>,  <22.579082, 18.861076, 6.669216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.060549, 19.363533, 6.726732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.020918, 19.048922, 6.970552>,  <22.997139, 18.860155, 7.116845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.020918, 19.048922, 6.970552>,  <23.060549, 19.363533, 6.726732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.020918, 19.048922, 6.970552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854175, -0.381461, -0.353374,
		0.510459, 0.485652, 0.709629,
		-0.099079, -0.786530, 0.609552,
		22.991194, 18.812962, 7.153418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.625574, 19.320192, 7.132056>,  <23.060549, 19.363533, 6.726732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.625574, 19.320192, 7.132056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.470510, 18.951780, 7.116968>,  <23.377472, 18.730734, 7.107914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.470510, 18.951780, 7.116968>,  <23.625574, 19.320192, 7.132056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.470510, 18.951780, 7.116968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846525, -0.339507, -0.410036,
		0.364849, -0.190887, 0.911289,
		-0.387660, -0.921030, -0.037722,
		23.354212, 18.675470, 7.105651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.903275, 18.807737, 7.546583>,  <23.625574, 19.320192, 7.132056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.903275, 18.807737, 7.546583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761288, 18.631628, 7.216696>,  <23.676096, 18.525963, 7.018764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761288, 18.631628, 7.216696>,  <23.903275, 18.807737, 7.546583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.761288, 18.631628, 7.216696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926969, -0.280273, -0.249351,
		-0.121363, -0.852997, 0.507608,
		-0.354965, -0.440275, -0.824717,
		23.654799, 18.499546, 6.969281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291298, 18.199518, 7.162942>,  <23.903275, 18.807737, 7.546583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291298, 18.199518, 7.162942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478773, 18.048151, 6.843660>,  <24.591259, 17.957331, 6.652092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478773, 18.048151, 6.843660>,  <24.291298, 18.199518, 7.162942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478773, 18.048151, 6.843660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350182, -0.749972, 0.561173,
		-0.810989, -0.542532, -0.218989,
		0.468690, -0.378419, -0.798204,
		24.619381, 17.934626, 6.604199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.196680, 17.497801, 7.175889>,  <24.291298, 18.199518, 7.162942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.196680, 17.497801, 7.175889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538721, 17.573671, 6.982883>,  <24.743946, 17.619194, 6.867080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538721, 17.573671, 6.982883>,  <24.196680, 17.497801, 7.175889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538721, 17.573671, 6.982883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429468, -0.780505, 0.454279,
		-0.290439, -0.595681, -0.748872,
		0.855104, 0.189676, -0.482515,
		24.795252, 17.630573, 6.838129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446318, 16.888374, 6.928770>,  <24.196680, 17.497801, 7.175889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446318, 16.888374, 6.928770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774729, 17.116716, 6.931276>,  <24.971775, 17.253721, 6.932780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774729, 17.116716, 6.931276>,  <24.446318, 16.888374, 6.928770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774729, 17.116716, 6.931276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481584, -0.698442, 0.529392,
		0.306583, -0.431626, -0.848355,
		0.821026, 0.570856, 0.006266,
		25.021036, 17.287973, 6.933156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088957, 16.513601, 6.675971>,  <24.446318, 16.888374, 6.928770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088957, 16.513601, 6.675971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234743, 16.809217, 6.902593>,  <25.322214, 16.986588, 7.038567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234743, 16.809217, 6.902593>,  <25.088957, 16.513601, 6.675971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234743, 16.809217, 6.902593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569530, -0.658254, 0.492277,
		0.736750, 0.143252, -0.660817,
		0.364465, 0.739040, 0.566555,
		25.344082, 17.030930, 7.072560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836317, 16.454779, 6.619648>,  <25.088957, 16.513601, 6.675971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836317, 16.454779, 6.619648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735746, 16.657654, 6.949386>,  <25.675404, 16.779379, 7.147228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735746, 16.657654, 6.949386>,  <25.836317, 16.454779, 6.619648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735746, 16.657654, 6.949386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490863, -0.667226, 0.560235,
		0.834169, 0.545499, -0.081201,
		-0.251428, 0.507189, 0.824344,
		25.660318, 16.809811, 7.196689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458860, 16.410423, 7.110386>,  <25.836317, 16.454779, 6.619648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458860, 16.410423, 7.110386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192635, 16.562132, 7.367502>,  <26.032900, 16.653158, 7.521771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192635, 16.562132, 7.367502>,  <26.458860, 16.410423, 7.110386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192635, 16.562132, 7.367502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420416, -0.521088, 0.742777,
		0.616665, 0.764604, 0.187365,
		-0.665564, 0.379273, 0.642789,
		25.992966, 16.675913, 7.560338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839874, 16.771000, 7.768506>,  <26.458860, 16.410423, 7.110386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839874, 16.771000, 7.768506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477264, 16.622210, 7.848350>,  <26.259699, 16.532936, 7.896257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477264, 16.622210, 7.848350>,  <26.839874, 16.771000, 7.768506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477264, 16.622210, 7.848350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403760, -0.625942, 0.667214,
		-0.123242, 0.685442, 0.717621,
		-0.906526, -0.371976, 0.199612,
		26.205307, 16.510616, 7.908234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818333, 16.668291, 8.432077>,  <26.839874, 16.771000, 7.768506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818333, 16.668291, 8.432077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529341, 16.418301, 8.313805>,  <26.355946, 16.268307, 8.242841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529341, 16.418301, 8.313805>,  <26.818333, 16.668291, 8.432077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529341, 16.418301, 8.313805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258890, -0.641092, 0.722480,
		-0.641092, 0.445429, 0.624976,
		-0.722480, -0.624976, -0.295682,
		26.312597, 16.230808, 8.225101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637962, 16.337217, 9.055686>,  <26.818333, 16.668291, 8.432077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637962, 16.337217, 9.055686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486958, 16.096106, 8.774505>,  <26.396355, 15.951438, 8.605796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486958, 16.096106, 8.774505>,  <26.637962, 16.337217, 9.055686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486958, 16.096106, 8.774505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034023, -0.767640, 0.639978,
		-0.925380, 0.217682, 0.310300,
		-0.377510, -0.602780, -0.702952,
		26.373705, 15.915272, 8.563619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041224, 16.015190, 9.398656>,  <26.637962, 16.337217, 9.055686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041224, 16.015190, 9.398656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170387, 15.774601, 9.106365>,  <26.247885, 15.630247, 8.930991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170387, 15.774601, 9.106365>,  <26.041224, 16.015190, 9.398656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170387, 15.774601, 9.106365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136088, -0.734555, 0.664762,
		-0.936595, -0.314101, -0.155341,
		0.322909, -0.601473, -0.730726,
		26.267260, 15.594159, 8.887148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693773, 15.329418, 9.450907>,  <26.041224, 16.015190, 9.398656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693773, 15.329418, 9.450907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022749, 15.272126, 9.230697>,  <26.220135, 15.237751, 9.098571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022749, 15.272126, 9.230697>,  <25.693773, 15.329418, 9.450907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022749, 15.272126, 9.230697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132031, -0.893290, 0.429651,
		-0.553318, -0.426048, -0.715767,
		0.822440, -0.143231, -0.550525,
		26.269482, 15.229156, 9.065539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631969, 14.665274, 9.180890>,  <25.693773, 15.329418, 9.450907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631969, 14.665274, 9.180890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022654, 14.750840, 9.174281>,  <26.257065, 14.802180, 9.170316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022654, 14.750840, 9.174281>,  <25.631969, 14.665274, 9.180890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022654, 14.750840, 9.174281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188240, -0.817430, 0.544402,
		0.102950, -0.534834, -0.838662,
		0.976713, 0.213915, -0.016523,
		26.315668, 14.815015, 9.169324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981113, 13.979340, 9.350677>,  <25.631969, 14.665274, 9.180890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981113, 13.979340, 9.350677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296209, 14.223147, 9.386357>,  <26.485266, 14.369431, 9.407765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296209, 14.223147, 9.386357>,  <25.981113, 13.979340, 9.350677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296209, 14.223147, 9.386357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370686, -0.584679, 0.721625,
		0.491997, -0.535386, -0.686513,
		0.787738, 0.609518, 0.089200,
		26.532530, 14.406003, 9.413117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570538, 13.597067, 9.404376>,  <25.981113, 13.979340, 9.350677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570538, 13.597067, 9.404376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690081, 13.944700, 9.562049>,  <26.761806, 14.153280, 9.656652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690081, 13.944700, 9.562049>,  <26.570538, 13.597067, 9.404376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690081, 13.944700, 9.562049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493344, -0.494284, 0.715748,
		0.816882, -0.019439, -0.576477,
		0.298856, 0.869083, 0.394181,
		26.779737, 14.205425, 9.680304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221737, 13.535252, 9.386584>,  <26.570538, 13.597067, 9.404376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221737, 13.535252, 9.386584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163254, 13.822570, 9.658665>,  <27.128164, 13.994961, 9.821913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163254, 13.822570, 9.658665>,  <27.221737, 13.535252, 9.386584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163254, 13.822570, 9.658665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574073, -0.498364, 0.649671,
		0.805644, 0.485473, -0.339490,
		-0.146209, 0.718296, 0.680201,
		27.119390, 14.038058, 9.862725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925707, 13.686191, 9.745207>,  <27.221737, 13.535252, 9.386584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925707, 13.686191, 9.745207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664427, 13.830851, 10.011301>,  <27.507658, 13.917646, 10.170958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664427, 13.830851, 10.011301>,  <27.925707, 13.686191, 9.745207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664427, 13.830851, 10.011301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439736, -0.534036, 0.722107,
		0.616409, 0.764209, 0.189802,
		-0.653201, 0.361650, 0.665235,
		27.468466, 13.939345, 10.210872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351492, 14.096289, 10.299903>,  <27.925707, 13.686191, 9.745207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351492, 14.096289, 10.299903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002869, 13.943516, 10.422875>,  <27.793695, 13.851851, 10.496658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002869, 13.943516, 10.422875>,  <28.351492, 14.096289, 10.299903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002869, 13.943516, 10.422875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447123, -0.361888, 0.817996,
		-0.201164, 0.850391, 0.486178,
		-0.871558, -0.381933, 0.307430,
		27.741402, 13.828936, 10.515104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311140, 14.285730, 10.892578>,  <28.351492, 14.096289, 10.299903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311140, 14.285730, 10.892578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094112, 13.951881, 10.854583>,  <27.963896, 13.751572, 10.831785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094112, 13.951881, 10.854583>,  <28.311140, 14.285730, 10.892578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094112, 13.951881, 10.854583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547502, -0.437130, 0.713554,
		-0.637071, 0.335146, 0.694131,
		-0.542570, -0.834622, -0.094989,
		27.931341, 13.701494, 10.826086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114416, 14.118639, 11.519485>,  <28.311140, 14.285730, 10.892578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114416, 14.118639, 11.519485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087288, 13.790489, 11.292368>,  <28.071011, 13.593599, 11.156098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087288, 13.790489, 11.292368>,  <28.114416, 14.118639, 11.519485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087288, 13.790489, 11.292368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444572, -0.534329, 0.718922,
		-0.893172, -0.203665, 0.400955,
		-0.067823, -0.820373, -0.567792,
		28.066940, 13.544377, 11.122030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769833, 14.853512, 11.726710>,  <28.114416, 14.118639, 11.519485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769833, 14.853512, 11.726710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416656, 14.992174, 11.853357>,  <27.204750, 15.075372, 11.929345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416656, 14.992174, 11.853357>,  <27.769833, 14.853512, 11.726710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416656, 14.992174, 11.853357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340254, -0.937158, 0.077212,
		0.323486, -0.039557, 0.945406,
		-0.882940, 0.346655, 0.316617,
		27.151773, 15.096170, 11.948342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346350, 14.782512, 12.190207>,  <27.769833, 14.853512, 11.726710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346350, 14.782512, 12.190207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549603, 14.986213, 12.468045>,  <28.671555, 15.108433, 12.634748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549603, 14.986213, 12.468045>,  <28.346350, 14.782512, 12.190207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549603, 14.986213, 12.468045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710155, 0.704037, 0.003341,
		-0.487320, -0.494969, 0.719392,
		0.508132, 0.509252, 0.694596,
		28.702042, 15.138988, 12.676424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847704, 15.136692, 12.554866>,  <28.346350, 14.782512, 12.190207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847704, 15.136692, 12.554866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191092, 15.326062, 12.633755>,  <28.397125, 15.439685, 12.681088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191092, 15.326062, 12.633755>,  <27.847704, 15.136692, 12.554866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191092, 15.326062, 12.633755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508443, 0.836006, 0.206349,
		-0.067188, -0.277421, 0.958396,
		0.858471, 0.473426, 0.197222,
		28.448633, 15.468090, 12.692922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775122, 15.484098, 13.192735>,  <27.847704, 15.136692, 12.554866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775122, 15.484098, 13.192735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064289, 15.661313, 12.980656>,  <28.237789, 15.767642, 12.853408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064289, 15.661313, 12.980656>,  <27.775122, 15.484098, 13.192735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064289, 15.661313, 12.980656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452118, 0.883592, 0.121879,
		0.522476, 0.151604, 0.839068,
		0.722917, 0.443036, -0.530199,
		28.281164, 15.794224, 12.821596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433670, 16.094128, 13.511390>,  <27.775122, 15.484098, 13.192735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433670, 16.094128, 13.511390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223915, 15.781387, 13.376495>,  <27.098063, 15.593743, 13.295559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223915, 15.781387, 13.376495>,  <27.433670, 16.094128, 13.511390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223915, 15.781387, 13.376495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030474, -0.378571, 0.925070,
		-0.850934, 0.495372, 0.174692,
		-0.524387, -0.781850, -0.337236,
		27.066599, 15.546832, 13.275325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815407, 16.184027, 13.873915>,  <27.433670, 16.094128, 13.511390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815407, 16.184027, 13.873915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934643, 15.819469, 13.760423>,  <27.006184, 15.600735, 13.692327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934643, 15.819469, 13.760423>,  <26.815407, 16.184027, 13.873915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934643, 15.819469, 13.760423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243965, -0.214628, 0.945736,
		-0.922835, -0.351133, 0.158370,
		0.298089, -0.911395, -0.283731,
		27.024069, 15.546051, 13.675303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394577, 15.515720, 14.139098>,  <26.815407, 16.184027, 13.873915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394577, 15.515720, 14.139098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790697, 15.471375, 14.105599>,  <27.028370, 15.444769, 14.085500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790697, 15.471375, 14.105599>,  <26.394577, 15.515720, 14.139098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790697, 15.471375, 14.105599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044110, -0.320709, 0.946150,
		-0.131748, -0.940668, -0.312708,
		0.990301, -0.110860, -0.083746,
		27.087788, 15.438117, 14.080476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555407, 15.346166, 14.848071>,  <26.394577, 15.515720, 14.139098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555407, 15.346166, 14.848071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300177, 15.060091, 14.962171>,  <26.147038, 14.888446, 15.030630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300177, 15.060091, 14.962171>,  <26.555407, 15.346166, 14.848071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300177, 15.060091, 14.962171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341206, -0.069465, -0.937418,
		0.690245, -0.695472, -0.199702,
		-0.638076, -0.715188, 0.285248,
		26.108753, 14.845535, 15.047745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.925398, 21.027269, 20.334492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.544827, 21.148878, 20.353893>,  <18.316483, 21.221844, 20.365534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.544827, 21.148878, 20.353893>,  <18.925398, 21.027269, 20.334492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544827, 21.148878, 20.353893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250996, -0.674762, -0.694044,
		-0.178276, -0.672508, 0.718297,
		-0.951429, 0.304021, 0.048503,
		18.259398, 21.240084, 20.368444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530769, 20.377449, 20.321690>,  <18.925398, 21.027269, 20.334492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530769, 20.377449, 20.321690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.263557, 20.652874, 20.208824>,  <18.103230, 20.818129, 20.141104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.263557, 20.652874, 20.208824>,  <18.530769, 20.377449, 20.321690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263557, 20.652874, 20.208824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358559, -0.630113, -0.688763,
		-0.652057, -0.358936, 0.667822,
		-0.668025, 0.688566, -0.282170,
		18.063148, 20.859444, 20.124174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.905752, 20.054272, 20.367649>,  <18.530769, 20.377449, 20.321690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.905752, 20.054272, 20.367649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.904068, 20.364056, 20.114605>,  <17.903057, 20.549927, 19.962778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.904068, 20.364056, 20.114605>,  <17.905752, 20.054272, 20.367649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904068, 20.364056, 20.114605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288575, -0.606641, -0.740750,
		-0.957448, 0.179438, 0.226043,
		-0.004208, 0.774460, -0.632608,
		17.902805, 20.596394, 19.924822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286274, 19.966692, 20.077374>,  <17.905752, 20.054272, 20.367649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286274, 19.966692, 20.077374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.509914, 20.203491, 19.845186>,  <17.644098, 20.345572, 19.705873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.509914, 20.203491, 19.845186>,  <17.286274, 19.966692, 20.077374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509914, 20.203491, 19.845186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444507, -0.376964, -0.812595,
		-0.699871, 0.712346, 0.052386,
		0.559102, 0.591998, -0.580469,
		17.677645, 20.381090, 19.671045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775579, 20.180025, 19.514414>,  <17.286274, 19.966692, 20.077374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775579, 20.180025, 19.514414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.151239, 20.227282, 19.385393>,  <17.376635, 20.255636, 19.307980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.151239, 20.227282, 19.385393>,  <16.775579, 20.180025, 19.514414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151239, 20.227282, 19.385393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238820, -0.450371, -0.860308,
		-0.246906, 0.884991, -0.394751,
		0.939150, 0.118141, -0.322553,
		17.432983, 20.262724, 19.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761402, 20.601852, 18.797117>,  <16.775579, 20.180025, 19.514414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761402, 20.601852, 18.797117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.069496, 20.352289, 18.849993>,  <17.254353, 20.202551, 18.881718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.069496, 20.352289, 18.849993>,  <16.761402, 20.601852, 18.797117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069496, 20.352289, 18.849993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345314, -0.582243, -0.736037,
		0.536186, 0.521276, -0.663909,
		0.770235, -0.623910, 0.132187,
		17.300568, 20.165115, 18.889648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917519, 20.440592, 18.148636>,  <16.761402, 20.601852, 18.797117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917519, 20.440592, 18.148636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.099451, 20.159130, 18.366993>,  <17.208611, 19.990253, 18.498007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.099451, 20.159130, 18.366993>,  <16.917519, 20.440592, 18.148636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099451, 20.159130, 18.366993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186318, -0.674585, -0.714298,
		0.870869, 0.223177, -0.437927,
		0.454834, -0.703653, 0.545893,
		17.235901, 19.948034, 18.530760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362757, 20.196346, 17.574217>,  <16.917519, 20.440592, 18.148636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362757, 20.196346, 17.574217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.318193, 19.928411, 17.867857>,  <17.291454, 19.767651, 18.044041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.318193, 19.928411, 17.867857>,  <17.362757, 20.196346, 17.574217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318193, 19.928411, 17.867857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080427, -0.730200, -0.678484,
		0.990515, -0.134631, 0.027478,
		-0.111410, -0.669838, 0.734101,
		17.284771, 19.727461, 18.088087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.769876, 19.652426, 17.433699>,  <17.362757, 20.196346, 17.574217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.769876, 19.652426, 17.433699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.538626, 19.465170, 17.701015>,  <17.399876, 19.352816, 17.861406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.538626, 19.465170, 17.701015>,  <17.769876, 19.652426, 17.433699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538626, 19.465170, 17.701015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086014, -0.779509, -0.620458,
		0.811401, -0.416185, 0.410388,
		-0.578127, -0.468141, 0.668291,
		17.365189, 19.324728, 17.901503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965206, 18.953011, 17.331593>,  <17.769876, 19.652426, 17.433699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965206, 18.953011, 17.331593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.642731, 18.931900, 17.567312>,  <17.449245, 18.919233, 17.708744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.642731, 18.931900, 17.567312>,  <17.965206, 18.953011, 17.331593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642731, 18.931900, 17.567312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256010, -0.866827, -0.427865,
		0.533399, -0.495807, 0.685318,
		-0.806191, -0.052775, 0.589297,
		17.400873, 18.916067, 17.744101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074551, 18.322378, 17.650919>,  <17.965206, 18.953011, 17.331593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074551, 18.322378, 17.650919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.690914, 18.428831, 17.612312>,  <17.460732, 18.492702, 17.589148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.690914, 18.428831, 17.612312>,  <18.074551, 18.322378, 17.650919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.690914, 18.428831, 17.612312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146332, -0.757911, -0.635734,
		-0.242342, -0.595603, 0.765850,
		-0.959092, 0.266134, -0.096518,
		17.403187, 18.508671, 17.583357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730726, 17.779261, 17.800760>,  <18.074551, 18.322378, 17.650919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730726, 17.779261, 17.800760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.480310, 18.010889, 17.591858>,  <17.330061, 18.149866, 17.466516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.480310, 18.010889, 17.591858>,  <17.730726, 17.779261, 17.800760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480310, 18.010889, 17.591858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122340, -0.734380, -0.667622,
		-0.770139, -0.354061, 0.530591,
		-0.626034, 0.579074, -0.522259,
		17.292500, 18.184610, 17.435181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118414, 17.356543, 17.763708>,  <17.730726, 17.779261, 17.800760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118414, 17.356543, 17.763708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.091902, 17.639465, 17.482191>,  <17.075994, 17.809219, 17.313282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.091902, 17.639465, 17.482191>,  <17.118414, 17.356543, 17.763708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.091902, 17.639465, 17.482191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125631, -0.705645, -0.697340,
		-0.989861, 0.042199, 0.135629,
		-0.066278, 0.707308, -0.703791,
		17.072018, 17.851658, 17.271053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.629494, 17.066324, 17.281590>,  <17.118414, 17.356543, 17.763708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.629494, 17.066324, 17.281590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.839104, 17.346380, 17.087599>,  <16.964870, 17.514414, 16.971205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.839104, 17.346380, 17.087599>,  <16.629494, 17.066324, 17.281590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839104, 17.346380, 17.087599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109999, -0.509015, -0.853700,
		-0.844569, 0.500709, -0.189723,
		0.524027, 0.700139, -0.484976,
		16.996311, 17.556421, 16.942106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252008, 17.266327, 16.740442>,  <16.629494, 17.066324, 17.281590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.252008, 17.266327, 16.740442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.634186, 17.322937, 16.636826>,  <16.863491, 17.356903, 16.574656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.634186, 17.322937, 16.636826>,  <16.252008, 17.266327, 16.740442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634186, 17.322937, 16.636826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150772, -0.520481, -0.840456,
		-0.253772, 0.842063, -0.475951,
		0.955441, 0.141524, -0.259043,
		16.920818, 17.365395, 16.559113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279657, 16.949978, 16.115454>,  <16.252008, 17.266327, 16.740442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279657, 16.949978, 16.115454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.668190, 17.038733, 16.149582>,  <16.901310, 17.091986, 16.170059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.668190, 17.038733, 16.149582>,  <16.279657, 16.949978, 16.115454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668190, 17.038733, 16.149582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205566, -0.603708, -0.770246,
		-0.119398, 0.765705, -0.632013,
		0.971332, 0.221886, 0.085322,
		16.959589, 17.105299, 16.175179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408039, 16.867971, 15.497918>,  <16.279657, 16.949978, 16.115454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408039, 16.867971, 15.497918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.751108, 16.851242, 15.702916>,  <16.956949, 16.841204, 15.825915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.751108, 16.851242, 15.702916>,  <16.408039, 16.867971, 15.497918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751108, 16.851242, 15.702916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308304, -0.755834, -0.577636,
		0.411522, 0.653426, -0.635361,
		0.857670, -0.041826, 0.512496,
		17.008410, 16.838694, 15.856665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053448, 17.003712, 15.028285>,  <16.408039, 16.867971, 15.497918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053448, 17.003712, 15.028285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.142771, 16.794514, 15.357311>,  <17.196363, 16.668995, 15.554727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.142771, 16.794514, 15.357311>,  <17.053448, 17.003712, 15.028285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142771, 16.794514, 15.357311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245439, -0.786516, -0.566704,
		0.943342, 0.328437, -0.047270,
		0.223305, -0.522994, 0.822565,
		17.209763, 16.637615, 15.604080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738811, 16.762548, 14.972892>,  <17.053448, 17.003712, 15.028285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738811, 16.762548, 14.972892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.601355, 16.494087, 15.235636>,  <17.518881, 16.333010, 15.393282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.601355, 16.494087, 15.235636>,  <17.738811, 16.762548, 14.972892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601355, 16.494087, 15.235636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423087, -0.735093, -0.529750,
		0.838397, 0.095865, 0.536564,
		-0.343640, -0.671154, 0.656859,
		17.498262, 16.292742, 15.432693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257057, 16.321205, 15.003917>,  <17.738811, 16.762548, 14.972892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257057, 16.321205, 15.003917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.970217, 16.109823, 15.185687>,  <17.798113, 15.982994, 15.294749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.970217, 16.109823, 15.185687>,  <18.257057, 16.321205, 15.003917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970217, 16.109823, 15.185687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382415, -0.843423, -0.377355,
		0.582687, -0.096823, 0.806908,
		-0.717101, -0.528453, 0.454426,
		17.755087, 15.951287, 15.322015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584570, 15.736024, 15.180820>,  <18.257057, 16.321205, 15.003917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584570, 15.736024, 15.180820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.192928, 15.654721, 15.178307>,  <17.957943, 15.605940, 15.176798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.192928, 15.654721, 15.178307>,  <18.584570, 15.736024, 15.180820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192928, 15.654721, 15.178307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178533, -0.844387, -0.505111,
		0.097360, -0.495679, 0.863032,
		-0.979106, -0.203257, -0.006286,
		17.899197, 15.593744, 15.176421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.549473, 15.186138, 15.608753>,  <18.584570, 15.736024, 15.180820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.549473, 15.186138, 15.608753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.264238, 15.192052, 15.328384>,  <18.093098, 15.195601, 15.160163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.264238, 15.192052, 15.328384>,  <18.549473, 15.186138, 15.608753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264238, 15.192052, 15.328384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407630, -0.804670, -0.431676,
		-0.570394, -0.593538, 0.567771,
		-0.713084, 0.014785, -0.700923,
		18.050314, 15.196487, 15.118108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880964, 14.670224, 15.340850>,  <18.549473, 15.186138, 15.608753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.880964, 14.670224, 15.340850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.261553, 14.624833, 15.226428>,  <19.489906, 14.597599, 15.157775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.261553, 14.624833, 15.226428>,  <18.880964, 14.670224, 15.340850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261553, 14.624833, 15.226428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277160, 0.719948, 0.636284,
		0.133741, -0.684688, 0.716461,
		0.951470, -0.113477, -0.286055,
		19.546993, 14.590790, 15.140612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149652, 14.741221, 15.986935>,  <18.880964, 14.670224, 15.340850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149652, 14.741221, 15.986935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.441490, 14.765090, 15.714426>,  <19.616592, 14.779411, 15.550921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.441490, 14.765090, 15.714426>,  <19.149652, 14.741221, 15.986935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441490, 14.765090, 15.714426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503220, 0.627737, 0.593898,
		0.463098, -0.776135, 0.427966,
		0.729595, 0.059672, -0.681270,
		19.660368, 14.782991, 15.510045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756832, 14.579509, 16.358274>,  <19.149652, 14.741221, 15.986935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756832, 14.579509, 16.358274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.869886, 14.790464, 16.037781>,  <19.937719, 14.917038, 15.845484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.869886, 14.790464, 16.037781>,  <19.756832, 14.579509, 16.358274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869886, 14.790464, 16.037781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481109, 0.644692, 0.594059,
		0.829850, -0.553384, -0.071519,
		0.282635, 0.527388, -0.801236,
		19.954678, 14.948681, 15.797410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.505568, 14.695005, 16.413132>,  <19.756832, 14.579509, 16.358274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.505568, 14.695005, 16.413132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.338787, 14.983616, 16.192024>,  <20.238718, 15.156782, 16.059361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.338787, 14.983616, 16.192024>,  <20.505568, 14.695005, 16.413132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338787, 14.983616, 16.192024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295846, 0.682768, 0.668059,
		0.859434, 0.115014, -0.498142,
		-0.416951, 0.721526, -0.552767,
		20.213701, 15.200073, 16.026194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.982399, 15.160465, 16.403006>,  <20.505568, 14.695005, 16.413132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.982399, 15.160465, 16.403006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.686413, 15.392713, 16.267164>,  <20.508821, 15.532061, 16.185659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.686413, 15.392713, 16.267164>,  <20.982399, 15.160465, 16.403006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.686413, 15.392713, 16.267164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256418, 0.710248, 0.655590,
		0.621850, 0.398035, -0.674441,
		-0.739968, 0.580617, -0.339604,
		20.464422, 15.566897, 16.165283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296488, 15.829397, 16.364500>,  <20.982399, 15.160465, 16.403006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296488, 15.829397, 16.364500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.899115, 15.874936, 16.369129>,  <20.660690, 15.902260, 16.371906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.899115, 15.874936, 16.369129>,  <21.296488, 15.829397, 16.364500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899115, 15.874936, 16.369129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087518, 0.690717, 0.717809,
		0.073727, 0.714107, -0.696144,
		-0.993431, 0.113847, 0.011573,
		20.601086, 15.909090, 16.372601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236681, 16.435089, 16.267937>,  <21.296488, 15.829397, 16.364500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236681, 16.435089, 16.267937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.886049, 16.355650, 16.443283>,  <20.675671, 16.307985, 16.548491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.886049, 16.355650, 16.443283>,  <21.236681, 16.435089, 16.267937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.886049, 16.355650, 16.443283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165607, 0.730769, 0.662231,
		-0.451862, 0.653096, -0.607689,
		-0.876581, -0.198599, 0.438365,
		20.623075, 16.296070, 16.574793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137440, 16.983576, 16.483984>,  <21.236681, 16.435089, 16.267937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137440, 16.983576, 16.483984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.869158, 16.779173, 16.699030>,  <20.708189, 16.656532, 16.828058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.869158, 16.779173, 16.699030>,  <21.137440, 16.983576, 16.483984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.869158, 16.779173, 16.699030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109932, 0.648328, 0.753383,
		-0.733534, 0.564398, -0.378660,
		-0.670703, -0.511005, 0.537616,
		20.667946, 16.625872, 16.860315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652126, 17.478834, 16.760471>,  <21.137440, 16.983576, 16.483984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652126, 17.478834, 16.760471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.628468, 17.161375, 17.002670>,  <20.614273, 16.970900, 17.147989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.628468, 17.161375, 17.002670>,  <20.652126, 17.478834, 16.760471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628468, 17.161375, 17.002670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264371, 0.572449, 0.776151,
		-0.962606, 0.205982, 0.175959,
		-0.059146, -0.793646, 0.605498,
		20.610723, 16.923281, 17.184320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176121, 17.680216, 17.289455>,  <20.652126, 17.478834, 16.760471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176121, 17.680216, 17.289455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.368704, 17.362677, 17.438051>,  <20.484253, 17.172153, 17.527208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.368704, 17.362677, 17.438051>,  <20.176121, 17.680216, 17.289455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.368704, 17.362677, 17.438051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121617, 0.480255, 0.868657,
		-0.867991, -0.373041, 0.327768,
		0.481457, -0.793849, 0.371489,
		20.513142, 17.124521, 17.549498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841743, 17.570593, 18.042084>,  <20.176121, 17.680216, 17.289455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.841743, 17.570593, 18.042084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.193443, 17.381542, 18.018265>,  <20.404463, 17.268112, 18.003973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.193443, 17.381542, 18.018265>,  <19.841743, 17.570593, 18.042084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193443, 17.381542, 18.018265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346720, 0.549218, 0.760358,
		-0.326661, -0.689191, 0.646768,
		0.879249, -0.472627, -0.059548,
		20.457218, 17.239754, 18.000401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954136, 17.161673, 18.710316>,  <19.841743, 17.570593, 18.042084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954136, 17.161673, 18.710316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.320784, 17.212811, 18.558807>,  <20.540771, 17.243494, 18.467901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.320784, 17.212811, 18.558807>,  <19.954136, 17.161673, 18.710316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320784, 17.212811, 18.558807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270000, 0.500745, 0.822408,
		0.294810, -0.856102, 0.424473,
		0.916618, 0.127846, -0.378772,
		20.595768, 17.251165, 18.445175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.331059, 17.131796, 19.252626>,  <19.954136, 17.161673, 18.710316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.331059, 17.131796, 19.252626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.579330, 17.309898, 18.994478>,  <20.728294, 17.416759, 18.839590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.579330, 17.309898, 18.994478>,  <20.331059, 17.131796, 19.252626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579330, 17.309898, 18.994478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325117, 0.602856, 0.728604,
		0.713480, -0.662051, 0.229421,
		0.620681, 0.445255, -0.645370,
		20.765535, 17.443476, 18.800867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.916117, 17.171053, 19.695311>,  <20.331059, 17.131796, 19.252626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.916117, 17.171053, 19.695311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.930317, 17.461901, 19.421074>,  <20.938837, 17.636410, 19.256531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.930317, 17.461901, 19.421074>,  <20.916117, 17.171053, 19.695311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930317, 17.461901, 19.421074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129413, 0.683594, 0.718298,
		0.990955, 0.063226, 0.118365,
		0.035499, 0.727119, -0.685593,
		20.940966, 17.680037, 19.215397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413000, 17.723022, 19.821554>,  <20.916117, 17.171053, 19.695311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413000, 17.723022, 19.821554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.198977, 17.913633, 19.542517>,  <21.070562, 18.028000, 19.375095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.198977, 17.913633, 19.542517>,  <21.413000, 17.723022, 19.821554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198977, 17.913633, 19.542517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065960, 0.799649, 0.596834,
		0.842236, 0.365354, -0.396427,
		-0.535058, 0.476527, -0.697592,
		21.038460, 18.056591, 19.333239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666113, 18.348503, 19.864962>,  <21.413000, 17.723022, 19.821554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666113, 18.348503, 19.864962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.299414, 18.387665, 19.710049>,  <21.079393, 18.411161, 19.617102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.299414, 18.387665, 19.710049>,  <21.666113, 18.348503, 19.864962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.299414, 18.387665, 19.710049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188378, 0.748978, 0.635253,
		0.352258, 0.655322, -0.668181,
		-0.916748, 0.097902, -0.387282,
		21.024389, 18.417036, 19.593864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.563814, 19.062704, 19.806536>,  <21.666113, 18.348503, 19.864962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.563814, 19.062704, 19.806536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.187475, 18.928209, 19.789791>,  <20.961672, 18.847511, 19.779745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.187475, 18.928209, 19.789791>,  <21.563814, 19.062704, 19.806536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187475, 18.928209, 19.789791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293364, 0.746525, 0.597191,
		-0.169548, 0.574145, -0.801006,
		-0.940846, -0.336239, -0.041862,
		20.905222, 18.827337, 19.777233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273283, 19.733267, 19.606781>,  <21.563814, 19.062704, 19.806536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273283, 19.733267, 19.606781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.974743, 19.509632, 19.751217>,  <20.795620, 19.375450, 19.837877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.974743, 19.509632, 19.751217>,  <21.273283, 19.733267, 19.606781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974743, 19.509632, 19.751217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394148, 0.808457, 0.437087,
		-0.536294, 0.183897, -0.823754,
		-0.746349, -0.559088, 0.361088,
		20.750837, 19.341906, 19.859543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.528873, 20.163832, 19.515394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.475119, 19.873358, 19.785088>,  <20.442865, 19.699074, 19.946903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.475119, 19.873358, 19.785088>,  <20.528873, 20.163832, 19.515394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.475119, 19.873358, 19.785088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464372, 0.647221, 0.604535,
		-0.875385, -0.231855, -0.424198,
		-0.134386, -0.726187, 0.674235,
		20.434803, 19.655502, 19.987358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888893, 20.330399, 19.792171>,  <20.528873, 20.163832, 19.515394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888893, 20.330399, 19.792171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.048882, 20.096443, 20.074427>,  <20.144875, 19.956070, 20.243780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.048882, 20.096443, 20.074427>,  <19.888893, 20.330399, 19.792171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048882, 20.096443, 20.074427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343522, 0.618113, 0.707056,
		-0.849715, -0.525205, 0.046305,
		0.399971, -0.584890, 0.705639,
		20.168873, 19.920977, 20.286118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399027, 20.324045, 20.460194>,  <19.888893, 20.330399, 19.792171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399027, 20.324045, 20.460194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.748547, 20.202723, 20.612236>,  <19.958258, 20.129929, 20.703463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.748547, 20.202723, 20.612236>,  <19.399027, 20.324045, 20.460194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748547, 20.202723, 20.612236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195632, 0.496354, 0.845790,
		-0.445204, -0.813410, 0.374376,
		0.873797, -0.303309, 0.380108,
		20.010685, 20.111731, 20.726269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199766, 20.215158, 21.169786>,  <19.399027, 20.324045, 20.460194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199766, 20.215158, 21.169786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.596935, 20.202433, 21.215561>,  <19.835236, 20.194798, 21.243025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.596935, 20.202433, 21.215561>,  <19.199766, 20.215158, 21.169786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596935, 20.202433, 21.215561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077515, 0.556424, 0.827275,
		-0.089995, -0.830289, 0.550020,
		0.992921, -0.031816, 0.114435,
		19.894812, 20.192888, 21.249891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290146, 20.059357, 21.938959>,  <19.199766, 20.215158, 21.169786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.290146, 20.059357, 21.938959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.622826, 20.219526, 21.785110>,  <19.822433, 20.315628, 21.692801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.622826, 20.219526, 21.785110>,  <19.290146, 20.059357, 21.938959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622826, 20.219526, 21.785110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200862, 0.428816, 0.880779,
		0.517619, -0.809800, 0.276216,
		0.831700, 0.400426, -0.384621,
		19.872335, 20.339655, 21.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628294, 20.139889, 22.510681>,  <19.290146, 20.059357, 21.938959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628294, 20.139889, 22.510681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.880865, 20.340544, 22.274155>,  <20.032408, 20.460938, 22.132238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.880865, 20.340544, 22.274155>,  <19.628294, 20.139889, 22.510681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880865, 20.340544, 22.274155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272688, 0.570210, 0.774921,
		0.725904, -0.650553, 0.223257,
		0.631431, 0.501639, -0.591315,
		20.070293, 20.491035, 22.096760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298670, 20.176395, 22.874063>,  <19.628294, 20.139889, 22.510681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298670, 20.176395, 22.874063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.257298, 20.470325, 22.605934>,  <20.232473, 20.646685, 22.445057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.257298, 20.470325, 22.605934>,  <20.298670, 20.176395, 22.874063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.257298, 20.470325, 22.605934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270121, 0.669360, 0.692092,
		0.957255, -0.109483, -0.267725,
		-0.103432, 0.734827, -0.670322,
		20.226269, 20.690773, 22.404837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953083, 20.544729, 22.942335>,  <20.298670, 20.176395, 22.874063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953083, 20.544729, 22.942335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675188, 20.777578, 22.773350>,  <20.508451, 20.917288, 22.671959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675188, 20.777578, 22.773350>,  <20.953083, 20.544729, 22.942335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675188, 20.777578, 22.773350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424397, 0.805976, 0.412662,
		0.580715, 0.107399, -0.806992,
		-0.694735, 0.582124, -0.422462,
		20.466768, 20.952215, 22.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304691, 21.153383, 22.815882>,  <20.953083, 20.544729, 22.942335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304691, 21.153383, 22.815882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.917315, 21.250816, 22.794760>,  <20.684889, 21.309277, 22.782085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.917315, 21.250816, 22.794760>,  <21.304691, 21.153383, 22.815882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917315, 21.250816, 22.794760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173895, 0.812126, 0.556966,
		0.178553, 0.530206, -0.828855,
		-0.968442, 0.243582, -0.052807,
		20.626781, 21.323891, 22.778917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268641, 21.927361, 22.656612>,  <21.304691, 21.153383, 22.815882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268641, 21.927361, 22.656612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.912476, 21.822340, 22.805328>,  <20.698776, 21.759327, 22.894558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.912476, 21.822340, 22.805328>,  <21.268641, 21.927361, 22.656612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.912476, 21.822340, 22.805328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026893, 0.785076, 0.618816,
		-0.454355, 0.561001, -0.691982,
		-0.890415, -0.262553, 0.371790,
		20.645351, 21.743574, 22.916866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844025, 22.629719, 22.741354>,  <21.268641, 21.927361, 22.656612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844025, 22.629719, 22.741354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653536, 22.360809, 22.968073>,  <20.539242, 22.199463, 23.104105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653536, 22.360809, 22.968073>,  <20.844025, 22.629719, 22.741354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653536, 22.360809, 22.968073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151903, 0.697788, 0.700012,
		-0.866105, 0.247263, -0.434423,
		-0.476223, -0.672274, 0.566798,
		20.510670, 22.159126, 23.138113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297562, 22.969866, 23.065794>,  <20.844025, 22.629719, 22.741354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297562, 22.969866, 23.065794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.357306, 22.645979, 23.292791>,  <20.393152, 22.451647, 23.428989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.357306, 22.645979, 23.292791>,  <20.297562, 22.969866, 23.065794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357306, 22.645979, 23.292791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012856, 0.575473, 0.817720,
		-0.988699, -0.114840, 0.096363,
		0.149361, -0.809718, 0.567493,
		20.402115, 22.403063, 23.463039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775858, 22.974880, 23.461100>,  <20.297562, 22.969866, 23.065794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775858, 22.974880, 23.461100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.066860, 22.762869, 23.635366>,  <20.241461, 22.635662, 23.739927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.066860, 22.762869, 23.635366>,  <19.775858, 22.974880, 23.461100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066860, 22.762869, 23.635366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074204, 0.570484, 0.817950,
		-0.682078, -0.627391, 0.375700,
		0.727505, -0.530027, 0.435669,
		20.285112, 22.603861, 23.766068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594818, 22.835611, 24.154474>,  <19.775858, 22.974880, 23.461100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594818, 22.835611, 24.154474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.979906, 22.732635, 24.187687>,  <20.210958, 22.670851, 24.207615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.979906, 22.732635, 24.187687>,  <19.594818, 22.835611, 24.154474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979906, 22.732635, 24.187687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056957, 0.493006, 0.868159,
		-0.264435, -0.831065, 0.489290,
		0.962720, -0.257440, 0.083033,
		20.268723, 22.655403, 24.212597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.673174, 22.618050, 24.898321>,  <19.594818, 22.835611, 24.154474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.673174, 22.618050, 24.898321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.032146, 22.732826, 24.764290>,  <20.247530, 22.801693, 24.683870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.032146, 22.732826, 24.764290>,  <19.673174, 22.618050, 24.898321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032146, 22.732826, 24.764290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202292, 0.407321, 0.890600,
		0.392029, -0.867039, 0.307499,
		0.897435, 0.286937, -0.335077,
		20.301376, 22.818909, 24.663767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118137, 22.453104, 25.433119>,  <19.673174, 22.618050, 24.898321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118137, 22.453104, 25.433119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.328196, 22.718153, 25.219519>,  <20.454231, 22.877182, 25.091358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.328196, 22.718153, 25.219519>,  <20.118137, 22.453104, 25.433119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.328196, 22.718153, 25.219519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209474, 0.507532, 0.835782,
		0.824829, -0.550766, 0.127726,
		0.525146, 0.662622, -0.533998,
		20.485739, 22.916939, 25.059319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693380, 22.545240, 25.703428>,  <20.118137, 22.453104, 25.433119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.693380, 22.545240, 25.703428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705153, 22.883085, 25.489599>,  <20.712215, 23.085793, 25.361301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705153, 22.883085, 25.489599>,  <20.693380, 22.545240, 25.703428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705153, 22.883085, 25.489599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207563, 0.517983, 0.829826,
		0.977779, -0.135380, -0.160066,
		0.029431, 0.844610, -0.534572,
		20.713982, 23.136469, 25.329227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243446, 22.912041, 25.998526>,  <20.693380, 22.545240, 25.703428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243446, 22.912041, 25.998526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.015831, 23.186655, 25.817478>,  <20.879263, 23.351423, 25.708849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.015831, 23.186655, 25.817478>,  <21.243446, 22.912041, 25.998526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015831, 23.186655, 25.817478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124136, 0.615832, 0.778036,
		0.812889, 0.386545, -0.435655,
		-0.569036, 0.686538, -0.452619,
		20.845119, 23.392616, 25.681692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565680, 23.556293, 26.156733>,  <21.243446, 22.912041, 25.998526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565680, 23.556293, 26.156733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.198746, 23.667875, 26.043114>,  <20.978586, 23.734823, 25.974943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.198746, 23.667875, 26.043114>,  <21.565680, 23.556293, 26.156733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198746, 23.667875, 26.043114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107543, 0.513320, 0.851433,
		0.383315, 0.811596, -0.440887,
		-0.917335, 0.278953, -0.284045,
		20.923546, 23.751560, 25.957901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505636, 24.284779, 26.189032>,  <21.565680, 23.556293, 26.156733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505636, 24.284779, 26.189032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.125984, 24.163563, 26.223251>,  <20.898193, 24.090834, 26.243782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.125984, 24.163563, 26.223251>,  <21.505636, 24.284779, 26.189032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125984, 24.163563, 26.223251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125804, 0.613995, 0.779220,
		-0.288660, 0.728819, -0.620885,
		-0.949131, -0.303039, 0.085548,
		20.841246, 24.072651, 26.248915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.136690, 24.909561, 26.496647>,  <21.505636, 24.284779, 26.189032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.136690, 24.909561, 26.496647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.918743, 24.585705, 26.583920>,  <20.787975, 24.391392, 26.636282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.918743, 24.585705, 26.583920>,  <21.136690, 24.909561, 26.496647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918743, 24.585705, 26.583920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269336, 0.415392, 0.868854,
		-0.794090, 0.414645, -0.444398,
		-0.544866, -0.809641, 0.218180,
		20.755283, 24.342812, 26.649374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616522, 25.176001, 26.787428>,  <21.136690, 24.909561, 26.496647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616522, 25.176001, 26.787428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.609955, 24.790833, 26.895140>,  <20.606014, 24.559731, 26.959766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.609955, 24.790833, 26.895140>,  <20.616522, 25.176001, 26.787428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609955, 24.790833, 26.895140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245625, 0.264946, 0.932455,
		-0.969226, -0.050831, -0.240869,
		-0.016420, -0.962923, 0.269278,
		20.605028, 24.501955, 26.975924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982265, 25.065687, 27.052029>,  <20.616522, 25.176001, 26.787428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982265, 25.065687, 27.052029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.236298, 24.790754, 27.193026>,  <20.388718, 24.625795, 27.277624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.236298, 24.790754, 27.193026>,  <19.982265, 25.065687, 27.052029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.236298, 24.790754, 27.193026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224938, 0.271995, 0.935640,
		-0.738969, -0.673495, 0.018132,
		0.635081, -0.687330, 0.352491,
		20.426823, 24.584555, 27.298773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606544, 24.617746, 27.533562>,  <19.982265, 25.065687, 27.052029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606544, 24.617746, 27.533562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.000954, 24.606035, 27.599173>,  <20.237598, 24.599009, 27.638540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.000954, 24.606035, 27.599173>,  <19.606544, 24.617746, 27.533562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.000954, 24.606035, 27.599173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129966, 0.480891, 0.867094,
		-0.104267, -0.876291, 0.470363,
		0.986021, -0.029278, 0.164029,
		20.296761, 24.597252, 27.648382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101555, 25.061300, 27.191170>,  <19.606544, 24.617746, 27.533562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101555, 25.061300, 27.191170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.744276, 25.239021, 27.163471>,  <18.529909, 25.345654, 27.146852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.744276, 25.239021, 27.163471>,  <19.101555, 25.061300, 27.191170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.744276, 25.239021, 27.163471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188683, -0.510109, -0.839159,
		-0.408161, -0.736469, 0.539460,
		-0.893198, 0.444299, -0.069247,
		18.476316, 25.372311, 27.142696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516218, 24.575615, 27.256887>,  <19.101555, 25.061300, 27.191170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516218, 24.575615, 27.256887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382441, 24.894262, 27.055475>,  <18.302174, 25.085451, 26.934628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382441, 24.894262, 27.055475>,  <18.516218, 24.575615, 27.256887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382441, 24.894262, 27.055475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201249, -0.582345, -0.787638,
		-0.920677, -0.162086, 0.355080,
		-0.334444, 0.796619, -0.503532,
		18.282106, 25.133247, 26.904415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955873, 24.356514, 26.933216>,  <18.516218, 24.575615, 27.256887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955873, 24.356514, 26.933216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.022371, 24.689425, 26.721676>,  <18.062269, 24.889170, 26.594751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.022371, 24.689425, 26.721676>,  <17.955873, 24.356514, 26.933216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022371, 24.689425, 26.721676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262601, -0.479579, -0.837284,
		-0.950475, 0.278070, 0.138828,
		0.166245, 0.832275, -0.528850,
		18.072245, 24.939106, 26.563021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379303, 24.354532, 26.553122>,  <17.955873, 24.356514, 26.933216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379303, 24.354532, 26.553122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.666853, 24.576834, 26.386097>,  <17.839382, 24.710215, 26.285883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.666853, 24.576834, 26.386097>,  <17.379303, 24.354532, 26.553122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666853, 24.576834, 26.386097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089606, -0.521589, -0.848478,
		-0.689340, 0.647366, -0.325159,
		0.718875, 0.555754, -0.417560,
		17.882515, 24.743561, 26.260830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068914, 24.515036, 25.895729>,  <17.379303, 24.354532, 26.553122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068914, 24.515036, 25.895729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.456549, 24.597490, 25.841494>,  <17.689129, 24.646963, 25.808952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.456549, 24.597490, 25.841494>,  <17.068914, 24.515036, 25.895729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456549, 24.597490, 25.841494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023518, -0.469858, -0.882429,
		-0.245608, 0.858336, -0.450484,
		0.969084, 0.206137, -0.135587,
		17.747274, 24.659332, 25.800817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197960, 24.877449, 25.258205>,  <17.068914, 24.515036, 25.895729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.197960, 24.877449, 25.258205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.558720, 24.720900, 25.331306>,  <17.775177, 24.626970, 25.375168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.558720, 24.720900, 25.331306>,  <17.197960, 24.877449, 25.258205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.558720, 24.720900, 25.331306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073934, -0.276977, -0.958028,
		0.425567, 0.877559, -0.220870,
		0.901902, -0.391375, 0.182754,
		17.829290, 24.603487, 25.386133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680847, 25.158281, 24.710329>,  <17.197960, 24.877449, 25.258205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680847, 25.158281, 24.710329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.846670, 24.824999, 24.856707>,  <17.946163, 24.625031, 24.944532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.846670, 24.824999, 24.856707>,  <17.680847, 25.158281, 24.710329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846670, 24.824999, 24.856707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034168, -0.387591, -0.921198,
		0.909382, 0.394391, -0.132209,
		0.414555, -0.833204, 0.365944,
		17.971037, 24.575037, 24.966490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.996328, 24.875149, 24.175722>,  <17.680847, 25.158281, 24.710329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.996328, 24.875149, 24.175722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.004652, 24.560463, 24.422510>,  <18.009645, 24.371653, 24.570583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.004652, 24.560463, 24.422510>,  <17.996328, 24.875149, 24.175722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004652, 24.560463, 24.422510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088615, -0.613222, -0.784924,
		0.995849, 0.071006, 0.056954,
		0.020809, -0.786713, 0.616969,
		18.010895, 24.324450, 24.607601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579468, 24.511135, 24.038769>,  <17.996328, 24.875149, 24.175722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579468, 24.511135, 24.038769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.356895, 24.238186, 24.228401>,  <18.223352, 24.074417, 24.342180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.356895, 24.238186, 24.228401>,  <18.579468, 24.511135, 24.038769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356895, 24.238186, 24.228401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124880, -0.632767, -0.764206,
		0.821456, -0.366024, 0.437306,
		-0.556431, -0.682373, 0.474081,
		18.189966, 24.033474, 24.370626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929098, 23.928165, 24.014299>,  <18.579468, 24.511135, 24.038769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929098, 23.928165, 24.014299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.540644, 23.845638, 24.062181>,  <18.307571, 23.796122, 24.090912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.540644, 23.845638, 24.062181>,  <18.929098, 23.928165, 24.014299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540644, 23.845638, 24.062181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106525, -0.824156, -0.556254,
		0.213423, -0.527446, 0.822345,
		-0.971135, -0.206317, 0.119708,
		18.249304, 23.783743, 24.098093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.898853, 23.205175, 24.008341>,  <18.929098, 23.928165, 24.014299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.898853, 23.205175, 24.008341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.527184, 23.325951, 23.923050>,  <18.304182, 23.398417, 23.871876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.527184, 23.325951, 23.923050>,  <18.898853, 23.205175, 24.008341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527184, 23.325951, 23.923050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083321, -0.733096, -0.675002,
		-0.360127, -0.609429, 0.706332,
		-0.929175, 0.301939, -0.213229,
		18.248430, 23.416533, 23.859081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526119, 22.564669, 24.009974>,  <18.898853, 23.205175, 24.008341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.526119, 22.564669, 24.009974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.349394, 22.841091, 23.781153>,  <18.243359, 23.006945, 23.643860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.349394, 22.841091, 23.781153>,  <18.526119, 22.564669, 24.009974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349394, 22.841091, 23.781153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050954, -0.655964, -0.753071,
		-0.895659, -0.303568, 0.325025,
		-0.441813, 0.691056, -0.572052,
		18.216850, 23.048409, 23.609537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886198, 22.217304, 23.656679>,  <18.526119, 22.564669, 24.009974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886198, 22.217304, 23.656679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.959423, 22.547716, 23.443451>,  <18.003359, 22.745964, 23.315514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.959423, 22.547716, 23.443451>,  <17.886198, 22.217304, 23.656679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959423, 22.547716, 23.443451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118497, -0.519739, -0.846067,
		-0.975933, 0.218052, 0.002736,
		0.183065, 0.826029, -0.533069,
		18.014343, 22.795525, 23.283529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553585, 22.073799, 23.032259>,  <17.886198, 22.217304, 23.656679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553585, 22.073799, 23.032259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.727077, 22.420618, 22.934193>,  <17.831173, 22.628710, 22.875353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.727077, 22.420618, 22.934193>,  <17.553585, 22.073799, 23.032259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727077, 22.420618, 22.934193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065365, -0.301650, -0.951175,
		-0.898667, 0.396531, -0.187510,
		0.433733, 0.867047, -0.245164,
		17.857197, 22.680733, 22.860643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190741, 22.331263, 22.507521>,  <17.553585, 22.073799, 23.032259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190741, 22.331263, 22.507521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.567417, 22.465790, 22.503445>,  <17.793423, 22.546507, 22.500999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.567417, 22.465790, 22.503445>,  <17.190741, 22.331263, 22.507521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567417, 22.465790, 22.503445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091013, -0.283756, -0.954568,
		-0.323930, 0.897983, -0.297820,
		0.941693, 0.336319, -0.010189,
		17.849926, 22.566685, 22.500387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182749, 22.754988, 21.905651>,  <17.190741, 22.331263, 22.507521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182749, 22.754988, 21.905651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.555628, 22.651197, 22.006590>,  <17.779356, 22.588923, 22.067154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.555628, 22.651197, 22.006590>,  <17.182749, 22.754988, 21.905651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555628, 22.651197, 22.006590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159835, -0.330419, -0.930202,
		0.324747, 0.907466, -0.266542,
		0.932198, -0.259477, 0.252347,
		17.835287, 22.573355, 22.082294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622501, 22.951405, 21.375797>,  <17.182749, 22.754988, 21.905651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622501, 22.951405, 21.375797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.847185, 22.669680, 21.549431>,  <17.981995, 22.500645, 21.653612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.847185, 22.669680, 21.549431>,  <17.622501, 22.951405, 21.375797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847185, 22.669680, 21.549431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311820, -0.305760, -0.899599,
		0.766323, 0.640670, 0.047870,
		0.561709, -0.704310, 0.434085,
		18.015697, 22.458387, 21.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042341, 22.828522, 20.794422>,  <17.622501, 22.951405, 21.375797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042341, 22.828522, 20.794422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.089111, 22.513903, 21.036966>,  <18.117174, 22.325130, 21.182493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.089111, 22.513903, 21.036966>,  <18.042341, 22.828522, 20.794422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089111, 22.513903, 21.036966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247613, -0.568179, -0.784768,
		0.961778, 0.241901, 0.128325,
		0.116925, -0.786547, 0.606360,
		18.124189, 22.277939, 21.218874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579397, 22.586212, 20.597914>,  <18.042341, 22.828522, 20.794422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579397, 22.586212, 20.597914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.435429, 22.264141, 20.786444>,  <18.349049, 22.070898, 20.899563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.435429, 22.264141, 20.786444>,  <18.579397, 22.586212, 20.597914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435429, 22.264141, 20.786444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255129, -0.570867, -0.780398,
		0.897423, -0.160631, 0.410889,
		-0.359919, -0.805176, 0.471327,
		18.327454, 22.022589, 20.927841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947401, 21.998131, 20.401720>,  <18.579397, 22.586212, 20.597914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947401, 21.998131, 20.401720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.584328, 21.876177, 20.517067>,  <18.366484, 21.803003, 20.586275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.584328, 21.876177, 20.517067>,  <18.947401, 21.998131, 20.401720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584328, 21.876177, 20.517067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131231, -0.446476, -0.885120,
		0.398610, -0.841251, 0.365248,
		-0.907683, -0.304886, 0.288368,
		18.312023, 21.784712, 20.603577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.491646, 19.139585, 3.763622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.394543, 19.267647, 4.129916>,  <22.336281, 19.344482, 4.349693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.394543, 19.267647, 4.129916>,  <22.491646, 19.139585, 3.763622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.394543, 19.267647, 4.129916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567438, -0.718775, 0.401718,
		0.786818, 0.617143, -0.007177,
		-0.242759, 0.320151, 0.915735,
		22.321714, 19.363691, 4.404637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412140, 18.690737, 4.238155>,  <22.491646, 19.139585, 3.763622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412140, 18.690737, 4.238155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.358137, 18.668425, 4.633864>,  <22.325735, 18.655037, 4.871289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.358137, 18.668425, 4.633864>,  <22.412140, 18.690737, 4.238155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.358137, 18.668425, 4.633864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887666, -0.450423, 0.095745,
		0.440251, 0.891071, 0.110324,
		-0.135008, -0.055779, 0.989273,
		22.317635, 18.651691, 4.930646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.064259, 18.722198, 4.457570>,  <22.412140, 18.690737, 4.238155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.064259, 18.722198, 4.457570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.863146, 18.522961, 4.740161>,  <22.742477, 18.403418, 4.909716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.863146, 18.522961, 4.740161>,  <23.064259, 18.722198, 4.457570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.863146, 18.522961, 4.740161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769629, -0.630043, 0.103519,
		0.393549, 0.595773, 0.700124,
		-0.502782, -0.498096, 0.706478,
		22.712311, 18.373531, 4.952104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.405447, 18.767872, 5.199140>,  <23.064259, 18.722198, 4.457570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.405447, 18.767872, 5.199140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.187382, 18.465746, 5.053650>,  <23.056543, 18.284470, 4.966356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.187382, 18.465746, 5.053650>,  <23.405447, 18.767872, 5.199140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.187382, 18.465746, 5.053650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756537, -0.630179, 0.174717,
		-0.361179, -0.179921, 0.914975,
		-0.545163, -0.755316, -0.363725,
		23.023832, 18.239151, 4.944532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.308912, 18.177280, 5.381433>,  <23.405447, 18.767872, 5.199140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.308912, 18.177280, 5.381433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.559637, 17.865639, 5.385524>,  <23.710072, 17.678654, 5.387979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.559637, 17.865639, 5.385524>,  <23.308912, 18.177280, 5.381433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.559637, 17.865639, 5.385524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611087, -0.483407, 0.626810,
		-0.483406, -0.399141, -0.779105,
		-0.626810, 0.779105, -0.010228,
		23.747681, 17.631907, 5.388593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905186, 17.587904, 5.200053>,  <23.308912, 18.177280, 5.381433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905186, 17.587904, 5.200053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.224611, 17.510611, 5.428071>,  <23.416267, 17.464233, 5.564882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.224611, 17.510611, 5.428071>,  <22.905186, 17.587904, 5.200053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.224611, 17.510611, 5.428071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588401, -0.450114, 0.671701,
		0.126790, -0.871813, -0.473145,
		0.798566, -0.193235, 0.570046,
		23.464182, 17.452641, 5.599085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.816013, 16.880960, 5.367408>,  <22.905186, 17.587904, 5.200053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.816013, 16.880960, 5.367408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.055647, 17.075766, 5.621626>,  <23.199427, 17.192650, 5.774157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.055647, 17.075766, 5.621626>,  <22.816013, 16.880960, 5.367408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055647, 17.075766, 5.621626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536180, -0.345487, 0.770162,
		0.594653, -0.802157, 0.054153,
		0.599082, 0.487014, 0.635546,
		23.235371, 17.221870, 5.812290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.346724, 16.547533, 5.838569>,  <22.816013, 16.880960, 5.367408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.346724, 16.547533, 5.838569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.287756, 16.864107, 6.075853>,  <23.252375, 17.054050, 6.218224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.287756, 16.864107, 6.075853>,  <23.346724, 16.547533, 5.838569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.287756, 16.864107, 6.075853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203459, -0.611203, 0.764876,
		0.967921, -0.007936, 0.251127,
		-0.147420, 0.791434, 0.593211,
		23.243530, 17.101538, 6.253816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.510410, 16.299883, 6.560565>,  <23.346724, 16.547533, 5.838569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.510410, 16.299883, 6.560565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.281031, 16.624201, 6.607500>,  <23.143402, 16.818792, 6.635660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.281031, 16.624201, 6.607500>,  <23.510410, 16.299883, 6.560565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.281031, 16.624201, 6.607500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523655, -0.472914, 0.708617,
		0.630032, 0.344913, 0.695769,
		-0.573450, 0.810794, 0.117336,
		23.108995, 16.867439, 6.642700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.524221, 16.793467, 7.234128>,  <23.510410, 16.299883, 6.560565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.524221, 16.793467, 7.234128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.175945, 16.763369, 7.039712>,  <22.966980, 16.745310, 6.923063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.175945, 16.763369, 7.039712>,  <23.524221, 16.793467, 7.234128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.175945, 16.763369, 7.039712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425588, -0.380062, 0.821235,
		-0.246517, 0.921896, 0.298894,
		-0.870691, -0.075243, -0.486040,
		22.914738, 16.740795, 6.893900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.026434, 17.047260, 7.709129>,  <23.524221, 16.793467, 7.234128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.026434, 17.047260, 7.709129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.811596, 16.836498, 7.445645>,  <22.682693, 16.710041, 7.287554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.811596, 16.836498, 7.445645>,  <23.026434, 17.047260, 7.709129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.811596, 16.836498, 7.445645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403307, -0.525457, 0.749158,
		-0.740859, 0.668033, 0.069717,
		-0.537096, -0.526903, -0.658712,
		22.650467, 16.678427, 7.248031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.430590, 16.924004, 8.072297>,  <23.026434, 17.047260, 7.709129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.430590, 16.924004, 8.072297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.417189, 16.643150, 7.787794>,  <22.409149, 16.474638, 7.617092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.417189, 16.643150, 7.787794>,  <22.430590, 16.924004, 8.072297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417189, 16.643150, 7.787794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578708, -0.566590, 0.586577,
		-0.814846, 0.431261, -0.387349,
		-0.033500, -0.702132, -0.711258,
		22.407139, 16.432510, 7.574417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651524, 16.776041, 7.963611>,  <22.430590, 16.924004, 8.072297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651524, 16.776041, 7.963611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.862562, 16.461166, 7.835875>,  <21.989185, 16.272242, 7.759233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.862562, 16.461166, 7.835875>,  <21.651524, 16.776041, 7.963611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862562, 16.461166, 7.835875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278794, -0.515549, 0.810237,
		-0.802443, -0.338448, -0.491465,
		0.527597, -0.787186, -0.319341,
		22.020842, 16.225010, 7.740072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285784, 16.155910, 8.111318>,  <21.651524, 16.776041, 7.963611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285784, 16.155910, 8.111318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.650434, 16.002110, 8.053226>,  <21.869225, 15.909828, 8.018372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.650434, 16.002110, 8.053226>,  <21.285784, 16.155910, 8.111318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650434, 16.002110, 8.053226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178341, -0.688386, 0.703078,
		-0.370309, -0.615045, -0.696125,
		0.911628, -0.384504, -0.145228,
		21.923923, 15.886758, 8.009658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.129250, 15.470549, 7.938111>,  <21.285784, 16.155910, 8.111318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.129250, 15.470549, 7.938111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504005, 15.507775, 8.072914>,  <21.728859, 15.530111, 8.153796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504005, 15.507775, 8.072914>,  <21.129250, 15.470549, 7.938111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504005, 15.507775, 8.072914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196296, -0.657632, 0.727315,
		0.289316, -0.747568, -0.597861,
		0.936891, 0.093066, 0.337008,
		21.785072, 15.535695, 8.174017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170504, 14.863097, 8.240420>,  <21.129250, 15.470549, 7.938111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170504, 14.863097, 8.240420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.486969, 15.050986, 8.397095>,  <21.676849, 15.163720, 8.491099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.486969, 15.050986, 8.397095>,  <21.170504, 14.863097, 8.240420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.486969, 15.050986, 8.397095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050013, -0.588592, 0.806881,
		0.609554, -0.657966, -0.442182,
		0.791165, 0.469723, 0.391686,
		21.724319, 15.191903, 8.514601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635557, 14.358113, 8.394061>,  <21.170504, 14.863097, 8.240420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635557, 14.358113, 8.394061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746187, 14.662353, 8.629006>,  <21.812565, 14.844896, 8.769974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746187, 14.662353, 8.629006>,  <21.635557, 14.358113, 8.394061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746187, 14.662353, 8.629006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181928, -0.641593, 0.745158,
		0.943615, -0.099233, -0.315822,
		0.276574, 0.760599, 0.587364,
		21.829159, 14.890532, 8.805216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294813, 14.218282, 8.698271>,  <21.635557, 14.358113, 8.394061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294813, 14.218282, 8.698271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.160538, 14.490732, 8.958541>,  <22.079971, 14.654202, 9.114703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.160538, 14.490732, 8.958541>,  <22.294813, 14.218282, 8.698271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160538, 14.490732, 8.958541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215367, -0.616965, 0.756948,
		0.917022, 0.394234, 0.060417,
		-0.335690, 0.681126, 0.650676,
		22.059830, 14.695070, 9.153744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834389, 14.170133, 9.093271>,  <22.294813, 14.218282, 8.698271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834389, 14.170133, 9.093271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.535435, 14.339168, 9.298342>,  <22.356062, 14.440589, 9.421384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.535435, 14.339168, 9.298342>,  <22.834389, 14.170133, 9.093271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.535435, 14.339168, 9.298342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214840, -0.576470, 0.788369,
		0.628697, 0.699358, 0.340056,
		-0.747385, 0.422588, 0.512675,
		22.311220, 14.465944, 9.452145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.105997, 14.350861, 9.711301>,  <22.834389, 14.170133, 9.093271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.105997, 14.350861, 9.711301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.713207, 14.306988, 9.772869>,  <22.477533, 14.280663, 9.809811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.713207, 14.306988, 9.772869>,  <23.105997, 14.350861, 9.711301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.713207, 14.306988, 9.772869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187927, -0.653405, 0.733312,
		0.020141, 0.749021, 0.662240,
		-0.981977, -0.109683, 0.153922,
		22.418613, 14.274083, 9.819046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048737, 14.196686, 10.379014>,  <23.105997, 14.350861, 9.711301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048737, 14.196686, 10.379014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.684742, 14.069707, 10.272315>,  <22.466345, 13.993520, 10.208296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.684742, 14.069707, 10.272315>,  <23.048737, 14.196686, 10.379014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684742, 14.069707, 10.272315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010570, -0.660870, 0.750426,
		-0.414506, 0.680057, 0.604738,
		-0.909985, -0.317448, -0.266746,
		22.411747, 13.974473, 10.192291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.731998, 14.068407, 11.009459>,  <23.048737, 14.196686, 10.379014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.731998, 14.068407, 11.009459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.523846, 13.842959, 10.752855>,  <22.398954, 13.707690, 10.598893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.523846, 13.842959, 10.752855>,  <22.731998, 14.068407, 11.009459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523846, 13.842959, 10.752855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091859, -0.709935, 0.698251,
		-0.848978, 0.422286, 0.317665,
		-0.520383, -0.563620, -0.641509,
		22.367731, 13.673874, 10.560403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125187, 13.800885, 11.326495>,  <22.731998, 14.068407, 11.009459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125187, 13.800885, 11.326495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.196882, 13.561569, 11.014105>,  <22.239899, 13.417979, 10.826671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.196882, 13.561569, 11.014105>,  <22.125187, 13.800885, 11.326495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196882, 13.561569, 11.014105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182133, -0.759929, 0.623967,
		-0.966799, -0.254081, -0.027240,
		0.179239, -0.598290, -0.780975,
		22.250654, 13.382082, 10.779812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745317, 13.104242, 11.644294>,  <22.125187, 13.800885, 11.326495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745317, 13.104242, 11.644294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.966736, 12.989879, 11.331412>,  <22.099586, 12.921261, 11.143683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.966736, 12.989879, 11.331412>,  <21.745317, 13.104242, 11.644294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.966736, 12.989879, 11.331412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169163, -0.881046, 0.441749,
		-0.815458, -0.376848, -0.439333,
		0.553545, -0.285909, -0.782205,
		22.132799, 12.904106, 11.096751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.501274, 12.468373, 11.638557>,  <21.745317, 13.104242, 11.644294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.501274, 12.468373, 11.638557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.829462, 12.488831, 11.410800>,  <22.026375, 12.501104, 11.274145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.829462, 12.488831, 11.410800>,  <21.501274, 12.468373, 11.638557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829462, 12.488831, 11.410800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212790, -0.951745, 0.221136,
		-0.530609, -0.302598, -0.791763,
		0.820472, 0.051142, -0.569394,
		22.075603, 12.504173, 11.239982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522533, 11.818144, 11.175537>,  <21.501274, 12.468373, 11.638557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522533, 11.818144, 11.175537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.892456, 11.949519, 11.252332>,  <22.114410, 12.028344, 11.298409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.892456, 11.949519, 11.252332>,  <21.522533, 11.818144, 11.175537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892456, 11.949519, 11.252332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240636, -0.895886, 0.373474,
		0.294662, -0.299192, -0.907556,
		0.924807, 0.328439, 0.191987,
		22.169899, 12.048051, 11.309928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868715, 11.300489, 10.962438>,  <21.522533, 11.818144, 11.175537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868715, 11.300489, 10.962438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093231, 11.494293, 11.230827>,  <22.227942, 11.610576, 11.391861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093231, 11.494293, 11.230827>,  <21.868715, 11.300489, 10.962438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093231, 11.494293, 11.230827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247383, -0.871881, 0.422640,
		0.789782, -0.071236, -0.609237,
		0.561289, 0.484508, 0.670974,
		22.261618, 11.639646, 11.432119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.315300, 10.729955, 11.170156>,  <21.868715, 11.300489, 10.962438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.315300, 10.729955, 11.170156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.445400, 11.018443, 11.414795>,  <22.523460, 11.191536, 11.561578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.445400, 11.018443, 11.414795>,  <22.315300, 10.729955, 11.170156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445400, 11.018443, 11.414795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362840, -0.692441, 0.623596,
		0.873246, 0.019087, -0.486905,
		0.325250, 0.721222, 0.611597,
		22.542974, 11.234810, 11.598274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988455, 10.608098, 11.230721>,  <22.315300, 10.729955, 11.170156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988455, 10.608098, 11.230721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.855360, 10.789075, 11.561679>,  <22.775503, 10.897661, 11.760254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.855360, 10.789075, 11.561679>,  <22.988455, 10.608098, 11.230721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.855360, 10.789075, 11.561679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326884, -0.767654, 0.551230,
		0.884552, 0.453877, 0.107532,
		-0.332738, 0.452441, 0.827395,
		22.755539, 10.924808, 11.809897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.559029, 10.540608, 11.783791>,  <22.988455, 10.608098, 11.230721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.559029, 10.540608, 11.783791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.209366, 10.601439, 11.968277>,  <22.999567, 10.637938, 12.078969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.209366, 10.601439, 11.968277>,  <23.559029, 10.540608, 11.783791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.209366, 10.601439, 11.968277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121948, -0.850536, 0.511582,
		0.470081, 0.503448, 0.724958,
		-0.874158, 0.152078, 0.461216,
		22.947119, 10.647062, 12.106642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377625, 10.916539, 12.380589>,  <23.559029, 10.540608, 11.783791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377625, 10.916539, 12.380589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560278, 10.916985, 12.736450>,  <23.669870, 10.917252, 12.949967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560278, 10.916985, 12.736450>,  <23.377625, 10.916539, 12.380589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560278, 10.916985, 12.736450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829786, -0.361174, -0.425451,
		0.320847, 0.932498, -0.165847,
		0.456632, 0.001113, 0.889655,
		23.697268, 10.917318, 13.003346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.092987, 11.378116, 12.431724>,  <23.377625, 10.916539, 12.380589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.092987, 11.378116, 12.431724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089127, 11.076910, 12.694897>,  <24.086809, 10.896187, 12.852800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089127, 11.076910, 12.694897>,  <24.092987, 11.378116, 12.431724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089127, 11.076910, 12.694897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793548, -0.406112, -0.453160,
		0.608431, 0.517727, 0.601474,
		-0.009653, -0.753015, 0.657933,
		24.086231, 10.851006, 12.892277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417948, 12.050477, 12.667439>,  <24.092987, 11.378116, 12.431724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417948, 12.050477, 12.667439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.115673, 12.008087, 12.408918>,  <23.934307, 11.982654, 12.253806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.115673, 12.008087, 12.408918>,  <24.417948, 12.050477, 12.667439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115673, 12.008087, 12.408918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094380, -0.994143, 0.052655,
		-0.648096, -0.021207, 0.761264,
		-0.755688, -0.105974, -0.646301,
		23.888968, 11.976295, 12.215028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826448, 12.645247, 12.370196>,  <24.417948, 12.050477, 12.667439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826448, 12.645247, 12.370196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.880548, 12.658177, 11.974083>,  <24.913008, 12.665936, 11.736415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.880548, 12.658177, 11.974083>,  <24.826448, 12.645247, 12.370196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880548, 12.658177, 11.974083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372773, 0.924373, 0.081088,
		0.918013, -0.380118, 0.112972,
		0.135251, 0.032327, -0.990284,
		24.921124, 12.667875, 11.676998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470427, 12.842321, 12.231382>,  <24.826448, 12.645247, 12.370196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470427, 12.842321, 12.231382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.245838, 12.943128, 11.916107>,  <25.111086, 13.003612, 11.726942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.245838, 12.943128, 11.916107>,  <25.470427, 12.842321, 12.231382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245838, 12.943128, 11.916107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375050, 0.926548, 0.029085,
		0.737623, -0.279280, -0.614748,
		-0.561471, 0.252015, -0.788187,
		25.077396, 13.018732, 11.679651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723204, 13.511992, 12.172359>,  <25.470427, 12.842321, 12.231382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723204, 13.511992, 12.172359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.482054, 13.466673, 11.856458>,  <25.337364, 13.439482, 11.666918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.482054, 13.466673, 11.856458>,  <25.723204, 13.511992, 12.172359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482054, 13.466673, 11.856458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041612, 0.992984, -0.110689,
		0.796751, -0.033868, -0.603358,
		-0.602874, -0.113298, -0.789751,
		25.301191, 13.432683, 11.619533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985481, 13.891450, 11.574100>,  <25.723204, 13.511992, 12.172359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985481, 13.891450, 11.574100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.585812, 13.875281, 11.572355>,  <25.346010, 13.865581, 11.571308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.585812, 13.875281, 11.572355>,  <25.985481, 13.891450, 11.574100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585812, 13.875281, 11.572355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037715, 0.961635, -0.271729,
		0.015179, -0.271339, -0.962364,
		-0.999173, -0.040420, -0.004363,
		25.286060, 13.863155, 11.571046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685461, 13.754754, 11.238520>,  <25.985481, 13.891450, 11.574100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685461, 13.754754, 11.238520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.998812, 13.755417, 10.989902>,  <27.186823, 13.755815, 10.840731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.998812, 13.755417, 10.989902>,  <26.685461, 13.754754, 11.238520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998812, 13.755417, 10.989902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434185, 0.717012, -0.545323,
		0.444752, 0.697059, 0.562410,
		0.783377, 0.001657, -0.621545,
		27.233826, 13.755914, 10.803438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616846, 14.420476, 11.020918>,  <26.685461, 13.754754, 11.238520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616846, 14.420476, 11.020918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.888254, 14.274920, 10.765670>,  <27.051098, 14.187588, 10.612521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.888254, 14.274920, 10.765670>,  <26.616846, 14.420476, 11.020918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888254, 14.274920, 10.765670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313735, 0.641918, -0.699651,
		0.664215, 0.674927, 0.321390,
		0.678519, -0.363888, -0.638120,
		27.091810, 14.165754, 10.574234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786371, 14.985146, 10.732110>,  <26.616846, 14.420476, 11.020918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786371, 14.985146, 10.732110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.912275, 14.707879, 10.472744>,  <26.987818, 14.541519, 10.317124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.912275, 14.707879, 10.472744>,  <26.786371, 14.985146, 10.732110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912275, 14.707879, 10.472744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348950, 0.550791, -0.758197,
		0.882699, 0.464917, -0.068512,
		0.314763, -0.693167, -0.648416,
		27.006704, 14.499928, 10.278219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209028, 15.284567, 10.283971>,  <26.786371, 14.985146, 10.732110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209028, 15.284567, 10.283971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.088766, 14.951591, 10.097790>,  <27.016609, 14.751804, 9.986081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.088766, 14.951591, 10.097790>,  <27.209028, 15.284567, 10.283971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088766, 14.951591, 10.097790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365908, 0.551366, -0.749737,
		0.880748, -0.055099, -0.470369,
		-0.300656, -0.832442, -0.465454,
		26.998569, 14.701859, 9.958154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458450, 15.290738, 9.613904>,  <27.209028, 15.284567, 10.283971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458450, 15.290738, 9.613904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.174072, 15.016740, 9.550232>,  <27.003445, 14.852341, 9.512029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.174072, 15.016740, 9.550232>,  <27.458450, 15.290738, 9.613904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174072, 15.016740, 9.550232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237698, 0.447092, -0.862327,
		0.661859, -0.575230, -0.480680,
		-0.710945, -0.684995, -0.159181,
		26.960789, 14.811241, 9.502478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574106, 15.183543, 9.010958>,  <27.458450, 15.290738, 9.613904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574106, 15.183543, 9.010958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.202909, 15.042013, 9.057678>,  <26.980192, 14.957095, 9.085711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.202909, 15.042013, 9.057678>,  <27.574106, 15.183543, 9.010958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202909, 15.042013, 9.057678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314665, 0.576308, -0.754225,
		0.199549, -0.736666, -0.646145,
		-0.927991, -0.353824, 0.116801,
		26.924513, 14.935865, 9.092718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269804, 14.998514, 8.305223>,  <27.574106, 15.183543, 9.010958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269804, 14.998514, 8.305223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.942833, 15.065603, 8.525653>,  <26.746651, 15.105857, 8.657910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.942833, 15.065603, 8.525653>,  <27.269804, 14.998514, 8.305223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942833, 15.065603, 8.525653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342075, 0.628374, -0.698664,
		-0.463462, -0.759615, -0.456276,
		-0.817427, 0.167723, 0.551073,
		26.697605, 15.115920, 8.690975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588821, 14.856861, 7.874763>,  <27.269804, 14.998514, 8.305223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588821, 14.856861, 7.874763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.472998, 15.074238, 8.189933>,  <26.403503, 15.204664, 8.379035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.472998, 15.074238, 8.189933>,  <26.588821, 14.856861, 7.874763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472998, 15.074238, 8.189933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413146, 0.671595, -0.615037,
		-0.863404, -0.503617, 0.030056,
		-0.289557, 0.543443, 0.787925,
		26.386131, 15.237270, 8.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822433, 15.031096, 7.799307>,  <26.588821, 14.856861, 7.874763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822433, 15.031096, 7.799307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.987726, 15.307897, 8.036076>,  <26.086903, 15.473977, 8.178137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.987726, 15.307897, 8.036076>,  <25.822433, 15.031096, 7.799307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987726, 15.307897, 8.036076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241289, 0.709990, -0.661585,
		-0.878077, 0.130563, 0.460363,
		0.413231, 0.692003, 0.591922,
		26.111696, 15.515497, 8.213653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285181, 15.498181, 7.908925>,  <25.822433, 15.031096, 7.799307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285181, 15.498181, 7.908925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.606323, 15.716976, 8.003775>,  <25.799009, 15.848253, 8.060684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.606323, 15.716976, 8.003775>,  <25.285181, 15.498181, 7.908925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606323, 15.716976, 8.003775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402514, 0.790740, -0.461208,
		-0.439778, 0.274837, 0.855020,
		0.802856, 0.546987, 0.237125,
		25.847179, 15.881072, 8.074912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990576, 16.133963, 8.029935>,  <25.285181, 15.498181, 7.908925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990576, 16.133963, 8.029935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.376413, 16.237808, 8.011335>,  <25.607916, 16.300116, 8.000175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.376413, 16.237808, 8.011335>,  <24.990576, 16.133963, 8.029935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376413, 16.237808, 8.011335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252456, 0.857815, -0.447683,
		-0.076338, 0.443571, 0.892983,
		0.964592, 0.259614, -0.046498,
		25.665791, 16.315693, 7.997386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007212, 16.912394, 8.339840>,  <24.990576, 16.133963, 8.029935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007212, 16.912394, 8.339840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.313705, 16.803940, 8.106817>,  <25.497601, 16.738867, 7.967004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.313705, 16.803940, 8.106817>,  <25.007212, 16.912394, 8.339840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313705, 16.803940, 8.106817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120894, 0.829593, -0.545123,
		0.631087, 0.488119, 0.602884,
		0.766233, -0.271135, -0.582556,
		25.543575, 16.722599, 7.932050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399246, 17.555689, 8.230326>,  <25.007212, 16.912394, 8.339840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399246, 17.555689, 8.230326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.488020, 17.318012, 7.921086>,  <25.541285, 17.175407, 7.735542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.488020, 17.318012, 7.921086>,  <25.399246, 17.555689, 8.230326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488020, 17.318012, 7.921086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171515, 0.756720, -0.630839,
		0.959858, 0.272602, 0.066029,
		0.221934, -0.594191, -0.773099,
		25.554600, 17.139755, 7.689157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828938, 17.966417, 7.851739>,  <25.399246, 17.555689, 8.230326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828938, 17.966417, 7.851739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.680965, 17.683456, 7.610829>,  <25.592182, 17.513680, 7.466283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.680965, 17.683456, 7.610829>,  <25.828938, 17.966417, 7.851739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680965, 17.683456, 7.610829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172830, 0.689347, -0.703513,
		0.912842, -0.156159, -0.377271,
		-0.369931, -0.707400, -0.602276,
		25.569986, 17.471237, 7.430146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132202, 17.988905, 7.162206>,  <25.828938, 17.966417, 7.851739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132202, 17.988905, 7.162206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.789066, 17.801401, 7.077944>,  <25.583185, 17.688898, 7.027386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.789066, 17.801401, 7.077944>,  <26.132202, 17.988905, 7.162206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789066, 17.801401, 7.077944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230630, 0.717449, -0.657325,
		0.459264, -0.515296, -0.723566,
		-0.857839, -0.468761, -0.210656,
		25.531715, 17.660772, 7.014747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<21.775759, 17.402269, 17.994320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402075, 17.359303, 18.130388>,  <21.177864, 17.333523, 18.212030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402075, 17.359303, 18.130388>,  <21.775759, 17.402269, 17.994320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402075, 17.359303, 18.130388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171926, -0.699952, -0.693187,
		0.312567, -0.706065, 0.635432,
		-0.934207, -0.107420, 0.340173,
		21.121813, 17.327076, 18.232441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603977, 16.687937, 17.915583>,  <21.775759, 17.402269, 17.994320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603977, 16.687937, 17.915583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239223, 16.847004, 17.956226>,  <21.020370, 16.942444, 17.980614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239223, 16.847004, 17.956226>,  <21.603977, 16.687937, 17.915583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239223, 16.847004, 17.956226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345071, -0.608742, -0.714394,
		-0.222236, -0.686509, 0.692327,
		-0.911886, 0.397666, 0.101610,
		20.965658, 16.966303, 17.986710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226831, 16.136713, 18.038855>,  <21.603977, 16.687937, 17.915583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226831, 16.136713, 18.038855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981173, 16.412554, 17.885351>,  <20.833776, 16.578058, 17.793249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981173, 16.412554, 17.885351>,  <21.226831, 16.136713, 18.038855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.981173, 16.412554, 17.885351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247300, -0.629939, -0.736219,
		-0.749444, -0.357243, 0.557414,
		-0.614147, 0.689604, -0.383758,
		20.796928, 16.619434, 17.770224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557327, 15.841767, 17.951414>,  <21.226831, 16.136713, 18.038855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557327, 15.841767, 17.951414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551077, 16.172590, 17.726654>,  <20.547327, 16.371084, 17.591797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551077, 16.172590, 17.726654>,  <20.557327, 15.841767, 17.951414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551077, 16.172590, 17.726654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180692, -0.555053, -0.811952,
		-0.983416, 0.088843, 0.158116,
		-0.015627, 0.827057, -0.561901,
		20.546389, 16.420708, 17.558084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901480, 15.889088, 17.651464>,  <20.557327, 15.841767, 17.951414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901480, 15.889088, 17.651464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129980, 16.107800, 17.406610>,  <20.267080, 16.239027, 17.259699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129980, 16.107800, 17.406610>,  <19.901480, 15.889088, 17.651464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129980, 16.107800, 17.406610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417426, -0.448606, -0.790258,
		-0.706703, 0.706955, -0.028026,
		0.571249, 0.546779, -0.612133,
		20.301355, 16.271833, 17.222971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523726, 16.087311, 17.176130>,  <19.901480, 15.889088, 17.651464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523726, 16.087311, 17.176130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880251, 16.134899, 17.001131>,  <20.094166, 16.163452, 16.896132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880251, 16.134899, 17.001131>,  <19.523726, 16.087311, 17.176130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880251, 16.134899, 17.001131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317911, -0.523983, -0.790173,
		-0.323250, 0.843378, -0.429211,
		0.891314, 0.118973, -0.437497,
		20.147646, 16.170591, 16.869883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380016, 16.202309, 16.509674>,  <19.523726, 16.087311, 17.176130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380016, 16.202309, 16.509674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761238, 16.081438, 16.501945>,  <19.989971, 16.008917, 16.497309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761238, 16.081438, 16.501945>,  <19.380016, 16.202309, 16.509674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761238, 16.081438, 16.501945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215681, -0.632706, -0.743751,
		0.212519, 0.713004, -0.668178,
		0.953057, -0.302175, -0.019319,
		20.047155, 15.990786, 16.496149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425783, 16.230055, 15.774351>,  <19.380016, 16.202309, 16.509674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425783, 16.230055, 15.774351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755680, 16.043041, 15.901608>,  <19.953617, 15.930833, 15.977962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755680, 16.043041, 15.901608>,  <19.425783, 16.230055, 15.774351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755680, 16.043041, 15.901608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076584, -0.465053, -0.881964,
		0.560301, 0.751757, -0.347743,
		0.824741, -0.467534, 0.318142,
		20.003103, 15.902781, 15.997050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811207, 16.043545, 15.143278>,  <19.425783, 16.230055, 15.774351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811207, 16.043545, 15.143278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937235, 15.790891, 15.426620>,  <20.012852, 15.639297, 15.596624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937235, 15.790891, 15.426620>,  <19.811207, 16.043545, 15.143278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.937235, 15.790891, 15.426620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005539, -0.745131, -0.666895,
		0.949052, 0.214042, -0.231270,
		0.315070, -0.631637, 0.708354,
		20.031755, 15.601399, 15.639126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303480, 15.727239, 14.755438>,  <19.811207, 16.043545, 15.143278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303480, 15.727239, 14.755438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183887, 15.496644, 15.059615>,  <20.112133, 15.358287, 15.242122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183887, 15.496644, 15.059615>,  <20.303480, 15.727239, 14.755438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183887, 15.496644, 15.059615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112628, -0.812641, -0.571777,
		0.947590, -0.085302, 0.307892,
		-0.298979, -0.576488, 0.760443,
		20.094194, 15.323698, 15.287748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610104, 15.088420, 14.613615>,  <20.303480, 15.727239, 14.755438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610104, 15.088420, 14.613615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320267, 14.988400, 14.870502>,  <20.146364, 14.928389, 15.024633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320267, 14.988400, 14.870502>,  <20.610104, 15.088420, 14.613615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320267, 14.988400, 14.870502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169068, -0.838890, -0.517378,
		0.668119, -0.483466, 0.565578,
		-0.724592, -0.250049, 0.642217,
		20.102890, 14.913386, 15.063167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813023, 14.418221, 14.876729>,  <20.610104, 15.088420, 14.613615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813023, 14.418221, 14.876729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422134, 14.482501, 14.932184>,  <20.187601, 14.521069, 14.965457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422134, 14.482501, 14.932184>,  <20.813023, 14.418221, 14.876729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422134, 14.482501, 14.932184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201585, -0.907130, -0.369431,
		0.066396, -0.388962, 0.918858,
		-0.977218, 0.160699, 0.138638,
		20.128969, 14.530711, 14.973776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.559896, 13.739865, 15.185309>,  <20.813023, 14.418221, 14.876729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.559896, 13.739865, 15.185309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267672, 13.949996, 15.010810>,  <20.092337, 14.076075, 14.906110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267672, 13.949996, 15.010810>,  <20.559896, 13.739865, 15.185309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267672, 13.949996, 15.010810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375647, -0.842694, -0.385690,
		-0.570237, -0.117894, 0.812976,
		-0.730561, 0.525327, -0.436249,
		20.048504, 14.107594, 14.879935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846554, 13.464692, 15.426307>,  <20.559896, 13.739865, 15.185309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846554, 13.464692, 15.426307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.860233, 13.613555, 15.055291>,  <19.868441, 13.702873, 14.832682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.860233, 13.613555, 15.055291>,  <19.846554, 13.464692, 15.426307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860233, 13.613555, 15.055291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429207, -0.832670, -0.349918,
		-0.902559, 0.410073, 0.131257,
		0.034198, 0.372158, -0.927539,
		19.870493, 13.725203, 14.777029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932684, 12.894917, 15.857359>,  <19.846554, 13.464692, 15.426307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932684, 12.894917, 15.857359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036955, 12.632532, 16.140699>,  <20.099518, 12.475101, 16.310703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036955, 12.632532, 16.140699>,  <19.932684, 12.894917, 15.857359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.036955, 12.632532, 16.140699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620186, 0.448520, 0.643582,
		-0.739875, -0.607078, -0.289899,
		0.260679, -0.655962, 0.708351,
		20.115158, 12.435743, 16.353205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321012, 12.895259, 16.259773>,  <19.932684, 12.894917, 15.857359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.321012, 12.895259, 16.259773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610849, 12.763299, 16.501808>,  <19.784752, 12.684123, 16.647028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610849, 12.763299, 16.501808>,  <19.321012, 12.895259, 16.259773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610849, 12.763299, 16.501808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345047, 0.586361, 0.732887,
		-0.596578, -0.739829, 0.311043,
		0.724594, -0.329900, 0.605086,
		19.828228, 12.664329, 16.683334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987059, 12.658920, 16.868612>,  <19.321012, 12.895259, 16.259773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987059, 12.658920, 16.868612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359394, 12.741089, 16.989502>,  <19.582796, 12.790390, 17.062035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359394, 12.741089, 16.989502>,  <18.987059, 12.658920, 16.868612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359394, 12.741089, 16.989502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363343, 0.432102, 0.825391,
		0.038961, -0.878118, 0.476856,
		0.930840, 0.205421, 0.302223,
		19.638647, 12.802715, 17.080170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902790, 12.473409, 17.547094>,  <18.987059, 12.658920, 16.868612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902790, 12.473409, 17.547094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235458, 12.693429, 17.516722>,  <19.435061, 12.825441, 17.498499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235458, 12.693429, 17.516722>,  <18.902790, 12.473409, 17.547094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235458, 12.693429, 17.516722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185904, 0.404686, 0.895360,
		0.523224, -0.730528, 0.438823,
		0.831670, 0.550053, -0.075933,
		19.484961, 12.858444, 17.493942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.253563, 12.373746, 18.159824>,  <18.902790, 12.473409, 17.547094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.253563, 12.373746, 18.159824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382898, 12.726862, 18.023510>,  <19.460499, 12.938731, 17.941721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382898, 12.726862, 18.023510>,  <19.253563, 12.373746, 18.159824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382898, 12.726862, 18.023510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105667, 0.391560, 0.914065,
		0.940365, -0.259543, 0.219888,
		0.323338, 0.882790, -0.340784,
		19.479900, 12.991699, 17.921274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.749149, 12.593209, 18.652758>,  <19.253563, 12.373746, 18.159824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.749149, 12.593209, 18.652758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606239, 12.913248, 18.460011>,  <19.520493, 13.105271, 18.344362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606239, 12.913248, 18.460011>,  <19.749149, 12.593209, 18.652758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.606239, 12.913248, 18.460011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149006, 0.460485, 0.875072,
		0.922036, 0.384444, -0.045301,
		-0.357277, 0.800098, -0.481868,
		19.499056, 13.153277, 18.315451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059147, 13.133076, 18.978422>,  <19.749149, 12.593209, 18.652758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059147, 13.133076, 18.978422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767609, 13.317109, 18.775600>,  <19.592686, 13.427529, 18.653908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767609, 13.317109, 18.775600>,  <20.059147, 13.133076, 18.978422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767609, 13.317109, 18.775600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041503, 0.709526, 0.703456,
		0.683418, 0.533755, -0.498041,
		-0.728846, 0.460084, -0.507056,
		19.548954, 13.455134, 18.623484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.266008, 13.907083, 18.870390>,  <20.059147, 13.133076, 18.978422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.266008, 13.907083, 18.870390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.868301, 13.879272, 18.837898>,  <19.629677, 13.862586, 18.818403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.868301, 13.879272, 18.837898>,  <20.266008, 13.907083, 18.870390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.868301, 13.879272, 18.837898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104033, 0.804412, 0.584892,
		0.024675, 0.589990, -0.807034,
		-0.994268, -0.069526, -0.081228,
		19.570021, 13.858415, 18.813530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022768, 14.656631, 18.841789>,  <20.266008, 13.907083, 18.870390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022768, 14.656631, 18.841789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728851, 14.403455, 18.939335>,  <19.552502, 14.251549, 18.997862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728851, 14.403455, 18.939335>,  <20.022768, 14.656631, 18.841789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728851, 14.403455, 18.939335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357397, 0.666846, 0.653899,
		-0.576498, 0.393323, -0.716203,
		-0.734791, -0.632940, 0.243863,
		19.508413, 14.213573, 19.012493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568697, 15.108308, 18.964632>,  <20.022768, 14.656631, 18.841789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568697, 15.108308, 18.964632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390968, 14.781752, 19.112190>,  <19.284330, 14.585818, 19.200726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390968, 14.781752, 19.112190>,  <19.568697, 15.108308, 18.964632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390968, 14.781752, 19.112190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566312, 0.575023, 0.590456,
		-0.694167, 0.053443, -0.717828,
		-0.444324, -0.816390, 0.368896,
		19.257671, 14.536835, 19.222858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856539, 15.199649, 18.822371>,  <19.568697, 15.108308, 18.964632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856539, 15.199649, 18.822371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896084, 14.964635, 19.143625>,  <18.919811, 14.823627, 19.336378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896084, 14.964635, 19.143625>,  <18.856539, 15.199649, 18.822371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896084, 14.964635, 19.143625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574698, 0.625176, 0.528089,
		-0.812373, -0.513768, -0.275850,
		0.098860, -0.587535, 0.803137,
		18.925741, 14.788375, 19.384567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.235674, 15.357519, 19.232727>,  <18.856539, 15.199649, 18.822371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.235674, 15.357519, 19.232727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480753, 15.170127, 19.487326>,  <18.627800, 15.057692, 19.640085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480753, 15.170127, 19.487326>,  <18.235674, 15.357519, 19.232727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.480753, 15.170127, 19.487326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315084, 0.593798, 0.740355,
		-0.724792, -0.654164, 0.216208,
		0.612698, -0.468480, 0.636497,
		18.664562, 15.029583, 19.678274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855326, 14.959365, 19.752470>,  <18.235674, 15.357519, 19.232727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855326, 14.959365, 19.752470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212423, 15.037633, 19.914814>,  <18.426682, 15.084594, 20.012220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212423, 15.037633, 19.914814>,  <17.855326, 14.959365, 19.752470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212423, 15.037633, 19.914814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441907, 0.555974, 0.703997,
		-0.087895, -0.807841, 0.582810,
		0.892744, 0.195670, 0.405858,
		18.480247, 15.096334, 20.036572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728716, 14.851659, 20.451321>,  <17.855326, 14.959365, 19.752470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728716, 14.851659, 20.451321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055904, 15.079745, 20.420908>,  <18.252216, 15.216597, 20.402660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055904, 15.079745, 20.420908>,  <17.728716, 14.851659, 20.451321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.055904, 15.079745, 20.420908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338944, 0.584507, 0.737203,
		0.464804, -0.577240, 0.671380,
		0.817969, 0.570215, -0.076029,
		18.301294, 15.250810, 20.398100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473120, 14.552775, 21.105982>,  <17.728716, 14.851659, 20.451321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473120, 14.552775, 21.105982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088484, 14.497845, 21.201050>,  <16.857702, 14.464887, 21.258091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088484, 14.497845, 21.201050>,  <17.473120, 14.552775, 21.105982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088484, 14.497845, 21.201050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224566, -0.104343, -0.968857,
		0.157850, -0.985015, 0.069496,
		-0.961589, -0.137327, 0.237671,
		16.800007, 14.456647, 21.272350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335314, 13.858625, 20.932777>,  <17.473120, 14.552775, 21.105982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.335314, 13.858625, 20.932777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987692, 14.056456, 20.937410>,  <16.779118, 14.175154, 20.940189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987692, 14.056456, 20.937410>,  <17.335314, 13.858625, 20.932777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987692, 14.056456, 20.937410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179119, -0.292751, -0.939262,
		-0.461148, -0.818346, 0.343005,
		-0.869056, 0.494578, 0.011580,
		16.726974, 14.204828, 20.940884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962864, 13.441858, 20.474037>,  <17.335314, 13.858625, 20.932777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962864, 13.441858, 20.474037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739538, 13.769841, 20.524563>,  <16.605543, 13.966631, 20.554878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739538, 13.769841, 20.524563>,  <16.962864, 13.441858, 20.474037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.739538, 13.769841, 20.524563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370224, -0.109991, -0.922408,
		-0.742442, -0.561757, 0.364977,
		-0.558314, 0.819958, 0.126314,
		16.572044, 14.015828, 20.562456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305853, 13.346334, 20.294769>,  <16.962864, 13.441858, 20.474037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305853, 13.346334, 20.294769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336803, 13.744413, 20.270784>,  <16.355373, 13.983261, 20.256393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336803, 13.744413, 20.270784>,  <16.305853, 13.346334, 20.294769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.336803, 13.744413, 20.270784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563166, -0.006000, -0.826322,
		-0.822713, 0.097708, 0.559997,
		0.077378, 0.995197, -0.059962,
		16.360018, 14.042973, 20.252796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604140, 13.621943, 20.144611>,  <16.305853, 13.346334, 20.294769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604140, 13.621943, 20.144611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857285, 13.903967, 20.016626>,  <16.009171, 14.073181, 19.939837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857285, 13.903967, 20.016626>,  <15.604140, 13.621943, 20.144611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857285, 13.903967, 20.016626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448877, -0.002605, -0.893590,
		-0.630869, 0.709142, 0.314837,
		0.632862, 0.705061, -0.319961,
		16.047144, 14.115485, 19.920639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241503, 14.012927, 19.745819>,  <15.604140, 13.621943, 20.144611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241503, 14.012927, 19.745819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602517, 14.131594, 19.620972>,  <15.819126, 14.202794, 19.546062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602517, 14.131594, 19.620972>,  <15.241503, 14.012927, 19.745819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602517, 14.131594, 19.620972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388990, 0.250787, -0.886449,
		-0.184704, 0.921463, 0.341745,
		0.902536, 0.296666, -0.312119,
		15.873278, 14.220593, 19.527336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.046008, 14.564273, 19.391499>,  <15.241503, 14.012927, 19.745819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.046008, 14.564273, 19.391499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407777, 14.452993, 19.262114>,  <15.624838, 14.386226, 19.184483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407777, 14.452993, 19.262114>,  <15.046008, 14.564273, 19.391499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407777, 14.452993, 19.262114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268511, 0.218013, -0.938282,
		0.331547, 0.935455, 0.122476,
		0.904421, -0.278199, -0.323461,
		15.679103, 14.369534, 19.165075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.216386, 15.097004, 18.971062>,  <15.046008, 14.564273, 19.391499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.216386, 15.097004, 18.971062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451115, 14.789692, 18.868780>,  <15.591952, 14.605305, 18.807411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451115, 14.789692, 18.868780>,  <15.216386, 15.097004, 18.971062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451115, 14.789692, 18.868780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251173, 0.127498, -0.959508,
		0.769774, 0.627286, -0.118153,
		0.586822, -0.768281, -0.255702,
		15.627161, 14.559208, 18.792070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.709326, 15.330503, 18.512486>,  <15.216386, 15.097004, 18.971062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.709326, 15.330503, 18.512486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703053, 14.935797, 18.447924>,  <15.699288, 14.698974, 18.409185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703053, 14.935797, 18.447924>,  <15.709326, 15.330503, 18.512486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703053, 14.935797, 18.447924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116573, 0.162130, -0.979860,
		0.993058, 0.003448, -0.117573,
		-0.015683, -0.986763, -0.161406,
		15.698347, 14.639768, 18.399502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116478, 15.273487, 17.912216>,  <15.709326, 15.330503, 18.512486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116478, 15.273487, 17.912216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894954, 14.941765, 17.942009>,  <15.762040, 14.742731, 17.959885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894954, 14.941765, 17.942009>,  <16.116478, 15.273487, 17.912216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.894954, 14.941765, 17.942009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269101, 0.093617, -0.958551,
		0.787960, -0.550897, -0.275013,
		-0.553808, -0.829306, 0.074480,
		15.728811, 14.692973, 17.964354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355633, 14.847354, 17.362658>,  <16.116478, 15.273487, 17.912216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355633, 14.847354, 17.362658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999917, 14.676862, 17.428984>,  <15.786488, 14.574566, 17.468779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999917, 14.676862, 17.428984>,  <16.355633, 14.847354, 17.362658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999917, 14.676862, 17.428984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246733, 0.141845, -0.958646,
		0.385086, -0.893424, -0.231306,
		-0.889287, -0.426232, 0.165814,
		15.733130, 14.548992, 17.478727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239605, 14.424191, 16.794558>,  <16.355633, 14.847354, 17.362658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239605, 14.424191, 16.794558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885570, 14.529098, 16.948353>,  <15.673148, 14.592042, 17.040630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885570, 14.529098, 16.948353>,  <16.239605, 14.424191, 16.794558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885570, 14.529098, 16.948353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277979, 0.364687, -0.888668,
		-0.373287, -0.893431, -0.249876,
		-0.885090, 0.262268, 0.384488,
		15.620043, 14.607778, 17.063700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.327013, 17.916084, 25.520666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.642635, 17.675337, 25.569887>,  <17.832008, 17.530888, 25.599421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.642635, 17.675337, 25.569887>,  <17.327013, 17.916084, 25.520666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642635, 17.675337, 25.569887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389997, -0.645542, -0.656642,
		0.474650, 0.470136, -0.744097,
		0.789056, -0.601870, 0.123054,
		17.879353, 17.494776, 25.606804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482271, 17.725962, 24.852081>,  <17.327013, 17.916084, 25.520666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482271, 17.725962, 24.852081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.673515, 17.441790, 25.058653>,  <17.788261, 17.271286, 25.182596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.673515, 17.441790, 25.058653>,  <17.482271, 17.725962, 24.852081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673515, 17.441790, 25.058653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205969, -0.662283, -0.720388,
		0.853809, 0.238055, -0.462970,
		0.478108, -0.710431, 0.516431,
		17.816948, 17.228661, 25.213583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854605, 17.271770, 24.365892>,  <17.482271, 17.725962, 24.852081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854605, 17.271770, 24.365892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.824814, 17.048872, 24.696693>,  <17.806940, 16.915133, 24.895174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.824814, 17.048872, 24.696693>,  <17.854605, 17.271770, 24.365892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.824814, 17.048872, 24.696693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251831, -0.791915, -0.556284,
		0.964901, -0.249694, -0.081352,
		-0.074477, -0.557247, 0.827000,
		17.802471, 16.881699, 24.944794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278103, 16.695576, 24.138601>,  <17.854605, 17.271770, 24.365892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278103, 16.695576, 24.138601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.028473, 16.590597, 24.432991>,  <17.878695, 16.527611, 24.609625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.028473, 16.590597, 24.432991>,  <18.278103, 16.695576, 24.138601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028473, 16.590597, 24.432991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274572, -0.808177, -0.521018,
		0.731534, -0.527231, 0.432302,
		-0.624073, -0.262444, 0.735973,
		17.841251, 16.511864, 24.653782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356894, 16.009621, 24.191000>,  <18.278103, 16.695576, 24.138601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356894, 16.009621, 24.191000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.007727, 16.042015, 24.383440>,  <17.798227, 16.061451, 24.498905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.007727, 16.042015, 24.383440>,  <18.356894, 16.009621, 24.191000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.007727, 16.042015, 24.383440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315813, -0.845434, -0.430701,
		0.371860, -0.527905, 0.763569,
		-0.872916, 0.080985, 0.481102,
		17.745852, 16.066311, 24.527771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.147097, 15.307591, 24.386892>,  <18.356894, 16.009621, 24.191000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.147097, 15.307591, 24.386892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.827339, 15.547901, 24.389324>,  <17.635485, 15.692087, 24.390783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.827339, 15.547901, 24.389324>,  <18.147097, 15.307591, 24.386892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827339, 15.547901, 24.389324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476454, -0.627745, -0.615571,
		-0.366002, -0.494981, 0.788058,
		-0.799396, 0.600774, 0.006079,
		17.587521, 15.728133, 24.391148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688234, 14.841547, 24.469778>,  <18.147097, 15.307591, 24.386892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688234, 14.841547, 24.469778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.494850, 15.174180, 24.360426>,  <17.378820, 15.373760, 24.294815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.494850, 15.174180, 24.360426>,  <17.688234, 14.841547, 24.469778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494850, 15.174180, 24.360426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480582, -0.513177, -0.711119,
		-0.731648, -0.212414, 0.647743,
		-0.483459, 0.831583, -0.273383,
		17.349812, 15.423655, 24.278412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.977232, 14.613197, 24.381510>,  <17.688234, 14.841547, 24.469778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.977232, 14.613197, 24.381510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.986137, 14.940717, 24.152050>,  <16.991482, 15.137228, 24.014374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.986137, 14.940717, 24.152050>,  <16.977232, 14.613197, 24.381510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986137, 14.940717, 24.152050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372707, -0.525630, -0.764724,
		-0.927682, 0.230830, 0.293468,
		0.022266, 0.818798, -0.573649,
		16.992817, 15.186357, 23.979956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314987, 14.661602, 24.116285>,  <16.977232, 14.613197, 24.381510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314987, 14.661602, 24.116285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.521505, 14.888407, 23.859556>,  <16.645416, 15.024489, 23.705519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.521505, 14.888407, 23.859556>,  <16.314987, 14.661602, 24.116285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.521505, 14.888407, 23.859556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371818, -0.526707, -0.764416,
		-0.771484, 0.633306, -0.061113,
		0.516298, 0.567012, -0.641821,
		16.676395, 15.058511, 23.667009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818242, 14.983020, 23.565573>,  <16.314987, 14.661602, 24.116285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818242, 14.983020, 23.565573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.183920, 14.970619, 23.403938>,  <16.403326, 14.963179, 23.306957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.183920, 14.970619, 23.403938>,  <15.818242, 14.983020, 23.565573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183920, 14.970619, 23.403938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385963, -0.370711, -0.844752,
		-0.123610, 0.928231, -0.350868,
		0.914195, -0.031002, -0.404086,
		16.458178, 14.961319, 23.282713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774684, 15.274183, 22.937548>,  <15.818242, 14.983020, 23.565573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774684, 15.274183, 22.937548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.111403, 15.058266, 22.937197>,  <16.313435, 14.928715, 22.936985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.111403, 15.058266, 22.937197>,  <15.774684, 15.274183, 22.937548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111403, 15.058266, 22.937197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235443, -0.365700, -0.900461,
		0.485742, 0.758212, -0.434936,
		0.841797, -0.539794, -0.000880,
		16.363941, 14.896327, 22.936934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051840, 15.540724, 22.331226>,  <15.774684, 15.274183, 22.937548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051840, 15.540724, 22.331226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.274544, 15.214067, 22.392042>,  <16.408167, 15.018074, 22.428532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.274544, 15.214067, 22.392042>,  <16.051840, 15.540724, 22.331226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274544, 15.214067, 22.392042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001941, -0.184313, -0.982866,
		0.830672, 0.546924, -0.104203,
		0.556759, -0.816641, 0.152042,
		16.441572, 14.969075, 22.437654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649870, 15.603954, 21.908693>,  <16.051840, 15.540724, 22.331226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.649870, 15.603954, 21.908693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.614916, 15.211300, 21.976521>,  <16.593945, 14.975707, 22.017218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.614916, 15.211300, 21.976521>,  <16.649870, 15.603954, 21.908693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614916, 15.211300, 21.976521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175832, -0.182745, -0.967309,
		0.980534, -0.054712, 0.188572,
		-0.087384, -0.981637, 0.169567,
		16.588701, 14.916809, 22.027391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185852, 15.282500, 21.469687>,  <16.649870, 15.603954, 21.908693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185852, 15.282500, 21.469687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.912775, 15.008569, 21.571619>,  <16.748928, 14.844210, 21.632778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.912775, 15.008569, 21.571619>,  <17.185852, 15.282500, 21.469687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912775, 15.008569, 21.571619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127966, -0.231308, -0.964428,
		0.719412, -0.691019, 0.070279,
		-0.682694, -0.684828, 0.254833,
		16.707966, 14.803121, 21.648069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934561, 15.102020, 21.209682>,  <17.185852, 15.282500, 21.469687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934561, 15.102020, 21.209682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.112793, 15.353358, 20.954609>,  <18.219732, 15.504161, 20.801565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.112793, 15.353358, 20.954609>,  <17.934561, 15.102020, 21.209682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.112793, 15.353358, 20.954609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291490, 0.775315, 0.560286,
		0.846458, -0.063776, 0.528623,
		0.445582, 0.628346, -0.637681,
		18.246468, 15.541862, 20.763304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379599, 15.419577, 21.656977>,  <17.934561, 15.102020, 21.209682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379599, 15.419577, 21.656977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.324217, 15.659159, 21.341488>,  <18.290989, 15.802908, 21.152195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.324217, 15.659159, 21.341488>,  <18.379599, 15.419577, 21.656977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324217, 15.659159, 21.341488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308364, 0.730734, 0.609048,
		0.941139, 0.327538, 0.083523,
		-0.138453, 0.598954, -0.788723,
		18.282681, 15.838845, 21.104870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788364, 16.045074, 21.800642>,  <18.379599, 15.419577, 21.656977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788364, 16.045074, 21.800642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.504698, 16.147236, 21.537781>,  <18.334497, 16.208532, 21.380064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.504698, 16.147236, 21.537781>,  <18.788364, 16.045074, 21.800642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504698, 16.147236, 21.537781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175873, 0.838532, 0.515687,
		0.682752, 0.481284, -0.549741,
		-0.709167, 0.255402, -0.657154,
		18.291948, 16.223856, 21.340635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860344, 16.825073, 21.700722>,  <18.788364, 16.045074, 21.800642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860344, 16.825073, 21.700722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.498472, 16.785988, 21.534826>,  <18.281349, 16.762537, 21.435289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.498472, 16.785988, 21.534826>,  <18.860344, 16.825073, 21.700722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498472, 16.785988, 21.534826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294401, 0.847003, 0.442621,
		0.308035, 0.522529, -0.795033,
		-0.904678, -0.097716, -0.414739,
		18.227068, 16.756674, 21.410404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649939, 17.545420, 21.392569>,  <18.860344, 16.825073, 21.700722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649939, 17.545420, 21.392569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.323185, 17.324600, 21.459427>,  <18.127132, 17.192108, 21.499542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.323185, 17.324600, 21.459427>,  <18.649939, 17.545420, 21.392569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323185, 17.324600, 21.459427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452342, 0.792938, 0.408210,
		-0.357888, 0.257854, -0.897456,
		-0.816886, -0.552051, 0.167145,
		18.078119, 17.158985, 21.509571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166435, 17.858942, 21.021923>,  <18.649939, 17.545420, 21.392569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166435, 17.858942, 21.021923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.996689, 17.659672, 21.324375>,  <17.894842, 17.540110, 21.505846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.996689, 17.659672, 21.324375>,  <18.166435, 17.858942, 21.021923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996689, 17.659672, 21.324375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288095, 0.865941, 0.408837,
		-0.858438, -0.044341, -0.510998,
		-0.424365, -0.498177, 0.756131,
		17.869379, 17.510218, 21.551214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567858, 18.293119, 21.202000>,  <18.166435, 17.858942, 21.021923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567858, 18.293119, 21.202000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.616394, 18.028574, 21.498074>,  <17.645515, 17.869846, 21.675718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.616394, 18.028574, 21.498074>,  <17.567858, 18.293119, 21.202000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616394, 18.028574, 21.498074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305506, 0.684615, 0.661792,
		-0.944427, -0.306432, -0.118979,
		0.121339, -0.661363, 0.740186,
		17.652796, 17.830166, 21.720129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957783, 18.399065, 21.643387>,  <17.567858, 18.293119, 21.202000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957783, 18.399065, 21.643387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.227514, 18.224894, 21.881941>,  <17.389355, 18.120390, 22.025074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.227514, 18.224894, 21.881941>,  <16.957783, 18.399065, 21.643387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227514, 18.224894, 21.881941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180123, 0.686254, 0.704707,
		-0.716124, -0.582628, 0.384332,
		0.674331, -0.435430, 0.596387,
		17.429813, 18.094265, 22.060858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658018, 18.416090, 22.296757>,  <16.957783, 18.399065, 21.643387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658018, 18.416090, 22.296757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.047911, 18.378029, 22.377600>,  <17.281845, 18.355192, 22.426105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.047911, 18.378029, 22.377600>,  <16.658018, 18.416090, 22.296757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047911, 18.378029, 22.377600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105393, 0.601826, 0.791643,
		-0.196960, -0.792939, 0.576589,
		0.974730, -0.095153, 0.202105,
		17.340330, 18.349483, 22.438231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693306, 18.455000, 23.027859>,  <16.658018, 18.416090, 22.296757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693306, 18.455000, 23.027859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.071550, 18.515406, 22.912609>,  <17.298496, 18.551649, 22.843460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.071550, 18.515406, 22.912609>,  <16.693306, 18.455000, 23.027859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071550, 18.515406, 22.912609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089314, 0.731155, 0.676340,
		0.312798, -0.665288, 0.677901,
		0.945611, 0.151012, -0.288123,
		17.355234, 18.560709, 22.826172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226080, 18.198139, 23.511387>,  <16.693306, 18.455000, 23.027859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226080, 18.198139, 23.511387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.372087, 18.500233, 23.293623>,  <17.459692, 18.681490, 23.162964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.372087, 18.500233, 23.293623>,  <17.226080, 18.198139, 23.511387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372087, 18.500233, 23.293623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078431, 0.557734, 0.826306,
		0.927691, -0.344315, 0.144349,
		0.365018, 0.755235, -0.544410,
		17.481592, 18.726803, 23.130301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783073, 18.366396, 23.888918>,  <17.226080, 18.198139, 23.511387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783073, 18.366396, 23.888918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.767761, 18.684193, 23.646490>,  <17.758574, 18.874870, 23.501034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.767761, 18.684193, 23.646490>,  <17.783073, 18.366396, 23.888918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767761, 18.684193, 23.646490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153295, 0.604003, 0.782101,
		0.987439, -0.062969, -0.144912,
		-0.038279, 0.794491, -0.606068,
		17.756277, 18.922541, 23.464670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477877, 18.710243, 23.834080>,  <17.783073, 18.366396, 23.888918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477877, 18.710243, 23.834080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.191607, 18.979765, 23.760544>,  <18.019844, 19.141478, 23.716423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.191607, 18.979765, 23.760544>,  <18.477877, 18.710243, 23.834080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191607, 18.979765, 23.760544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260949, 0.502117, 0.824490,
		0.647853, 0.542095, -0.535181,
		-0.715676, 0.673804, -0.183839,
		17.976904, 19.181906, 23.705393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795925, 19.350021, 23.917233>,  <18.477877, 18.710243, 23.834080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795925, 19.350021, 23.917233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.405453, 19.428175, 23.954956>,  <18.171169, 19.475067, 23.977591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.405453, 19.428175, 23.954956>,  <18.795925, 19.350021, 23.917233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405453, 19.428175, 23.954956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197878, 0.623592, 0.756292,
		0.088955, 0.756941, -0.647401,
		-0.976182, 0.195383, 0.094310,
		18.112598, 19.486790, 23.983250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.313280, 20.436823, 23.268852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.625480, 20.669012, 23.176006>,  <14.812799, 20.808325, 23.120298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.625480, 20.669012, 23.176006>,  <14.313280, 20.436823, 23.268852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625480, 20.669012, 23.176006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222064, -0.604499, -0.765029,
		-0.584389, 0.545559, -0.600712,
		0.780498, 0.580471, -0.232113,
		14.859629, 20.843153, 23.106373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269873, 20.859280, 22.562180>,  <14.313280, 20.436823, 23.268852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269873, 20.859280, 22.562180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638059, 20.764305, 22.686352>,  <14.858971, 20.707319, 22.760855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638059, 20.764305, 22.686352>,  <14.269873, 20.859280, 22.562180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638059, 20.764305, 22.686352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202759, -0.388927, -0.898679,
		0.334116, 0.890145, -0.309851,
		0.920465, -0.237438, 0.310431,
		14.914198, 20.693073, 22.779482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744582, 21.121599, 22.133101>,  <14.269873, 20.859280, 22.562180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744582, 21.121599, 22.133101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.946854, 20.823900, 22.307631>,  <15.068216, 20.645281, 22.412350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.946854, 20.823900, 22.307631>,  <14.744582, 21.121599, 22.133101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946854, 20.823900, 22.307631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301452, -0.321446, -0.897663,
		0.808341, 0.585462, 0.061807,
		0.505680, -0.744249, 0.436327,
		15.098557, 20.600626, 22.438528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401826, 21.046194, 21.766443>,  <14.744582, 21.121599, 22.133101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401826, 21.046194, 21.766443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.321949, 20.696394, 21.943247>,  <15.274023, 20.486513, 22.049328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.321949, 20.696394, 21.943247>,  <15.401826, 21.046194, 21.766443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.321949, 20.696394, 21.943247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157846, -0.473912, -0.866310,
		0.967062, -0.103226, 0.232672,
		-0.199692, -0.874501, 0.442008,
		15.262041, 20.434044, 22.075850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979975, 20.552858, 21.621389>,  <15.401826, 21.046194, 21.766443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.979975, 20.552858, 21.621389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.671290, 20.310776, 21.699556>,  <15.486079, 20.165525, 21.746456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.671290, 20.310776, 21.699556>,  <15.979975, 20.552858, 21.621389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671290, 20.310776, 21.699556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315527, -0.631136, -0.708597,
		0.552181, -0.485174, 0.678014,
		-0.771712, -0.605206, 0.195416,
		15.439777, 20.129213, 21.758181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292910, 19.877995, 21.735806>,  <15.979975, 20.552858, 21.621389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.292910, 19.877995, 21.735806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.904206, 19.827919, 21.655788>,  <15.670984, 19.797874, 21.607779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.904206, 19.827919, 21.655788>,  <16.292910, 19.877995, 21.735806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904206, 19.827919, 21.655788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227960, -0.717157, -0.658574,
		-0.061016, -0.685575, 0.725440,
		-0.971757, -0.125187, -0.200042,
		15.612679, 19.790363, 21.595776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298346, 19.180714, 21.632114>,  <16.292910, 19.877995, 21.735806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298346, 19.180714, 21.632114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.947594, 19.309450, 21.489285>,  <15.737143, 19.386692, 21.403587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.947594, 19.309450, 21.489285>,  <16.298346, 19.180714, 21.632114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947594, 19.309450, 21.489285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118430, -0.575273, -0.809342,
		-0.465894, -0.751983, 0.466330,
		-0.876879, 0.321841, -0.357074,
		15.684530, 19.406002, 21.382162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985323, 18.597042, 21.392727>,  <16.298346, 19.180714, 21.632114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985323, 18.597042, 21.392727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.803998, 18.889496, 21.188787>,  <15.695203, 19.064968, 21.066423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.803998, 18.889496, 21.188787>,  <15.985323, 18.597042, 21.392727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803998, 18.889496, 21.188787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074661, -0.538842, -0.839091,
		-0.888219, -0.418437, 0.189677,
		-0.453313, 0.731135, -0.509851,
		15.668004, 19.108837, 21.035831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425297, 18.209648, 21.049564>,  <15.985323, 18.597042, 21.392727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425297, 18.209648, 21.049564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.475416, 18.556396, 20.856550>,  <15.505488, 18.764444, 20.740742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.475416, 18.556396, 20.856550>,  <15.425297, 18.209648, 21.049564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475416, 18.556396, 20.856550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028334, -0.489295, -0.871658,
		-0.991714, 0.095546, -0.085870,
		0.125299, 0.866869, -0.482533,
		15.513006, 18.816458, 20.711790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198589, 18.005285, 20.454655>,  <15.425297, 18.209648, 21.049564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198589, 18.005285, 20.454655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.363767, 18.360365, 20.373203>,  <15.462873, 18.573414, 20.324331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.363767, 18.360365, 20.373203>,  <15.198589, 18.005285, 20.454655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363767, 18.360365, 20.373203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026158, -0.235051, -0.971631,
		-0.910381, 0.395902, -0.120283,
		0.412944, 0.887700, -0.203630,
		15.487650, 18.626675, 20.312115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809935, 18.444586, 19.930704>,  <15.198589, 18.005285, 20.454655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809935, 18.444586, 19.930704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.199234, 18.530123, 19.897091>,  <15.432814, 18.581444, 19.876923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.199234, 18.530123, 19.897091>,  <14.809935, 18.444586, 19.930704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199234, 18.530123, 19.897091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018515, -0.291562, -0.956373,
		-0.229012, 0.932343, -0.279803,
		0.973248, 0.213840, -0.084033,
		15.491208, 18.594275, 19.871881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.877441, 19.019598, 19.463915>,  <14.809935, 18.444586, 19.930704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.877441, 19.019598, 19.463915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.250566, 18.876652, 19.482475>,  <15.474441, 18.790884, 19.493612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.250566, 18.876652, 19.482475>,  <14.877441, 19.019598, 19.463915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250566, 18.876652, 19.482475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031140, -0.048347, -0.998345,
		0.359018, 0.932712, -0.033970,
		0.932811, -0.357366, 0.046402,
		15.530409, 18.769442, 19.496395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180787, 19.319986, 18.940805>,  <14.877441, 19.019598, 19.463915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180787, 19.319986, 18.940805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.401168, 18.995888, 19.020758>,  <15.533397, 18.801428, 19.068729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.401168, 18.995888, 19.020758>,  <15.180787, 19.319986, 18.940805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.401168, 18.995888, 19.020758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001851, -0.240698, -0.970598,
		0.834534, 0.534384, -0.134113,
		0.550953, -0.810246, 0.199882,
		15.566454, 18.752813, 19.080723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729165, 19.318363, 18.418415>,  <15.180787, 19.319986, 18.940805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729165, 19.318363, 18.418415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.677062, 18.946930, 18.557419>,  <15.645801, 18.724070, 18.640821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.677062, 18.946930, 18.557419>,  <15.729165, 19.318363, 18.418415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677062, 18.946930, 18.557419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197276, -0.319215, -0.926922,
		0.971656, -0.189294, -0.141607,
		-0.130258, -0.928585, 0.347510,
		15.637984, 18.668354, 18.661673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188606, 18.773502, 18.148399>,  <15.729165, 19.318363, 18.418415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188606, 18.773502, 18.148399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.562672, 18.802124, 18.009634>,  <16.787111, 18.819296, 17.926374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.562672, 18.802124, 18.009634>,  <16.188606, 18.773502, 18.148399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562672, 18.802124, 18.009634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234766, 0.608180, 0.758289,
		0.265243, -0.790568, 0.551950,
		0.935164, 0.071552, -0.346914,
		16.843222, 18.823589, 17.905560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596901, 18.764482, 18.806612>,  <16.188606, 18.773502, 18.148399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596901, 18.764482, 18.806612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.812452, 18.934853, 18.515903>,  <16.941782, 19.037075, 18.341478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.812452, 18.934853, 18.515903>,  <16.596901, 18.764482, 18.806612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812452, 18.934853, 18.515903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386510, 0.641567, 0.662572,
		0.748479, -0.637950, 0.181102,
		0.538877, 0.425924, -0.726773,
		16.974115, 19.062630, 18.297871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330360, 18.776012, 18.994976>,  <16.596901, 18.764482, 18.806612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330360, 18.776012, 18.994976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.292568, 19.061792, 18.717665>,  <17.269894, 19.233261, 18.551279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.292568, 19.061792, 18.717665>,  <17.330360, 18.776012, 18.994976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.292568, 19.061792, 18.717665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546562, 0.619277, 0.563707,
		0.832072, -0.325661, -0.449000,
		-0.094478, 0.714451, -0.693277,
		17.264225, 19.276127, 18.509682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998775, 19.072094, 19.096506>,  <17.330360, 18.776012, 18.994976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998775, 19.072094, 19.096506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.759996, 19.334652, 18.911987>,  <17.616728, 19.492188, 18.801275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.759996, 19.334652, 18.911987>,  <17.998775, 19.072094, 19.096506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759996, 19.334652, 18.911987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430909, 0.747332, 0.505779,
		0.676733, 0.103148, -0.728967,
		-0.596950, 0.656396, -0.461297,
		17.580912, 19.531570, 18.773598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447079, 19.565437, 18.975481>,  <17.998775, 19.072094, 19.096506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447079, 19.565437, 18.975481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.096222, 19.750437, 18.923761>,  <17.885708, 19.861437, 18.892729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.096222, 19.750437, 18.923761>,  <18.447079, 19.565437, 18.975481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096222, 19.750437, 18.923761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289034, 0.723446, 0.626965,
		0.383511, 0.512565, -0.768242,
		-0.877142, 0.462496, -0.129301,
		17.833078, 19.889185, 18.884972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661930, 20.363535, 18.815386>,  <18.447079, 19.565437, 18.975481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661930, 20.363535, 18.815386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.292826, 20.332981, 18.966475>,  <18.071363, 20.314650, 19.057129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.292826, 20.332981, 18.966475>,  <18.661930, 20.363535, 18.815386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292826, 20.332981, 18.966475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238227, 0.657377, 0.714915,
		-0.302914, 0.749681, -0.588406,
		-0.922763, -0.076384, 0.377723,
		18.015997, 20.310066, 19.079792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436232, 21.084614, 18.907301>,  <18.661930, 20.363535, 18.815386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436232, 21.084614, 18.907301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.203077, 20.857037, 19.139353>,  <18.063185, 20.720490, 19.278584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.203077, 20.857037, 19.139353>,  <18.436232, 21.084614, 18.907301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203077, 20.857037, 19.139353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053597, 0.685480, 0.726116,
		-0.810786, 0.454334, -0.369061,
		-0.582884, -0.568944, 0.580129,
		18.028212, 20.686354, 19.313391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819527, 21.594179, 19.076441>,  <18.436232, 21.084614, 18.907301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819527, 21.594179, 19.076441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.845144, 21.292027, 19.337299>,  <17.860514, 21.110735, 19.493814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.845144, 21.292027, 19.337299>,  <17.819527, 21.594179, 19.076441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845144, 21.292027, 19.337299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101140, 0.645210, 0.757281,
		-0.992809, -0.114456, -0.035079,
		0.064042, -0.755383, 0.652146,
		17.864357, 21.065411, 19.532944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272356, 21.760607, 19.663712>,  <17.819527, 21.594179, 19.076441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272356, 21.760607, 19.663712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.522673, 21.491745, 19.822001>,  <17.672863, 21.330427, 19.916973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.522673, 21.491745, 19.822001>,  <17.272356, 21.760607, 19.663712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522673, 21.491745, 19.822001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080843, 0.560500, 0.824199,
		-0.775791, -0.483784, 0.405094,
		0.625789, -0.672155, 0.395721,
		17.710409, 21.290098, 19.940716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091707, 21.782837, 20.335514>,  <17.272356, 21.760607, 19.663712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091707, 21.782837, 20.335514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.444113, 21.594814, 20.356897>,  <17.655556, 21.482000, 20.369728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.444113, 21.594814, 20.356897>,  <17.091707, 21.782837, 20.335514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444113, 21.594814, 20.356897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122436, 0.335700, 0.933978,
		-0.456969, -0.816304, 0.353309,
		0.881016, -0.470057, 0.053460,
		17.708418, 21.453798, 20.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169823, 21.361259, 20.887665>,  <17.091707, 21.782837, 20.335514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169823, 21.361259, 20.887665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.549639, 21.471127, 20.827097>,  <17.777529, 21.537046, 20.790756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.549639, 21.471127, 20.827097>,  <17.169823, 21.361259, 20.887665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.549639, 21.471127, 20.827097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028137, 0.406236, 0.913335,
		0.312372, -0.871511, 0.378011,
		0.949543, 0.274664, -0.151419,
		17.834501, 21.553526, 20.781672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672256, 21.078049, 21.535074>,  <17.169823, 21.361259, 20.887665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672256, 21.078049, 21.535074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.885769, 21.373039, 21.369568>,  <18.013876, 21.550034, 21.270264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.885769, 21.373039, 21.369568>,  <17.672256, 21.078049, 21.535074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885769, 21.373039, 21.369568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034704, 0.469787, 0.882098,
		0.844910, -0.485207, 0.225170,
		0.533782, 0.737478, -0.413766,
		18.045904, 21.594282, 21.245438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266283, 21.181150, 21.944571>,  <17.672256, 21.078049, 21.535074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266283, 21.181150, 21.944571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.195738, 21.510269, 21.728460>,  <18.153410, 21.707741, 21.598793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.195738, 21.510269, 21.728460>,  <18.266283, 21.181150, 21.944571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195738, 21.510269, 21.728460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086169, 0.559678, 0.824218,
		0.980546, 0.098806, -0.169606,
		-0.176363, 0.822799, -0.540277,
		18.142830, 21.757109, 21.566378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847940, 21.621708, 22.107479>,  <18.266283, 21.181150, 21.944571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847940, 21.621708, 22.107479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.597502, 21.902809, 21.972338>,  <18.447239, 22.071470, 21.891253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.597502, 21.902809, 21.972338>,  <18.847940, 21.621708, 22.107479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597502, 21.902809, 21.972338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090221, 0.495668, 0.863813,
		0.774510, 0.510347, -0.373738,
		-0.626095, 0.702751, -0.337855,
		18.409674, 22.113634, 21.870981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536840, 21.662003, 22.064346>,  <18.847940, 21.621708, 22.107479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.536840, 21.662003, 22.064346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.849596, 21.480131, 22.234951>,  <20.037251, 21.371008, 22.337315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.849596, 21.480131, 22.234951>,  <19.536840, 21.662003, 22.064346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849596, 21.480131, 22.234951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146746, -0.530697, -0.834761,
		0.605899, 0.715281, -0.348224,
		0.781890, -0.454681, 0.426513,
		20.084164, 21.343727, 22.362906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002287, 21.635933, 21.559000>,  <19.536840, 21.662003, 22.064346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002287, 21.635933, 21.559000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.065071, 21.345751, 21.827051>,  <20.102741, 21.171640, 21.987883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.065071, 21.345751, 21.827051>,  <20.002287, 21.635933, 21.559000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065071, 21.345751, 21.827051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063807, -0.669674, -0.739909,
		0.985541, 0.158896, -0.058824,
		0.156962, -0.725458, 0.670130,
		20.112160, 21.128113, 22.028090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586729, 21.404255, 21.297070>,  <20.002287, 21.635933, 21.559000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586729, 21.404255, 21.297070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.405313, 21.130819, 21.525808>,  <20.296463, 20.966759, 21.663052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.405313, 21.130819, 21.525808>,  <20.586729, 21.404255, 21.297070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405313, 21.130819, 21.525808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221844, -0.708027, -0.670435,
		0.863184, -0.177209, 0.472769,
		-0.453540, -0.683590, 0.571845,
		20.269251, 20.925743, 21.697361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.053150, 20.896320, 21.389420>,  <20.586729, 21.404255, 21.297070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.053150, 20.896320, 21.389420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.697309, 20.720543, 21.439217>,  <20.483805, 20.615076, 21.469095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.697309, 20.720543, 21.439217>,  <21.053150, 20.896320, 21.389420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.697309, 20.720543, 21.439217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266191, -0.720333, -0.640518,
		0.371149, -0.536667, 0.757785,
		-0.889602, -0.439443, 0.124495,
		20.430429, 20.588711, 21.476564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173267, 20.320591, 21.298456>,  <21.053150, 20.896320, 21.389420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173267, 20.320591, 21.298456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.776632, 20.272268, 21.279860>,  <20.538651, 20.243275, 21.268702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.776632, 20.272268, 21.279860>,  <21.173267, 20.320591, 21.298456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776632, 20.272268, 21.279860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118597, -0.703955, -0.700273,
		0.051867, -0.699896, 0.712359,
		-0.991587, -0.120805, -0.046494,
		20.479156, 20.236027, 21.265911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151365, 19.680117, 21.061516>,  <21.173267, 20.320591, 21.298456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151365, 19.680117, 21.061516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.774418, 19.799812, 21.001657>,  <20.548248, 19.871630, 20.965742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.774418, 19.799812, 21.001657>,  <21.151365, 19.680117, 21.061516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774418, 19.799812, 21.001657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112132, -0.703889, -0.701403,
		-0.315221, -0.644202, 0.696878,
		-0.942371, 0.299239, -0.149645,
		20.491707, 19.889584, 20.956764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672178, 19.125835, 21.132599>,  <21.151365, 19.680117, 21.061516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672178, 19.125835, 21.132599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.503313, 19.385738, 20.879745>,  <20.401993, 19.541679, 20.728033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.503313, 19.385738, 20.879745>,  <20.672178, 19.125835, 21.132599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503313, 19.385738, 20.879745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131252, -0.733782, -0.666586,
		-0.896967, -0.198440, 0.395059,
		-0.422164, 0.649758, -0.632133,
		20.376663, 19.580666, 20.690105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.137630, 18.737682, 20.827890>,  <20.672178, 19.125835, 21.132599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.137630, 18.737682, 20.827890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.236593, 19.017904, 20.560156>,  <20.295971, 19.186037, 20.399515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.236593, 19.017904, 20.560156>,  <20.137630, 18.737682, 20.827890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.236593, 19.017904, 20.560156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016228, -0.693715, -0.720067,
		-0.968775, 0.167289, -0.183000,
		0.247409, 0.700553, -0.669339,
		20.310816, 19.228069, 20.359354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797817, 18.503014, 20.260641>,  <20.137630, 18.737682, 20.827890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797817, 18.503014, 20.260641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.061810, 18.771198, 20.125051>,  <20.220205, 18.932110, 20.043697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.061810, 18.771198, 20.125051>,  <19.797817, 18.503014, 20.260641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061810, 18.771198, 20.125051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139913, -0.552992, -0.821355,
		-0.738138, 0.494653, -0.458771,
		0.659983, 0.670461, -0.338976,
		20.259804, 18.972336, 20.023359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659206, 18.541817, 19.620281>,  <19.797817, 18.503014, 20.260641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659206, 18.541817, 19.620281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.047729, 18.628551, 19.659355>,  <20.280844, 18.680592, 19.682798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.047729, 18.628551, 19.659355>,  <19.659206, 18.541817, 19.620281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047729, 18.628551, 19.659355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193057, -0.479038, -0.856301,
		-0.138882, 0.850591, -0.507155,
		0.971309, 0.216835, 0.097683,
		20.339123, 18.693602, 19.688660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901503, 18.719721, 18.953245>,  <19.659206, 18.541817, 19.620281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901503, 18.719721, 18.953245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.232351, 18.617065, 19.153246>,  <20.430861, 18.555471, 19.273247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.232351, 18.617065, 19.153246>,  <19.901503, 18.719721, 18.953245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.232351, 18.617065, 19.153246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319455, -0.517277, -0.793961,
		0.462401, 0.816432, -0.345867,
		0.827124, -0.256639, 0.500002,
		20.480488, 18.540073, 19.303247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337519, 18.671980, 18.419199>,  <19.901503, 18.719721, 18.953245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337519, 18.671980, 18.419199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.543844, 18.484421, 18.705994>,  <20.667639, 18.371885, 18.878071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.543844, 18.484421, 18.705994>,  <20.337519, 18.671980, 18.419199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.543844, 18.484421, 18.705994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279261, -0.699175, -0.658154,
		0.809907, 0.539712, -0.229699,
		0.515813, -0.468898, 0.716987,
		20.698587, 18.343752, 18.921089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.988522, 18.608025, 18.197716>,  <20.337519, 18.671980, 18.419199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.988522, 18.608025, 18.197716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.992334, 18.315561, 18.470572>,  <20.994621, 18.140083, 18.634285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.992334, 18.315561, 18.470572>,  <20.988522, 18.608025, 18.197716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.992334, 18.315561, 18.470572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125108, -0.675940, -0.726260,
		0.992097, 0.092264, 0.085031,
		0.009532, -0.731159, 0.682141,
		20.995193, 18.096214, 18.675213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506685, 18.155575, 18.078518>,  <20.988522, 18.608025, 18.197716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506685, 18.155575, 18.078518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.272453, 17.901800, 18.280344>,  <21.131914, 17.749535, 18.401440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.272453, 17.901800, 18.280344>,  <21.506685, 18.155575, 18.078518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.272453, 17.901800, 18.280344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034918, -0.641611, -0.766235,
		0.809862, -0.431074, 0.397868,
		-0.585581, -0.634437, 0.504564,
		21.096779, 17.711470, 18.431713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.404447, 14.817200, 4.937260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.092668, 15.022942, 4.794208>,  <4.905600, 15.146387, 4.708377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.092668, 15.022942, 4.794208>,  <5.404447, 14.817200, 4.937260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.092668, 15.022942, 4.794208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290509, 0.802542, 0.521086,
		0.555036, 0.302265, -0.774965,
		-0.779449, 0.514356, -0.357629,
		4.858833, 15.177248, 4.686919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.629349, 15.472787, 4.856790>,  <5.404447, 14.817200, 4.937260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.629349, 15.472787, 4.856790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.232333, 15.479568, 4.905088>,  <4.994124, 15.483638, 4.934068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.232333, 15.479568, 4.905088>,  <5.629349, 15.472787, 4.856790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.232333, 15.479568, 4.905088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096074, 0.718522, 0.688837,
		-0.075081, 0.695298, -0.714790,
		-0.992538, 0.016955, 0.120748,
		4.934572, 15.484654, 4.941313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.815948, 16.225071, 4.719263>,  <5.629349, 15.472787, 4.856790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.815948, 16.225071, 4.719263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.076350, 16.069048, 4.458786>,  <6.232590, 15.975434, 4.302500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.076350, 16.069048, 4.458786>,  <5.815948, 16.225071, 4.719263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.076350, 16.069048, 4.458786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426284, -0.521960, 0.738809,
		-0.628074, -0.758560, -0.173522,
		0.651003, -0.390057, -0.651192,
		6.271651, 15.952031, 4.263429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.464746, 16.726368, 5.055515>,  <5.815948, 16.225071, 4.719263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.464746, 16.726368, 5.055515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.511490, 16.605118, 5.433818>,  <5.539536, 16.532368, 5.660800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.511490, 16.605118, 5.433818>,  <5.464746, 16.726368, 5.055515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.511490, 16.605118, 5.433818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745384, 0.602539, 0.285219,
		-0.656313, -0.738284, -0.155531,
		0.116859, -0.303123, 0.945759,
		5.546548, 16.514181, 5.717546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.764401, 16.542843, 5.303312>,  <5.464746, 16.726368, 5.055515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.764401, 16.542843, 5.303312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.978245, 16.629185, 5.630138>,  <5.106552, 16.680990, 5.826234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.978245, 16.629185, 5.630138>,  <4.764401, 16.542843, 5.303312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.978245, 16.629185, 5.630138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832367, 0.301678, 0.464924,
		-0.146135, -0.928653, 0.340951,
		0.534611, 0.215854, 0.817066,
		5.138628, 16.693941, 5.875258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.464288, 16.390665, 5.994061>,  <4.764401, 16.542843, 5.303312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.464288, 16.390665, 5.994061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.701118, 16.701607, 6.079077>,  <4.843215, 16.888172, 6.130086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.701118, 16.701607, 6.079077>,  <4.464288, 16.390665, 5.994061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.701118, 16.701607, 6.079077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703147, 0.369445, 0.607532,
		0.393744, -0.509151, 0.765331,
		0.592073, 0.777352, 0.212541,
		4.878739, 16.934813, 6.142839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.683910, 16.499559, 6.769413>,  <4.464288, 16.390665, 5.994061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.683910, 16.499559, 6.769413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.626655, 16.814585, 6.529663>,  <4.592301, 17.003601, 6.385813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.626655, 16.814585, 6.529663>,  <4.683910, 16.499559, 6.769413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.626655, 16.814585, 6.529663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855488, 0.206059, 0.475058,
		0.497646, 0.580759, 0.644258,
		-0.143139, 0.787565, -0.599377,
		4.583713, 17.050854, 6.349850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.670069, 17.190666, 7.118499>,  <4.683910, 16.499559, 6.769413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.670069, 17.190666, 7.118499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.446626, 17.104044, 6.798234>,  <4.312560, 17.052071, 6.606075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.446626, 17.104044, 6.798234>,  <4.670069, 17.190666, 7.118499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.446626, 17.104044, 6.798234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827654, 0.082379, 0.555160,
		-0.054265, 0.972789, -0.225251,
		-0.558609, -0.216556, -0.800662,
		4.279043, 17.039078, 6.558035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.222533, 17.575956, 6.887814>,  <4.670069, 17.190666, 7.118499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.222533, 17.575956, 6.887814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.427927, 17.802979, 7.145252>,  <5.551164, 17.939192, 7.299715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.427927, 17.802979, 7.145252>,  <5.222533, 17.575956, 6.887814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.427927, 17.802979, 7.145252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016536, -0.743341, 0.668708,
		0.857939, -0.354015, -0.372310,
		0.513486, 0.567554, 0.643595,
		5.581973, 17.973246, 7.338331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.020575, 17.764193, 6.589124>,  <5.222533, 17.575956, 6.887814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.020575, 17.764193, 6.589124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.926504, 18.149206, 6.535135>,  <5.870062, 18.380215, 6.502741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.926504, 18.149206, 6.535135>,  <6.020575, 17.764193, 6.589124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.926504, 18.149206, 6.535135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327248, 0.209174, 0.921496,
		0.915205, 0.172544, -0.364181,
		-0.235176, 0.962536, -0.134972,
		5.855951, 18.437967, 6.494643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.586874, 18.350925, 6.594270>,  <6.020575, 17.764193, 6.589124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.586874, 18.350925, 6.594270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.231298, 18.448977, 6.749032>,  <6.017952, 18.507807, 6.841889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.231298, 18.448977, 6.749032>,  <6.586874, 18.350925, 6.594270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.231298, 18.448977, 6.749032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434278, 0.182647, 0.882067,
		0.145553, 0.952130, -0.268817,
		-0.888941, 0.245129, 0.386905,
		5.964615, 18.522514, 6.865103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.759414, 19.006289, 7.047923>,  <6.586874, 18.350925, 6.594270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.759414, 19.006289, 7.047923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405354, 18.903608, 7.203162>,  <6.192919, 18.842001, 7.296306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405354, 18.903608, 7.203162>,  <6.759414, 19.006289, 7.047923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405354, 18.903608, 7.203162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370975, 0.114152, 0.921600,
		-0.280876, 0.959727, -0.005813,
		-0.885148, -0.256699, 0.388097,
		6.139810, 18.826599, 7.319592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.792517, 19.367598, 7.555757>,  <6.759414, 19.006289, 7.047923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.792517, 19.367598, 7.555757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.502614, 19.108828, 7.650594>,  <6.328672, 18.953566, 7.707496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.502614, 19.108828, 7.650594>,  <6.792517, 19.367598, 7.555757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.502614, 19.108828, 7.650594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186213, 0.147390, 0.971391,
		-0.663364, 0.748172, 0.013645,
		-0.724757, -0.646927, 0.237093,
		6.285187, 18.914749, 7.721722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.273462, 19.634199, 8.124310>,  <6.792517, 19.367598, 7.555757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.273462, 19.634199, 8.124310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.241866, 19.235624, 8.136159>,  <6.222908, 18.996479, 8.143268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.241866, 19.235624, 8.136159>,  <6.273462, 19.634199, 8.124310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.241866, 19.235624, 8.136159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042686, 0.033067, 0.998541,
		-0.995961, 0.077612, -0.045146,
		-0.078991, -0.996435, 0.029621,
		6.218168, 18.936693, 8.145045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.806921, 19.514677, 8.781309>,  <6.273462, 19.634199, 8.124310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.806921, 19.514677, 8.781309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990338, 19.169046, 8.698253>,  <6.100388, 18.961668, 8.648419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990338, 19.169046, 8.698253>,  <5.806921, 19.514677, 8.781309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.990338, 19.169046, 8.698253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007051, -0.237183, 0.971439,
		-0.888645, -0.443981, -0.114851,
		0.458541, -0.864075, -0.207641,
		6.127901, 18.909824, 8.635961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.352253, 18.866404, 8.987500>,  <5.806921, 19.514677, 8.781309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.352253, 18.866404, 8.987500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.728641, 18.732979, 8.964472>,  <5.954473, 18.652924, 8.950655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.728641, 18.732979, 8.964472>,  <5.352253, 18.866404, 8.987500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.728641, 18.732979, 8.964472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062303, -0.337846, 0.939137,
		-0.332666, -0.880128, -0.338687,
		0.940985, -0.333520, -0.057555,
		6.010931, 18.632910, 8.947201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.286470, 18.291098, 9.258039>,  <5.352253, 18.866404, 8.987500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.286470, 18.291098, 9.258039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673504, 18.385155, 9.294884>,  <5.905725, 18.441589, 9.316991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673504, 18.385155, 9.294884>,  <5.286470, 18.291098, 9.258039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.673504, 18.385155, 9.294884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008974, -0.332505, 0.943059,
		0.252382, -0.913317, -0.319618,
		0.967586, 0.235143, 0.092114,
		5.963780, 18.455698, 9.322518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.727705, 17.717482, 9.621471>,  <5.286470, 18.291098, 9.258039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.727705, 17.717482, 9.621471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.923104, 18.062418, 9.674745>,  <6.040343, 18.269381, 9.706709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.923104, 18.062418, 9.674745>,  <5.727705, 17.717482, 9.621471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.923104, 18.062418, 9.674745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030480, -0.169404, 0.985075,
		0.872034, -0.477145, -0.109037,
		0.488495, 0.862342, 0.133183,
		6.069653, 18.321121, 9.714700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.224985, 17.524637, 10.107376>,  <5.727705, 17.717482, 9.621471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.224985, 17.524637, 10.107376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.212411, 17.924063, 10.124723>,  <6.204867, 18.163719, 10.135132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.212411, 17.924063, 10.124723>,  <6.224985, 17.524637, 10.107376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.212411, 17.924063, 10.124723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282823, -0.032731, 0.958614,
		0.958657, 0.042398, -0.281388,
		-0.031433, 0.998565, 0.043369,
		6.202981, 18.223633, 10.137734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.854536, 17.646713, 10.442904>,  <6.224985, 17.524637, 10.107376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.854536, 17.646713, 10.442904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625426, 17.970713, 10.493229>,  <6.487960, 18.165113, 10.523423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625426, 17.970713, 10.493229>,  <6.854536, 17.646713, 10.442904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.625426, 17.970713, 10.493229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116318, -0.071614, 0.990627,
		0.811418, 0.582041, -0.053199,
		-0.572775, 0.810000, 0.125810,
		6.453593, 18.213713, 10.530972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.238466, 18.065708, 10.897593>,  <6.854536, 17.646713, 10.442904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.238466, 18.065708, 10.897593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.855888, 18.182348, 10.892177>,  <6.626342, 18.252333, 10.888927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.855888, 18.182348, 10.892177>,  <7.238466, 18.065708, 10.897593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.855888, 18.182348, 10.892177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018256, -0.013448, 0.999743,
		0.291343, 0.956446, 0.018185,
		-0.956445, 0.291600, -0.013543,
		6.568955, 18.269829, 10.888114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259939, 18.506899, 11.493187>,  <7.238466, 18.065708, 10.897593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259939, 18.506899, 11.493187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.888665, 18.396057, 11.393841>,  <6.665901, 18.329552, 11.334233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.888665, 18.396057, 11.393841>,  <7.259939, 18.506899, 11.493187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.888665, 18.396057, 11.393841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224231, -0.116160, 0.967588,
		-0.296972, 0.953793, 0.045683,
		-0.928185, -0.277103, -0.248366,
		6.610209, 18.312925, 11.319331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.862556, 18.813534, 11.983368>,  <7.259939, 18.506899, 11.493187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.862556, 18.813534, 11.983368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.645439, 18.504086, 11.852594>,  <6.515169, 18.318417, 11.774130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.645439, 18.504086, 11.852594>,  <6.862556, 18.813534, 11.983368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.645439, 18.504086, 11.852594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317934, -0.171030, 0.932559,
		-0.777364, 0.610129, -0.153127,
		-0.542792, -0.773622, -0.326934,
		6.482601, 18.271999, 11.754514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.299222, 18.803194, 12.370236>,  <6.862556, 18.813534, 11.983368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.299222, 18.803194, 12.370236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.270095, 18.437229, 12.211426>,  <6.252618, 18.217649, 12.116139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.270095, 18.437229, 12.211426>,  <6.299222, 18.803194, 12.370236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.270095, 18.437229, 12.211426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452339, -0.324489, 0.830720,
		-0.888868, 0.240083, -0.390222,
		-0.072819, -0.914914, -0.397027,
		6.248249, 18.162756, 12.092318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.752576, 18.512278, 12.729383>,  <6.299222, 18.803194, 12.370236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.752576, 18.512278, 12.729383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.909742, 18.184097, 12.563263>,  <6.004042, 17.987188, 12.463591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.909742, 18.184097, 12.563263>,  <5.752576, 18.512278, 12.729383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.909742, 18.184097, 12.563263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310157, -0.543398, 0.780078,
		-0.865691, -0.177696, -0.467978,
		0.392915, -0.820453, -0.415301,
		6.027617, 17.937962, 12.438673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.230239, 17.972593, 12.898088>,  <5.752576, 18.512278, 12.729383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.230239, 17.972593, 12.898088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.584083, 17.798111, 12.832129>,  <5.796390, 17.693422, 12.792554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.584083, 17.798111, 12.832129>,  <5.230239, 17.972593, 12.898088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.584083, 17.798111, 12.832129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099198, -0.521530, 0.847447,
		-0.455657, -0.733303, -0.504621,
		0.884611, -0.436203, -0.164897,
		5.849466, 17.667250, 12.782660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.085828, 17.268618, 13.015900>,  <5.230239, 17.972593, 12.898088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.085828, 17.268618, 13.015900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.483420, 17.308668, 13.033690>,  <5.721976, 17.332699, 13.044365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.483420, 17.308668, 13.033690>,  <5.085828, 17.268618, 13.015900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.483420, 17.308668, 13.033690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026613, -0.614449, 0.788507,
		0.106279, -0.782577, -0.613415,
		0.993980, 0.100126, 0.044476,
		5.781614, 17.338705, 13.047033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.302577, 16.623371, 13.264432>,  <5.085828, 17.268618, 13.015900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.302577, 16.623371, 13.264432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.607885, 16.867554, 13.349057>,  <5.791070, 17.014063, 13.399832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.607885, 16.867554, 13.349057>,  <5.302577, 16.623371, 13.264432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.607885, 16.867554, 13.349057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172188, -0.507819, 0.844080,
		0.622711, -0.607833, -0.492717,
		0.763271, 0.610458, 0.211563,
		5.836866, 17.050692, 13.412526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.791941, 16.225876, 13.310791>,  <5.302577, 16.623371, 13.264432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.791941, 16.225876, 13.310791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.879435, 16.543152, 13.538127>,  <5.931931, 16.733517, 13.674528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.879435, 16.543152, 13.538127>,  <5.791941, 16.225876, 13.310791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.879435, 16.543152, 13.538127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196455, -0.606313, 0.770578,
		0.955804, -0.056898, -0.288446,
		0.218733, 0.793188, 0.568339,
		5.945055, 16.781109, 13.708629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.425482, 16.072338, 13.653896>,  <5.791941, 16.225876, 13.310791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.425482, 16.072338, 13.653896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.249091, 16.352034, 13.878967>,  <6.143256, 16.519850, 14.014009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.249091, 16.352034, 13.878967>,  <6.425482, 16.072338, 13.653896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.249091, 16.352034, 13.878967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058647, -0.603137, 0.795479,
		0.895600, 0.383788, 0.224962,
		-0.440978, 0.699237, 0.562677,
		6.116798, 16.561806, 14.047771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.804078, 16.046221, 14.330535>,  <6.425482, 16.072338, 13.653896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.804078, 16.046221, 14.330535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.467674, 16.243576, 14.419322>,  <6.265832, 16.361990, 14.472594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.467674, 16.243576, 14.419322>,  <6.804078, 16.046221, 14.330535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.467674, 16.243576, 14.419322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027475, -0.370795, 0.928308,
		0.540322, 0.786814, 0.298286,
		-0.841009, 0.493390, 0.221967,
		6.215372, 16.391594, 14.485912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.515662, 16.134983, 14.184507>,  <6.804078, 16.046221, 14.330535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.515662, 16.134983, 14.184507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.845376, 15.910075, 14.211064>,  <8.043203, 15.775130, 14.226998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.845376, 15.910075, 14.211064>,  <7.515662, 16.134983, 14.184507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.845376, 15.910075, 14.211064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307425, 0.346014, -0.886434,
		0.475443, 0.751083, 0.458070,
		0.824284, -0.562270, 0.066391,
		8.092661, 15.741394, 14.230982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.056205, 16.590485, 14.147422>,  <7.515662, 16.134983, 14.184507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.056205, 16.590485, 14.147422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.175747, 16.222862, 14.044646>,  <8.247472, 16.002289, 13.982981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.175747, 16.222862, 14.044646>,  <8.056205, 16.590485, 14.147422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.175747, 16.222862, 14.044646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342532, 0.354611, -0.870013,
		0.890706, 0.171998, 0.420785,
		0.298855, -0.919058, -0.256940,
		8.265404, 15.947145, 13.967565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.762471, 16.721008, 13.876920>,  <8.056205, 16.590485, 14.147422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.762471, 16.721008, 13.876920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.653239, 16.369987, 13.719270>,  <8.587700, 16.159376, 13.624680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.653239, 16.369987, 13.719270>,  <8.762471, 16.721008, 13.876920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.653239, 16.369987, 13.719270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374679, 0.280320, -0.883762,
		0.886027, -0.389008, 0.252250,
		-0.273080, -0.877550, -0.394124,
		8.571315, 16.106722, 13.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.374873, 16.525545, 13.607517>,  <8.762471, 16.721008, 13.876920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.374873, 16.525545, 13.607517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.076561, 16.335489, 13.420732>,  <8.897573, 16.221457, 13.308661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.076561, 16.335489, 13.420732>,  <9.374873, 16.525545, 13.607517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.076561, 16.335489, 13.420732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336397, 0.336431, -0.879574,
		0.575021, -0.813054, -0.091068,
		-0.745780, -0.475139, -0.466964,
		8.852827, 16.192947, 13.280643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773892, 16.348192, 12.917471>,  <9.374873, 16.525545, 13.607517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773892, 16.348192, 12.917471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.384098, 16.291071, 12.848206>,  <9.150222, 16.256798, 12.806646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.384098, 16.291071, 12.848206>,  <9.773892, 16.348192, 12.917471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384098, 16.291071, 12.848206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127940, 0.280484, -0.951294,
		0.184418, -0.949176, -0.255058,
		-0.974485, -0.142804, -0.173164,
		9.091752, 16.248230, 12.796256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.758080, 16.064518, 12.312740>,  <9.773892, 16.348192, 12.917471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.758080, 16.064518, 12.312740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.392570, 16.223579, 12.345939>,  <9.173265, 16.319016, 12.365858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.392570, 16.223579, 12.345939>,  <9.758080, 16.064518, 12.312740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.392570, 16.223579, 12.345939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086050, 0.389158, -0.917143,
		-0.397004, -0.830920, -0.389821,
		-0.913774, 0.397653, 0.082996,
		9.118438, 16.342875, 12.370837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539553, 15.941916, 11.715759>,  <9.758080, 16.064518, 12.312740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539553, 15.941916, 11.715759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.278975, 16.214458, 11.849249>,  <9.122627, 16.377985, 11.929342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.278975, 16.214458, 11.849249>,  <9.539553, 15.941916, 11.715759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.278975, 16.214458, 11.849249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046306, 0.403337, -0.913879,
		-0.757281, -0.610796, -0.231201,
		-0.651446, 0.681357, 0.333723,
		9.083541, 16.418865, 11.949366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.101984, 16.001093, 11.203262>,  <9.539553, 15.941916, 11.715759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.101984, 16.001093, 11.203262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.020133, 16.333281, 11.410511>,  <8.971023, 16.532593, 11.534860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.020133, 16.333281, 11.410511>,  <9.101984, 16.001093, 11.203262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.020133, 16.333281, 11.410511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084728, 0.512307, -0.854613,
		-0.975166, -0.218776, -0.034467,
		-0.204626, 0.830469, 0.518121,
		8.958745, 16.582422, 11.565948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.587176, 16.404205, 10.810609>,  <9.101984, 16.001093, 11.203262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.587176, 16.404205, 10.810609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.776155, 16.670412, 11.041739>,  <8.889542, 16.830135, 11.180418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.776155, 16.670412, 11.041739>,  <8.587176, 16.404205, 10.810609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.776155, 16.670412, 11.041739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215093, 0.548723, -0.807860,
		-0.854711, 0.505957, 0.116093,
		0.472445, 0.665516, 0.577827,
		8.917888, 16.870068, 11.215088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.285749, 17.023500, 10.643894>,  <8.587176, 16.404205, 10.810609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.285749, 17.023500, 10.643894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.625102, 17.140921, 10.820111>,  <8.828713, 17.211372, 10.925841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.625102, 17.140921, 10.820111>,  <8.285749, 17.023500, 10.643894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.625102, 17.140921, 10.820111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183493, 0.617527, -0.764847,
		-0.496568, 0.729718, 0.470034,
		0.848381, 0.293551, 0.440542,
		8.879617, 17.228987, 10.952273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.328159, 17.723528, 10.741472>,  <8.285749, 17.023500, 10.643894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.328159, 17.723528, 10.741472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722581, 17.661457, 10.765540>,  <8.959233, 17.624214, 10.779981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722581, 17.661457, 10.765540>,  <8.328159, 17.723528, 10.741472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722581, 17.661457, 10.765540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126748, 0.465838, -0.875745,
		0.107864, 0.871158, 0.479009,
		0.986053, -0.155175, 0.060170,
		9.018396, 17.614904, 10.783591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.763418, 18.381350, 10.552959>,  <8.328159, 17.723528, 10.741472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.763418, 18.381350, 10.552959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.995290, 18.067991, 10.463283>,  <9.134413, 17.879976, 10.409476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.995290, 18.067991, 10.463283>,  <8.763418, 18.381350, 10.552959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.995290, 18.067991, 10.463283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238927, 0.426454, -0.872382,
		0.779029, 0.452137, 0.434381,
		0.579680, -0.783396, -0.224193,
		9.169193, 17.832972, 10.396025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.348585, 18.680635, 10.291710>,  <8.763418, 18.381350, 10.552959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.348585, 18.680635, 10.291710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.361679, 18.302212, 10.162775>,  <9.369535, 18.075157, 10.085414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.361679, 18.302212, 10.162775>,  <9.348585, 18.680635, 10.291710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.361679, 18.302212, 10.162775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173810, 0.322983, -0.930307,
		0.984235, -0.025572, 0.175007,
		0.032734, -0.946059, -0.322336,
		9.371499, 18.018394, 10.066074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773404, 18.693178, 9.772887>,  <9.348585, 18.680635, 10.291710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773404, 18.693178, 9.772887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.603414, 18.340919, 9.689121>,  <9.501419, 18.129564, 9.638862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.603414, 18.340919, 9.689121>,  <9.773404, 18.693178, 9.772887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.603414, 18.340919, 9.689121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125936, 0.171574, -0.977089,
		0.896401, -0.441613, 0.037990,
		-0.424977, -0.880648, -0.209415,
		9.475921, 18.076725, 9.626297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.273495, 18.370161, 9.244244>,  <9.773404, 18.693178, 9.772887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.273495, 18.370161, 9.244244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.904372, 18.216776, 9.229344>,  <9.682899, 18.124744, 9.220405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.904372, 18.216776, 9.229344>,  <10.273495, 18.370161, 9.244244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.904372, 18.216776, 9.229344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013664, 0.129199, -0.991525,
		0.385026, -0.914475, -0.124465,
		-0.922805, -0.383463, -0.037249,
		9.627531, 18.101738, 9.218169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.289136, 17.841711, 8.748700>,  <10.273495, 18.370161, 9.244244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.289136, 17.841711, 8.748700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.908167, 17.957150, 8.787896>,  <9.679585, 18.026413, 8.811414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.908167, 17.957150, 8.787896>,  <10.289136, 17.841711, 8.748700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908167, 17.957150, 8.787896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114794, -0.041848, -0.992507,
		-0.282336, -0.956535, 0.072987,
		-0.952423, 0.288599, 0.097990,
		9.622440, 18.043730, 8.817293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.944183, 17.491562, 8.204091>,  <10.289136, 17.841711, 8.748700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.944183, 17.491562, 8.204091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.645478, 17.748108, 8.274519>,  <9.466255, 17.902035, 8.316775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.645478, 17.748108, 8.274519>,  <9.944183, 17.491562, 8.204091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.645478, 17.748108, 8.274519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280128, -0.063203, -0.957880,
		-0.603221, -0.764630, 0.226862,
		-0.746762, 0.641363, 0.176069,
		9.421450, 17.940517, 8.327340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.390873, 17.239040, 7.848769>,  <9.944183, 17.491562, 8.204091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.390873, 17.239040, 7.848769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.291278, 17.622440, 7.904315>,  <9.231521, 17.852480, 7.937642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.291278, 17.622440, 7.904315>,  <9.390873, 17.239040, 7.848769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291278, 17.622440, 7.904315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276781, 0.066979, -0.958596,
		-0.928115, -0.277113, 0.248618,
		-0.248987, 0.958500, 0.138864,
		9.216581, 17.909990, 7.945974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.682248, 17.290291, 7.442589>,  <9.390873, 17.239040, 7.848769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.682248, 17.290291, 7.442589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.832174, 17.654726, 7.511214>,  <8.922130, 17.873386, 7.552390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.832174, 17.654726, 7.511214>,  <8.682248, 17.290291, 7.442589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.832174, 17.654726, 7.511214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322692, 0.301690, -0.897136,
		-0.869128, 0.280898, 0.407078,
		0.374815, 0.911087, 0.171564,
		8.944619, 17.928053, 7.562684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.103095, 17.849356, 7.429691>,  <8.682248, 17.290291, 7.442589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.103095, 17.849356, 7.429691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.459430, 18.014519, 7.353881>,  <8.673230, 18.113617, 7.308395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.459430, 18.014519, 7.353881>,  <8.103095, 17.849356, 7.429691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.459430, 18.014519, 7.353881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323850, 0.284538, -0.902308,
		-0.318642, 0.865186, 0.387197,
		0.890836, 0.412907, -0.189524,
		8.726681, 18.138391, 7.297024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.913730, 18.475464, 7.121096>,  <8.103095, 17.849356, 7.429691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.913730, 18.475464, 7.121096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.295429, 18.413574, 7.018747>,  <8.524448, 18.376440, 6.957337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.295429, 18.413574, 7.018747>,  <7.913730, 18.475464, 7.121096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.295429, 18.413574, 7.018747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226550, 0.184389, -0.956387,
		0.195155, 0.970598, 0.140901,
		0.954248, -0.154723, -0.255874,
		8.581704, 18.367157, 6.941985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.853531, 20.044573, 24.044107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.485752, 19.946653, 24.167198>,  <18.265085, 19.887901, 24.241053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.485752, 19.946653, 24.167198>,  <18.853531, 20.044573, 24.044107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485752, 19.946653, 24.167198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138297, 0.531267, 0.835840,
		-0.368095, 0.811067, -0.454617,
		-0.919445, -0.244797, 0.307725,
		18.209919, 19.873215, 24.259516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.510452, 20.609047, 24.220726>,  <18.853531, 20.044573, 24.044107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.510452, 20.609047, 24.220726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.339087, 20.322529, 24.441048>,  <18.236267, 20.150618, 24.573240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.339087, 20.322529, 24.441048>,  <18.510452, 20.609047, 24.220726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339087, 20.322529, 24.441048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279671, 0.474527, 0.834631,
		-0.859211, 0.511613, -0.002969,
		-0.428417, -0.716294, 0.550802,
		18.210562, 20.107641, 24.606289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280325, 20.936575, 24.717154>,  <18.510452, 20.609047, 24.220726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280325, 20.936575, 24.717154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.264103, 20.561998, 24.856541>,  <18.254370, 20.337252, 24.940172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.264103, 20.561998, 24.856541>,  <18.280325, 20.936575, 24.717154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264103, 20.561998, 24.856541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381649, 0.307792, 0.871555,
		-0.923417, 0.168340, 0.344910,
		-0.040557, -0.936443, 0.348467,
		18.251936, 20.281065, 24.961081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856115, 20.929197, 25.259344>,  <18.280325, 20.936575, 24.717154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.856115, 20.929197, 25.259344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.070921, 20.599800, 25.332531>,  <18.199804, 20.402163, 25.376444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.070921, 20.599800, 25.332531>,  <17.856115, 20.929197, 25.259344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070921, 20.599800, 25.332531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310801, 0.394784, 0.864609,
		-0.784232, -0.407440, 0.467946,
		0.537014, -0.823492, 0.182969,
		18.232025, 20.352753, 25.387423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773787, 20.766239, 26.076633>,  <17.856115, 20.929197, 25.259344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773787, 20.766239, 26.076633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.079662, 20.554014, 25.930346>,  <18.263187, 20.426680, 25.842573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.079662, 20.554014, 25.930346>,  <17.773787, 20.766239, 26.076633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079662, 20.554014, 25.930346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577820, 0.313322, 0.753627,
		-0.285257, -0.787613, 0.546163,
		0.764691, -0.530561, -0.365722,
		18.309071, 20.394846, 25.820629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099806, 20.447138, 26.552427>,  <17.773787, 20.766239, 26.076633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099806, 20.447138, 26.552427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.404652, 20.438469, 26.293596>,  <18.587559, 20.433268, 26.138298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.404652, 20.438469, 26.293596>,  <18.099806, 20.447138, 26.552427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404652, 20.438469, 26.293596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642103, 0.153387, 0.751117,
		0.082975, -0.987928, 0.130814,
		0.762115, -0.021672, -0.647079,
		18.633286, 20.431967, 26.099472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647646, 20.072090, 26.933249>,  <18.099806, 20.447138, 26.552427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647646, 20.072090, 26.933249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.828323, 20.292095, 26.652262>,  <18.936729, 20.424099, 26.483669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.828323, 20.292095, 26.652262>,  <18.647646, 20.072090, 26.933249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828323, 20.292095, 26.652262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738234, 0.211716, 0.640458,
		0.500984, -0.807874, -0.310409,
		0.451691, 0.550014, -0.702467,
		18.963831, 20.457100, 26.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.401335, 20.075089, 27.134212>,  <18.647646, 20.072090, 26.933249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.401335, 20.075089, 27.134212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.382278, 20.365652, 26.859970>,  <19.370844, 20.539991, 26.695425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.382278, 20.365652, 26.859970>,  <19.401335, 20.075089, 27.134212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382278, 20.365652, 26.859970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796179, 0.442104, 0.413090,
		0.603183, -0.526185, -0.599416,
		-0.047642, 0.726411, -0.685607,
		19.367987, 20.583576, 26.654287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106628, 20.165928, 26.747328>,  <19.401335, 20.075089, 27.134212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106628, 20.165928, 26.747328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.912935, 20.514904, 26.720903>,  <19.796719, 20.724289, 26.705050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.912935, 20.514904, 26.720903>,  <20.106628, 20.165928, 26.747328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912935, 20.514904, 26.720903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736489, 0.447207, 0.507533,
		0.472336, 0.197112, -0.859096,
		-0.484234, 0.872441, -0.066061,
		19.767666, 20.776636, 26.701084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.632360, 20.691725, 26.606766>,  <20.106628, 20.165928, 26.747328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.632360, 20.691725, 26.606766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.313639, 20.888979, 26.746435>,  <20.122406, 21.007332, 26.830236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.313639, 20.888979, 26.746435>,  <20.632360, 20.691725, 26.606766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313639, 20.888979, 26.746435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584727, 0.483621, 0.651310,
		0.152318, 0.723136, -0.673701,
		-0.796802, 0.493137, 0.349173,
		20.074598, 21.036921, 26.851187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965429, 21.241899, 26.814466>,  <20.632360, 20.691725, 26.606766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965429, 21.241899, 26.814466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.610638, 21.296618, 26.990900>,  <20.397762, 21.329449, 27.096760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.610638, 21.296618, 26.990900>,  <20.965429, 21.241899, 26.814466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610638, 21.296618, 26.990900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453899, 0.434247, 0.778078,
		-0.085102, 0.890346, -0.447260,
		-0.886980, 0.136795, 0.441082,
		20.344543, 21.337656, 27.123224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.959610, 21.926441, 27.083261>,  <20.965429, 21.241899, 26.814466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.959610, 21.926441, 27.083261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.661816, 21.739058, 27.273540>,  <20.483139, 21.626627, 27.387709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.661816, 21.739058, 27.273540>,  <20.959610, 21.926441, 27.083261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661816, 21.739058, 27.273540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320189, 0.374699, 0.870104,
		-0.585850, 0.800092, -0.128963,
		-0.744485, -0.468458, 0.475698,
		20.438471, 21.598520, 27.416250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557671, 22.416809, 27.508324>,  <20.959610, 21.926441, 27.083261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557671, 22.416809, 27.508324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.508648, 22.056591, 27.675177>,  <20.479235, 21.840460, 27.775290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.508648, 22.056591, 27.675177>,  <20.557671, 22.416809, 27.508324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508648, 22.056591, 27.675177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294330, 0.368414, 0.881839,
		-0.947813, 0.230849, 0.219906,
		-0.122555, -0.900544, 0.417133,
		20.471882, 21.786428, 27.800316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953642, 22.702026, 26.921982>,  <20.557671, 22.416809, 27.508324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953642, 22.702026, 26.921982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.830702, 22.362562, 26.749790>,  <20.756937, 22.158884, 26.646475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.830702, 22.362562, 26.749790>,  <20.953642, 22.702026, 26.921982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830702, 22.362562, 26.749790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019984, 0.458031, -0.888711,
		0.951386, -0.264543, -0.157736,
		-0.307351, -0.848660, -0.430478,
		20.738497, 22.107964, 26.620647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554506, 23.314024, 27.332163>,  <20.953642, 22.702026, 26.921982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554506, 23.314024, 27.332163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.490282, 23.690872, 27.214436>,  <20.451748, 23.916981, 27.143799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.490282, 23.690872, 27.214436>,  <20.554506, 23.314024, 27.332163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.490282, 23.690872, 27.214436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058224, -0.306710, -0.950020,
		-0.985307, -0.135400, 0.104100,
		-0.160562, 0.942123, -0.294320,
		20.442114, 23.973509, 27.126139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919664, 23.360472, 26.879612>,  <20.554506, 23.314024, 27.332163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919664, 23.360472, 26.879612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.184700, 23.649164, 26.799532>,  <20.343721, 23.822380, 26.751484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.184700, 23.649164, 26.799532>,  <19.919664, 23.360472, 26.879612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184700, 23.649164, 26.799532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088954, -0.189574, -0.977829,
		-0.743680, 0.665709, -0.061409,
		0.662591, 0.721729, -0.200200,
		20.383478, 23.865683, 26.739471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600349, 23.826374, 26.374407>,  <19.919664, 23.360472, 26.879612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600349, 23.826374, 26.374407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.990587, 23.899979, 26.326483>,  <20.224730, 23.944141, 26.297729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.990587, 23.899979, 26.326483>,  <19.600349, 23.826374, 26.374407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990587, 23.899979, 26.326483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067728, -0.266851, -0.961355,
		-0.208872, 0.946007, -0.247876,
		0.975595, 0.184012, -0.119809,
		20.283266, 23.955183, 26.290541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.684183, 24.024988, 25.667263>,  <19.600349, 23.826374, 26.374407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.684183, 24.024988, 25.667263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.067503, 23.942436, 25.746326>,  <20.297495, 23.892904, 25.793764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.067503, 23.942436, 25.746326>,  <19.684183, 24.024988, 25.667263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067503, 23.942436, 25.746326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123828, -0.323475, -0.938099,
		0.257544, 0.923456, -0.284430,
		0.958299, -0.206382, 0.197659,
		20.354992, 23.880522, 25.805624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.126629, 24.243420, 25.021196>,  <19.684183, 24.024988, 25.667263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.126629, 24.243420, 25.021196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.330374, 23.978790, 25.241333>,  <20.452620, 23.820013, 25.373415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.330374, 23.978790, 25.241333>,  <20.126629, 24.243420, 25.021196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330374, 23.978790, 25.241333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274805, -0.480987, -0.832546,
		0.815496, 0.575303, -0.063193,
		0.509361, -0.661572, 0.550339,
		20.483183, 23.780319, 25.406435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664995, 24.188076, 24.608906>,  <20.126629, 24.243420, 25.021196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664995, 24.188076, 24.608906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.686211, 23.868639, 24.848719>,  <20.698940, 23.676977, 24.992605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.686211, 23.868639, 24.848719>,  <20.664995, 24.188076, 24.608906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.686211, 23.868639, 24.848719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128562, -0.589919, -0.797162,
		0.990282, 0.119356, 0.071381,
		0.053037, -0.798593, 0.599531,
		20.702122, 23.629061, 25.028578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227882, 23.791439, 24.423222>,  <20.664995, 24.188076, 24.608906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227882, 23.791439, 24.423222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.968924, 23.548180, 24.606974>,  <20.813549, 23.402224, 24.717224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.968924, 23.548180, 24.606974>,  <21.227882, 23.791439, 24.423222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968924, 23.548180, 24.606974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042377, -0.573084, -0.818400,
		0.760973, -0.549297, 0.345242,
		-0.647398, -0.608151, 0.459379,
		20.774704, 23.365734, 24.744787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.451040, 23.264151, 24.195660>,  <21.227882, 23.791439, 24.423222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.451040, 23.264151, 24.195660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.115576, 23.109606, 24.349216>,  <20.914297, 23.016880, 24.441351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.115576, 23.109606, 24.349216>,  <21.451040, 23.264151, 24.195660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115576, 23.109606, 24.349216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030438, -0.736982, -0.675227,
		0.543801, -0.554602, 0.629839,
		-0.838662, -0.386360, 0.383890,
		20.863977, 22.993698, 24.464384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.553349, 22.536701, 24.189247>,  <21.451040, 23.264151, 24.195660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.553349, 22.536701, 24.189247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.155504, 22.563543, 24.220852>,  <20.916798, 22.579649, 24.239815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.155504, 22.563543, 24.220852>,  <21.553349, 22.536701, 24.189247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155504, 22.563543, 24.220852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103601, -0.669944, -0.735148,
		0.003600, -0.739373, 0.673287,
		-0.994612, 0.067107, 0.079011,
		20.857121, 22.583675, 24.244555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247372, 21.876856, 24.329481>,  <21.553349, 22.536701, 24.189247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247372, 21.876856, 24.329481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.955925, 22.082396, 24.148338>,  <20.781057, 22.205719, 24.039652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.955925, 22.082396, 24.148338>,  <21.247372, 21.876856, 24.329481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955925, 22.082396, 24.148338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136731, -0.756993, -0.638957,
		-0.671135, -0.403635, 0.621817,
		-0.728617, 0.513848, -0.452855,
		20.737341, 22.236549, 24.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.638006, 21.438036, 24.318956>,  <21.247372, 21.876856, 24.329481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.638006, 21.438036, 24.318956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.549656, 21.729013, 24.059099>,  <20.496645, 21.903601, 23.903185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.549656, 21.729013, 24.059099>,  <20.638006, 21.438036, 24.318956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549656, 21.729013, 24.059099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191614, -0.685479, -0.702426,
		-0.956294, -0.030668, 0.290794,
		-0.220876, 0.727446, -0.649643,
		20.483393, 21.947247, 23.864206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058222, 21.194252, 23.890665>,  <20.638006, 21.438036, 24.318956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058222, 21.194252, 23.890665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.180880, 21.504383, 23.669815>,  <20.254475, 21.690462, 23.537306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.180880, 21.504383, 23.669815>,  <20.058222, 21.194252, 23.890665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180880, 21.504383, 23.669815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132263, -0.539732, -0.831382,
		-0.942590, 0.327963, -0.062958,
		0.306643, 0.775326, -0.552123,
		20.272873, 21.736980, 23.504179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472157, 21.400112, 23.464359>,  <20.058222, 21.194252, 23.890665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472157, 21.400112, 23.464359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.825451, 21.488468, 23.298903>,  <20.037428, 21.541481, 23.199629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.825451, 21.488468, 23.298903>,  <19.472157, 21.400112, 23.464359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825451, 21.488468, 23.298903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308131, -0.391550, -0.867032,
		-0.353481, 0.893250, -0.277768,
		0.883236, 0.220890, -0.413644,
		20.090422, 21.554735, 23.174809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341446, 21.559914, 22.745613>,  <19.472157, 21.400112, 23.464359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341446, 21.559914, 22.745613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737389, 21.503328, 22.750805>,  <19.974955, 21.469378, 22.753920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737389, 21.503328, 22.750805>,  <19.341446, 21.559914, 22.745613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.737389, 21.503328, 22.750805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063389, -0.521613, -0.850824,
		0.127133, 0.841372, -0.525290,
		0.989858, -0.141466, 0.012980,
		20.034346, 21.460888, 22.754700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144411, 22.288261, 22.391455>,  <19.341446, 21.559914, 22.745613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144411, 22.288261, 22.391455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.768345, 22.381891, 22.292418>,  <18.542706, 22.438070, 22.232996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.768345, 22.381891, 22.292418>,  <19.144411, 22.288261, 22.391455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768345, 22.381891, 22.292418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021570, 0.684315, 0.728868,
		0.340040, 0.690595, -0.638319,
		-0.940163, 0.234076, -0.247591,
		18.486296, 22.452114, 22.218140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059219, 23.017847, 22.355625>,  <19.144411, 22.288261, 22.391455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059219, 23.017847, 22.355625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.687986, 22.874466, 22.395979>,  <18.465246, 22.788437, 22.420191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.687986, 22.874466, 22.395979>,  <19.059219, 23.017847, 22.355625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687986, 22.874466, 22.395979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165121, 0.638968, 0.751303,
		-0.333768, 0.680612, -0.652202,
		-0.928081, -0.358453, 0.100884,
		18.409561, 22.766930, 22.426245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726179, 23.561882, 22.596672>,  <19.059219, 23.017847, 22.355625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726179, 23.561882, 22.596672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.443739, 23.287640, 22.667521>,  <18.274275, 23.123095, 22.710030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.443739, 23.287640, 22.667521>,  <18.726179, 23.561882, 22.596672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443739, 23.287640, 22.667521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488326, 0.652595, 0.579360,
		-0.512798, 0.322593, -0.795595,
		-0.706099, -0.685604, 0.177119,
		18.231909, 23.081959, 22.720655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076263, 23.968447, 22.645454>,  <18.726179, 23.561882, 22.596672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076263, 23.968447, 22.645454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.037220, 23.612814, 22.824345>,  <18.013794, 23.399435, 22.931679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.037220, 23.612814, 22.824345>,  <18.076263, 23.968447, 22.645454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.037220, 23.612814, 22.824345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321968, 0.453414, 0.831115,
		-0.941705, -0.062867, -0.330513,
		-0.097610, -0.889080, 0.447224,
		18.007936, 23.346090, 22.958511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512392, 23.995485, 23.088531>,  <18.076263, 23.968447, 22.645454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512392, 23.995485, 23.088531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.724783, 23.689449, 23.234243>,  <17.852219, 23.505827, 23.321671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.724783, 23.689449, 23.234243>,  <17.512392, 23.995485, 23.088531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724783, 23.689449, 23.234243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215681, 0.293706, 0.931246,
		-0.819478, -0.573039, -0.009064,
		0.530978, -0.765090, 0.364279,
		17.884077, 23.459923, 23.343527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005957, 23.664513, 23.577593>,  <17.512392, 23.995485, 23.088531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005957, 23.664513, 23.577593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.393478, 23.612614, 23.662050>,  <17.625992, 23.581474, 23.712725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.393478, 23.612614, 23.662050>,  <17.005957, 23.664513, 23.577593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393478, 23.612614, 23.662050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161578, 0.315308, 0.935133,
		-0.187905, -0.940078, 0.284508,
		0.968806, -0.129745, 0.211144,
		17.684120, 23.573690, 23.725393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015762, 23.411821, 24.348408>,  <17.005957, 23.664513, 23.577593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015762, 23.411821, 24.348408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.385721, 23.540165, 24.266806>,  <17.607697, 23.617170, 24.217844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.385721, 23.540165, 24.266806>,  <17.015762, 23.411821, 24.348408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385721, 23.540165, 24.266806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107151, 0.294841, 0.949520,
		0.364810, -0.900066, 0.238317,
		0.924896, 0.320859, -0.204004,
		17.663191, 23.636423, 24.205605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201969, 23.491430, 24.091873>,  <17.015762, 23.411821, 24.348408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201969, 23.491430, 24.091873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.372511, 23.230766, 24.342810>,  <16.474836, 23.074368, 24.493372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.372511, 23.230766, 24.342810>,  <16.201969, 23.491430, 24.091873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372511, 23.230766, 24.342810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540777, -0.739579, -0.400728,
		0.725109, -0.168401, -0.667726,
		0.426353, -0.651662, 0.627343,
		16.500418, 23.035267, 24.531013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572851, 22.916788, 23.650623>,  <16.201969, 23.491430, 24.091873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572851, 22.916788, 23.650623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.436829, 22.818359, 24.013680>,  <16.355215, 22.759302, 24.231514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.436829, 22.818359, 24.013680>,  <16.572851, 22.916788, 23.650623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436829, 22.818359, 24.013680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511687, -0.761364, -0.398123,
		0.789011, -0.599811, 0.132994,
		-0.340056, -0.246072, 0.907640,
		16.334812, 22.744537, 24.285971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683611, 22.285347, 23.572584>,  <16.572851, 22.916788, 23.650623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683611, 22.285347, 23.572584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.421864, 22.315029, 23.873594>,  <16.264816, 22.332838, 24.054201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.421864, 22.315029, 23.873594>,  <16.683611, 22.285347, 23.572584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421864, 22.315029, 23.873594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458220, -0.830561, -0.316548,
		0.601530, -0.551962, 0.577495,
		-0.654367, 0.074207, 0.752527,
		16.225554, 22.337292, 24.099352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.700663, 21.664612, 23.937666>,  <16.683611, 22.285347, 23.572584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.700663, 21.664612, 23.937666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.344196, 21.815622, 24.038298>,  <16.130316, 21.906229, 24.098677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.344196, 21.815622, 24.038298>,  <16.700663, 21.664612, 23.937666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344196, 21.815622, 24.038298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396862, -0.917417, -0.029098,
		0.219820, -0.125774, 0.967399,
		-0.891167, 0.377528, 0.251582,
		16.076845, 21.928881, 24.113771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449947, 21.201437, 24.450333>,  <16.700663, 21.664612, 23.937666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449947, 21.201437, 24.450333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.113289, 21.389797, 24.344591>,  <15.911293, 21.502813, 24.281147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.113289, 21.389797, 24.344591>,  <16.449947, 21.201437, 24.450333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113289, 21.389797, 24.344591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474420, -0.878603, -0.054616,
		-0.257980, 0.079447, 0.962878,
		-0.841648, 0.470899, -0.264353,
		15.860794, 21.531067, 24.265285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847055, 20.846567, 24.769848>,  <16.449947, 21.201437, 24.450333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847055, 20.846567, 24.769848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.737630, 21.031708, 24.432581>,  <15.671974, 21.142792, 24.230221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.737630, 21.031708, 24.432581>,  <15.847055, 20.846567, 24.769848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737630, 21.031708, 24.432581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458323, -0.833418, -0.308795,
		-0.845638, 0.301970, 0.440125,
		-0.273562, 0.462849, -0.843170,
		15.655560, 21.170563, 24.179630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227763, 20.547058, 24.674448>,  <15.847055, 20.846567, 24.769848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227763, 20.547058, 24.674448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.307258, 20.705732, 24.315975>,  <15.354954, 20.800938, 24.100891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.307258, 20.705732, 24.315975>,  <15.227763, 20.547058, 24.674448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307258, 20.705732, 24.315975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506634, -0.741179, -0.440427,
		-0.838944, 0.541565, 0.053677,
		0.198735, 0.396688, -0.896183,
		15.366879, 20.824739, 24.047121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.369192, 15.411234, 27.476048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.484776, 15.115942, 27.232237>,  <18.554125, 14.938767, 27.085951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.484776, 15.115942, 27.232237>,  <18.369192, 15.411234, 27.476048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484776, 15.115942, 27.232237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550151, -0.393009, 0.736802,
		-0.783478, -0.548235, 0.292575,
		0.288956, -0.738229, -0.609527,
		18.571463, 14.894473, 27.049379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.118341, 15.527646, 27.537155>,  <18.369192, 15.411234, 27.476048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.118341, 15.527646, 27.537155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.171598, 15.697246, 27.895483>,  <19.203552, 15.799006, 28.110481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.171598, 15.697246, 27.895483>,  <19.118341, 15.527646, 27.537155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171598, 15.697246, 27.895483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674211, 0.623756, -0.395435,
		-0.726438, 0.656623, -0.202816,
		0.133143, 0.424000, 0.895822,
		19.211542, 15.824446, 28.164230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170065, 16.290859, 27.414637>,  <19.118341, 15.527646, 27.537155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170065, 16.290859, 27.414637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.333395, 16.163839, 27.756966>,  <19.431393, 16.087627, 27.962364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.333395, 16.163839, 27.756966>,  <19.170065, 16.290859, 27.414637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333395, 16.163839, 27.756966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783754, 0.602599, -0.150347,
		-0.467977, 0.732146, 0.494935,
		0.408323, -0.317548, 0.855824,
		19.455893, 16.068575, 28.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488409, 16.962128, 27.784420>,  <19.170065, 16.290859, 27.414637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488409, 16.962128, 27.784420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.680838, 16.625265, 27.881863>,  <19.796295, 16.423147, 27.940329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.680838, 16.625265, 27.881863>,  <19.488409, 16.962128, 27.784420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680838, 16.625265, 27.881863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876272, 0.470393, -0.104291,
		-0.026762, 0.263638, 0.964250,
		0.481072, -0.842155, 0.243607,
		19.825159, 16.372618, 27.954945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031612, 17.249249, 28.043390>,  <19.488409, 16.962128, 27.784420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031612, 17.249249, 28.043390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.122639, 16.863667, 27.988253>,  <20.177256, 16.632317, 27.955170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.122639, 16.863667, 27.988253>,  <20.031612, 17.249249, 28.043390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122639, 16.863667, 27.988253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972614, 0.218136, 0.080246,
		-0.047284, -0.152332, 0.987198,
		0.227567, -0.963956, -0.137846,
		20.190908, 16.574480, 27.946899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.235407, 17.881268, 27.669540>,  <20.031612, 17.249249, 28.043390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.235407, 17.881268, 27.669540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.632467, 17.833082, 27.664980>,  <20.870705, 17.804171, 27.662243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.632467, 17.833082, 27.664980>,  <20.235407, 17.881268, 27.669540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632467, 17.833082, 27.664980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091936, 0.689585, 0.718346,
		-0.078671, -0.714116, 0.695593,
		0.992652, -0.120463, -0.011403,
		20.930264, 17.796944, 27.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.099415, 18.017750, 26.939760>,  <20.235407, 17.881268, 27.669540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.099415, 18.017750, 26.939760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.782396, 18.176779, 27.124716>,  <19.592184, 18.272196, 27.235689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.782396, 18.176779, 27.124716>,  <20.099415, 18.017750, 26.939760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782396, 18.176779, 27.124716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609421, -0.543424, -0.577317,
		0.021748, -0.739341, 0.672979,
		-0.792548, 0.397573, 0.462389,
		19.544632, 18.296051, 27.263432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743143, 17.478832, 27.250635>,  <20.099415, 18.017750, 26.939760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743143, 17.478832, 27.250635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.501484, 17.784588, 27.160559>,  <19.356487, 17.968042, 27.106512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.501484, 17.784588, 27.160559>,  <19.743143, 17.478832, 27.250635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.501484, 17.784588, 27.160559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617321, -0.627646, -0.474316,
		-0.503903, -0.147542, 0.851066,
		-0.604149, 0.764390, -0.225192,
		19.320240, 18.013905, 27.093000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033106, 17.112152, 27.088938>,  <19.743143, 17.478832, 27.250635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.033106, 17.112152, 27.088938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.008438, 17.492487, 26.967541>,  <18.993637, 17.720688, 26.894703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.008438, 17.492487, 26.967541>,  <19.033106, 17.112152, 27.088938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008438, 17.492487, 26.967541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736998, -0.248433, -0.628581,
		-0.673075, 0.184907, 0.716086,
		-0.061671, 0.950837, -0.303490,
		18.989937, 17.777739, 26.876493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350594, 17.231224, 27.101210>,  <19.033106, 17.112152, 27.088938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350594, 17.231224, 27.101210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.501310, 17.496964, 26.843010>,  <18.591740, 17.656408, 26.688091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.501310, 17.496964, 26.843010>,  <18.350594, 17.231224, 27.101210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501310, 17.496964, 26.843010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755983, -0.182139, -0.628741,
		-0.535275, 0.724889, 0.433610,
		0.376790, 0.664351, -0.645498,
		18.614347, 17.696268, 26.649361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813395, 17.578493, 26.869215>,  <18.350594, 17.231224, 27.101210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813395, 17.578493, 26.869215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.101183, 17.640539, 26.598423>,  <18.273855, 17.677767, 26.435947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.101183, 17.640539, 26.598423>,  <17.813395, 17.578493, 26.869215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101183, 17.640539, 26.598423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612595, -0.317553, -0.723801,
		-0.327250, 0.935468, -0.133446,
		0.719469, 0.155115, -0.676982,
		18.317024, 17.687075, 26.395329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397760, 17.777283, 26.260262>,  <17.813395, 17.578493, 26.869215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397760, 17.777283, 26.260262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.755165, 17.661123, 26.123260>,  <17.969608, 17.591427, 26.041059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.755165, 17.661123, 26.123260>,  <17.397760, 17.777283, 26.260262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755165, 17.661123, 26.123260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444021, -0.457631, -0.770336,
		0.066965, 0.840382, -0.537842,
		0.893510, -0.290399, -0.342503,
		18.023218, 17.574003, 26.020510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.607294, 17.696106, 26.518198>,  <17.397760, 17.777283, 26.260262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.607294, 17.696106, 26.518198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.253521, 17.879419, 26.553425>,  <16.041258, 17.989407, 26.574562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.253521, 17.879419, 26.553425>,  <16.607294, 17.696106, 26.518198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253521, 17.879419, 26.553425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411395, 0.676578, 0.610735,
		0.220304, 0.576384, -0.786923,
		-0.884432, 0.458284, 0.088069,
		15.988192, 18.016905, 26.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760611, 18.335350, 26.570276>,  <16.607294, 17.696106, 26.518198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760611, 18.335350, 26.570276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.396334, 18.330500, 26.735439>,  <16.177767, 18.327589, 26.834538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.396334, 18.330500, 26.735439>,  <16.760611, 18.335350, 26.570276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396334, 18.330500, 26.735439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249661, 0.780196, 0.573553,
		-0.329104, 0.625417, -0.707491,
		-0.910692, -0.012126, 0.412908,
		16.123127, 18.326862, 26.859312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542179, 19.064774, 26.530708>,  <16.760611, 18.335350, 26.570276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542179, 19.064774, 26.530708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.317402, 18.881523, 26.806198>,  <16.182535, 18.771572, 26.971491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.317402, 18.881523, 26.806198>,  <16.542179, 19.064774, 26.530708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317402, 18.881523, 26.806198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290854, 0.670014, 0.682997,
		-0.774354, 0.584123, -0.243261,
		-0.561943, -0.458128, 0.688723,
		16.148819, 18.744085, 27.012815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970169, 19.522593, 26.734871>,  <16.542179, 19.064774, 26.530708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970169, 19.522593, 26.734871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.028091, 19.263533, 27.034090>,  <16.062845, 19.108097, 27.213621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.028091, 19.263533, 27.034090>,  <15.970169, 19.522593, 26.734871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028091, 19.263533, 27.034090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477326, 0.707955, 0.520538,
		-0.866713, 0.281686, 0.411657,
		0.144806, -0.647652, 0.748050,
		16.071533, 19.069237, 27.258505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.715914, 19.816895, 27.216261>,  <15.970169, 19.522593, 26.734871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.715914, 19.816895, 27.216261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.948072, 19.552498, 27.406515>,  <16.087368, 19.393860, 27.520668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.948072, 19.552498, 27.406515>,  <15.715914, 19.816895, 27.216261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948072, 19.552498, 27.406515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511204, 0.750395, 0.419019,
		-0.633884, -0.000050, 0.773428,
		0.580398, -0.660990, 0.475638,
		16.122192, 19.354200, 27.549206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538491, 19.917685, 27.913588>,  <15.715914, 19.816895, 27.216261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.538491, 19.917685, 27.913588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.900592, 19.748962, 27.893198>,  <16.117853, 19.647728, 27.880964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.900592, 19.748962, 27.893198>,  <15.538491, 19.917685, 27.913588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900592, 19.748962, 27.893198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344075, 0.657413, 0.670388,
		-0.249263, -0.624409, 0.740258,
		0.905252, -0.421807, -0.050975,
		16.172167, 19.622419, 27.877905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701157, 19.814022, 28.584064>,  <15.538491, 19.917685, 27.913588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701157, 19.814022, 28.584064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.031321, 19.832340, 28.358995>,  <16.229420, 19.843330, 28.223953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.031321, 19.832340, 28.358995>,  <15.701157, 19.814022, 28.584064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031321, 19.832340, 28.358995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386778, 0.680147, 0.622738,
		0.411219, -0.731644, 0.543687,
		0.825410, 0.045796, -0.562674,
		16.278944, 19.846079, 28.190193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330599, 19.839638, 29.109882>,  <15.701157, 19.814022, 28.584064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330599, 19.839638, 29.109882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.499983, 19.949001, 28.764414>,  <16.601614, 20.014620, 28.557133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.499983, 19.949001, 28.764414>,  <16.330599, 19.839638, 29.109882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499983, 19.949001, 28.764414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430690, 0.777976, 0.457449,
		0.796988, -0.565685, 0.211685,
		0.423458, 0.273411, -0.863672,
		16.627020, 20.031025, 28.505312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002794, 19.947292, 29.356720>,  <16.330599, 19.839638, 29.109882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002794, 19.947292, 29.356720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.025862, 20.150677, 29.013060>,  <17.039701, 20.272707, 28.806864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.025862, 20.150677, 29.013060>,  <17.002794, 19.947292, 29.356720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025862, 20.150677, 29.013060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286765, 0.815880, 0.502101,
		0.956264, -0.275329, -0.098760,
		0.057667, 0.508462, -0.859152,
		17.043161, 20.303215, 28.755314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627510, 20.399599, 29.444962>,  <17.002794, 19.947292, 29.356720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627510, 20.399599, 29.444962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.395823, 20.556183, 29.158951>,  <17.256809, 20.650133, 28.987345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.395823, 20.556183, 29.158951>,  <17.627510, 20.399599, 29.444962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395823, 20.556183, 29.158951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245834, 0.920195, 0.304642,
		0.777219, 0.000677, -0.629230,
		-0.579221, 0.391460, -0.715026,
		17.222055, 20.673620, 28.944443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973627, 20.968374, 29.277252>,  <17.627510, 20.399599, 29.444962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973627, 20.968374, 29.277252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.617567, 21.037418, 29.108570>,  <17.403931, 21.078846, 29.007360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.617567, 21.037418, 29.108570>,  <17.973627, 20.968374, 29.277252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617567, 21.037418, 29.108570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168194, 0.984586, 0.047979,
		0.423488, -0.028220, -0.905462,
		-0.890151, 0.172612, -0.421707,
		17.350521, 21.089201, 28.982058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066368, 21.480127, 28.768873>,  <17.973627, 20.968374, 29.277252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066368, 21.480127, 28.768873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.679636, 21.480457, 28.871037>,  <17.447596, 21.480656, 28.932335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.679636, 21.480457, 28.871037>,  <18.066368, 21.480127, 28.768873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679636, 21.480457, 28.871037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028200, 0.994225, 0.103546,
		-0.253850, 0.107314, -0.961272,
		-0.966833, 0.000823, 0.255410,
		17.389585, 21.480703, 28.947660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777229, 22.043350, 28.406733>,  <18.066368, 21.480127, 28.768873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777229, 22.043350, 28.406733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.522259, 21.972967, 28.706793>,  <17.369276, 21.930737, 28.886829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.522259, 21.972967, 28.706793>,  <17.777229, 22.043350, 28.406733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522259, 21.972967, 28.706793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027639, 0.978170, 0.205960,
		-0.770013, 0.110551, -0.628377,
		-0.637429, -0.175960, 0.750149,
		17.331030, 21.920179, 28.931837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075468, 22.314054, 28.291241>,  <17.777229, 22.043350, 28.406733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075468, 22.314054, 28.291241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.177750, 22.312302, 28.677938>,  <17.239119, 22.311249, 28.909958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.177750, 22.312302, 28.677938>,  <17.075468, 22.314054, 28.291241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177750, 22.312302, 28.677938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300280, 0.950169, 0.083733,
		-0.918938, -0.311705, 0.241646,
		0.255704, -0.004384, 0.966745,
		17.254461, 22.310987, 28.967962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525093, 21.926716, 28.073185>,  <17.075468, 22.314054, 28.291241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525093, 21.926716, 28.073185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.494211, 22.291840, 27.912775>,  <16.475681, 22.510914, 27.816528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.494211, 22.291840, 27.912775>,  <16.525093, 21.926716, 28.073185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494211, 22.291840, 27.912775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067227, -0.406077, -0.911363,
		-0.994746, -0.043403, 0.092717,
		-0.077206, 0.912808, -0.401025,
		16.471050, 22.565681, 27.792467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876893, 22.017599, 27.549902>,  <16.525093, 21.926716, 28.073185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876893, 22.017599, 27.549902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.185955, 22.257597, 27.466948>,  <16.371393, 22.401596, 27.417175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.185955, 22.257597, 27.466948>,  <15.876893, 22.017599, 27.549902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.185955, 22.257597, 27.466948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068715, -0.245721, -0.966902,
		-0.631095, 0.761333, -0.148629,
		0.772656, 0.599995, -0.207388,
		16.417751, 22.437595, 27.404732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643660, 22.322065, 26.910316>,  <15.876893, 22.017599, 27.549902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643660, 22.322065, 26.910316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.035175, 22.399267, 26.937799>,  <16.270084, 22.445587, 26.954290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.035175, 22.399267, 26.937799>,  <15.643660, 22.322065, 26.910316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035175, 22.399267, 26.937799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125860, -0.301864, -0.945006,
		-0.161649, 0.933610, -0.319753,
		0.978789, 0.193004, 0.068708,
		16.328812, 22.457169, 26.958412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798706, 22.785337, 26.395952>,  <15.643660, 22.322065, 26.910316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798706, 22.785337, 26.395952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.157593, 22.632824, 26.485058>,  <16.372925, 22.541315, 26.538521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.157593, 22.632824, 26.485058>,  <15.798706, 22.785337, 26.395952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157593, 22.632824, 26.485058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162406, -0.184198, -0.969379,
		0.410642, 0.905921, -0.103342,
		0.897216, -0.381285, 0.222766,
		16.426758, 22.518438, 26.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206890, 23.028208, 25.882544>,  <15.798706, 22.785337, 26.395952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206890, 23.028208, 25.882544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.389648, 22.705889, 26.033245>,  <16.499304, 22.512497, 26.123665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.389648, 22.705889, 26.033245>,  <16.206890, 23.028208, 25.882544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389648, 22.705889, 26.033245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222007, -0.306842, -0.925505,
		0.861371, 0.506499, 0.038698,
		0.456894, -0.805795, 0.376752,
		16.526716, 22.464149, 26.146271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834965, 22.983564, 25.586685>,  <16.206890, 23.028208, 25.882544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834965, 22.983564, 25.586685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.774511, 22.611748, 25.721214>,  <16.738239, 22.388659, 25.801931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.774511, 22.611748, 25.721214>,  <16.834965, 22.983564, 25.586685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774511, 22.611748, 25.721214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201298, -0.362041, -0.910168,
		0.967800, -0.069856, 0.241831,
		-0.151133, -0.929541, 0.336321,
		16.729172, 22.332886, 25.822111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.453049, 22.636786, 25.319147>,  <16.834965, 22.983564, 25.586685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.453049, 22.636786, 25.319147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.188635, 22.353542, 25.418442>,  <17.029987, 22.183598, 25.478018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.188635, 22.353542, 25.418442>,  <17.453049, 22.636786, 25.319147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188635, 22.353542, 25.418442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219377, -0.498748, -0.838525,
		0.717571, -0.499836, 0.485031,
		-0.661034, -0.708106, 0.248235,
		16.990324, 22.141111, 25.492912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414303, 23.181643, 24.967718>,  <17.453049, 22.636786, 25.319147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414303, 23.181643, 24.967718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.650934, 23.445421, 24.782175>,  <17.792913, 23.603689, 24.670849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.650934, 23.445421, 24.782175>,  <17.414303, 23.181643, 24.967718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650934, 23.445421, 24.782175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183704, 0.449945, 0.873958,
		0.785040, -0.602227, 0.145035,
		0.591578, 0.659448, -0.463857,
		17.828407, 23.643255, 24.643019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.024151, 23.282103, 25.381163>,  <17.414303, 23.181643, 24.967718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.024151, 23.282103, 25.381163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.010195, 23.601784, 25.141142>,  <18.001822, 23.793592, 24.997129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.010195, 23.601784, 25.141142>,  <18.024151, 23.282103, 25.381163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010195, 23.601784, 25.141142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275957, 0.584777, 0.762813,
		0.960536, -0.138974, -0.240948,
		-0.034890, 0.799201, -0.600051,
		17.999727, 23.841543, 24.961126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.589249, 23.627214, 25.558239>,  <18.024151, 23.282103, 25.381163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.589249, 23.627214, 25.558239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.367596, 23.904524, 25.373930>,  <18.234604, 24.070910, 25.263344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.367596, 23.904524, 25.373930>,  <18.589249, 23.627214, 25.558239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367596, 23.904524, 25.373930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208092, 0.651319, 0.729713,
		0.805999, 0.308475, -0.505182,
		-0.554132, 0.693273, -0.460772,
		18.201357, 24.112505, 25.235699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.946764, 24.130888, 25.748375>,  <18.589249, 23.627214, 25.558239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.946764, 24.130888, 25.748375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.597116, 24.285484, 25.630705>,  <18.387327, 24.378242, 25.560102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.597116, 24.285484, 25.630705>,  <18.946764, 24.130888, 25.748375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597116, 24.285484, 25.630705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044949, 0.667430, 0.743315,
		0.483628, 0.636522, -0.600786,
		-0.874119, 0.386492, -0.294176,
		18.334881, 24.401432, 25.542452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015554, 24.942766, 25.698881>,  <18.946764, 24.130888, 25.748375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015554, 24.942766, 25.698881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.628942, 24.843952, 25.726576>,  <18.396975, 24.784664, 25.743193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.628942, 24.843952, 25.726576>,  <19.015554, 24.942766, 25.698881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628942, 24.843952, 25.726576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108880, 0.639328, 0.761186,
		-0.232305, 0.728171, -0.644827,
		-0.966530, -0.247036, 0.069235,
		18.338984, 24.769842, 25.747347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740515, 25.572435, 25.812864>,  <19.015554, 24.942766, 25.698881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740515, 25.572435, 25.812864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.456318, 25.316828, 25.930748>,  <18.285801, 25.163464, 26.001478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.456318, 25.316828, 25.930748>,  <18.740515, 25.572435, 25.812864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456318, 25.316828, 25.930748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118834, 0.521734, 0.844791,
		-0.693600, 0.565195, -0.446625,
		-0.710491, -0.639021, 0.294711,
		18.243170, 25.125122, 26.019161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242781, 26.054834, 26.038546>,  <18.740515, 25.572435, 25.812864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.242781, 26.054834, 26.038546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.209864, 25.683035, 26.182356>,  <18.190113, 25.459955, 26.268642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.209864, 25.683035, 26.182356>,  <18.242781, 26.054834, 26.038546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209864, 25.683035, 26.182356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044932, 0.363842, 0.930376,
		-0.995595, 0.060408, -0.071705,
		-0.082291, -0.929500, 0.359525,
		18.185177, 25.404184, 26.290213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613932, 26.083925, 26.339445>,  <18.242781, 26.054834, 26.038546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613932, 26.083925, 26.339445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.847031, 25.799425, 26.496687>,  <17.986891, 25.628725, 26.591032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.847031, 25.799425, 26.496687>,  <17.613932, 26.083925, 26.339445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847031, 25.799425, 26.496687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063228, 0.442579, 0.894498,
		-0.810191, -0.546120, 0.212941,
		0.582746, -0.711250, 0.393104,
		18.021854, 25.586050, 26.614618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320745, 26.051170, 27.004885>,  <17.613932, 26.083925, 26.339445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320745, 26.051170, 27.004885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.669531, 25.858391, 27.039312>,  <17.878801, 25.742723, 27.059969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.669531, 25.858391, 27.039312>,  <17.320745, 26.051170, 27.004885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669531, 25.858391, 27.039312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088347, 0.327823, 0.940599,
		-0.481538, -0.812562, 0.328427,
		0.871961, -0.481950, 0.086072,
		17.931120, 25.713806, 27.065134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.897867, 15.450582, 14.454244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.224598, 15.325695, 14.648280>,  <17.420637, 15.250763, 14.764702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.224598, 15.325695, 14.648280>,  <16.897867, 15.450582, 14.454244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224598, 15.325695, 14.648280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097133, 0.754445, 0.649137,
		-0.568647, -0.577351, 0.585924,
		0.816827, -0.312217, 0.485092,
		17.469646, 15.232030, 14.793808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692566, 15.241800, 15.143934>,  <16.897867, 15.450582, 14.454244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692566, 15.241800, 15.143934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.074217, 15.359641, 15.165285>,  <17.303207, 15.430346, 15.178096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.074217, 15.359641, 15.165285>,  <16.692566, 15.241800, 15.143934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074217, 15.359641, 15.165285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223219, 0.581144, 0.782589,
		0.199533, -0.758604, 0.620247,
		0.954128, 0.294602, 0.053377,
		17.360455, 15.448022, 15.181298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757544, 15.295250, 15.856983>,  <16.692566, 15.241800, 15.143934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757544, 15.295250, 15.856983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.066307, 15.488801, 15.692049>,  <17.251564, 15.604932, 15.593088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.066307, 15.488801, 15.692049>,  <16.757544, 15.295250, 15.856983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066307, 15.488801, 15.692049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082014, 0.718971, 0.690184,
		0.630423, -0.498941, 0.594664,
		0.771908, 0.483878, -0.412336,
		17.297880, 15.633965, 15.568348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022213, 15.676055, 16.441685>,  <16.757544, 15.295250, 15.856983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.022213, 15.676055, 16.441685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191154, 15.845851, 16.121328>,  <17.292519, 15.947729, 15.929114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191154, 15.845851, 16.121328>,  <17.022213, 15.676055, 16.441685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191154, 15.845851, 16.121328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197957, 0.819040, 0.538504,
		0.884552, -0.385980, 0.261893,
		0.422352, 0.424491, -0.800890,
		17.317860, 15.973198, 15.881062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667416, 15.935040, 16.643770>,  <17.022213, 15.676055, 16.441685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.667416, 15.935040, 16.643770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527748, 16.143217, 16.332073>,  <17.443947, 16.268124, 16.145054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527748, 16.143217, 16.332073>,  <17.667416, 15.935040, 16.643770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527748, 16.143217, 16.332073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045572, 0.840031, 0.540620,
		0.935950, 0.153257, -0.317032,
		-0.349171, 0.520442, -0.779243,
		17.422997, 16.299349, 16.098301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950897, 16.675951, 16.736052>,  <17.667416, 15.935040, 16.643770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950897, 16.675951, 16.736052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.671976, 16.739052, 16.456371>,  <17.504623, 16.776913, 16.288563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.671976, 16.739052, 16.456371>,  <17.950897, 16.675951, 16.736052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671976, 16.739052, 16.456371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189033, 0.900473, 0.391682,
		0.691400, 0.405293, -0.598083,
		-0.697304, 0.157752, -0.699201,
		17.462786, 16.786377, 16.246611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234938, 17.226404, 16.367006>,  <17.950897, 16.675951, 16.736052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234938, 17.226404, 16.367006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839800, 17.195621, 16.312984>,  <17.602716, 17.177153, 16.280571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839800, 17.195621, 16.312984>,  <18.234938, 17.226404, 16.367006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.839800, 17.195621, 16.312984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135056, 0.855046, 0.500656,
		0.076949, 0.512811, -0.855046,
		-0.987845, -0.076955, -0.135053,
		17.543446, 17.172535, 16.272469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020445, 17.879173, 16.177471>,  <18.234938, 17.226404, 16.367006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020445, 17.879173, 16.177471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683548, 17.711571, 16.313154>,  <17.481409, 17.611010, 16.394564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683548, 17.711571, 16.313154>,  <18.020445, 17.879173, 16.177471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683548, 17.711571, 16.313154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188481, 0.818373, 0.542899,
		-0.505076, 0.393319, -0.768244,
		-0.842243, -0.419005, 0.339207,
		17.430876, 17.585869, 16.414917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615852, 18.425863, 16.169830>,  <18.020445, 17.879173, 16.177471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615852, 18.425863, 16.169830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421431, 18.171812, 16.409952>,  <17.304777, 18.019382, 16.554026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421431, 18.171812, 16.409952>,  <17.615852, 18.425863, 16.169830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421431, 18.171812, 16.409952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224409, 0.754577, 0.616648,
		-0.844625, 0.165011, -0.509293,
		-0.486054, -0.635126, 0.600305,
		17.275614, 17.981274, 16.590044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954432, 18.692101, 16.267153>,  <17.615852, 18.425863, 16.169830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954432, 18.692101, 16.267153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015493, 18.453775, 16.582546>,  <17.052130, 18.310781, 16.771782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015493, 18.453775, 16.582546>,  <16.954432, 18.692101, 16.267153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015493, 18.453775, 16.582546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180328, 0.767648, 0.614978,
		-0.971689, -0.236064, 0.009742,
		0.152653, -0.595810, 0.788484,
		17.061289, 18.275032, 16.819092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476353, 18.903315, 16.716360>,  <16.954432, 18.692101, 16.267153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476353, 18.903315, 16.716360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719408, 18.680016, 16.942327>,  <16.865242, 18.546036, 17.077908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719408, 18.680016, 16.942327>,  <16.476353, 18.903315, 16.716360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719408, 18.680016, 16.942327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024436, 0.697814, 0.715862,
		-0.793836, -0.448791, 0.410379,
		0.607640, -0.558249, 0.564917,
		16.901701, 18.512541, 17.111803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144760, 18.735014, 17.441893>,  <16.476353, 18.903315, 16.716360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144760, 18.735014, 17.441893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539248, 18.688305, 17.488775>,  <16.775940, 18.660280, 17.516905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539248, 18.688305, 17.488775>,  <16.144760, 18.735014, 17.441893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539248, 18.688305, 17.488775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005952, 0.682917, 0.730472,
		-0.165341, -0.721102, 0.672810,
		0.986218, -0.116773, 0.117206,
		16.835114, 18.653273, 17.523937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505602, 18.199856, 17.782854>,  <16.144760, 18.735014, 17.441893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505602, 18.199856, 17.782854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.186260, 18.018671, 17.941578>,  <15.994656, 17.909960, 18.036812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.186260, 18.018671, 17.941578>,  <16.505602, 18.199856, 17.782854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186260, 18.018671, 17.941578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385198, -0.122373, -0.914684,
		0.462875, -0.883092, -0.076783,
		-0.798354, -0.452961, 0.396809,
		15.946754, 17.882782, 18.060621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234732, 17.644577, 17.365646>,  <16.505602, 18.199856, 17.782854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234732, 17.644577, 17.365646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.928382, 17.711369, 17.614019>,  <15.744573, 17.751444, 17.763042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.928382, 17.711369, 17.614019>,  <16.234732, 17.644577, 17.365646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928382, 17.711369, 17.614019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637709, -0.320792, -0.700300,
		0.082254, -0.932315, 0.352170,
		-0.765873, 0.166979, 0.620932,
		15.698620, 17.761463, 17.800299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821475, 17.058464, 17.347679>,  <16.234732, 17.644577, 17.365646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821475, 17.058464, 17.347679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561661, 17.321596, 17.500185>,  <15.405772, 17.479475, 17.591688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561661, 17.321596, 17.500185>,  <15.821475, 17.058464, 17.347679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561661, 17.321596, 17.500185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721384, -0.374754, -0.582378,
		-0.240225, -0.653314, 0.717964,
		-0.649536, 0.657830, 0.381265,
		15.366800, 17.518946, 17.614565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315913, 16.684223, 17.662739>,  <15.821475, 17.058464, 17.347679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315913, 16.684223, 17.662739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161699, 17.045345, 17.586523>,  <15.069171, 17.262018, 17.540794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161699, 17.045345, 17.586523>,  <15.315913, 16.684223, 17.662739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161699, 17.045345, 17.586523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830875, -0.429491, -0.353814,
		-0.401260, 0.021906, 0.915702,
		-0.385535, 0.902805, -0.190539,
		15.046039, 17.316187, 17.529362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577930, 16.667704, 17.950777>,  <15.315913, 16.684223, 17.662739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577930, 16.667704, 17.950777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.586665, 16.954372, 17.671951>,  <14.591906, 17.126373, 17.504656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.586665, 16.954372, 17.671951>,  <14.577930, 16.667704, 17.950777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586665, 16.954372, 17.671951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860105, -0.341963, -0.378526,
		-0.509650, 0.607816, 0.608947,
		0.021837, 0.716674, -0.697066,
		14.593216, 17.169374, 17.462831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865215, 16.847450, 17.832111>,  <14.577930, 16.667704, 17.950777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865215, 16.847450, 17.832111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051662, 17.025011, 17.525991>,  <14.163531, 17.131548, 17.342319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051662, 17.025011, 17.525991>,  <13.865215, 16.847450, 17.832111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.051662, 17.025011, 17.525991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792611, -0.174791, -0.584137,
		-0.393066, 0.878863, 0.270368,
		0.466118, 0.443901, -0.765301,
		14.191498, 17.158182, 17.296402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457609, 17.321959, 17.669233>,  <13.865215, 16.847450, 17.832111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457609, 17.321959, 17.669233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681473, 17.255295, 17.344517>,  <13.815791, 17.215296, 17.149687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681473, 17.255295, 17.344517>,  <13.457609, 17.321959, 17.669233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.681473, 17.255295, 17.344517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828223, -0.146507, -0.540909,
		-0.028785, 0.975069, -0.220026,
		0.559659, -0.166660, -0.811792,
		13.849371, 17.205297, 17.100979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051555, 17.606993, 17.192484>,  <13.457609, 17.321959, 17.669233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051555, 17.606993, 17.192484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.306374, 17.379534, 16.984325>,  <13.459265, 17.243059, 16.859430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.306374, 17.379534, 16.984325>,  <13.051555, 17.606993, 17.192484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.306374, 17.379534, 16.984325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719895, -0.197577, -0.665368,
		0.275540, 0.798502, -0.535231,
		0.637047, -0.568645, -0.520397,
		13.497488, 17.208941, 16.828207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137081, 17.805079, 16.450039>,  <13.051555, 17.606993, 17.192484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137081, 17.805079, 16.450039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230188, 17.416466, 16.432398>,  <13.286053, 17.183298, 16.421814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230188, 17.416466, 16.432398>,  <13.137081, 17.805079, 16.450039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230188, 17.416466, 16.432398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792528, -0.163207, -0.587591,
		0.563665, 0.171725, -0.807956,
		0.232768, -0.971532, -0.044103,
		13.300018, 17.125006, 16.419167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909024, 17.564533, 15.718712>,  <13.137081, 17.805079, 16.450039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909024, 17.564533, 15.718712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972226, 17.236395, 15.938555>,  <13.010147, 17.039513, 16.070461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972226, 17.236395, 15.938555>,  <12.909024, 17.564533, 15.718712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.972226, 17.236395, 15.938555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777529, -0.446461, -0.442856,
		0.608673, -0.357362, -0.708385,
		0.158006, -0.820344, 0.549608,
		13.019628, 16.990292, 16.103437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955849, 16.957146, 15.185987>,  <12.909024, 17.564533, 15.718712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955849, 16.957146, 15.185987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853616, 16.808649, 15.543056>,  <12.792276, 16.719551, 15.757297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853616, 16.808649, 15.543056>,  <12.955849, 16.957146, 15.185987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853616, 16.808649, 15.543056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799595, -0.437845, -0.411023,
		0.543439, -0.818824, -0.184937,
		-0.255581, -0.371241, 0.892669,
		12.776941, 16.697277, 15.810856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840609, 16.248213, 15.110216>,  <12.955849, 16.957146, 15.185987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840609, 16.248213, 15.110216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659563, 16.319639, 15.459674>,  <12.550936, 16.362495, 15.669349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659563, 16.319639, 15.459674>,  <12.840609, 16.248213, 15.110216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659563, 16.319639, 15.459674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782784, -0.548801, -0.293372,
		0.427072, -0.816659, 0.388171,
		-0.452613, 0.178563, 0.873645,
		12.523779, 16.373209, 15.721767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794382, 15.627654, 15.504052>,  <12.840609, 16.248213, 15.110216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794382, 15.627654, 15.504052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489452, 15.850163, 15.636368>,  <12.306495, 15.983669, 15.715757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489452, 15.850163, 15.636368>,  <12.794382, 15.627654, 15.504052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489452, 15.850163, 15.636368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643931, -0.600654, -0.473885,
		-0.064919, -0.574260, 0.816095,
		-0.762324, 0.556273, 0.330791,
		12.260756, 16.017046, 15.735605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.344475, 15.168978, 15.789510>,  <12.794382, 15.627654, 15.504052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.344475, 15.168978, 15.789510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.107905, 15.487503, 15.738751>,  <11.965963, 15.678618, 15.708296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.107905, 15.487503, 15.738751>,  <12.344475, 15.168978, 15.789510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107905, 15.487503, 15.738751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739942, -0.598490, -0.307077,
		-0.320476, -0.087716, 0.943187,
		-0.591423, 0.796314, -0.126896,
		11.930478, 15.726398, 15.700683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.412400, 15.502810, 16.364553>,  <12.344475, 15.168978, 15.789510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.412400, 15.502810, 16.364553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364956, 15.115952, 16.454500>,  <12.336490, 14.883838, 16.508469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364956, 15.115952, 16.454500>,  <12.412400, 15.502810, 16.364553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364956, 15.115952, 16.454500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229461, 0.193636, 0.953862,
		-0.966064, 0.164735, 0.198954,
		-0.118610, -0.967144, 0.224865,
		12.329372, 14.825809, 16.521959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.877702, 15.327872, 16.801542>,  <12.412400, 15.502810, 16.364553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.877702, 15.327872, 16.801542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176364, 15.070207, 16.867945>,  <12.355561, 14.915607, 16.907785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176364, 15.070207, 16.867945>,  <11.877702, 15.327872, 16.801542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.176364, 15.070207, 16.867945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139370, 0.395500, 0.907830,
		-0.650446, -0.654701, 0.385080,
		0.746656, -0.644164, 0.166005,
		12.400361, 14.876958, 16.917746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865107, 15.438998, 17.437576>,  <11.877702, 15.327872, 16.801542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865107, 15.438998, 17.437576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199197, 15.223653, 17.392740>,  <12.399651, 15.094445, 17.365839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199197, 15.223653, 17.392740>,  <11.865107, 15.438998, 17.437576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199197, 15.223653, 17.392740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278848, 0.238954, 0.930132,
		-0.473965, -0.808125, 0.349702,
		0.835225, -0.538364, -0.112088,
		12.449764, 15.062144, 17.359114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938344, 14.831657, 18.002161>,  <11.865107, 15.438998, 17.437576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938344, 14.831657, 18.002161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301740, 14.962592, 17.898239>,  <12.519777, 15.041153, 17.835886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301740, 14.962592, 17.898239>,  <11.938344, 14.831657, 18.002161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301740, 14.962592, 17.898239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248845, 0.075730, 0.965578,
		0.335745, -0.941868, -0.012657,
		0.908488, 0.327338, -0.259805,
		12.574286, 15.060793, 17.820297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.247516, 14.657234, 18.565928>,  <11.938344, 14.831657, 18.002161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.247516, 14.657234, 18.565928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532731, 14.876754, 18.391390>,  <12.703860, 15.008466, 18.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532731, 14.876754, 18.391390>,  <12.247516, 14.657234, 18.565928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532731, 14.876754, 18.391390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489003, 0.056725, 0.870436,
		0.502445, -0.834028, -0.227916,
		0.713039, 0.548798, -0.436343,
		12.746643, 15.041393, 18.260487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941001, 14.368747, 18.509007>,  <12.247516, 14.657234, 18.565928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941001, 14.368747, 18.509007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.005493, 14.763168, 18.492504>,  <13.044188, 14.999822, 18.482603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.005493, 14.763168, 18.492504>,  <12.941001, 14.368747, 18.509007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005493, 14.763168, 18.492504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574018, -0.059690, 0.816664,
		0.802813, -0.155353, -0.575637,
		0.161231, 0.986054, -0.041256,
		13.053863, 15.058985, 18.480127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655934, 14.431722, 18.670883>,  <12.941001, 14.368747, 18.509007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655934, 14.431722, 18.670883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487535, 14.789377, 18.731911>,  <13.386497, 15.003970, 18.768528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487535, 14.789377, 18.731911>,  <13.655934, 14.431722, 18.670883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487535, 14.789377, 18.731911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543337, 0.113900, 0.831752,
		0.726324, 0.433062, -0.533770,
		-0.420997, 0.894139, 0.152571,
		13.361237, 15.057619, 18.777681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162540, 14.895535, 18.896336>,  <13.655934, 14.431722, 18.670883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162540, 14.895535, 18.896336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830459, 15.085877, 19.012487>,  <13.631209, 15.200083, 19.082178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830459, 15.085877, 19.012487>,  <14.162540, 14.895535, 18.896336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830459, 15.085877, 19.012487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303975, -0.050215, 0.951356,
		0.467290, 0.878089, -0.102960,
		-0.830204, 0.475856, 0.290382,
		13.581397, 15.228634, 19.099602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379135, 15.470756, 19.248499>,  <14.162540, 14.895535, 18.896336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379135, 15.470756, 19.248499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.012492, 15.408608, 19.395845>,  <13.792506, 15.371320, 19.484253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.012492, 15.408608, 19.395845>,  <14.379135, 15.470756, 19.248499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012492, 15.408608, 19.395845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354570, 0.109749, 0.928566,
		-0.184698, 0.981741, -0.045507,
		-0.916606, -0.155368, 0.368366,
		13.737511, 15.361998, 19.506355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.382183, 15.846639, 19.892820>,  <14.379135, 15.470756, 19.248499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.382183, 15.846639, 19.892820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046326, 15.630082, 19.910227>,  <13.844810, 15.500149, 19.920670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046326, 15.630082, 19.910227>,  <14.382183, 15.846639, 19.892820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046326, 15.630082, 19.910227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034312, 0.027084, 0.999044,
		-0.542051, 0.840335, -0.004165,
		-0.839645, -0.541390, 0.043515,
		13.794433, 15.467665, 19.923281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.845854, 16.272392, 20.262373>,  <14.382183, 15.846639, 19.892820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.845854, 16.272392, 20.262373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748675, 15.884897, 20.282465>,  <13.690369, 15.652400, 20.294519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748675, 15.884897, 20.282465>,  <13.845854, 16.272392, 20.262373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748675, 15.884897, 20.282465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009721, 0.049345, 0.998734,
		-0.969991, 0.243126, -0.002571,
		-0.242945, -0.968739, 0.050228,
		13.675792, 15.594275, 20.297533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317723, 16.258556, 20.818008>,  <13.845854, 16.272392, 20.262373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317723, 16.258556, 20.818008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.476023, 15.891908, 20.795412>,  <13.571002, 15.671919, 20.781855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.476023, 15.891908, 20.795412>,  <13.317723, 16.258556, 20.818008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.476023, 15.891908, 20.795412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042898, -0.079895, 0.995880,
		-0.917357, -0.391693, -0.070940,
		0.395747, -0.916620, -0.056489,
		13.594747, 15.616921, 20.778465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.014731, 16.008776, 21.281870>,  <13.317723, 16.258556, 20.818008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.014731, 16.008776, 21.281870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303258, 15.734430, 21.243305>,  <13.476374, 15.569823, 21.220165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303258, 15.734430, 21.243305>,  <13.014731, 16.008776, 21.281870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303258, 15.734430, 21.243305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037707, -0.177885, 0.983329,
		-0.691579, -0.705655, -0.154173,
		0.721316, -0.685863, -0.096414,
		13.519652, 15.528671, 21.214380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.811316, 15.376684, 21.717693>,  <13.014731, 16.008776, 21.281870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.811316, 15.376684, 21.717693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.203482, 15.430413, 21.660078>,  <13.438781, 15.462650, 21.625509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.203482, 15.430413, 21.660078>,  <12.811316, 15.376684, 21.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.203482, 15.430413, 21.660078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163308, -0.145614, 0.975770,
		0.110093, -0.980181, -0.164698,
		0.980413, 0.134322, -0.144040,
		13.497605, 15.470710, 21.616865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125219, 15.093852, 22.321844>,  <12.811316, 15.376684, 21.717693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125219, 15.093852, 22.321844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.430466, 15.304214, 22.171602>,  <13.613613, 15.430430, 22.081457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.430466, 15.304214, 22.171602>,  <13.125219, 15.093852, 22.321844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.430466, 15.304214, 22.171602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367394, 0.125115, 0.921611,
		0.531674, -0.841291, -0.097737,
		0.763115, 0.525905, -0.375606,
		13.659400, 15.461985, 22.058920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725169, 14.820065, 22.625940>,  <13.125219, 15.093852, 22.321844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725169, 14.820065, 22.625940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.817433, 15.192971, 22.514460>,  <13.872792, 15.416716, 22.447571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.817433, 15.192971, 22.514460>,  <13.725169, 14.820065, 22.625940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.817433, 15.192971, 22.514460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273679, 0.212704, 0.938007,
		0.933753, -0.292636, -0.206080,
		0.230660, 0.932267, -0.278702,
		13.886631, 15.472651, 22.430849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232864, 14.968084, 23.070381>,  <13.725169, 14.820065, 22.625940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232864, 14.968084, 23.070381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.176276, 15.332244, 22.914864>,  <14.142323, 15.550739, 22.821552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.176276, 15.332244, 22.914864>,  <14.232864, 14.968084, 23.070381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.176276, 15.332244, 22.914864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365931, 0.413019, 0.833972,
		0.919826, -0.024288, -0.391574,
		-0.141471, 0.910399, -0.388793,
		14.133835, 15.605364, 22.798225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834496, 15.358120, 23.149221>,  <14.232864, 14.968084, 23.070381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834496, 15.358120, 23.149221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541267, 15.628809, 23.121931>,  <14.365331, 15.791223, 23.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541267, 15.628809, 23.121931>,  <14.834496, 15.358120, 23.149221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541267, 15.628809, 23.121931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322977, 0.434627, 0.840705,
		0.598578, 0.594260, -0.537178,
		-0.733069, 0.676724, -0.068226,
		14.321346, 15.831826, 23.101463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195963, 15.957194, 23.309633>,  <14.834496, 15.358120, 23.149221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195963, 15.957194, 23.309633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812036, 16.056629, 23.361713>,  <14.581679, 16.116291, 23.392962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812036, 16.056629, 23.361713>,  <15.195963, 15.957194, 23.309633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.812036, 16.056629, 23.361713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235243, 0.459792, 0.856301,
		0.153000, 0.852523, -0.499796,
		-0.959818, 0.248588, 0.130202,
		14.524090, 16.131205, 23.400774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223018, 16.674290, 23.412605>,  <15.195963, 15.957194, 23.309633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223018, 16.674290, 23.412605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.878321, 16.544956, 23.568993>,  <14.671502, 16.467358, 23.662825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.878321, 16.544956, 23.568993>,  <15.223018, 16.674290, 23.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878321, 16.544956, 23.568993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201825, 0.488544, 0.848876,
		-0.465473, 0.810420, -0.355743,
		-0.861743, -0.323331, 0.390968,
		14.619798, 16.447956, 23.686283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862699, 17.235085, 23.631001>,  <15.223018, 16.674290, 23.412605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.862699, 17.235085, 23.631001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.731274, 16.925699, 23.847815>,  <14.652419, 16.740068, 23.977903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.731274, 16.925699, 23.847815>,  <14.862699, 17.235085, 23.631001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.731274, 16.925699, 23.847815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131759, 0.530750, 0.837224,
		-0.935247, 0.346499, -0.072474,
		-0.328563, -0.773462, 0.542037,
		14.632705, 16.693661, 24.010426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399343, 17.548697, 24.117741>,  <14.862699, 17.235085, 23.631001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399343, 17.548697, 24.117741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.500155, 17.191422, 24.266708>,  <14.560643, 16.977057, 24.356089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.500155, 17.191422, 24.266708>,  <14.399343, 17.548697, 24.117741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.500155, 17.191422, 24.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251119, 0.432024, 0.866195,
		-0.934569, -0.124786, 0.333179,
		0.252031, -0.893187, 0.372420,
		14.575765, 16.923466, 24.378435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092004, 17.524670, 24.712358>,  <14.399343, 17.548697, 24.117741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092004, 17.524670, 24.712358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359189, 17.229567, 24.751423>,  <14.519500, 17.052504, 24.774860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359189, 17.229567, 24.751423>,  <14.092004, 17.524670, 24.712358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359189, 17.229567, 24.751423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204400, 0.308057, 0.929151,
		-0.715575, -0.600676, 0.356568,
		0.667962, -0.737760, 0.097659,
		14.559578, 17.008238, 24.780720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.102490, 17.329025, 25.393505>,  <14.092004, 17.524670, 24.712358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.102490, 17.329025, 25.393505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448123, 17.177492, 25.260933>,  <14.655502, 17.086573, 25.181389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448123, 17.177492, 25.260933>,  <14.102490, 17.329025, 25.393505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448123, 17.177492, 25.260933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444128, 0.263939, 0.856205,
		-0.236881, -0.887029, 0.396316,
		0.864082, -0.378834, -0.331432,
		14.707348, 17.063843, 25.161503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328534, 16.921871, 25.945189>,  <14.102490, 17.329025, 25.393505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328534, 16.921871, 25.945189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647762, 17.018984, 25.724594>,  <14.839299, 17.077251, 25.592237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647762, 17.018984, 25.724594>,  <14.328534, 16.921871, 25.945189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647762, 17.018984, 25.724594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507537, 0.222480, 0.832411,
		0.324791, -0.944224, 0.054332,
		0.798070, 0.242784, -0.551489,
		14.887183, 17.091818, 25.559147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.855894, 16.738523, 26.364834>,  <14.328534, 16.921871, 25.945189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.855894, 16.738523, 26.364834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035877, 16.989029, 26.110170>,  <15.143867, 17.139332, 25.957373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035877, 16.989029, 26.110170>,  <14.855894, 16.738523, 26.364834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035877, 16.989029, 26.110170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426609, 0.475570, 0.769310,
		0.784565, -0.617761, -0.053183,
		0.449958, 0.626262, -0.636658,
		15.170865, 17.176907, 25.919172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628224, 16.715979, 26.524042>,  <14.855894, 16.738523, 26.364834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628224, 16.715979, 26.524042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.526974, 17.061653, 26.350096>,  <15.466224, 17.269058, 26.245728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.526974, 17.061653, 26.350096>,  <15.628224, 16.715979, 26.524042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526974, 17.061653, 26.350096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530096, 0.499916, 0.684896,
		0.809275, -0.057156, -0.584643,
		-0.253127, 0.864186, -0.434868,
		15.451035, 17.320910, 26.219635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158401, 17.112360, 26.573069>,  <15.628224, 16.715979, 26.524042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158401, 17.112360, 26.573069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.902658, 17.407932, 26.488028>,  <15.749210, 17.585276, 26.437002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.902658, 17.407932, 26.488028>,  <16.158401, 17.112360, 26.573069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.902658, 17.407932, 26.488028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548179, 0.631944, 0.547857,
		0.539181, 0.233734, -0.809106,
		-0.639362, 0.738928, -0.212604,
		15.710849, 17.629610, 26.424246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
