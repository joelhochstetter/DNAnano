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
	<24.651775, 35.136295, 35.316422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353449, 34.985146, 35.096977>,  <24.174454, 34.894455, 34.965313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353449, 34.985146, 35.096977>,  <24.651775, 35.136295, 35.316422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353449, 34.985146, 35.096977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613129, -0.711366, -0.343555,
		-0.260441, -0.592597, 0.762233,
		-0.745817, -0.377872, -0.548608,
		24.129704, 34.871784, 34.932396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405514, 34.518951, 35.617737>,  <24.651775, 35.136295, 35.316422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405514, 34.518951, 35.617737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390448, 34.562569, 35.220406>,  <24.381407, 34.588737, 34.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390448, 34.562569, 35.220406>,  <24.405514, 34.518951, 35.617737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390448, 34.562569, 35.220406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750799, -0.652897, -0.100141,
		-0.659456, -0.749558, -0.057273,
		-0.037668, 0.109039, -0.993324,
		24.379147, 34.595280, 34.922409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690439, 33.873878, 35.373222>,  <24.405514, 34.518951, 35.617737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690439, 33.873878, 35.373222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.669523, 34.135895, 35.071709>,  <24.656973, 34.293106, 34.890800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.669523, 34.135895, 35.071709>,  <24.690439, 33.873878, 35.373222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.669523, 34.135895, 35.071709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922289, -0.257772, -0.287986,
		-0.382946, -0.710265, -0.590657,
		-0.052292, 0.655039, -0.753783,
		24.653835, 34.332405, 34.845573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290146, 33.956673, 34.971191>,  <24.690439, 33.873878, 35.373222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290146, 33.956673, 34.971191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686764, 34.006851, 34.957905>,  <25.924734, 34.036961, 34.949932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686764, 34.006851, 34.957905>,  <25.290146, 33.956673, 34.971191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686764, 34.006851, 34.957905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069503, 0.297204, -0.952281,
		-0.109592, 0.946537, 0.303410,
		0.991544, 0.125450, -0.033216,
		25.984226, 34.044487, 34.947941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524643, 34.626934, 34.877926>,  <25.290146, 33.956673, 34.971191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524643, 34.626934, 34.877926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759083, 34.352913, 34.704865>,  <25.899746, 34.188499, 34.601028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759083, 34.352913, 34.704865>,  <25.524643, 34.626934, 34.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759083, 34.352913, 34.704865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353181, 0.264582, -0.897362,
		0.729214, 0.678749, -0.086876,
		0.586098, -0.685052, -0.432658,
		25.934912, 34.147396, 34.575066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950283, 34.847134, 34.309402>,  <25.524643, 34.626934, 34.877926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950283, 34.847134, 34.309402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861013, 34.470364, 34.209030>,  <25.807451, 34.244301, 34.148808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861013, 34.470364, 34.209030>,  <25.950283, 34.847134, 34.309402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861013, 34.470364, 34.209030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355115, 0.318295, -0.878966,
		0.907793, -0.107052, -0.405527,
		-0.223172, -0.941928, -0.250930,
		25.794062, 34.187786, 34.133751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272070, 34.735664, 34.946205>,  <25.950283, 34.847134, 34.309402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272070, 34.735664, 34.946205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625727, 34.548939, 34.954021>,  <26.837921, 34.436905, 34.958710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625727, 34.548939, 34.954021>,  <26.272070, 34.735664, 34.946205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625727, 34.548939, 34.954021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455370, 0.870326, 0.187538,
		-0.104553, -0.156912, 0.982063,
		0.884142, -0.466810, 0.019542,
		26.890968, 34.408897, 34.959885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703287, 35.303829, 35.030712>,  <26.272070, 34.735664, 34.946205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703287, 35.303829, 35.030712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006971, 35.458893, 35.239834>,  <27.189182, 35.551929, 35.365307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006971, 35.458893, 35.239834>,  <26.703287, 35.303829, 35.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006971, 35.458893, 35.239834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634187, 0.260048, 0.728135,
		0.146310, -0.884364, 0.443276,
		0.759210, 0.387653, 0.522805,
		27.234734, 35.575188, 35.396675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562265, 35.150414, 35.822311>,  <26.703287, 35.303829, 35.030712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562265, 35.150414, 35.822311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839249, 35.437916, 35.797371>,  <27.005440, 35.610416, 35.782406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839249, 35.437916, 35.797371>,  <26.562265, 35.150414, 35.822311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839249, 35.437916, 35.797371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328363, 0.390936, 0.859853,
		0.642399, -0.574941, 0.506721,
		0.692460, 0.718757, -0.062347,
		27.046988, 35.653542, 35.778667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944618, 35.176495, 36.428482>,  <26.562265, 35.150414, 35.822311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944618, 35.176495, 36.428482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006329, 35.541325, 36.276520>,  <27.043354, 35.760223, 36.185345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006329, 35.541325, 36.276520>,  <26.944618, 35.176495, 36.428482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006329, 35.541325, 36.276520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203648, 0.405603, 0.891074,
		0.966813, -0.060103, 0.248315,
		0.154274, 0.912071, -0.379902,
		27.052610, 35.814945, 36.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587572, 35.511497, 36.755863>,  <26.944618, 35.176495, 36.428482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587572, 35.511497, 36.755863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319107, 35.781773, 36.633888>,  <27.158028, 35.943939, 36.560703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319107, 35.781773, 36.633888>,  <27.587572, 35.511497, 36.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319107, 35.781773, 36.633888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071353, 0.350558, 0.933819,
		0.737870, 0.648501, -0.187068,
		-0.671160, 0.675689, -0.304939,
		27.117760, 35.984478, 36.542408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826057, 35.993759, 37.141247>,  <27.587572, 35.511497, 36.755863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826057, 35.993759, 37.141247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468729, 36.132137, 37.026497>,  <27.254332, 36.215164, 36.957649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468729, 36.132137, 37.026497>,  <27.826057, 35.993759, 37.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468729, 36.132137, 37.026497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123561, 0.424664, 0.896880,
		0.432096, 0.836650, -0.336617,
		-0.893323, 0.345945, -0.286873,
		27.200731, 36.235920, 36.940434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810413, 36.564201, 37.472469>,  <27.826057, 35.993759, 37.141247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810413, 36.564201, 37.472469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424717, 36.535633, 37.370380>,  <27.193298, 36.518494, 37.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424717, 36.535633, 37.370380>,  <27.810413, 36.564201, 37.472469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424717, 36.535633, 37.370380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258065, 0.472311, 0.842808,
		0.060354, 0.878534, -0.473852,
		-0.964240, -0.071418, -0.255224,
		27.135445, 36.514206, 37.293812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484987, 37.183304, 37.767578>,  <27.810413, 36.564201, 37.472469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484987, 37.183304, 37.767578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168776, 36.959972, 37.666920>,  <26.979048, 36.825974, 37.606525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168776, 36.959972, 37.666920>,  <27.484987, 37.183304, 37.767578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168776, 36.959972, 37.666920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497213, 0.345236, 0.795985,
		-0.357547, 0.754372, -0.550530,
		-0.790531, -0.558332, -0.251645,
		26.931616, 36.792473, 37.591427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875216, 37.664978, 37.838413>,  <27.484987, 37.183304, 37.767578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875216, 37.664978, 37.838413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791939, 37.278332, 37.898174>,  <26.741974, 37.046345, 37.934029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791939, 37.278332, 37.898174>,  <26.875216, 37.664978, 37.838413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791939, 37.278332, 37.898174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510136, 0.237635, 0.826614,
		-0.834517, 0.095880, -0.542576,
		-0.208191, -0.966611, 0.149398,
		26.729481, 36.988350, 37.942993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205341, 37.765591, 37.997017>,  <26.875216, 37.664978, 37.838413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205341, 37.765591, 37.997017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288074, 37.391304, 38.111317>,  <26.337713, 37.166733, 38.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288074, 37.391304, 38.111317>,  <26.205341, 37.765591, 37.997017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288074, 37.391304, 38.111317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510206, 0.146051, 0.847561,
		-0.834812, -0.321093, -0.447201,
		0.206831, -0.935718, 0.285749,
		26.350124, 37.110588, 38.197041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622656, 37.567951, 38.283386>,  <26.205341, 37.765591, 37.997017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622656, 37.567951, 38.283386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904839, 37.338634, 38.450077>,  <26.074148, 37.201046, 38.550091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904839, 37.338634, 38.450077>,  <25.622656, 37.567951, 38.283386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904839, 37.338634, 38.450077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300689, 0.290350, 0.908451,
		-0.641806, -0.766180, 0.032447,
		0.705459, -0.573293, 0.416730,
		26.116476, 37.166645, 38.575096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273155, 37.214439, 38.784256>,  <25.622656, 37.567951, 38.283386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273155, 37.214439, 38.784256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661610, 37.224663, 38.879116>,  <25.894682, 37.230797, 38.936031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661610, 37.224663, 38.879116>,  <25.273155, 37.214439, 38.784256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661610, 37.224663, 38.879116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217405, 0.503851, 0.835984,
		-0.098121, -0.863413, 0.494865,
		0.971138, 0.025558, 0.237149,
		25.952951, 37.232330, 38.950260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.401945, 36.802788, 39.532681>,  <25.273155, 37.214439, 38.784256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.401945, 36.802788, 39.532681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729818, 37.023407, 39.470821>,  <25.926542, 37.155777, 39.433704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729818, 37.023407, 39.470821>,  <25.401945, 36.802788, 39.532681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729818, 37.023407, 39.470821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054194, 0.343444, 0.937608,
		0.570249, -0.760160, 0.311405,
		0.819682, 0.551547, -0.154653,
		25.975723, 37.188869, 39.424427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824556, 36.751728, 40.100285>,  <25.401945, 36.802788, 39.532681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824556, 36.751728, 40.100285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941643, 37.094997, 39.931591>,  <26.011894, 37.300957, 39.830376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941643, 37.094997, 39.931591>,  <25.824556, 36.751728, 40.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941643, 37.094997, 39.931591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007522, 0.443106, 0.896438,
		0.956169, -0.259231, 0.136161,
		0.292718, 0.858170, -0.421735,
		26.029459, 37.352448, 39.805069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408796, 36.977051, 40.522877>,  <25.824556, 36.751728, 40.100285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408796, 36.977051, 40.522877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261772, 37.300179, 40.338558>,  <26.173557, 37.494053, 40.227966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261772, 37.300179, 40.338558>,  <26.408796, 36.977051, 40.522877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261772, 37.300179, 40.338558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198383, 0.552178, 0.809780,
		0.908593, 0.206231, -0.363217,
		-0.367562, 0.807817, -0.460793,
		26.151503, 37.542522, 40.200321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916826, 37.512558, 40.566666>,  <26.408796, 36.977051, 40.522877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916826, 37.512558, 40.566666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605354, 37.743092, 40.467476>,  <26.418470, 37.881413, 40.407963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605354, 37.743092, 40.467476>,  <26.916826, 37.512558, 40.566666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605354, 37.743092, 40.467476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317930, 0.703184, 0.635966,
		0.540903, 0.416376, -0.730791,
		-0.778682, 0.576336, -0.247976,
		26.371750, 37.915993, 40.393082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203630, 38.210033, 40.742218>,  <26.916826, 37.512558, 40.566666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203630, 38.210033, 40.742218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811882, 38.285568, 40.713451>,  <26.576834, 38.330891, 40.696190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811882, 38.285568, 40.713451>,  <27.203630, 38.210033, 40.742218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811882, 38.285568, 40.713451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066551, 0.637481, 0.767586,
		0.190796, 0.746966, -0.636898,
		-0.979371, 0.188838, -0.071917,
		26.518070, 38.342220, 40.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131918, 38.875046, 40.762199>,  <27.203630, 38.210033, 40.742218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131918, 38.875046, 40.762199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773687, 38.748585, 40.887409>,  <26.558748, 38.672707, 40.962536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773687, 38.748585, 40.887409>,  <27.131918, 38.875046, 40.762199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773687, 38.748585, 40.887409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021296, 0.672312, 0.739962,
		-0.444395, 0.669360, -0.595374,
		-0.895578, -0.316156, 0.313027,
		26.505014, 38.653736, 40.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676773, 39.434788, 40.708405>,  <27.131918, 38.875046, 40.762199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676773, 39.434788, 40.708405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530840, 39.204948, 41.001453>,  <26.443279, 39.067047, 41.177284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530840, 39.204948, 41.001453>,  <26.676773, 39.434788, 40.708405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530840, 39.204948, 41.001453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175268, 0.815176, 0.552059,
		-0.914428, 0.073003, -0.398111,
		-0.364833, -0.574594, 0.732624,
		26.421391, 39.032570, 41.221241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076620, 39.833286, 40.963142>,  <26.676773, 39.434788, 40.708405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076620, 39.833286, 40.963142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220480, 39.573898, 41.231510>,  <26.306797, 39.418266, 41.392532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220480, 39.573898, 41.231510>,  <26.076620, 39.833286, 40.963142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220480, 39.573898, 41.231510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067221, 0.699158, 0.711800,
		-0.930662, -0.301100, 0.207862,
		0.359651, -0.648473, 0.670920,
		26.328375, 39.379356, 41.432785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642860, 39.652634, 41.573067>,  <26.076620, 39.833286, 40.963142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642860, 39.652634, 41.573067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028591, 39.633663, 41.677238>,  <26.260029, 39.622280, 41.739742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028591, 39.633663, 41.677238>,  <25.642860, 39.652634, 41.573067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028591, 39.633663, 41.677238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206628, 0.480111, 0.852524,
		-0.165468, -0.875924, 0.453185,
		0.964326, -0.047425, 0.260434,
		26.317888, 39.619434, 41.755367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717056, 39.491192, 42.298756>,  <25.642860, 39.652634, 41.573067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717056, 39.491192, 42.298756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064562, 39.654541, 42.186703>,  <26.273066, 39.752552, 42.119469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064562, 39.654541, 42.186703>,  <25.717056, 39.491192, 42.298756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064562, 39.654541, 42.186703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000824, 0.564483, 0.825444,
		0.495222, -0.717349, 0.490067,
		0.868766, 0.408374, -0.280136,
		26.325191, 39.777054, 42.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933842, 39.738728, 43.022430>,  <25.717056, 39.491192, 42.298756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933842, 39.738728, 43.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143358, 39.941532, 42.748619>,  <26.269068, 40.063217, 42.584332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143358, 39.941532, 42.748619>,  <25.933842, 39.738728, 43.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143358, 39.941532, 42.748619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126428, 0.748413, 0.651072,
		0.842413, -0.427569, 0.327910,
		0.523790, 0.507014, -0.684529,
		26.300495, 40.093636, 42.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212778, 40.382473, 43.353535>,  <25.933842, 39.738728, 43.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212778, 40.382473, 43.353535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265856, 40.498600, 42.974461>,  <26.297703, 40.568275, 42.747017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265856, 40.498600, 42.974461>,  <26.212778, 40.382473, 43.353535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265856, 40.498600, 42.974461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114060, 0.945315, 0.305564,
		0.984572, -0.148640, 0.092325,
		0.132695, 0.290319, -0.947685,
		26.305664, 40.585697, 42.690155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811625, 40.902866, 43.241276>,  <26.212778, 40.382473, 43.353535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811625, 40.902866, 43.241276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543852, 40.956631, 42.949032>,  <26.383188, 40.988888, 42.773685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543852, 40.956631, 42.949032>,  <26.811625, 40.902866, 43.241276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543852, 40.956631, 42.949032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133515, 0.989250, 0.059658,
		0.730775, -0.057611, -0.680183,
		-0.669434, 0.134411, -0.730610,
		26.343021, 40.996956, 42.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012178, 41.448334, 42.902054>,  <26.811625, 40.902866, 43.241276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012178, 41.448334, 42.902054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631096, 41.414810, 42.785210>,  <26.402447, 41.394695, 42.715103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631096, 41.414810, 42.785210>,  <27.012178, 41.448334, 42.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631096, 41.414810, 42.785210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051840, 0.991951, -0.115528,
		0.299442, -0.094921, -0.949381,
		-0.952705, -0.083810, -0.292111,
		26.345284, 41.389668, 42.697575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808418, 41.908989, 42.405983>,  <27.012178, 41.448334, 42.902054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808418, 41.908989, 42.405983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428284, 41.854290, 42.517811>,  <26.200203, 41.821472, 42.584908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428284, 41.854290, 42.517811>,  <26.808418, 41.908989, 42.405983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428284, 41.854290, 42.517811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176062, 0.976960, -0.120629,
		-0.256634, -0.163860, -0.952517,
		-0.950337, -0.136744, 0.279570,
		26.143183, 41.813267, 42.601681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733341, 42.006439, 41.654472>,  <26.808418, 41.908989, 42.405983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733341, 42.006439, 41.654472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841930, 42.387100, 41.596970>,  <26.907084, 42.615498, 41.562469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841930, 42.387100, 41.596970>,  <26.733341, 42.006439, 41.654472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841930, 42.387100, 41.596970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880614, -0.305877, -0.361883,
		-0.388357, -0.028351, -0.921073,
		0.271475, 0.951649, -0.143755,
		26.923372, 42.672596, 41.553844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916252, 42.234833, 40.949593>,  <26.733341, 42.006439, 41.654472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916252, 42.234833, 40.949593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117128, 42.496861, 41.175400>,  <27.237654, 42.654079, 41.310886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117128, 42.496861, 41.175400>,  <26.916252, 42.234833, 40.949593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117128, 42.496861, 41.175400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819941, -0.153279, -0.551546,
		-0.274773, 0.739856, -0.614096,
		0.502192, 0.655072, 0.564521,
		27.267786, 42.693382, 41.344757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240084, 42.794041, 40.593048>,  <26.916252, 42.234833, 40.949593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240084, 42.794041, 40.593048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463949, 42.740940, 40.920254>,  <27.598269, 42.709080, 41.116577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463949, 42.740940, 40.920254>,  <27.240084, 42.794041, 40.593048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463949, 42.740940, 40.920254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816854, -0.078072, -0.571537,
		0.139735, 0.988070, 0.064743,
		0.559664, -0.132749, 0.818018,
		27.631849, 42.701115, 41.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778811, 43.275684, 40.600986>,  <27.240084, 42.794041, 40.593048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778811, 43.275684, 40.600986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895330, 42.958015, 40.814316>,  <27.965242, 42.767414, 40.942314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895330, 42.958015, 40.814316>,  <27.778811, 43.275684, 40.600986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895330, 42.958015, 40.814316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612458, -0.273441, -0.741704,
		0.734873, 0.542698, 0.406743,
		0.291301, -0.794172, 0.533324,
		27.982721, 42.719765, 40.974312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512362, 43.259007, 40.569614>,  <27.778811, 43.275684, 40.600986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512362, 43.259007, 40.569614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387930, 42.891270, 40.665977>,  <28.313271, 42.670628, 40.723797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387930, 42.891270, 40.665977>,  <28.512362, 43.259007, 40.569614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387930, 42.891270, 40.665977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704254, -0.393201, -0.591117,
		0.638166, -0.014221, 0.769767,
		-0.311079, -0.919343, 0.240912,
		28.294605, 42.615467, 40.738251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194756, 42.777401, 40.430302>,  <28.512362, 43.259007, 40.569614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194756, 42.777401, 40.430302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884403, 42.529736, 40.478699>,  <28.698191, 42.381134, 40.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884403, 42.529736, 40.478699>,  <29.194756, 42.777401, 40.430302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884403, 42.529736, 40.478699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348249, -0.580255, -0.736225,
		0.526052, -0.529089, 0.665834,
		-0.775882, -0.619168, 0.120990,
		28.651638, 42.343987, 40.514996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426849, 42.074627, 40.673347>,  <29.194756, 42.777401, 40.430302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426849, 42.074627, 40.673347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059078, 42.022728, 40.524853>,  <28.838415, 41.991589, 40.435757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059078, 42.022728, 40.524853>,  <29.426849, 42.074627, 40.673347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059078, 42.022728, 40.524853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361582, -0.650085, -0.668317,
		-0.154620, -0.748701, 0.644623,
		-0.919430, -0.129749, -0.371233,
		28.783249, 41.983803, 40.413483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265661, 41.369240, 40.758663>,  <29.426849, 42.074627, 40.673347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265661, 41.369240, 40.758663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026474, 41.518761, 40.475056>,  <28.882961, 41.608475, 40.304890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026474, 41.518761, 40.475056>,  <29.265661, 41.369240, 40.758663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026474, 41.518761, 40.475056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248525, -0.754526, -0.607393,
		-0.762028, -0.539404, 0.358271,
		-0.597955, 0.373811, -0.709024,
		28.847084, 41.630901, 40.262352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736404, 40.769966, 40.494511>,  <29.265661, 41.369240, 40.758663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736404, 40.769966, 40.494511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760958, 41.059669, 40.219795>,  <28.775690, 41.233494, 40.054966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760958, 41.059669, 40.219795>,  <28.736404, 40.769966, 40.494511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760958, 41.059669, 40.219795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389122, -0.651007, -0.651747,
		-0.919139, -0.227237, -0.321788,
		0.061385, 0.724260, -0.686789,
		28.779373, 41.276947, 40.013760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283445, 40.557369, 39.960045>,  <28.736404, 40.769966, 40.494511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283445, 40.557369, 39.960045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528307, 40.811909, 39.772289>,  <28.675224, 40.964634, 39.659637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528307, 40.811909, 39.772289>,  <28.283445, 40.557369, 39.960045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528307, 40.811909, 39.772289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266229, -0.724812, -0.635429,
		-0.744574, 0.264015, -0.613111,
		0.612153, 0.636352, -0.469388,
		28.711952, 41.002815, 39.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063238, 40.599205, 39.246250>,  <28.283445, 40.557369, 39.960045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063238, 40.599205, 39.246250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438959, 40.735924, 39.258125>,  <28.664392, 40.817955, 39.265251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438959, 40.735924, 39.258125>,  <28.063238, 40.599205, 39.246250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438959, 40.735924, 39.258125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267159, -0.674396, -0.688343,
		-0.215253, 0.654495, -0.724778,
		0.939304, 0.341799, 0.029688,
		28.720751, 40.838463, 39.267033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183035, 40.477287, 38.526100>,  <28.063238, 40.599205, 39.246250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183035, 40.477287, 38.526100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531691, 40.560631, 38.703564>,  <28.740883, 40.610638, 38.810043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531691, 40.560631, 38.703564>,  <28.183035, 40.477287, 38.526100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531691, 40.560631, 38.703564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456191, -0.675904, -0.578829,
		0.179266, 0.706922, -0.684196,
		0.871638, 0.208361, 0.443658,
		28.793182, 40.623138, 38.836662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704069, 40.713753, 38.016968>,  <28.183035, 40.477287, 38.526100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704069, 40.713753, 38.016968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904501, 40.574558, 38.333908>,  <29.024759, 40.491039, 38.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904501, 40.574558, 38.333908>,  <28.704069, 40.713753, 38.016968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904501, 40.574558, 38.333908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551927, -0.576709, -0.602315,
		0.666557, 0.739128, -0.096911,
		0.501077, -0.347989, 0.792354,
		29.054825, 40.470161, 38.571613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363415, 40.609905, 37.796734>,  <28.704069, 40.713753, 38.016968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363415, 40.609905, 37.796734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312172, 40.363525, 38.107655>,  <29.281427, 40.215698, 38.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312172, 40.363525, 38.107655>,  <29.363415, 40.609905, 37.796734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312172, 40.363525, 38.107655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450420, -0.734398, -0.507722,
		0.883578, 0.285069, 0.371517,
		-0.128106, -0.615951, 0.777299,
		29.273741, 40.178741, 38.340843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056192, 40.228374, 37.762226>,  <29.363415, 40.609905, 37.796734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056192, 40.228374, 37.762226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812136, 40.017200, 37.998535>,  <29.665703, 39.890495, 38.140320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812136, 40.017200, 37.998535>,  <30.056192, 40.228374, 37.762226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812136, 40.017200, 37.998535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319112, -0.846243, -0.426661,
		0.725187, -0.071800, 0.684798,
		-0.610140, -0.527936, 0.590772,
		29.629093, 39.858818, 38.175766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420340, 39.705811, 38.026150>,  <30.056192, 40.228374, 37.762226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420340, 39.705811, 38.026150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042322, 39.580921, 38.064957>,  <29.815512, 39.505989, 38.088242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042322, 39.580921, 38.064957>,  <30.420340, 39.705811, 38.026150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042322, 39.580921, 38.064957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251964, -0.884590, -0.392447,
		0.208351, -0.346435, 0.914644,
		-0.945042, -0.312224, 0.097016,
		29.758810, 39.487255, 38.094063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420404, 39.040787, 38.108936>,  <30.420340, 39.705811, 38.026150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420404, 39.040787, 38.108936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041775, 39.068424, 37.982941>,  <29.814596, 39.085007, 37.907341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041775, 39.068424, 37.982941>,  <30.420404, 39.040787, 38.108936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041775, 39.068424, 37.982941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038165, -0.945909, -0.322180,
		-0.320216, -0.316989, 0.892737,
		-0.946576, 0.069096, -0.314993,
		29.757803, 39.089153, 37.888443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040394, 38.468578, 38.409084>,  <30.420404, 39.040787, 38.108936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040394, 38.468578, 38.409084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826721, 38.597134, 38.096329>,  <29.698517, 38.674267, 37.908676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826721, 38.597134, 38.096329>,  <30.040394, 38.468578, 38.409084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826721, 38.597134, 38.096329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015446, -0.928469, -0.371089,
		-0.845228, -0.186153, 0.500937,
		-0.534184, 0.321392, -0.781892,
		29.666466, 38.693550, 37.861759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542368, 37.987816, 38.309967>,  <30.040394, 38.468578, 38.409084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542368, 37.987816, 38.309967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543003, 38.135323, 37.938160>,  <29.543385, 38.223827, 37.715076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543003, 38.135323, 37.938160>,  <29.542368, 37.987816, 38.309967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543003, 38.135323, 37.938160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379132, -0.859904, -0.341793,
		-0.925341, 0.352954, 0.138446,
		0.001587, 0.368765, -0.929521,
		29.543480, 38.245953, 37.659302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975584, 37.712570, 38.074360>,  <29.542368, 37.987816, 38.309967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975584, 37.712570, 38.074360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153311, 37.851635, 37.744095>,  <29.259947, 37.935074, 37.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153311, 37.851635, 37.744095>,  <28.975584, 37.712570, 38.074360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153311, 37.851635, 37.744095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443478, -0.715427, -0.539900,
		-0.778402, 0.606048, -0.163694,
		0.444316, 0.347664, -0.825659,
		29.286606, 37.955933, 37.496399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458160, 37.680779, 37.530609>,  <28.975584, 37.712570, 38.074360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458160, 37.680779, 37.530609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799431, 37.729927, 37.327831>,  <29.004192, 37.759418, 37.206165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799431, 37.729927, 37.327831>,  <28.458160, 37.680779, 37.530609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799431, 37.729927, 37.327831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303233, -0.673939, -0.673688,
		-0.424429, 0.728497, -0.537729,
		0.853176, 0.122875, -0.506944,
		29.055384, 37.766788, 37.175747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335749, 37.646553, 36.712234>,  <28.458160, 37.680779, 37.530609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335749, 37.646553, 36.712234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709995, 37.542480, 36.807674>,  <28.934544, 37.480038, 36.864937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709995, 37.542480, 36.807674>,  <28.335749, 37.646553, 36.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709995, 37.542480, 36.807674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012212, -0.651611, -0.758455,
		0.352810, 0.712536, -0.606480,
		0.935615, -0.260184, 0.238596,
		28.990681, 37.464424, 36.879253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784904, 37.727806, 36.021667>,  <28.335749, 37.646553, 36.712234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784904, 37.727806, 36.021667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947254, 37.475533, 36.286243>,  <29.044664, 37.324169, 36.444988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947254, 37.475533, 36.286243>,  <28.784904, 37.727806, 36.021667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947254, 37.475533, 36.286243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071601, -0.699565, -0.710973,
		0.911121, 0.335924, -0.238776,
		0.405872, -0.630686, 0.661441,
		29.069016, 37.286327, 36.484676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101067, 37.435440, 35.554844>,  <28.784904, 37.727806, 36.021667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101067, 37.435440, 35.554844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091707, 37.208462, 35.884075>,  <29.086092, 37.072277, 36.081615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091707, 37.208462, 35.884075>,  <29.101067, 37.435440, 35.554844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091707, 37.208462, 35.884075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001785, -0.823329, -0.567562,
		0.999725, -0.011812, 0.020279,
		-0.023400, -0.567442, 0.823081,
		29.084686, 37.038231, 36.131001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626854, 36.902569, 35.428349>,  <29.101067, 37.435440, 35.554844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626854, 36.902569, 35.428349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373688, 36.743099, 35.693821>,  <29.221788, 36.647415, 35.853104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373688, 36.743099, 35.693821>,  <29.626854, 36.902569, 35.428349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373688, 36.743099, 35.693821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012519, -0.862383, -0.506101,
		0.774120, -0.312010, 0.550806,
		-0.632915, -0.398678, 0.663682,
		29.183813, 36.623497, 35.892925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995575, 37.375977, 34.973122>,  <29.626854, 36.902569, 35.428349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995575, 37.375977, 34.973122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302187, 37.603111, 34.853127>,  <30.486155, 37.739391, 34.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302187, 37.603111, 34.853127>,  <29.995575, 37.375977, 34.973122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302187, 37.603111, 34.853127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545631, -0.329477, 0.770539,
		0.338700, -0.754326, -0.562383,
		0.766530, 0.567835, -0.299990,
		30.532146, 37.773460, 34.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729809, 36.975815, 35.062344>,  <29.995575, 37.375977, 34.973122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729809, 36.975815, 35.062344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758039, 37.374268, 35.083313>,  <30.774977, 37.613338, 35.095894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758039, 37.374268, 35.083313>,  <30.729809, 36.975815, 35.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758039, 37.374268, 35.083313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632651, -0.085328, 0.769722,
		0.771214, -0.021160, -0.636224,
		0.070575, 0.996128, 0.052419,
		30.779211, 37.673107, 35.099037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411701, 37.238155, 34.944416>,  <30.729809, 36.975815, 35.062344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411701, 37.238155, 34.944416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220879, 37.518749, 35.156200>,  <31.106386, 37.687107, 35.283272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220879, 37.518749, 35.156200>,  <31.411701, 37.238155, 34.944416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220879, 37.518749, 35.156200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747850, 0.007546, 0.663825,
		0.461670, 0.712642, -0.528208,
		-0.477055, 0.701488, 0.529465,
		31.077763, 37.729195, 35.315041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835060, 37.888325, 34.920910>,  <31.411701, 37.238155, 34.944416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835060, 37.888325, 34.920910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617023, 37.822441, 35.249725>,  <31.486202, 37.782909, 35.447014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617023, 37.822441, 35.249725>,  <31.835060, 37.888325, 34.920910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617023, 37.822441, 35.249725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794154, 0.212806, 0.569240,
		-0.268693, 0.963112, 0.014804,
		-0.545091, -0.164708, 0.822038,
		31.453497, 37.773029, 35.496338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868538, 38.488907, 35.366749>,  <31.835060, 37.888325, 34.920910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868538, 38.488907, 35.366749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800833, 38.151646, 35.570881>,  <31.760210, 37.949287, 35.693359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800833, 38.151646, 35.570881>,  <31.868538, 38.488907, 35.366749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800833, 38.151646, 35.570881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798210, 0.186453, 0.572797,
		-0.578110, 0.504304, 0.641456,
		-0.169262, -0.843156, 0.510331,
		31.750053, 37.898697, 35.723980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860754, 38.585785, 36.148663>,  <31.868538, 38.488907, 35.366749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860754, 38.585785, 36.148663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977894, 38.213268, 36.061996>,  <32.048176, 37.989758, 36.009998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977894, 38.213268, 36.061996>,  <31.860754, 38.585785, 36.148663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977894, 38.213268, 36.061996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629649, 0.017299, 0.776687,
		-0.719571, -0.363874, 0.591450,
		0.292847, -0.931288, -0.216665,
		32.065746, 37.933884, 35.996998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901344, 38.259094, 36.789223>,  <31.860754, 38.585785, 36.148663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901344, 38.259094, 36.789223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084518, 37.990944, 36.555679>,  <32.194424, 37.830055, 36.415554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084518, 37.990944, 36.555679>,  <31.901344, 38.259094, 36.789223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084518, 37.990944, 36.555679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584522, -0.267782, 0.765915,
		-0.669799, -0.692017, 0.269223,
		0.457934, -0.670376, -0.583860,
		32.221897, 37.789829, 36.380520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855108, 37.535954, 37.019402>,  <31.901344, 38.259094, 36.789223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855108, 37.535954, 37.019402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195736, 37.515804, 36.810673>,  <32.400112, 37.503716, 36.685436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195736, 37.515804, 36.810673>,  <31.855108, 37.535954, 37.019402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195736, 37.515804, 36.810673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494729, -0.252052, 0.831693,
		-0.173424, -0.966401, -0.189717,
		0.851568, -0.050377, -0.521818,
		32.451206, 37.500690, 36.654129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135548, 36.875298, 37.187847>,  <31.855108, 37.535954, 37.019402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135548, 36.875298, 37.187847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458267, 37.066978, 37.049603>,  <32.651897, 37.181988, 36.966656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458267, 37.066978, 37.049603>,  <32.135548, 36.875298, 37.187847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458267, 37.066978, 37.049603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526862, -0.318783, 0.787905,
		0.267390, -0.817768, -0.509665,
		0.806796, 0.479201, -0.345611,
		32.700306, 37.210739, 36.945919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672089, 36.314850, 37.185879>,  <32.135548, 36.875298, 37.187847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672089, 36.314850, 37.185879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880615, 36.656071, 37.176720>,  <33.005733, 36.860806, 37.171223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880615, 36.656071, 37.176720>,  <32.672089, 36.314850, 37.185879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880615, 36.656071, 37.176720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555522, -0.318875, 0.767928,
		0.647782, -0.413059, -0.640126,
		0.521320, 0.853054, -0.022902,
		33.037010, 36.911987, 37.169849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355881, 36.125866, 37.330032>,  <32.672089, 36.314850, 37.185879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355881, 36.125866, 37.330032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309837, 36.513279, 37.418304>,  <33.282211, 36.745728, 37.471268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309837, 36.513279, 37.418304>,  <33.355881, 36.125866, 37.330032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309837, 36.513279, 37.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345658, -0.169219, 0.922976,
		0.931273, 0.182525, -0.315301,
		-0.115111, 0.968530, 0.220680,
		33.275303, 36.803837, 37.484509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981411, 36.336445, 37.646549>,  <33.355881, 36.125866, 37.330032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981411, 36.336445, 37.646549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713615, 36.603386, 37.777039>,  <33.552937, 36.763550, 37.855331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713615, 36.603386, 37.777039>,  <33.981411, 36.336445, 37.646549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713615, 36.603386, 37.777039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400777, -0.045254, 0.915057,
		0.625431, 0.743363, -0.237164,
		-0.669487, 0.667355, 0.326226,
		33.512768, 36.803593, 37.874905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371334, 36.887043, 38.000832>,  <33.981411, 36.336445, 37.646549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371334, 36.887043, 38.000832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996155, 36.898159, 38.139091>,  <33.771046, 36.904827, 38.222050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996155, 36.898159, 38.139091>,  <34.371334, 36.887043, 38.000832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996155, 36.898159, 38.139091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342863, 0.223488, 0.912413,
		-0.051896, 0.974311, -0.219148,
		-0.937951, 0.027787, 0.345653,
		33.714771, 36.906494, 38.242786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385632, 37.467155, 38.515541>,  <34.371334, 36.887043, 38.000832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385632, 37.467155, 38.515541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067890, 37.239094, 38.599377>,  <33.877243, 37.102257, 38.649677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067890, 37.239094, 38.599377>,  <34.385632, 37.467155, 38.515541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067890, 37.239094, 38.599377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224634, 0.044853, 0.973410,
		-0.564393, 0.820314, 0.092447,
		-0.794355, -0.570152, 0.209585,
		33.829582, 37.068047, 38.662251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046051, 37.856491, 39.024860>,  <34.385632, 37.467155, 38.515541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046051, 37.856491, 39.024860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930840, 37.473644, 39.037258>,  <33.861713, 37.243935, 39.044697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930840, 37.473644, 39.037258>,  <34.046051, 37.856491, 39.024860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930840, 37.473644, 39.037258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163562, -0.017280, 0.986382,
		-0.943551, 0.289174, 0.161526,
		-0.288027, -0.957121, 0.030994,
		33.844433, 37.186508, 39.046555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788765, 37.807415, 39.645985>,  <34.046051, 37.856491, 39.024860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788765, 37.807415, 39.645985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793144, 37.413902, 39.574371>,  <33.795773, 37.177795, 39.531403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793144, 37.413902, 39.574371>,  <33.788765, 37.807415, 39.645985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793144, 37.413902, 39.574371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027029, -0.179269, 0.983429,
		-0.999575, -0.005925, -0.028553,
		0.010946, -0.983782, -0.179032,
		33.796429, 37.118767, 39.520660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219559, 37.504246, 39.994801>,  <33.788765, 37.807415, 39.645985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219559, 37.504246, 39.994801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501850, 37.225597, 39.943169>,  <33.671227, 37.058407, 39.912189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501850, 37.225597, 39.943169>,  <33.219559, 37.504246, 39.994801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501850, 37.225597, 39.943169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095310, -0.273887, 0.957028,
		-0.702042, -0.663100, -0.259685,
		0.705729, -0.696624, -0.129080,
		33.713570, 37.016609, 39.904446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953979, 36.925858, 40.375237>,  <33.219559, 37.504246, 39.994801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953979, 36.925858, 40.375237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335304, 36.815125, 40.326958>,  <33.564098, 36.748684, 40.297993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335304, 36.815125, 40.326958>,  <32.953979, 36.925858, 40.375237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335304, 36.815125, 40.326958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059196, -0.563186, 0.824207,
		-0.296141, -0.778579, -0.553277,
		0.953308, -0.276834, -0.120694,
		33.621296, 36.732075, 40.290749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992661, 36.260872, 40.372700>,  <32.953979, 36.925858, 40.375237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992661, 36.260872, 40.372700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364201, 36.364597, 40.478523>,  <33.587124, 36.426834, 40.542015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364201, 36.364597, 40.478523>,  <32.992661, 36.260872, 40.372700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364201, 36.364597, 40.478523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067985, -0.582688, 0.809847,
		0.364159, -0.770214, -0.523601,
		0.928852, 0.259316, 0.264554,
		33.642857, 36.442390, 40.557888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363068, 35.615921, 40.512135>,  <32.992661, 36.260872, 40.372700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363068, 35.615921, 40.512135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542446, 35.924492, 40.692711>,  <33.650074, 36.109634, 40.801056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542446, 35.924492, 40.692711>,  <33.363068, 35.615921, 40.512135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542446, 35.924492, 40.692711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052707, -0.527021, 0.848216,
		0.892254, -0.356585, -0.277000,
		0.448446, 0.771424, 0.451442,
		33.676979, 36.155918, 40.828144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809830, 35.338612, 41.058456>,  <33.363068, 35.615921, 40.512135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809830, 35.338612, 41.058456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777061, 35.720692, 41.172218>,  <33.757401, 35.949940, 41.240475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777061, 35.720692, 41.172218>,  <33.809830, 35.338612, 41.058456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777061, 35.720692, 41.172218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070764, -0.290221, 0.954340,
		0.994124, 0.058050, 0.091367,
		-0.081917, 0.955197, 0.284408,
		33.752487, 36.007252, 41.257542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179073, 35.276875, 41.670403>,  <33.809830, 35.338612, 41.058456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179073, 35.276875, 41.670403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957016, 35.609325, 41.683353>,  <33.823784, 35.808796, 41.691124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957016, 35.609325, 41.683353>,  <34.179073, 35.276875, 41.670403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957016, 35.609325, 41.683353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109129, -0.111373, 0.987769,
		0.824566, 0.544818, 0.152528,
		-0.555142, 0.831125, 0.032379,
		33.790474, 35.858662, 41.693066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471817, 35.627586, 42.248894>,  <34.179073, 35.276875, 41.670403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471817, 35.627586, 42.248894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118965, 35.808304, 42.195644>,  <33.907253, 35.916733, 42.163696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118965, 35.808304, 42.195644>,  <34.471817, 35.627586, 42.248894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118965, 35.808304, 42.195644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168890, -0.039576, 0.984840,
		0.439677, 0.891244, 0.111215,
		-0.882134, 0.451794, -0.133122,
		33.854324, 35.943844, 42.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376614, 35.909946, 42.833904>,  <34.471817, 35.627586, 42.248894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376614, 35.909946, 42.833904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012287, 35.909031, 42.668781>,  <33.793690, 35.908482, 42.569710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012287, 35.909031, 42.668781>,  <34.376614, 35.909946, 42.833904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012287, 35.909031, 42.668781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406055, -0.175183, 0.896900,
		-0.074369, 0.984533, 0.158630,
		-0.910817, -0.002290, -0.412803,
		33.739040, 35.908344, 42.544941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980846, 36.366673, 43.232239>,  <34.376614, 35.909946, 42.833904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980846, 36.366673, 43.232239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720268, 36.125721, 43.047737>,  <33.563919, 35.981152, 42.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720268, 36.125721, 43.047737>,  <33.980846, 36.366673, 43.232239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720268, 36.125721, 43.047737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398679, -0.245460, 0.883631,
		-0.645499, 0.759534, -0.080251,
		-0.651449, -0.602377, -0.461254,
		33.524834, 35.945007, 42.909359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372936, 36.563465, 43.514881>,  <33.980846, 36.366673, 43.232239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372936, 36.563465, 43.514881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289337, 36.193508, 43.387821>,  <33.239178, 35.971535, 43.311584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289337, 36.193508, 43.387821>,  <33.372936, 36.563465, 43.514881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289337, 36.193508, 43.387821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525840, -0.167576, 0.833913,
		-0.824507, 0.341316, -0.451322,
		-0.208997, -0.924890, -0.317645,
		33.226639, 35.916042, 43.292526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627693, 36.391533, 43.576591>,  <33.372936, 36.563465, 43.514881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627693, 36.391533, 43.576591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811977, 36.036644, 43.566936>,  <32.922546, 35.823711, 43.561142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811977, 36.036644, 43.566936>,  <32.627693, 36.391533, 43.576591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811977, 36.036644, 43.566936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535401, -0.299500, 0.789712,
		-0.707880, -0.350904, -0.613003,
		0.460708, -0.887224, -0.024136,
		32.950191, 35.770477, 43.559696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085693, 35.942150, 43.650517>,  <32.627693, 36.391533, 43.576591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085693, 35.942150, 43.650517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398354, 35.712280, 43.747482>,  <32.585949, 35.574360, 43.805664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398354, 35.712280, 43.747482>,  <32.085693, 35.942150, 43.650517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398354, 35.712280, 43.747482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493460, -0.332087, 0.803875,
		-0.381468, -0.747972, -0.543158,
		0.781652, -0.574679, 0.242414,
		32.632851, 35.539879, 43.820206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805191, 35.531090, 44.063969>,  <32.085693, 35.942150, 43.650517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805191, 35.531090, 44.063969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181419, 35.404232, 44.112537>,  <32.407158, 35.328117, 44.141678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181419, 35.404232, 44.112537>,  <31.805191, 35.531090, 44.063969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181419, 35.404232, 44.112537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258951, -0.438478, 0.860629,
		-0.219700, -0.840927, -0.494545,
		0.940573, -0.317143, 0.121426,
		32.463593, 35.309090, 44.148964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835430, 34.741238, 44.024315>,  <31.805191, 35.531090, 44.063969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835430, 34.741238, 44.024315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136070, 34.898956, 44.235832>,  <32.316456, 34.993587, 44.362743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136070, 34.898956, 44.235832>,  <31.835430, 34.741238, 44.024315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136070, 34.898956, 44.235832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334050, -0.463737, 0.820584,
		0.568778, -0.793396, -0.216829,
		0.751600, 0.394298, 0.528797,
		32.361549, 35.017246, 44.394470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807980, 34.252419, 44.525955>,  <31.835430, 34.741238, 44.024315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807980, 34.252419, 44.525955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036457, 34.554482, 44.654625>,  <32.173542, 34.735718, 44.731827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036457, 34.554482, 44.654625>,  <31.807980, 34.252419, 44.525955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036457, 34.554482, 44.654625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318820, -0.157007, 0.934721,
		0.756367, -0.636462, 0.151078,
		0.571194, 0.755159, 0.321671,
		32.207817, 34.781029, 44.751125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160938, 33.963154, 45.039509>,  <31.807980, 34.252419, 44.525955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160938, 33.963154, 45.039509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175541, 34.356762, 45.109226>,  <32.184303, 34.592926, 45.151058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175541, 34.356762, 45.109226>,  <32.160938, 33.963154, 45.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175541, 34.356762, 45.109226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276876, -0.157622, 0.947890,
		0.960212, -0.082858, 0.266697,
		0.036503, 0.984017, 0.174292,
		32.186493, 34.651966, 45.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659103, 34.153446, 45.512280>,  <32.160938, 33.963154, 45.039509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659103, 34.153446, 45.512280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416977, 34.470661, 45.539631>,  <32.271702, 34.660992, 45.556042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416977, 34.470661, 45.539631>,  <32.659103, 34.153446, 45.512280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416977, 34.470661, 45.539631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043437, -0.118685, 0.991981,
		0.794796, 0.597496, 0.106290,
		-0.605320, 0.793040, 0.068377,
		32.235382, 34.708572, 45.560143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073975, 34.598648, 46.096054>,  <32.659103, 34.153446, 45.512280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073975, 34.598648, 46.096054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692673, 34.697556, 46.026577>,  <32.463894, 34.756901, 45.984890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692673, 34.697556, 46.026577>,  <33.073975, 34.598648, 46.096054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692673, 34.697556, 46.026577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195554, -0.066573, 0.978431,
		0.230369, 0.966658, 0.111815,
		-0.953252, 0.247266, -0.173697,
		32.406696, 34.771736, 45.974468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929325, 35.040939, 46.599854>,  <33.073975, 34.598648, 46.096054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929325, 35.040939, 46.599854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564548, 34.941906, 46.468971>,  <32.345684, 34.882488, 46.390442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564548, 34.941906, 46.468971>,  <32.929325, 35.040939, 46.599854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564548, 34.941906, 46.468971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326388, -0.045572, 0.944137,
		-0.248661, 0.967795, -0.039249,
		-0.911942, -0.247581, -0.327208,
		32.290966, 34.867630, 46.370808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411438, 35.500263, 46.881512>,  <32.929325, 35.040939, 46.599854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411438, 35.500263, 46.881512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222031, 35.153770, 46.817738>,  <32.108387, 34.945873, 46.779472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222031, 35.153770, 46.817738>,  <32.411438, 35.500263, 46.881512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222031, 35.153770, 46.817738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393772, 0.046279, 0.918042,
		-0.787861, 0.497492, -0.363012,
		-0.473518, -0.866233, -0.159437,
		32.079975, 34.893902, 46.769905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751249, 35.524696, 47.355888>,  <32.411438, 35.500263, 46.881512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751249, 35.524696, 47.355888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802452, 35.145065, 47.240738>,  <31.833174, 34.917286, 47.171650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802452, 35.145065, 47.240738>,  <31.751249, 35.524696, 47.355888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802452, 35.145065, 47.240738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203753, -0.309236, 0.928901,
		-0.970618, -0.060250, -0.232962,
		0.128006, -0.949075, -0.287874,
		31.840855, 34.860344, 47.154377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188152, 35.133053, 47.649185>,  <31.751249, 35.524696, 47.355888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188152, 35.133053, 47.649185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470413, 34.855782, 47.590443>,  <31.639771, 34.689419, 47.555199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470413, 34.855782, 47.590443>,  <31.188152, 35.133053, 47.649185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470413, 34.855782, 47.590443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208772, -0.401458, 0.891765,
		-0.677105, -0.598616, -0.428005,
		0.705651, -0.693174, -0.146855,
		31.682108, 34.647831, 47.546387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957663, 34.586937, 47.956268>,  <31.188152, 35.133053, 47.649185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957663, 34.586937, 47.956268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335356, 34.465816, 47.904518>,  <31.561972, 34.393143, 47.873470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335356, 34.465816, 47.904518>,  <30.957663, 34.586937, 47.956268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335356, 34.465816, 47.904518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023711, -0.454396, 0.890484,
		-0.328423, -0.837757, -0.436236,
		0.944233, -0.302799, -0.129370,
		31.618626, 34.374977, 47.865707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003332, 33.840023, 48.166874>,  <30.957663, 34.586937, 47.956268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003332, 33.840023, 48.166874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383642, 33.962875, 48.150425>,  <31.611828, 34.036587, 48.140556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383642, 33.962875, 48.150425>,  <31.003332, 33.840023, 48.166874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383642, 33.962875, 48.150425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216215, -0.562478, 0.798041,
		0.221977, -0.767650, -0.601199,
		0.950777, 0.307135, -0.041121,
		31.668875, 34.055016, 48.138088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498981, 33.234501, 48.159866>,  <31.003332, 33.840023, 48.166874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498981, 33.234501, 48.159866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672155, 33.562820, 48.308922>,  <31.776060, 33.759811, 48.398354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672155, 33.562820, 48.308922>,  <31.498981, 33.234501, 48.159866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672155, 33.562820, 48.308922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104196, -0.456183, 0.883765,
		0.895382, -0.343786, -0.283022,
		0.432936, 0.820797, 0.372637,
		31.802036, 33.809059, 48.420712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194515, 32.998848, 48.435425>,  <31.498981, 33.234501, 48.159866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194515, 32.998848, 48.435425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085098, 33.342243, 48.608940>,  <32.019447, 33.548279, 48.713051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085098, 33.342243, 48.608940>,  <32.194515, 32.998848, 48.435425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085098, 33.342243, 48.608940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022937, -0.445043, 0.895215,
		0.961588, 0.254825, 0.102045,
		-0.273538, 0.858488, 0.433793,
		32.003036, 33.599789, 48.739079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683006, 33.054474, 48.990517>,  <32.194515, 32.998848, 48.435425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683006, 33.054474, 48.990517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357563, 33.283241, 49.032368>,  <32.162296, 33.420502, 49.057480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357563, 33.283241, 49.032368>,  <32.683006, 33.054474, 48.990517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357563, 33.283241, 49.032368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166807, -0.402011, 0.900313,
		0.556965, 0.715053, 0.422480,
		-0.813613, 0.571915, 0.104630,
		32.113480, 33.454815, 49.063755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684387, 33.287724, 49.664005>,  <32.683006, 33.054474, 48.990517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684387, 33.287724, 49.664005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298546, 33.341923, 49.573513>,  <32.067039, 33.374443, 49.519218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298546, 33.341923, 49.573513>,  <32.684387, 33.287724, 49.664005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298546, 33.341923, 49.573513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252972, -0.233250, 0.938936,
		0.074460, 0.962930, 0.259272,
		-0.964604, 0.135502, -0.226226,
		32.009163, 33.382572, 49.505646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418198, 33.615929, 50.283661>,  <32.684387, 33.287724, 49.664005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418198, 33.615929, 50.283661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092133, 33.495029, 50.086014>,  <31.896492, 33.422489, 49.967426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092133, 33.495029, 50.086014>,  <32.418198, 33.615929, 50.283661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092133, 33.495029, 50.086014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370256, -0.384120, 0.845791,
		-0.445438, 0.872409, 0.201213,
		-0.815166, -0.302247, -0.494116,
		31.847582, 33.404354, 49.937778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809952, 33.828960, 50.640675>,  <32.418198, 33.615929, 50.283661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809952, 33.828960, 50.640675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669916, 33.535591, 50.407600>,  <31.585896, 33.359570, 50.267754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669916, 33.535591, 50.407600>,  <31.809952, 33.828960, 50.640675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669916, 33.535591, 50.407600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571167, -0.325895, 0.753366,
		-0.742433, 0.596557, -0.304816,
		-0.350088, -0.733425, -0.582689,
		31.564890, 33.315563, 50.232792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184385, 33.722626, 50.821758>,  <31.809952, 33.828960, 50.640675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184385, 33.722626, 50.821758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190502, 33.379353, 50.616508>,  <31.194172, 33.173389, 50.493359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190502, 33.379353, 50.616508>,  <31.184385, 33.722626, 50.821758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190502, 33.379353, 50.616508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433551, -0.468121, 0.769997,
		-0.900999, 0.210691, -0.379223,
		0.015291, -0.858180, -0.513122,
		31.195089, 33.121899, 50.462570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507898, 33.435585, 50.973732>,  <31.184385, 33.722626, 50.821758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507898, 33.435585, 50.973732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725431, 33.138149, 50.818130>,  <30.855951, 32.959690, 50.724770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725431, 33.138149, 50.818130>,  <30.507898, 33.435585, 50.973732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725431, 33.138149, 50.818130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428763, -0.644678, 0.632892,
		-0.721394, -0.177395, -0.669419,
		0.543831, -0.743587, -0.389006,
		30.888580, 32.915073, 50.701427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138065, 32.887749, 50.678020>,  <30.507898, 33.435585, 50.973732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138065, 32.887749, 50.678020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484167, 32.740265, 50.813900>,  <30.691828, 32.651775, 50.895428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484167, 32.740265, 50.813900>,  <30.138065, 32.887749, 50.678020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484167, 32.740265, 50.813900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499159, -0.570517, 0.652188,
		-0.046664, -0.733870, -0.677685,
		0.865253, -0.368707, 0.339695,
		30.743744, 32.629654, 50.915810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145706, 32.188396, 50.478542>,  <30.138065, 32.887749, 50.678020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145706, 32.188396, 50.478542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333614, 32.276314, 50.820538>,  <30.446360, 32.329063, 51.025734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333614, 32.276314, 50.820538>,  <30.145706, 32.188396, 50.478542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333614, 32.276314, 50.820538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713136, -0.476383, 0.514293,
		0.520339, -0.851324, -0.067050,
		0.469771, 0.219790, 0.854990,
		30.474546, 32.342251, 51.077034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328203, 31.578066, 50.832024>,  <30.145706, 32.188396, 50.478542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328203, 31.578066, 50.832024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272448, 31.883316, 51.084438>,  <30.238995, 32.066467, 51.235889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272448, 31.883316, 51.084438>,  <30.328203, 31.578066, 50.832024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272448, 31.883316, 51.084438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727433, -0.511290, 0.457628,
		0.671872, -0.395252, 0.626389,
		-0.139388, 0.763124, 0.631041,
		30.230631, 32.112255, 51.273750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083797, 31.284815, 51.451317>,  <30.328203, 31.578066, 50.832024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083797, 31.284815, 51.451317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958775, 31.662056, 51.496689>,  <29.883760, 31.888401, 51.523914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958775, 31.662056, 51.496689>,  <30.083797, 31.284815, 51.451317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958775, 31.662056, 51.496689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885185, -0.332500, 0.325410,
		0.344611, 0.001300, 0.938745,
		-0.312555, 0.943102, 0.113432,
		29.865007, 31.944986, 51.530720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996883, 31.190187, 52.179195>,  <30.083797, 31.284815, 51.451317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996883, 31.190187, 52.179195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021328, 30.798895, 52.099869>,  <30.035994, 30.564119, 52.052273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021328, 30.798895, 52.099869>,  <29.996883, 31.190187, 52.179195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021328, 30.798895, 52.099869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170749, 0.206009, -0.963538,
		0.983418, 0.025019, 0.179621,
		0.061110, -0.978230, -0.198321,
		30.039661, 30.505426, 52.040371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636078, 30.991995, 51.822826>,  <29.996883, 31.190187, 52.179195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636078, 30.991995, 51.822826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349203, 30.730717, 51.725685>,  <30.177078, 30.573950, 51.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349203, 30.730717, 51.725685>,  <30.636078, 30.991995, 51.822826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349203, 30.730717, 51.725685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288611, 0.038798, -0.956660,
		0.634310, -0.756193, 0.160694,
		-0.717185, -0.653197, -0.242856,
		30.134047, 30.534758, 51.652828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824965, 30.777388, 51.236061>,  <30.636078, 30.991995, 51.822826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824965, 30.777388, 51.236061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471554, 30.590647, 51.220940>,  <30.259508, 30.478601, 51.211868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471554, 30.590647, 51.220940>,  <30.824965, 30.777388, 51.236061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471554, 30.590647, 51.220940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032705, 0.142002, -0.989326,
		0.467237, -0.872860, -0.140731,
		-0.883527, -0.466853, -0.037802,
		30.206495, 30.450592, 51.209599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846745, 30.167700, 50.774796>,  <30.824965, 30.777388, 51.236061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846745, 30.167700, 50.774796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493849, 30.353863, 50.803226>,  <30.282112, 30.465561, 50.820286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493849, 30.353863, 50.803226>,  <30.846745, 30.167700, 50.774796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493849, 30.353863, 50.803226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052003, 0.246386, -0.967776,
		-0.467923, -0.850112, -0.241574,
		-0.882238, 0.465407, 0.071082,
		30.229177, 30.493484, 50.824551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393425, 30.050709, 50.224731>,  <30.846745, 30.167700, 50.774796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393425, 30.050709, 50.224731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328678, 30.421555, 50.359940>,  <30.289829, 30.644062, 50.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328678, 30.421555, 50.359940>,  <30.393425, 30.050709, 50.224731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328678, 30.421555, 50.359940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092707, 0.355306, -0.930141,
		-0.982448, -0.119224, -0.143463,
		-0.161869, 0.927115, 0.338016,
		30.280117, 30.699690, 50.461346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685112, 30.392359, 49.993755>,  <30.393425, 30.050709, 50.224731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685112, 30.392359, 49.993755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006884, 30.627310, 50.029255>,  <30.199947, 30.768280, 50.050556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006884, 30.627310, 50.029255>,  <29.685112, 30.392359, 49.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006884, 30.627310, 50.029255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032897, 0.193214, -0.980605,
		-0.593135, 0.785910, 0.174750,
		0.804431, 0.587380, 0.088748,
		30.248213, 30.803524, 50.055878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600525, 30.769863, 49.471535>,  <29.685112, 30.392359, 49.993755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600525, 30.769863, 49.471535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969397, 30.883732, 49.576263>,  <30.190720, 30.952053, 49.639099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969397, 30.883732, 49.576263>,  <29.600525, 30.769863, 49.471535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969397, 30.883732, 49.576263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214510, 0.186839, -0.958685,
		-0.321829, 0.940241, 0.111233,
		0.922177, 0.284672, 0.261822,
		30.246050, 30.969133, 49.654808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755970, 31.448910, 49.122627>,  <29.600525, 30.769863, 49.471535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755970, 31.448910, 49.122627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125000, 31.311695, 49.193256>,  <30.346418, 31.229366, 49.235634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125000, 31.311695, 49.193256>,  <29.755970, 31.448910, 49.122627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125000, 31.311695, 49.193256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183043, -0.013693, -0.983010,
		0.339628, 0.939221, 0.050158,
		0.922577, -0.343039, 0.176569,
		30.401773, 31.208784, 49.246227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027243, 31.959360, 48.832710>,  <29.755970, 31.448910, 49.122627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027243, 31.959360, 48.832710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275188, 31.645939, 48.849739>,  <30.423956, 31.457886, 48.859959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275188, 31.645939, 48.849739>,  <30.027243, 31.959360, 48.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275188, 31.645939, 48.849739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236004, 0.134407, -0.962412,
		0.748377, 0.606615, 0.268236,
		0.619866, -0.783551, 0.042576,
		30.461149, 31.410873, 48.862511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544346, 32.198418, 48.340782>,  <30.027243, 31.959360, 48.832710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544346, 32.198418, 48.340782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616817, 31.806890, 48.378902>,  <30.660299, 31.571974, 48.401775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616817, 31.806890, 48.378902>,  <30.544346, 32.198418, 48.340782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616817, 31.806890, 48.378902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436109, -0.006891, -0.899867,
		0.881467, 0.204597, 0.425625,
		0.181177, -0.978822, 0.095300,
		30.671171, 31.513245, 48.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268099, 31.997427, 48.277065>,  <30.544346, 32.198418, 48.340782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268099, 31.997427, 48.277065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057119, 31.673510, 48.174278>,  <30.930532, 31.479160, 48.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057119, 31.673510, 48.174278>,  <31.268099, 31.997427, 48.277065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057119, 31.673510, 48.174278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539447, -0.085547, -0.837662,
		0.656349, -0.580447, 0.481962,
		-0.527449, -0.809792, -0.256972,
		30.898884, 31.430573, 48.097187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752342, 31.503529, 48.018929>,  <31.268099, 31.997427, 48.277065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752342, 31.503529, 48.018929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399492, 31.363941, 47.892391>,  <31.187782, 31.280190, 47.816467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399492, 31.363941, 47.892391>,  <31.752342, 31.503529, 48.018929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399492, 31.363941, 47.892391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349622, -0.035062, -0.936235,
		0.315624, -0.936479, 0.152936,
		-0.882126, -0.348968, -0.316347,
		31.134855, 31.259251, 47.797485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923981, 30.968218, 47.540436>,  <31.752342, 31.503529, 48.018929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923981, 30.968218, 47.540436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555332, 31.096327, 47.452763>,  <31.334143, 31.173193, 47.400158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555332, 31.096327, 47.452763>,  <31.923981, 30.968218, 47.540436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555332, 31.096327, 47.452763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249412, 0.056102, -0.966771,
		-0.297336, -0.945662, -0.131585,
		-0.921621, 0.320275, -0.219178,
		31.278847, 31.192410, 47.387009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898733, 30.737326, 46.827286>,  <31.923981, 30.968218, 47.540436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898733, 30.737326, 46.827286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581472, 30.978790, 46.859543>,  <31.391115, 31.123669, 46.878899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581472, 30.978790, 46.859543>,  <31.898733, 30.737326, 46.827286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581472, 30.978790, 46.859543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102027, 0.262251, -0.959591,
		-0.600416, -0.752874, -0.269595,
		-0.793153, 0.603660, 0.080646,
		31.343527, 31.159887, 46.883736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541821, 30.628557, 46.272141>,  <31.898733, 30.737326, 46.827286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541821, 30.628557, 46.272141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392607, 30.988342, 46.363186>,  <31.303078, 31.204214, 46.417812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392607, 30.988342, 46.363186>,  <31.541821, 30.628557, 46.272141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392607, 30.988342, 46.363186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292177, 0.346724, -0.891300,
		-0.880612, -0.265981, -0.392143,
		-0.373034, 0.899465, 0.227616,
		31.280697, 31.258183, 46.431469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132502, 30.787378, 45.689617>,  <31.541821, 30.628557, 46.272141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132502, 30.787378, 45.689617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239687, 31.130991, 45.864094>,  <31.303999, 31.337158, 45.968781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239687, 31.130991, 45.864094>,  <31.132502, 30.787378, 45.689617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239687, 31.130991, 45.864094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242137, 0.378165, -0.893511,
		-0.932505, 0.345045, -0.106670,
		0.267963, 0.859032, 0.436189,
		31.320076, 31.388700, 45.994949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950077, 31.272793, 45.208923>,  <31.132502, 30.787378, 45.689617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950077, 31.272793, 45.208923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218084, 31.474770, 45.426586>,  <31.378889, 31.595955, 45.557182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218084, 31.474770, 45.426586>,  <30.950077, 31.272793, 45.208923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218084, 31.474770, 45.426586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384336, 0.391177, -0.836222,
		-0.635105, 0.769424, 0.068029,
		0.670020, 0.504943, 0.544156,
		31.419090, 31.626253, 45.589832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907799, 31.962101, 45.020897>,  <30.950077, 31.272793, 45.208923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907799, 31.962101, 45.020897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267515, 31.939617, 45.194386>,  <31.483345, 31.926126, 45.298477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267515, 31.939617, 45.194386>,  <30.907799, 31.962101, 45.020897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267515, 31.939617, 45.194386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383913, 0.576482, -0.721304,
		-0.209490, 0.815174, 0.540005,
		0.899292, -0.056209, 0.433723,
		31.537302, 31.922754, 45.324501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135777, 32.661480, 45.116409>,  <30.907799, 31.962101, 45.020897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135777, 32.661480, 45.116409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454582, 32.420315, 45.102192>,  <31.645864, 32.275616, 45.093662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454582, 32.420315, 45.102192>,  <31.135777, 32.661480, 45.116409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454582, 32.420315, 45.102192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389690, 0.558320, -0.732407,
		0.461424, 0.569887, 0.679938,
		0.797013, -0.602916, -0.035543,
		31.693686, 32.239441, 45.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705469, 33.112206, 44.963543>,  <31.135777, 32.661480, 45.116409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705469, 33.112206, 44.963543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848776, 32.747959, 44.881149>,  <31.934759, 32.529411, 44.831711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848776, 32.747959, 44.881149>,  <31.705469, 33.112206, 44.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848776, 32.747959, 44.881149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443449, 0.360130, -0.820768,
		0.821583, 0.202709, 0.532833,
		0.358266, -0.910612, -0.205986,
		31.956255, 32.474777, 44.819355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304443, 33.254829, 44.714764>,  <31.705469, 33.112206, 44.963543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304443, 33.254829, 44.714764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243427, 32.879444, 44.590813>,  <32.206818, 32.654213, 44.516441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243427, 32.879444, 44.590813>,  <32.304443, 33.254829, 44.714764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243427, 32.879444, 44.590813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257971, 0.264872, -0.929136,
		0.954035, -0.221672, 0.201691,
		-0.152541, -0.938459, -0.309882,
		32.197666, 32.597908, 44.497849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800377, 33.144539, 44.122852>,  <32.304443, 33.254829, 44.714764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800377, 33.144539, 44.122852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522648, 32.858044, 44.094788>,  <32.356010, 32.686146, 44.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522648, 32.858044, 44.094788>,  <32.800377, 33.144539, 44.122852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522648, 32.858044, 44.094788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031950, 0.128078, -0.991249,
		0.718956, -0.686003, -0.111811,
		-0.694321, -0.716237, -0.070165,
		32.314350, 32.643173, 44.073738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019405, 32.786697, 43.573387>,  <32.800377, 33.144539, 44.122852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019405, 32.786697, 43.573387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636723, 32.671021, 43.586567>,  <32.407112, 32.601616, 43.594475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636723, 32.671021, 43.586567>,  <33.019405, 32.786697, 43.573387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636723, 32.671021, 43.586567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071697, 0.124422, -0.989636,
		0.282091, -0.949152, -0.139769,
		-0.956705, -0.289189, 0.032953,
		32.349712, 32.584263, 43.596455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003674, 32.247757, 42.968544>,  <33.019405, 32.786697, 43.573387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003674, 32.247757, 42.968544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651299, 32.411915, 43.062798>,  <32.439873, 32.510410, 43.119350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651299, 32.411915, 43.062798>,  <33.003674, 32.247757, 42.968544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651299, 32.411915, 43.062798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234964, 0.052906, -0.970563,
		-0.410778, -0.910373, 0.049821,
		-0.880939, 0.410393, 0.235638,
		32.387016, 32.535034, 43.133488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559944, 31.981543, 42.421597>,  <33.003674, 32.247757, 42.968544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559944, 31.981543, 42.421597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360374, 32.281837, 42.594788>,  <32.240631, 32.462013, 42.698704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360374, 32.281837, 42.594788>,  <32.559944, 31.981543, 42.421597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360374, 32.281837, 42.594788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434687, 0.215434, -0.874434,
		-0.749747, -0.624487, 0.218850,
		-0.498925, 0.750736, 0.432977,
		32.210697, 32.507057, 42.724682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875999, 32.010185, 42.120613>,  <32.559944, 31.981543, 42.421597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875999, 32.010185, 42.120613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920460, 32.373711, 42.281460>,  <31.947136, 32.591827, 42.377968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920460, 32.373711, 42.281460>,  <31.875999, 32.010185, 42.120613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920460, 32.373711, 42.281460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378139, 0.412867, -0.828584,
		-0.919052, -0.059959, 0.389549,
		0.111151, 0.908816, 0.402119,
		31.953806, 32.646355, 42.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227110, 32.407265, 41.920853>,  <31.875999, 32.010185, 42.120613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227110, 32.407265, 41.920853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519749, 32.657734, 42.028683>,  <31.695332, 32.808018, 42.093380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519749, 32.657734, 42.028683>,  <31.227110, 32.407265, 41.920853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519749, 32.657734, 42.028683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135165, 0.520800, -0.842910,
		-0.668204, 0.580234, 0.465653,
		0.731597, 0.626176, 0.269573,
		31.739227, 32.845589, 42.109554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985012, 33.064037, 41.815090>,  <31.227110, 32.407265, 41.920853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985012, 33.064037, 41.815090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363323, 33.185223, 41.861938>,  <31.590309, 33.257935, 41.890045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363323, 33.185223, 41.861938>,  <30.985012, 33.064037, 41.815090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363323, 33.185223, 41.861938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110330, 0.638769, -0.761447,
		-0.305502, 0.707238, 0.637560,
		0.945778, 0.302965, 0.117116,
		31.647057, 33.276112, 41.897072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029060, 33.860340, 41.914764>,  <30.985012, 33.064037, 41.815090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029060, 33.860340, 41.914764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388145, 33.753826, 41.774364>,  <31.603596, 33.689919, 41.690125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388145, 33.753826, 41.774364>,  <31.029060, 33.860340, 41.914764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388145, 33.753826, 41.774364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055142, 0.722507, -0.689161,
		0.437119, 0.638023, 0.633920,
		0.897712, -0.266290, -0.351003,
		31.657459, 33.673939, 41.669064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436367, 34.455139, 41.885529>,  <31.029060, 33.860340, 41.914764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436367, 34.455139, 41.885529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604029, 34.191410, 41.635857>,  <31.704626, 34.033173, 41.486053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604029, 34.191410, 41.635857>,  <31.436367, 34.455139, 41.885529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604029, 34.191410, 41.635857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065204, 0.663857, -0.745012,
		0.905570, 0.352976, 0.235270,
		0.419156, -0.659319, -0.624184,
		31.729776, 33.993614, 41.448601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795750, 34.849255, 41.484570>,  <31.436367, 34.455139, 41.885529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795750, 34.849255, 41.484570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795116, 34.516438, 41.262688>,  <31.794737, 34.316746, 41.129559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795116, 34.516438, 41.262688>,  <31.795750, 34.849255, 41.484570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795116, 34.516438, 41.262688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058558, 0.553681, -0.830668,
		0.998283, -0.033799, 0.047845,
		-0.001585, -0.832043, -0.554709,
		31.794641, 34.266823, 41.096275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265347, 34.990944, 40.906509>,  <31.795750, 34.849255, 41.484570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265347, 34.990944, 40.906509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028667, 34.689716, 40.791428>,  <31.886660, 34.508980, 40.722378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028667, 34.689716, 40.791428>,  <32.265347, 34.990944, 40.906509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028667, 34.689716, 40.791428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000349, 0.356644, -0.934240,
		0.806156, -0.552892, -0.210765,
		-0.591702, -0.753070, -0.287704,
		31.851156, 34.463795, 40.705116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518463, 34.727818, 40.210911>,  <32.265347, 34.990944, 40.906509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518463, 34.727818, 40.210911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147228, 34.581570, 40.239151>,  <31.924488, 34.493820, 40.256096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147228, 34.581570, 40.239151>,  <32.518463, 34.727818, 40.210911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147228, 34.581570, 40.239151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138609, 0.163225, -0.976804,
		0.345616, -0.916340, -0.202164,
		-0.928083, -0.365620, 0.070600,
		31.868803, 34.471886, 40.260330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492622, 34.249382, 39.688503>,  <32.518463, 34.727818, 40.210911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492622, 34.249382, 39.688503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099518, 34.312378, 39.727238>,  <31.863655, 34.350174, 39.750477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099518, 34.312378, 39.727238>,  <32.492622, 34.249382, 39.688503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099518, 34.312378, 39.727238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068424, 0.176736, -0.981877,
		-0.171748, -0.971577, -0.162914,
		-0.982762, 0.157488, 0.096833,
		31.804689, 34.359623, 39.756287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108292, 33.752411, 39.219540>,  <32.492622, 34.249382, 39.688503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108292, 33.752411, 39.219540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881002, 34.071995, 39.298328>,  <31.744629, 34.263744, 39.345600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881002, 34.071995, 39.298328>,  <32.108292, 33.752411, 39.219540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881002, 34.071995, 39.298328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004208, 0.242187, -0.970220,
		-0.822866, -0.550469, -0.140978,
		-0.568219, 0.798955, 0.196971,
		31.710537, 34.311680, 39.357418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608955, 33.782734, 38.685795>,  <32.108292, 33.752411, 39.219540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608955, 33.782734, 38.685795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589117, 34.161434, 38.813046>,  <31.577215, 34.388653, 38.889397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589117, 34.161434, 38.813046>,  <31.608955, 33.782734, 38.685795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589117, 34.161434, 38.813046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216563, 0.300750, -0.928789,
		-0.975008, -0.114957, 0.190116,
		-0.049594, 0.946749, 0.318129,
		31.574240, 34.445457, 38.908485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104439, 34.036957, 38.298866>,  <31.608955, 33.782734, 38.685795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104439, 34.036957, 38.298866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268976, 34.375412, 38.434422>,  <31.367699, 34.578487, 38.515755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268976, 34.375412, 38.434422>,  <31.104439, 34.036957, 38.298866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268976, 34.375412, 38.434422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301246, 0.477110, -0.825601,
		-0.860261, 0.237515, 0.451152,
		0.411342, 0.846140, 0.338889,
		31.392378, 34.629253, 38.536087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616070, 34.681938, 38.226372>,  <31.104439, 34.036957, 38.298866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616070, 34.681938, 38.226372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001102, 34.789848, 38.216118>,  <31.232122, 34.854595, 38.209965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001102, 34.789848, 38.216118>,  <30.616070, 34.681938, 38.226372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001102, 34.789848, 38.216118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160578, 0.491632, -0.855870,
		-0.218290, 0.827961, 0.516556,
		0.962582, 0.269775, -0.025635,
		31.289877, 34.870781, 38.208427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690029, 35.505550, 38.001274>,  <30.616070, 34.681938, 38.226372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690029, 35.505550, 38.001274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052855, 35.350426, 37.935741>,  <31.270550, 35.257351, 37.896423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052855, 35.350426, 37.935741>,  <30.690029, 35.505550, 38.001274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052855, 35.350426, 37.935741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030815, 0.449263, -0.892868,
		0.419865, 0.804839, 0.419460,
		0.907063, -0.387810, -0.163829,
		31.324974, 35.234081, 37.886593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124613, 35.971455, 37.693932>,  <30.690029, 35.505550, 38.001274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124613, 35.971455, 37.693932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316847, 35.633636, 37.599453>,  <31.432188, 35.430946, 37.542767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316847, 35.633636, 37.599453>,  <31.124613, 35.971455, 37.693932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316847, 35.633636, 37.599453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058894, 0.299811, -0.952179,
		0.874968, 0.443692, 0.193824,
		0.480585, -0.844541, -0.236195,
		31.461021, 35.380276, 37.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497086, 36.195995, 37.213024>,  <31.124613, 35.971455, 37.693932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497086, 36.195995, 37.213024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519440, 35.799206, 37.167671>,  <31.532852, 35.561131, 37.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519440, 35.799206, 37.167671>,  <31.497086, 36.195995, 37.213024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519440, 35.799206, 37.167671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014671, 0.114364, -0.993330,
		0.998329, 0.053851, 0.020944,
		0.055887, -0.991978, -0.113383,
		31.536205, 35.501614, 37.133656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134048, 36.007065, 36.790379>,  <31.497086, 36.195995, 37.213024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134048, 36.007065, 36.790379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892931, 35.687927, 36.786568>,  <31.748260, 35.496445, 36.784283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892931, 35.687927, 36.786568>,  <32.134048, 36.007065, 36.790379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892931, 35.687927, 36.786568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107237, -0.069178, -0.991824,
		0.790661, -0.598883, 0.127258,
		-0.602789, -0.797843, -0.009526,
		31.712093, 35.448574, 36.783710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568241, 35.467293, 36.484100>,  <32.134048, 36.007065, 36.790379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568241, 35.467293, 36.484100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191429, 35.340439, 36.440281>,  <31.965342, 35.264328, 36.413990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191429, 35.340439, 36.440281>,  <32.568241, 35.467293, 36.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191429, 35.340439, 36.440281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180817, -0.204834, -0.961950,
		0.282626, -0.925997, 0.250303,
		-0.942034, -0.317131, -0.109544,
		31.908819, 35.245300, 36.407417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634422, 34.921486, 36.014999>,  <32.568241, 35.467293, 36.484100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634422, 34.921486, 36.014999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246914, 35.015781, 35.984234>,  <32.014408, 35.072357, 35.965775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246914, 35.015781, 35.984234>,  <32.634422, 34.921486, 36.014999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246914, 35.015781, 35.984234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068475, -0.043772, -0.996692,
		-0.238324, -0.970831, 0.026263,
		-0.968769, 0.235737, -0.076910,
		31.956284, 35.086502, 35.961163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033779, 34.781929, 35.473141>,  <32.634422, 34.921486, 36.014999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033779, 34.781929, 35.473141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380569, 34.906502, 35.628761>,  <33.588642, 34.981243, 35.722134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380569, 34.906502, 35.628761>,  <33.033779, 34.781929, 35.473141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380569, 34.906502, 35.628761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471065, -0.257352, -0.843722,
		-0.162636, 0.914758, -0.369822,
		0.866976, 0.311430, 0.389056,
		33.640663, 34.999931, 35.745480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707718, 34.456448, 35.623512>,  <33.033779, 34.781929, 35.473141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707718, 34.456448, 35.623512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072067, 34.297955, 35.577374>,  <34.290676, 34.202858, 35.549690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072067, 34.297955, 35.577374>,  <33.707718, 34.456448, 35.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072067, 34.297955, 35.577374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045829, -0.374900, 0.925932,
		-0.410130, -0.838122, -0.359646,
		0.910875, -0.396235, -0.115347,
		34.345329, 34.179085, 35.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640095, 33.735695, 35.818146>,  <33.707718, 34.456448, 35.623512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640095, 33.735695, 35.818146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024193, 33.837021, 35.865070>,  <34.254650, 33.897816, 35.893223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024193, 33.837021, 35.865070>,  <33.640095, 33.735695, 35.818146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024193, 33.837021, 35.865070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033284, -0.313330, 0.949061,
		0.277168, -0.915235, -0.292442,
		0.960245, 0.253315, 0.117308,
		34.312267, 33.913017, 35.900261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960876, 33.182487, 36.171680>,  <33.640095, 33.735695, 35.818146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960876, 33.182487, 36.171680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188271, 33.508060, 36.219582>,  <34.324707, 33.703403, 36.248322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188271, 33.508060, 36.219582>,  <33.960876, 33.182487, 36.171680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188271, 33.508060, 36.219582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156222, -0.249710, 0.955636,
		0.807727, -0.524554, -0.269110,
		0.568482, 0.813934, 0.119750,
		34.358814, 33.752239, 36.255508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543056, 33.000088, 36.400345>,  <33.960876, 33.182487, 36.171680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543056, 33.000088, 36.400345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548283, 33.387589, 36.499420>,  <34.551418, 33.620090, 36.558865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548283, 33.387589, 36.499420>,  <34.543056, 33.000088, 36.400345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548283, 33.387589, 36.499420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151959, -0.246755, 0.957090,
		0.988301, 0.025137, -0.150434,
		0.013062, 0.968752, 0.247688,
		34.552200, 33.678215, 36.573727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168465, 33.089371, 36.728100>,  <34.543056, 33.000088, 36.400345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168465, 33.089371, 36.728100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923862, 33.373081, 36.868378>,  <34.777103, 33.543308, 36.952545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923862, 33.373081, 36.868378>,  <35.168465, 33.089371, 36.728100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923862, 33.373081, 36.868378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172101, -0.313385, 0.933901,
		0.772300, 0.631438, 0.069569,
		-0.611502, 0.709279, 0.350698,
		34.740414, 33.585865, 36.973587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563454, 33.365986, 37.216053>,  <35.168465, 33.089371, 36.728100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563454, 33.365986, 37.216053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190941, 33.469574, 37.318542>,  <34.967434, 33.531727, 37.380035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190941, 33.469574, 37.318542>,  <35.563454, 33.365986, 37.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190941, 33.469574, 37.318542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176874, -0.293440, 0.939473,
		0.318485, 0.920231, 0.227469,
		-0.931280, 0.258975, 0.256221,
		34.911556, 33.547268, 37.395409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608604, 33.524799, 37.906548>,  <35.563454, 33.365986, 37.216053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608604, 33.524799, 37.906548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210793, 33.538258, 37.866993>,  <34.972107, 33.546333, 37.843262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210793, 33.538258, 37.866993>,  <35.608604, 33.524799, 37.906548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210793, 33.538258, 37.866993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103982, -0.408680, 0.906735,
		-0.009907, 0.912058, 0.409942,
		-0.994530, 0.033644, -0.098887,
		34.912434, 33.548351, 37.837326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370388, 33.992043, 38.421753>,  <35.608604, 33.524799, 37.906548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370388, 33.992043, 38.421753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081455, 33.734722, 38.320244>,  <34.908096, 33.580330, 38.259338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081455, 33.734722, 38.320244>,  <35.370388, 33.992043, 38.421753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081455, 33.734722, 38.320244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134183, -0.229614, 0.963988,
		-0.678401, 0.730374, 0.079538,
		-0.722335, -0.643297, -0.253774,
		34.864754, 33.541733, 38.244110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010780, 34.016014, 39.050804>,  <35.370388, 33.992043, 38.421753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010780, 34.016014, 39.050804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892033, 33.684353, 38.861332>,  <34.820786, 33.485355, 38.747650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892033, 33.684353, 38.861332>,  <35.010780, 34.016014, 39.050804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892033, 33.684353, 38.861332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216708, -0.424601, 0.879063,
		-0.930003, 0.363617, -0.053633,
		-0.296870, -0.829154, -0.473679,
		34.802971, 33.435608, 38.719227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371265, 33.883514, 39.303574>,  <35.010780, 34.016014, 39.050804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371265, 33.883514, 39.303574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507011, 33.537514, 39.155735>,  <34.588459, 33.329914, 39.067032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507011, 33.537514, 39.155735>,  <34.371265, 33.883514, 39.303574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507011, 33.537514, 39.155735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114841, -0.428078, 0.896415,
		-0.933619, -0.261765, -0.244612,
		0.339363, -0.865002, -0.369601,
		34.608822, 33.278011, 39.044853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922871, 33.245201, 39.490013>,  <34.371265, 33.883514, 39.303574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922871, 33.245201, 39.490013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265541, 33.065392, 39.388794>,  <34.471142, 32.957504, 39.328064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265541, 33.065392, 39.388794>,  <33.922871, 33.245201, 39.490013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265541, 33.065392, 39.388794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004674, -0.497280, 0.867577,
		-0.515840, -0.742046, -0.428107,
		0.856672, -0.449533, -0.253049,
		34.522545, 32.930534, 39.312881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758404, 32.544052, 39.519062>,  <33.922871, 33.245201, 39.490013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758404, 32.544052, 39.519062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153698, 32.595234, 39.552570>,  <34.390873, 32.625942, 39.572674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153698, 32.595234, 39.552570>,  <33.758404, 32.544052, 39.519062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153698, 32.595234, 39.552570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010124, -0.601259, 0.798990,
		0.152602, -0.788743, -0.595481,
		0.988236, 0.127956, 0.083769,
		34.450169, 32.633621, 39.577702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090843, 31.869659, 39.539913>,  <33.758404, 32.544052, 39.519062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090843, 31.869659, 39.539913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359764, 32.119789, 39.698399>,  <34.521114, 32.269867, 39.793491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359764, 32.119789, 39.698399>,  <34.090843, 31.869659, 39.539913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359764, 32.119789, 39.698399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133274, -0.628717, 0.766129,
		0.728185, -0.462262, -0.506024,
		0.672298, 0.625323, 0.396215,
		34.561455, 32.307384, 39.817265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558109, 31.422373, 39.827496>,  <34.090843, 31.869659, 39.539913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558109, 31.422373, 39.827496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624554, 31.766403, 40.020443>,  <34.664421, 31.972822, 40.136211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624554, 31.766403, 40.020443>,  <34.558109, 31.422373, 39.827496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624554, 31.766403, 40.020443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194138, -0.508112, 0.839126,
		0.966808, -0.045739, -0.251375,
		0.166108, 0.860076, 0.482367,
		34.674385, 32.024426, 40.165154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185307, 31.307594, 40.228500>,  <34.558109, 31.422373, 39.827496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185307, 31.307594, 40.228500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013470, 31.628857, 40.393616>,  <34.910366, 31.821613, 40.492683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013470, 31.628857, 40.393616>,  <35.185307, 31.307594, 40.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013470, 31.628857, 40.393616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220111, -0.350195, 0.910447,
		0.875787, 0.481979, -0.026343,
		-0.429591, 0.803156, 0.412785,
		34.884594, 31.869804, 40.517452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601189, 31.549824, 40.768982>,  <35.185307, 31.307594, 40.228500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601189, 31.549824, 40.768982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253830, 31.726131, 40.859844>,  <35.045414, 31.831917, 40.914364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253830, 31.726131, 40.859844>,  <35.601189, 31.549824, 40.768982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253830, 31.726131, 40.859844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178300, -0.149904, 0.972491,
		0.462696, 0.885014, 0.051587,
		-0.868401, 0.440770, 0.227158,
		34.993309, 31.858362, 40.927990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662323, 32.074203, 41.323669>,  <35.601189, 31.549824, 40.768982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662323, 32.074203, 41.323669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275764, 31.971468, 41.327770>,  <35.043827, 31.909826, 41.330231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275764, 31.971468, 41.327770>,  <35.662323, 32.074203, 41.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275764, 31.971468, 41.327770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090596, -0.303003, 0.948674,
		-0.240553, 0.917726, 0.316091,
		-0.966399, -0.256842, 0.010254,
		34.985844, 31.894415, 41.330845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422104, 32.416286, 41.908203>,  <35.662323, 32.074203, 41.323669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422104, 32.416286, 41.908203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154514, 32.129486, 41.829834>,  <34.993961, 31.957405, 41.782810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154514, 32.129486, 41.829834>,  <35.422104, 32.416286, 41.908203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154514, 32.129486, 41.829834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173015, -0.106143, 0.979183,
		-0.722873, 0.688942, -0.053045,
		-0.668970, -0.717003, -0.195925,
		34.953823, 31.914385, 41.771057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727001, 32.626781, 42.292973>,  <35.422104, 32.416286, 41.908203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727001, 32.626781, 42.292973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731609, 32.235470, 42.210182>,  <34.734375, 32.000683, 42.160507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731609, 32.235470, 42.210182>,  <34.727001, 32.626781, 42.292973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731609, 32.235470, 42.210182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155607, -0.206224, 0.966053,
		-0.987752, 0.021079, -0.154603,
		0.011519, -0.978278, -0.206978,
		34.735065, 31.941986, 42.148090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303947, 32.429588, 42.750961>,  <34.727001, 32.626781, 42.292973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303947, 32.429588, 42.750961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483986, 32.087395, 42.648533>,  <34.592007, 31.882080, 42.587078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483986, 32.087395, 42.648533>,  <34.303947, 32.429588, 42.750961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483986, 32.087395, 42.648533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126853, -0.345102, 0.929953,
		-0.883926, -0.386081, -0.263848,
		0.450092, -0.855480, -0.256069,
		34.619015, 31.830751, 42.571712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927029, 31.945797, 43.031719>,  <34.303947, 32.429588, 42.750961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927029, 31.945797, 43.031719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278591, 31.759329, 42.991306>,  <34.489529, 31.647448, 42.967060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278591, 31.759329, 42.991306>,  <33.927029, 31.945797, 43.031719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278591, 31.759329, 42.991306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122394, -0.425119, 0.896824,
		-0.461022, -0.775860, -0.430697,
		0.878908, -0.466170, -0.101029,
		34.542263, 31.619478, 42.960999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894001, 31.198547, 43.141102>,  <33.927029, 31.945797, 43.031719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894001, 31.198547, 43.141102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257778, 31.330427, 43.242458>,  <34.476044, 31.409555, 43.303272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257778, 31.330427, 43.242458>,  <33.894001, 31.198547, 43.141102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257778, 31.330427, 43.242458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180827, -0.235164, 0.954987,
		0.374448, -0.914328, -0.154249,
		0.909445, 0.329700, 0.253392,
		34.530613, 31.429337, 43.318478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040272, 30.721895, 43.614868>,  <33.894001, 31.198547, 43.141102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040272, 30.721895, 43.614868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269260, 31.040934, 43.690880>,  <34.406654, 31.232357, 43.736488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269260, 31.040934, 43.690880>,  <34.040272, 30.721895, 43.614868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269260, 31.040934, 43.690880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185923, -0.099454, 0.977518,
		0.798564, -0.594936, 0.091357,
		0.572475, 0.797597, 0.190033,
		34.441002, 31.280212, 43.747890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447372, 30.492828, 44.219791>,  <34.040272, 30.721895, 43.614868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447372, 30.492828, 44.219791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465801, 30.891323, 44.190418>,  <34.476860, 31.130419, 44.172794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465801, 30.891323, 44.190418>,  <34.447372, 30.492828, 44.219791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465801, 30.891323, 44.190418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164659, 0.080079, 0.983095,
		0.985274, -0.033204, 0.167729,
		0.046074, 0.996236, -0.073432,
		34.479622, 31.190193, 44.168388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954159, 30.632462, 44.727119>,  <34.447372, 30.492828, 44.219791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954159, 30.632462, 44.727119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728790, 30.950775, 44.638313>,  <34.593571, 31.141764, 44.585030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728790, 30.950775, 44.638313>,  <34.954159, 30.632462, 44.727119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728790, 30.950775, 44.638313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174577, 0.147980, 0.973460,
		0.807516, 0.587225, 0.055550,
		-0.563420, 0.795782, -0.222012,
		34.559765, 31.189510, 44.571709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122463, 31.140739, 45.150658>,  <34.954159, 30.632462, 44.727119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122463, 31.140739, 45.150658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747910, 31.237354, 45.048798>,  <34.523178, 31.295322, 44.987682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747910, 31.237354, 45.048798>,  <35.122463, 31.140739, 45.150658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747910, 31.237354, 45.048798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205407, 0.211198, 0.955617,
		0.284598, 0.947130, -0.148150,
		-0.936383, 0.241535, -0.254653,
		34.466995, 31.309814, 44.972401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083397, 31.694908, 45.619789>,  <35.122463, 31.140739, 45.150658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083397, 31.694908, 45.619789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712517, 31.599934, 45.503910>,  <34.489990, 31.542950, 45.434383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712517, 31.599934, 45.503910>,  <35.083397, 31.694908, 45.619789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712517, 31.599934, 45.503910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344555, 0.237295, 0.908280,
		-0.146913, 0.941975, -0.301829,
		-0.927199, -0.237435, -0.289700,
		34.434357, 31.528704, 45.417000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724197, 32.217869, 45.901836>,  <35.083397, 31.694908, 45.619789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724197, 32.217869, 45.901836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456009, 31.927299, 45.841465>,  <34.295097, 31.752958, 45.805244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456009, 31.927299, 45.841465>,  <34.724197, 32.217869, 45.901836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456009, 31.927299, 45.841465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295254, 0.074614, 0.952501,
		-0.680658, 0.683185, -0.264505,
		-0.670470, -0.726423, -0.150926,
		34.254868, 31.709372, 45.796188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137196, 32.573078, 46.171795>,  <34.724197, 32.217869, 45.901836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137196, 32.573078, 46.171795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089386, 32.176346, 46.153954>,  <34.060699, 31.938307, 46.143250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089386, 32.176346, 46.153954>,  <34.137196, 32.573078, 46.171795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089386, 32.176346, 46.153954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466488, 0.016449, 0.884374,
		-0.876415, 0.126509, -0.464642,
		-0.119524, -0.991829, -0.044599,
		34.053528, 31.878798, 46.140575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401947, 32.381443, 46.447083>,  <34.137196, 32.573078, 46.171795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401947, 32.381443, 46.447083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645157, 32.067268, 46.493397>,  <33.791080, 31.878765, 46.521187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645157, 32.067268, 46.493397>,  <33.401947, 32.381443, 46.447083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645157, 32.067268, 46.493397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311123, -0.101544, 0.944929,
		-0.730420, -0.610561, -0.306107,
		0.608020, -0.785432, 0.115790,
		33.827564, 31.831638, 46.528133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056023, 32.058311, 46.832218>,  <33.401947, 32.381443, 46.447083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056023, 32.058311, 46.832218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409374, 31.877096, 46.880211>,  <33.621384, 31.768368, 46.909008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409374, 31.877096, 46.880211>,  <33.056023, 32.058311, 46.832218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409374, 31.877096, 46.880211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169882, -0.070934, 0.982908,
		-0.436784, -0.888664, -0.139625,
		0.883380, -0.453038, 0.119985,
		33.674389, 31.741184, 46.916206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911835, 31.340693, 47.133297>,  <33.056023, 32.058311, 46.832218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911835, 31.340693, 47.133297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290306, 31.425222, 47.231358>,  <33.517387, 31.475941, 47.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290306, 31.425222, 47.231358>,  <32.911835, 31.340693, 47.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290306, 31.425222, 47.231358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185640, -0.266115, 0.945897,
		0.265127, -0.940492, -0.212561,
		0.946174, 0.211323, 0.245147,
		33.574158, 31.488619, 47.304901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999165, 30.766224, 47.466137>,  <32.911835, 31.340693, 47.133297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999165, 30.766224, 47.466137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261425, 31.053402, 47.559666>,  <33.418781, 31.225708, 47.615784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261425, 31.053402, 47.559666>,  <32.999165, 30.766224, 47.466137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261425, 31.053402, 47.559666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242925, -0.092640, 0.965611,
		0.714918, -0.689907, 0.113667,
		0.655652, 0.717946, 0.233826,
		33.458122, 31.268785, 47.629814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428341, 30.469591, 48.029896>,  <32.999165, 30.766224, 47.466137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428341, 30.469591, 48.029896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470428, 30.867237, 48.040215>,  <33.495682, 31.105825, 48.046406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470428, 30.867237, 48.040215>,  <33.428341, 30.469591, 48.029896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470428, 30.867237, 48.040215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089719, -0.016344, 0.995833,
		0.990394, -0.107092, 0.087471,
		0.105216, 0.994115, 0.025796,
		33.501991, 31.165472, 48.047955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857262, 30.559122, 48.533142>,  <33.428341, 30.469591, 48.029896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857262, 30.559122, 48.533142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702061, 30.926434, 48.501610>,  <33.608940, 31.146820, 48.482689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702061, 30.926434, 48.501610>,  <33.857262, 30.559122, 48.533142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702061, 30.926434, 48.501610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043566, 0.067166, 0.996790,
		0.920628, 0.390191, 0.013946,
		-0.388002, 0.918281, -0.078834,
		33.585659, 31.201918, 48.477959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224663, 30.877590, 49.042793>,  <33.857262, 30.559122, 48.533142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224663, 30.877590, 49.042793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911633, 31.123520, 49.003674>,  <33.723816, 31.271078, 48.980202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911633, 31.123520, 49.003674>,  <34.224663, 30.877590, 49.042793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911633, 31.123520, 49.003674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022967, 0.185501, 0.982376,
		0.622130, 0.766538, -0.159289,
		-0.782577, 0.614824, -0.097801,
		33.676861, 31.307966, 48.974335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479893, 31.599022, 49.188583>,  <34.224663, 30.877590, 49.042793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479893, 31.599022, 49.188583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084858, 31.557896, 49.236088>,  <33.847839, 31.533220, 49.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084858, 31.557896, 49.236088>,  <34.479893, 31.599022, 49.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084858, 31.557896, 49.236088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091840, 0.235452, 0.967537,
		-0.127441, 0.966432, -0.223086,
		-0.987585, -0.102816, 0.118764,
		33.788582, 31.527050, 49.271717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379303, 32.066868, 49.704185>,  <34.479893, 31.599022, 49.188583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379303, 32.066868, 49.704185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006424, 31.923237, 49.685986>,  <33.782696, 31.837057, 49.675068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006424, 31.923237, 49.685986>,  <34.379303, 32.066868, 49.704185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006424, 31.923237, 49.685986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153012, 0.277036, 0.948598,
		-0.328021, 0.891241, -0.313196,
		-0.932196, -0.359082, -0.045497,
		33.726765, 31.815512, 49.672337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495804, 32.506012, 50.231316>,  <34.379303, 32.066868, 49.704185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495804, 32.506012, 50.231316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746990, 32.761330, 50.409416>,  <34.897701, 32.914520, 50.516277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746990, 32.761330, 50.409416>,  <34.495804, 32.506012, 50.231316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746990, 32.761330, 50.409416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347535, 0.281910, -0.894286,
		-0.696333, 0.716319, -0.044798,
		0.627965, 0.638290, 0.445249,
		34.935379, 32.952816, 50.542992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453663, 33.247444, 49.938244>,  <34.495804, 32.506012, 50.231316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453663, 33.247444, 49.938244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820873, 33.198330, 50.089058>,  <35.041199, 33.168861, 50.179546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820873, 33.198330, 50.089058>,  <34.453663, 33.247444, 49.938244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820873, 33.198330, 50.089058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395965, 0.334372, -0.855223,
		-0.021059, 0.934408, 0.355581,
		0.918024, -0.122787, 0.377035,
		35.096279, 33.161495, 50.202168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670689, 33.829651, 49.797630>,  <34.453663, 33.247444, 49.938244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670689, 33.829651, 49.797630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990547, 33.593441, 49.841160>,  <35.182465, 33.451717, 49.867279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990547, 33.593441, 49.841160>,  <34.670689, 33.829651, 49.797630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990547, 33.593441, 49.841160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292151, 0.224279, -0.929703,
		0.524601, 0.775232, 0.351866,
		0.799651, -0.590521, 0.108828,
		35.230442, 33.416286, 49.873810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186234, 34.204559, 49.559116>,  <34.670689, 33.829651, 49.797630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186234, 34.204559, 49.559116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348694, 33.839394, 49.542965>,  <35.446171, 33.620293, 49.533276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348694, 33.839394, 49.542965>,  <35.186234, 34.204559, 49.559116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348694, 33.839394, 49.542965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425108, 0.227871, -0.875990,
		0.808906, 0.338615, 0.480637,
		0.406146, -0.912915, -0.040378,
		35.470539, 33.565517, 49.530853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837337, 34.275517, 49.437973>,  <35.186234, 34.204559, 49.559116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837337, 34.275517, 49.437973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767834, 33.907753, 49.296844>,  <35.726131, 33.687096, 49.212166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767834, 33.907753, 49.296844>,  <35.837337, 34.275517, 49.437973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767834, 33.907753, 49.296844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478959, 0.234145, -0.846034,
		0.860468, -0.315998, 0.399675,
		-0.173763, -0.919413, -0.352825,
		35.715706, 33.631927, 49.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463886, 34.116196, 49.087795>,  <35.837337, 34.275517, 49.437973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463886, 34.116196, 49.087795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192432, 33.852917, 48.957428>,  <36.029560, 33.694950, 48.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192432, 33.852917, 48.957428>,  <36.463886, 34.116196, 49.087795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192432, 33.852917, 48.957428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250022, 0.210219, -0.945144,
		0.690610, -0.722895, 0.021903,
		-0.678636, -0.658202, -0.325919,
		35.988842, 33.655457, 48.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735893, 33.873703, 48.394669>,  <36.463886, 34.116196, 49.087795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735893, 33.873703, 48.394669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362823, 33.730896, 48.374069>,  <36.138981, 33.645210, 48.361710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362823, 33.730896, 48.374069>,  <36.735893, 33.873703, 48.394669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362823, 33.730896, 48.374069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036064, 0.049762, -0.998110,
		0.358909, -0.932770, -0.033536,
		-0.932676, -0.357021, -0.051499,
		36.083019, 33.623791, 48.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687965, 33.214191, 47.952522>,  <36.735893, 33.873703, 48.394669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687965, 33.214191, 47.952522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346245, 33.422096, 47.954018>,  <36.141212, 33.546841, 47.954914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346245, 33.422096, 47.954018>,  <36.687965, 33.214191, 47.952522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346245, 33.422096, 47.954018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018732, 0.037969, -0.999104,
		-0.519441, -0.853465, -0.042173,
		-0.854301, 0.519766, 0.003735,
		36.089954, 33.578026, 47.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388584, 32.945328, 47.381912>,  <36.687965, 33.214191, 47.952522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388584, 32.945328, 47.381912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178806, 33.279594, 47.447186>,  <36.052940, 33.480152, 47.486351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178806, 33.279594, 47.447186>,  <36.388584, 32.945328, 47.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178806, 33.279594, 47.447186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141098, 0.103711, -0.984548,
		-0.839675, -0.539362, 0.063521,
		-0.524440, 0.835663, 0.163186,
		36.021473, 33.530293, 47.496143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863113, 32.915318, 46.777763>,  <36.388584, 32.945328, 47.381912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863113, 32.915318, 46.777763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855709, 33.288498, 46.921574>,  <35.851269, 33.512405, 47.007862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855709, 33.288498, 46.921574>,  <35.863113, 32.915318, 46.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855709, 33.288498, 46.921574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092976, 0.356425, -0.929686,
		-0.995496, -0.050635, 0.080145,
		-0.018509, 0.932951, 0.359527,
		35.850155, 33.568382, 47.029430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353760, 33.249702, 46.526737>,  <35.863113, 32.915318, 46.777763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353760, 33.249702, 46.526737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578495, 33.558983, 46.644375>,  <35.713337, 33.744553, 46.714958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578495, 33.558983, 46.644375>,  <35.353760, 33.249702, 46.526737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578495, 33.558983, 46.644375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171748, 0.456791, -0.872837,
		-0.809222, 0.439883, 0.389438,
		0.561838, 0.773205, 0.294096,
		35.747047, 33.790943, 46.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021141, 33.761566, 46.258633>,  <35.353760, 33.249702, 46.526737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021141, 33.761566, 46.258633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395164, 33.889099, 46.320606>,  <35.619579, 33.965618, 46.357792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395164, 33.889099, 46.320606>,  <35.021141, 33.761566, 46.258633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395164, 33.889099, 46.320606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002341, 0.431505, -0.902108,
		-0.354475, 0.843890, 0.402738,
		0.935063, 0.318832, 0.154933,
		35.675682, 33.984749, 46.367085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085926, 34.520145, 46.240570>,  <35.021141, 33.761566, 46.258633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085926, 34.520145, 46.240570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395481, 34.295345, 46.123775>,  <35.581215, 34.160465, 46.053699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395481, 34.295345, 46.123775>,  <35.085926, 34.520145, 46.240570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395481, 34.295345, 46.123775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059712, 0.394231, -0.917069,
		0.630499, 0.727146, 0.271533,
		0.773890, -0.561997, -0.291982,
		35.627647, 34.126747, 46.036182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469479, 34.921833, 45.791222>,  <35.085926, 34.520145, 46.240570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469479, 34.921833, 45.791222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628574, 34.569145, 45.689732>,  <35.724030, 34.357533, 45.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628574, 34.569145, 45.689732>,  <35.469479, 34.921833, 45.791222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628574, 34.569145, 45.689732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042955, 0.258341, -0.965098,
		0.916494, 0.394754, 0.064878,
		0.397737, -0.881720, -0.253724,
		35.747894, 34.304630, 45.613613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733387, 35.085251, 45.119141>,  <35.469479, 34.921833, 45.791222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733387, 35.085251, 45.119141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764477, 34.686646, 45.131248>,  <35.783131, 34.447483, 45.138512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764477, 34.686646, 45.131248>,  <35.733387, 35.085251, 45.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764477, 34.686646, 45.131248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041277, -0.027117, -0.998780,
		0.996120, 0.078875, 0.039025,
		0.077721, -0.996516, 0.030267,
		35.787792, 34.387691, 45.140327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434219, 34.889595, 44.727993>,  <35.733387, 35.085251, 45.119141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434219, 34.889595, 44.727993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194050, 34.569923, 44.739281>,  <36.049946, 34.378120, 44.746052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194050, 34.569923, 44.739281>,  <36.434219, 34.889595, 44.727993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194050, 34.569923, 44.739281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140619, -0.140254, -0.980079,
		0.787218, -0.584499, 0.196593,
		-0.600428, -0.799181, 0.028218,
		36.013920, 34.330170, 44.747746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844280, 34.380096, 44.346138>,  <36.434219, 34.889595, 44.727993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844280, 34.380096, 44.346138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475025, 34.226322, 44.347809>,  <36.253471, 34.134056, 44.348812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475025, 34.226322, 44.347809>,  <36.844280, 34.380096, 44.346138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475025, 34.226322, 44.347809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082550, -0.208807, -0.974467,
		0.375494, -0.899226, 0.224494,
		-0.923141, -0.384438, 0.004174,
		36.198082, 34.110992, 44.349060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933998, 33.811470, 44.000065>,  <36.844280, 34.380096, 44.346138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933998, 33.811470, 44.000065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540264, 33.871899, 43.963718>,  <36.304024, 33.908157, 43.941910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540264, 33.871899, 43.963718>,  <36.933998, 33.811470, 44.000065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540264, 33.871899, 43.963718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088650, -0.021364, -0.995834,
		-0.152383, -0.988292, 0.007637,
		-0.984337, 0.151071, -0.090868,
		36.244965, 33.917221, 43.936459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659576, 33.251228, 43.721779>,  <36.933998, 33.811470, 44.000065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659576, 33.251228, 43.721779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400311, 33.548862, 43.657009>,  <36.244751, 33.727444, 43.618149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400311, 33.548862, 43.657009>,  <36.659576, 33.251228, 43.721779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400311, 33.548862, 43.657009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034624, -0.241214, -0.969854,
		-0.760710, -0.623022, 0.182110,
		-0.648168, 0.744083, -0.161922,
		36.205860, 33.772087, 43.608433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018673, 32.944817, 43.245453>,  <36.659576, 33.251228, 43.721779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018673, 32.944817, 43.245453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080379, 33.339287, 43.221233>,  <36.117405, 33.575970, 43.206699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080379, 33.339287, 43.221233>,  <36.018673, 32.944817, 43.245453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080379, 33.339287, 43.221233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087703, -0.074710, -0.993341,
		-0.984129, 0.147927, -0.098015,
		0.154265, 0.986172, -0.060551,
		36.126659, 33.635139, 43.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587845, 33.113094, 42.728703>,  <36.018673, 32.944817, 43.245453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587845, 33.113094, 42.728703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828392, 33.430687, 42.764359>,  <35.972721, 33.621243, 42.785751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828392, 33.430687, 42.764359>,  <35.587845, 33.113094, 42.728703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828392, 33.430687, 42.764359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088215, 0.044901, -0.995089,
		-0.794086, 0.606280, -0.043039,
		0.601370, 0.793983, 0.089139,
		36.008804, 33.668880, 42.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352024, 33.486126, 42.113251>,  <35.587845, 33.113094, 42.728703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352024, 33.486126, 42.113251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709789, 33.626396, 42.224277>,  <35.924450, 33.710560, 42.290894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709789, 33.626396, 42.224277>,  <35.352024, 33.486126, 42.113251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709789, 33.626396, 42.224277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243845, 0.137883, -0.959962,
		-0.374911, 0.926289, 0.037814,
		0.894417, 0.350680, 0.277565,
		35.978115, 33.731602, 42.307549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487106, 34.173733, 41.802177>,  <35.352024, 33.486126, 42.113251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487106, 34.173733, 41.802177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855888, 34.051174, 41.896935>,  <36.077160, 33.977638, 41.953789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855888, 34.051174, 41.896935>,  <35.487106, 34.173733, 41.802177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855888, 34.051174, 41.896935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277523, 0.095997, -0.955911,
		0.270142, 0.947053, 0.173535,
		0.921957, -0.306392, 0.236896,
		36.132477, 33.959255, 41.968002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775742, 34.477684, 41.201458>,  <35.487106, 34.173733, 41.802177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775742, 34.477684, 41.201458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070232, 34.279438, 41.385777>,  <36.246925, 34.160488, 41.496368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070232, 34.279438, 41.385777>,  <35.775742, 34.477684, 41.201458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070232, 34.279438, 41.385777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539853, 0.019532, -0.841533,
		0.408080, 0.868320, 0.281941,
		0.736227, -0.495619, 0.460795,
		36.291100, 34.130753, 41.524014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410305, 34.865784, 41.167362>,  <35.775742, 34.477684, 41.201458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410305, 34.865784, 41.167362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506699, 34.479786, 41.208775>,  <36.564537, 34.248188, 41.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506699, 34.479786, 41.208775>,  <36.410305, 34.865784, 41.167362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506699, 34.479786, 41.208775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618584, 0.070525, -0.782547,
		0.747849, 0.252626, 0.613923,
		0.240988, -0.964991, 0.103528,
		36.578995, 34.190289, 41.239834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174164, 34.773102, 41.029259>,  <36.410305, 34.865784, 41.167362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174164, 34.773102, 41.029259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026760, 34.405880, 40.970764>,  <36.938320, 34.185547, 40.935669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026760, 34.405880, 40.970764>,  <37.174164, 34.773102, 41.029259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026760, 34.405880, 40.970764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600545, -0.115018, -0.791275,
		0.709612, -0.379412, 0.593715,
		-0.368507, -0.918051, -0.146236,
		36.916206, 34.130466, 40.926895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691925, 34.338852, 40.951321>,  <37.174164, 34.773102, 41.029259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691925, 34.338852, 40.951321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395332, 34.137146, 40.774265>,  <37.217377, 34.016121, 40.668034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395332, 34.137146, 40.774265>,  <37.691925, 34.338852, 40.951321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395332, 34.137146, 40.774265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528994, -0.033509, -0.847964,
		0.412767, -0.862898, 0.291599,
		-0.741477, -0.504266, -0.442637,
		37.172890, 33.985867, 40.641476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046253, 33.941444, 40.493092>,  <37.691925, 34.338852, 40.951321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046253, 33.941444, 40.493092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663914, 33.942223, 40.375549>,  <37.434509, 33.942688, 40.305023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663914, 33.942223, 40.375549>,  <38.046253, 33.941444, 40.493092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663914, 33.942223, 40.375549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291533, 0.131916, -0.947421,
		0.036922, -0.991259, -0.126658,
		-0.955848, 0.001944, -0.293855,
		37.377159, 33.942806, 40.287392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029396, 33.394089, 40.095264>,  <38.046253, 33.941444, 40.493092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029396, 33.394089, 40.095264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721664, 33.629608, 39.996101>,  <37.537025, 33.770920, 39.936604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721664, 33.629608, 39.996101>,  <38.029396, 33.394089, 40.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721664, 33.629608, 39.996101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253803, -0.074427, -0.964388,
		-0.586279, -0.804847, -0.092179,
		-0.769325, 0.588796, -0.247908,
		37.490868, 33.806248, 39.921730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761490, 33.040714, 39.565048>,  <38.029396, 33.394089, 40.095264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761490, 33.040714, 39.565048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630795, 33.416599, 39.524677>,  <37.552376, 33.642128, 39.500454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630795, 33.416599, 39.524677>,  <37.761490, 33.040714, 39.565048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630795, 33.416599, 39.524677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170832, -0.046313, -0.984211,
		-0.929548, -0.338821, -0.145400,
		-0.326737, 0.939710, -0.100931,
		37.532772, 33.698513, 39.494396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374031, 33.075649, 38.963364>,  <37.761490, 33.040714, 39.565048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374031, 33.075649, 38.963364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446308, 33.463398, 39.029892>,  <37.489674, 33.696049, 39.069809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446308, 33.463398, 39.029892>,  <37.374031, 33.075649, 38.963364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446308, 33.463398, 39.029892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260076, 0.115995, -0.958596,
		-0.948531, 0.216465, -0.231152,
		0.180690, 0.969375, 0.166323,
		37.500515, 33.754211, 39.079788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061436, 33.490784, 38.424625>,  <37.374031, 33.075649, 38.963364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061436, 33.490784, 38.424625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345882, 33.722244, 38.584370>,  <37.516548, 33.861118, 38.680214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345882, 33.722244, 38.584370>,  <37.061436, 33.490784, 38.424625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345882, 33.722244, 38.584370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324484, 0.233792, -0.916543,
		-0.623722, 0.781350, -0.021509,
		0.711112, 0.578648, 0.399357,
		37.559216, 33.895840, 38.704178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074234, 34.076763, 37.961987>,  <37.061436, 33.490784, 38.424625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074234, 34.076763, 37.961987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408161, 34.050652, 38.180645>,  <37.608517, 34.034985, 38.311840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408161, 34.050652, 38.180645>,  <37.074234, 34.076763, 37.961987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408161, 34.050652, 38.180645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544824, 0.240504, -0.803321,
		-0.079026, 0.968450, 0.236345,
		0.834818, -0.065283, 0.546642,
		37.658607, 34.031067, 38.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476074, 34.650093, 37.842255>,  <37.074234, 34.076763, 37.961987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476074, 34.650093, 37.842255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754025, 34.389721, 37.964527>,  <37.920792, 34.233498, 38.037891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754025, 34.389721, 37.964527>,  <37.476074, 34.650093, 37.842255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754025, 34.389721, 37.964527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591249, 0.275154, -0.758099,
		0.409364, 0.707514, 0.576061,
		0.694871, -0.650934, 0.305679,
		37.962486, 34.194439, 38.056232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083206, 34.961933, 37.634125>,  <37.476074, 34.650093, 37.842255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083206, 34.961933, 37.634125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238113, 34.596096, 37.680687>,  <38.331059, 34.376595, 37.708626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238113, 34.596096, 37.680687>,  <38.083206, 34.961933, 37.634125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238113, 34.596096, 37.680687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537307, 0.121281, -0.834621,
		0.749218, 0.385765, 0.538384,
		0.387264, -0.914591, 0.116409,
		38.354294, 34.321720, 37.715611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868328, 35.000671, 37.619183>,  <38.083206, 34.961933, 37.634125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868328, 35.000671, 37.619183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835079, 34.610954, 37.535419>,  <38.815128, 34.377125, 37.485161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835079, 34.610954, 37.535419>,  <38.868328, 35.000671, 37.619183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835079, 34.610954, 37.535419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712949, 0.088674, -0.695587,
		0.696271, -0.207116, 0.687247,
		-0.083126, -0.974289, -0.209404,
		38.810143, 34.318668, 37.472599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590656, 34.707539, 37.638897>,  <38.868328, 35.000671, 37.619183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590656, 34.707539, 37.638897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352097, 34.464752, 37.428791>,  <39.208961, 34.319080, 37.302727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352097, 34.464752, 37.428791>,  <39.590656, 34.707539, 37.638897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352097, 34.464752, 37.428791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735363, -0.150809, -0.660680,
		0.321794, -0.780289, 0.536281,
		-0.596398, -0.606964, -0.525266,
		39.173176, 34.282661, 37.271210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902863, 33.945061, 37.608681>,  <39.590656, 34.707539, 37.638897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902863, 33.945061, 37.608681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664871, 34.071537, 37.313107>,  <39.522076, 34.147423, 37.135761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664871, 34.071537, 37.313107>,  <39.902863, 33.945061, 37.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664871, 34.071537, 37.313107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762764, -0.067683, -0.643126,
		-0.253365, -0.946277, -0.200911,
		-0.594977, 0.316193, -0.738935,
		39.486378, 34.166393, 37.091427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273445, 33.719856, 37.072647>,  <39.902863, 33.945061, 37.608681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273445, 33.719856, 37.072647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989922, 33.932690, 36.887398>,  <39.819809, 34.060390, 36.776249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989922, 33.932690, 36.887398>,  <40.273445, 33.719856, 37.072647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989922, 33.932690, 36.887398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568130, 0.041455, -0.821894,
		-0.418119, -0.845676, -0.331677,
		-0.708806, 0.532085, -0.463120,
		39.777279, 34.092316, 36.748463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945198, 34.077641, 37.040817>,  <40.273445, 33.719856, 37.072647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945198, 34.077641, 37.040817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301434, 34.253391, 37.087822>,  <41.515175, 34.358841, 37.116024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301434, 34.253391, 37.087822>,  <40.945198, 34.077641, 37.040817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301434, 34.253391, 37.087822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063097, 0.375227, -0.924783,
		-0.450419, 0.816183, 0.361894,
		0.890585, 0.439374, 0.117511,
		41.568607, 34.385204, 37.123074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827946, 34.761112, 36.837444>,  <40.945198, 34.077641, 37.040817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827946, 34.761112, 36.837444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216148, 34.682541, 36.781532>,  <41.449070, 34.635399, 36.747986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216148, 34.682541, 36.781532>,  <40.827946, 34.761112, 36.837444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216148, 34.682541, 36.781532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063650, 0.350467, -0.934410,
		0.232533, 0.915745, 0.327627,
		0.970504, -0.196427, -0.139782,
		41.507301, 34.623611, 36.739597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065475, 35.292088, 36.502243>,  <40.827946, 34.761112, 36.837444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065475, 35.292088, 36.502243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315769, 35.004581, 36.381023>,  <41.465946, 34.832077, 36.308292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315769, 35.004581, 36.381023>,  <41.065475, 35.292088, 36.502243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315769, 35.004581, 36.381023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055586, 0.346425, -0.936429,
		0.778054, 0.602799, 0.176817,
		0.625733, -0.718765, -0.303044,
		41.503490, 34.788952, 36.290112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335335, 35.552231, 35.864914>,  <41.065475, 35.292088, 36.502243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335335, 35.552231, 35.864914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437481, 35.167210, 35.901302>,  <41.498768, 34.936195, 35.923138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437481, 35.167210, 35.901302>,  <41.335335, 35.552231, 35.864914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437481, 35.167210, 35.901302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147098, -0.054320, -0.987629,
		0.955590, 0.265585, 0.127719,
		0.255362, -0.962556, 0.090975,
		41.514088, 34.878445, 35.928596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010380, 35.455273, 35.510296>,  <41.335335, 35.552231, 35.864914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010380, 35.455273, 35.510296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760983, 35.144405, 35.544415>,  <41.611343, 34.957886, 35.564888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760983, 35.144405, 35.544415>,  <42.010380, 35.455273, 35.510296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760983, 35.144405, 35.544415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070634, -0.052663, -0.996111,
		0.778635, -0.627090, -0.022060,
		-0.623490, -0.777165, 0.085299,
		41.573936, 34.911255, 35.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666382, 35.921726, 35.441650>,  <42.010380, 35.455273, 35.510296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666382, 35.921726, 35.441650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780674, 35.600334, 35.650562>,  <42.849247, 35.407497, 35.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780674, 35.600334, 35.650562>,  <42.666382, 35.921726, 35.441650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780674, 35.600334, 35.650562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708803, -0.189599, -0.679449,
		0.644949, 0.564329, 0.515337,
		0.285726, -0.803483, 0.522280,
		42.866390, 35.359291, 35.807247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347504, 36.002079, 35.772858>,  <42.666382, 35.921726, 35.441650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347504, 36.002079, 35.772858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257229, 35.630798, 35.654530>,  <43.203064, 35.408031, 35.583534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257229, 35.630798, 35.654530>,  <43.347504, 36.002079, 35.772858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257229, 35.630798, 35.654530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877344, -0.061659, -0.475885,
		0.423476, -0.366939, 0.828266,
		-0.225691, -0.928199, -0.295821,
		43.189522, 35.352337, 35.565784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984749, 35.664978, 35.916748>,  <43.347504, 36.002079, 35.772858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984749, 35.664978, 35.916748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751358, 35.489964, 35.643074>,  <43.611324, 35.384953, 35.478870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751358, 35.489964, 35.643074>,  <43.984749, 35.664978, 35.916748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751358, 35.489964, 35.643074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804336, -0.194920, -0.561293,
		0.112226, -0.877818, 0.465661,
		-0.583480, -0.437540, -0.684186,
		43.576313, 35.358700, 35.437817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625164, 35.366074, 35.727551>,  <43.984749, 35.664978, 35.916748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625164, 35.366074, 35.727551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701298, 35.049603, 35.495064>,  <44.746979, 34.859718, 35.355572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701298, 35.049603, 35.495064>,  <44.625164, 35.366074, 35.727551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701298, 35.049603, 35.495064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470658, 0.446024, -0.761277,
		0.861542, 0.418450, -0.287481,
		0.190333, -0.791178, -0.581216,
		44.758396, 34.812248, 35.320698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981670, 35.630989, 35.140808>,  <44.625164, 35.366074, 35.727551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981670, 35.630989, 35.140808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841408, 35.278168, 35.014935>,  <44.757248, 35.066475, 34.939411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841408, 35.278168, 35.014935>,  <44.981670, 35.630989, 35.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841408, 35.278168, 35.014935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470598, 0.456476, -0.755094,
		0.809677, -0.116690, -0.575158,
		-0.350658, -0.882051, -0.314683,
		44.736210, 35.013554, 34.920528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125084, 35.640472, 34.373779>,  <44.981670, 35.630989, 35.140808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125084, 35.640472, 34.373779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843040, 35.367889, 34.452198>,  <44.673813, 35.204342, 34.499249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843040, 35.367889, 34.452198>,  <45.125084, 35.640472, 34.373779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843040, 35.367889, 34.452198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519803, 0.308682, -0.796568,
		0.482309, -0.663576, -0.571878,
		-0.705112, -0.681456, 0.196049,
		44.631508, 35.163452, 34.511013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990284, 35.272171, 33.771133>,  <45.125084, 35.640472, 34.373779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990284, 35.272171, 33.771133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653740, 35.183426, 33.968269>,  <44.451813, 35.130177, 34.086552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653740, 35.183426, 33.968269>,  <44.990284, 35.272171, 33.771133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653740, 35.183426, 33.968269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522849, 0.103099, -0.846168,
		0.136929, -0.969610, -0.202748,
		-0.841356, -0.221871, 0.492842,
		44.401333, 35.116867, 34.116123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476448, 34.833942, 33.338589>,  <44.990284, 35.272171, 33.771133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476448, 34.833942, 33.338589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217167, 35.000675, 33.593487>,  <44.061600, 35.100716, 33.746426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217167, 35.000675, 33.593487>,  <44.476448, 34.833942, 33.338589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217167, 35.000675, 33.593487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652321, 0.127753, -0.747099,
		-0.392825, -0.899961, 0.189098,
		-0.648202, 0.416832, 0.637249,
		44.022705, 35.125725, 33.784660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846306, 34.525032, 33.144054>,  <44.476448, 34.833942, 33.338589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846306, 34.525032, 33.144054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758015, 34.864464, 33.336384>,  <43.705040, 35.068123, 33.451782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758015, 34.864464, 33.336384>,  <43.846306, 34.525032, 33.144054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758015, 34.864464, 33.336384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703885, 0.202659, -0.680791,
		-0.675147, -0.488717, 0.552568,
		-0.220732, 0.848578, 0.480825,
		43.691795, 35.119038, 33.480633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115025, 34.578106, 33.148514>,  <43.846306, 34.525032, 33.144054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115025, 34.578106, 33.148514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239746, 34.955441, 33.193928>,  <43.314579, 35.181843, 33.221176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239746, 34.955441, 33.193928>,  <43.115025, 34.578106, 33.148514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239746, 34.955441, 33.193928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784331, 0.322994, -0.529622,
		-0.536284, 0.076088, 0.840601,
		0.311807, 0.943338, 0.113539,
		43.333286, 35.238441, 33.227989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544945, 34.988060, 33.206314>,  <43.115025, 34.578106, 33.148514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544945, 34.988060, 33.206314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815331, 35.271687, 33.126015>,  <42.977562, 35.441860, 33.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815331, 35.271687, 33.126015>,  <42.544945, 34.988060, 33.206314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815331, 35.271687, 33.126015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606483, 0.380523, -0.698127,
		-0.418627, 0.593660, 0.687255,
		0.675966, 0.709063, -0.200747,
		43.018120, 35.484406, 33.065792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215317, 35.665497, 33.323544>,  <42.544945, 34.988060, 33.206314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215317, 35.665497, 33.323544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526402, 35.761715, 33.091232>,  <42.713051, 35.819447, 32.951847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526402, 35.761715, 33.091232>,  <42.215317, 35.665497, 33.323544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526402, 35.761715, 33.091232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626955, 0.364030, -0.688774,
		0.045742, 0.899790, 0.433919,
		0.777711, 0.240541, -0.580779,
		42.759716, 35.833878, 32.917000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020687, 36.292114, 33.134872>,  <42.215317, 35.665497, 33.323544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020687, 36.292114, 33.134872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286804, 36.165619, 32.864353>,  <42.446476, 36.089722, 32.702042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286804, 36.165619, 32.864353>,  <42.020687, 36.292114, 33.134872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286804, 36.165619, 32.864353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584596, 0.342765, -0.735364,
		0.464359, 0.884595, 0.043170,
		0.665296, -0.316235, -0.676296,
		42.486393, 36.070747, 32.661465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103001, 36.871853, 32.678349>,  <42.020687, 36.292114, 33.134872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103001, 36.871853, 32.678349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232819, 36.553593, 32.473755>,  <42.310711, 36.362637, 32.350998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232819, 36.553593, 32.473755>,  <42.103001, 36.871853, 32.678349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232819, 36.553593, 32.473755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580981, 0.259041, -0.771595,
		0.746412, 0.547581, -0.378185,
		0.324545, -0.795647, -0.511485,
		42.330181, 36.314899, 32.320309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340172, 37.104820, 31.992641>,  <42.103001, 36.871853, 32.678349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340172, 37.104820, 31.992641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236034, 36.719269, 31.970139>,  <42.173553, 36.487938, 31.956636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236034, 36.719269, 31.970139>,  <42.340172, 37.104820, 31.992641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236034, 36.719269, 31.970139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499421, 0.184303, -0.846529,
		0.826317, -0.192293, -0.529362,
		-0.260344, -0.963876, -0.056258,
		42.157932, 36.430107, 31.953260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311150, 36.957237, 31.267838>,  <42.340172, 37.104820, 31.992641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311150, 36.957237, 31.267838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128929, 36.642792, 31.434929>,  <42.019596, 36.454124, 31.535183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128929, 36.642792, 31.434929>,  <42.311150, 36.957237, 31.267838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128929, 36.642792, 31.434929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486996, -0.172734, -0.856153,
		0.745190, -0.593453, -0.304146,
		-0.455550, -0.786115, 0.417729,
		41.992264, 36.406956, 31.560247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218616, 36.627502, 30.652334>,  <42.311150, 36.957237, 31.267838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218616, 36.627502, 30.652334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992634, 36.421665, 30.910332>,  <41.857044, 36.298164, 31.065130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992634, 36.421665, 30.910332>,  <42.218616, 36.627502, 30.652334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992634, 36.421665, 30.910332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683330, -0.146344, -0.715292,
		0.462475, -0.844854, -0.268958,
		-0.564958, -0.514592, 0.644995,
		41.823147, 36.267288, 31.103830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101799, 35.953121, 30.473190>,  <42.218616, 36.627502, 30.652334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101799, 35.953121, 30.473190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784931, 36.025604, 30.706301>,  <41.594810, 36.069096, 30.846167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784931, 36.025604, 30.706301>,  <42.101799, 35.953121, 30.473190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784931, 36.025604, 30.706301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608285, -0.311955, -0.729845,
		0.049547, -0.932656, 0.357347,
		-0.792171, 0.181207, 0.582777,
		41.547279, 36.079967, 30.881134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611874, 35.486454, 30.277155>,  <42.101799, 35.953121, 30.473190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611874, 35.486454, 30.277155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379234, 35.761562, 30.450922>,  <41.239651, 35.926628, 30.555182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379234, 35.761562, 30.450922>,  <41.611874, 35.486454, 30.277155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379234, 35.761562, 30.450922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506422, 0.111801, -0.855007,
		-0.636613, -0.717271, 0.283277,
		-0.581601, 0.687766, 0.434416,
		41.204754, 35.967892, 30.581247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932964, 35.293812, 30.240105>,  <41.611874, 35.486454, 30.277155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932964, 35.293812, 30.240105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892372, 35.686852, 30.302341>,  <40.868015, 35.922676, 30.339684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892372, 35.686852, 30.302341>,  <40.932964, 35.293812, 30.240105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892372, 35.686852, 30.302341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605362, 0.063121, -0.793444,
		-0.789455, -0.174710, 0.588420,
		-0.101480, 0.982595, 0.155594,
		40.861927, 35.981628, 30.349020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205299, 35.369602, 30.151289>,  <40.932964, 35.293812, 30.240105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205299, 35.369602, 30.151289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372677, 35.727619, 30.089573>,  <40.473103, 35.942429, 30.052544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372677, 35.727619, 30.089573>,  <40.205299, 35.369602, 30.151289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372677, 35.727619, 30.089573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558976, 0.119888, -0.820471,
		-0.715860, 0.429563, 0.550474,
		0.418439, 0.895043, -0.154292,
		40.498207, 35.996132, 30.043285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674786, 35.725174, 29.865891>,  <40.205299, 35.369602, 30.151289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674786, 35.725174, 29.865891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998329, 35.930447, 29.751068>,  <40.192455, 36.053608, 29.682175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998329, 35.930447, 29.751068>,  <39.674786, 35.725174, 29.865891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998329, 35.930447, 29.751068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353684, 0.034605, -0.934725,
		-0.469746, 0.857585, 0.209493,
		0.808855, 0.513177, -0.287058,
		40.240986, 36.084400, 29.664951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341606, 36.367493, 29.604996>,  <39.674786, 35.725174, 29.865891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341606, 36.367493, 29.604996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716331, 36.322739, 29.472418>,  <39.941166, 36.295887, 29.392872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716331, 36.322739, 29.472418>,  <39.341606, 36.367493, 29.604996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716331, 36.322739, 29.472418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299308, 0.234065, -0.925002,
		0.181074, 0.965761, 0.185788,
		0.936817, -0.111886, -0.331443,
		39.997375, 36.289173, 29.372984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465435, 37.007179, 29.246906>,  <39.341606, 36.367493, 29.604996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465435, 37.007179, 29.246906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724743, 36.732384, 29.115576>,  <39.880325, 36.567509, 29.036777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724743, 36.732384, 29.115576>,  <39.465435, 37.007179, 29.246906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724743, 36.732384, 29.115576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182388, 0.278546, -0.942946,
		0.739246, 0.671164, 0.055275,
		0.648268, -0.686987, -0.328326,
		39.919224, 36.526287, 29.017078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866539, 37.374241, 28.753345>,  <39.465435, 37.007179, 29.246906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866539, 37.374241, 28.753345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846321, 36.982960, 28.672789>,  <39.834190, 36.748192, 28.624454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846321, 36.982960, 28.672789>,  <39.866539, 37.374241, 28.753345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846321, 36.982960, 28.672789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142960, 0.206659, -0.967912,
		0.988437, -0.020130, -0.150290,
		-0.050543, -0.978206, -0.201392,
		39.831158, 36.689499, 28.612371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152164, 37.331795, 28.154186>,  <39.866539, 37.374241, 28.753345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152164, 37.331795, 28.154186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916222, 37.013020, 28.206276>,  <39.774654, 36.821754, 28.237530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916222, 37.013020, 28.206276>,  <40.152164, 37.331795, 28.154186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916222, 37.013020, 28.206276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286222, 0.055539, -0.956552,
		0.755080, -0.601502, -0.260861,
		-0.589857, -0.796938, 0.130226,
		39.739265, 36.773937, 28.245344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256752, 36.905144, 27.491863>,  <40.152164, 37.331795, 28.154186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256752, 36.905144, 27.491863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911800, 36.871029, 27.691471>,  <39.704830, 36.850559, 27.811235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911800, 36.871029, 27.691471>,  <40.256752, 36.905144, 27.491863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911800, 36.871029, 27.691471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503872, 0.049066, -0.862383,
		0.049066, -0.995148, -0.085288,
		0.862383, 0.085288, -0.499020,
		39.653084, 36.845444, 27.841177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443584, 37.638794, 27.335110>,  <40.256752, 36.905144, 27.491863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443584, 37.638794, 27.335110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618298, 37.286453, 27.408119>,  <40.723125, 37.075047, 27.451925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618298, 37.286453, 27.408119>,  <40.443584, 37.638794, 27.335110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618298, 37.286453, 27.408119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879438, 0.460811, 0.119341,
		-0.189231, 0.108393, 0.975932,
		0.436785, -0.880854, 0.182524,
		40.749332, 37.022198, 27.462877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843628, 37.641727, 27.985693>,  <40.443584, 37.638794, 27.335110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843628, 37.641727, 27.985693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986832, 37.378517, 27.720716>,  <41.072754, 37.220589, 27.561731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986832, 37.378517, 27.720716>,  <40.843628, 37.641727, 27.985693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986832, 37.378517, 27.720716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933363, 0.271755, 0.234482,
		0.025726, -0.702245, 0.711470,
		0.358010, -0.658028, -0.662441,
		41.094234, 37.181110, 27.521984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310703, 37.309467, 28.368811>,  <40.843628, 37.641727, 27.985693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310703, 37.309467, 28.368811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407166, 37.238888, 27.987085>,  <41.465042, 37.196541, 27.758051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407166, 37.238888, 27.987085>,  <41.310703, 37.309467, 28.368811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407166, 37.238888, 27.987085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964572, -0.064820, 0.255731,
		-0.106981, -0.982174, 0.154562,
		0.241153, -0.176445, -0.954313,
		41.479511, 37.185955, 27.700792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830799, 37.921055, 28.115004>,  <41.310703, 37.309467, 28.368811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830799, 37.921055, 28.115004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183846, 37.747852, 28.188213>,  <42.395672, 37.643932, 28.232140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183846, 37.747852, 28.188213>,  <41.830799, 37.921055, 28.115004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183846, 37.747852, 28.188213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058052, -0.285962, -0.956481,
		0.466502, 0.854828, -0.227257,
		0.882613, -0.433007, 0.183026,
		42.448631, 37.617950, 28.243120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290054, 37.981304, 27.512774>,  <41.830799, 37.921055, 28.115004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290054, 37.981304, 27.512774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451553, 37.669201, 27.703846>,  <42.548454, 37.481937, 27.818489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451553, 37.669201, 27.703846>,  <42.290054, 37.981304, 27.512774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451553, 37.669201, 27.703846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558303, -0.203496, -0.804293,
		0.724764, 0.591425, 0.353460,
		0.403751, -0.780261, 0.477681,
		42.572678, 37.435123, 27.847151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047043, 37.947666, 27.424372>,  <42.290054, 37.981304, 27.512774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047043, 37.947666, 27.424372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922520, 37.572021, 27.482550>,  <42.847805, 37.346634, 27.517456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922520, 37.572021, 27.482550>,  <43.047043, 37.947666, 27.424372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922520, 37.572021, 27.482550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654837, -0.322901, -0.683318,
		0.688677, -0.117479, 0.715488,
		-0.311307, -0.939113, 0.145445,
		42.829128, 37.290287, 27.526184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633434, 37.407642, 27.608269>,  <43.047043, 37.947666, 27.424372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633434, 37.407642, 27.608269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337158, 37.208340, 27.427992>,  <43.159393, 37.088760, 27.319826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337158, 37.208340, 27.427992>,  <43.633434, 37.407642, 27.608269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337158, 37.208340, 27.427992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659700, -0.412376, -0.628285,
		0.127191, -0.762685, 0.634141,
		-0.740688, -0.498255, -0.450693,
		43.114952, 37.058865, 27.292784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159866, 37.950531, 27.342802>,  <43.633434, 37.407642, 27.608269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159866, 37.950531, 27.342802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900330, 38.000027, 27.643120>,  <43.744606, 38.029724, 27.823311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900330, 38.000027, 27.643120>,  <44.159866, 37.950531, 27.342802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900330, 38.000027, 27.643120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717380, -0.229509, 0.657793,
		0.253711, 0.965408, 0.060144,
		-0.648843, 0.123744, 0.750793,
		43.705677, 38.037151, 27.868359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494541, 38.419720, 27.845560>,  <44.159866, 37.950531, 27.342802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494541, 38.419720, 27.845560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202827, 38.233917, 28.046511>,  <44.027802, 38.122437, 28.167082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202827, 38.233917, 28.046511>,  <44.494541, 38.419720, 27.845560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202827, 38.233917, 28.046511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658403, -0.276656, 0.699976,
		-0.186157, 0.841247, 0.507592,
		-0.729281, -0.464506, 0.502378,
		43.984043, 38.094566, 28.197224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521111, 38.661434, 28.535446>,  <44.494541, 38.419720, 27.845560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521111, 38.661434, 28.535446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316586, 38.317753, 28.542713>,  <44.193871, 38.111546, 28.547073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316586, 38.317753, 28.542713>,  <44.521111, 38.661434, 28.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316586, 38.317753, 28.542713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594388, -0.338292, 0.729562,
		-0.620697, 0.383830, 0.683673,
		-0.511309, -0.859205, 0.018167,
		44.163193, 38.059990, 28.548162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451069, 38.594383, 29.159399>,  <44.521111, 38.661434, 28.535446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451069, 38.594383, 29.159399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364464, 38.234707, 29.007307>,  <44.312500, 38.018902, 28.916052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364464, 38.234707, 29.007307>,  <44.451069, 38.594383, 29.159399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364464, 38.234707, 29.007307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352166, -0.435180, 0.828612,
		-0.910551, 0.045497, 0.410885,
		-0.216509, -0.899193, -0.380231,
		44.299511, 37.964951, 28.893238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955223, 38.270287, 29.646868>,  <44.451069, 38.594383, 29.159399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955223, 38.270287, 29.646868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192211, 38.014160, 29.451328>,  <44.334404, 37.860485, 29.334003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192211, 38.014160, 29.451328>,  <43.955223, 38.270287, 29.646868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192211, 38.014160, 29.451328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304943, -0.383408, 0.871784,
		-0.745646, -0.665578, -0.031899,
		0.592471, -0.640315, -0.488850,
		44.369953, 37.822067, 29.304672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861042, 37.561291, 29.985556>,  <43.955223, 38.270287, 29.646868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861042, 37.561291, 29.985556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188557, 37.451992, 29.783596>,  <44.385067, 37.386414, 29.662420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188557, 37.451992, 29.783596>,  <43.861042, 37.561291, 29.985556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188557, 37.451992, 29.783596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338564, -0.480436, 0.809046,
		-0.463621, -0.833385, -0.300876,
		0.818798, -0.273225, -0.504894,
		44.434193, 37.370018, 29.632126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941216, 36.809967, 30.111090>,  <43.861042, 37.561291, 29.985556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941216, 36.809967, 30.111090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292110, 36.967484, 30.001265>,  <44.502647, 37.061993, 29.935369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292110, 36.967484, 30.001265>,  <43.941216, 36.809967, 30.111090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292110, 36.967484, 30.001265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468643, -0.578519, 0.667599,
		0.104054, -0.714315, -0.692046,
		0.877238, 0.393789, -0.274561,
		44.555283, 37.085621, 29.918896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345463, 36.298347, 30.396156>,  <43.941216, 36.809967, 30.111090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345463, 36.298347, 30.396156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600006, 36.583454, 30.278170>,  <44.752731, 36.754520, 30.207378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600006, 36.583454, 30.278170>,  <44.345463, 36.298347, 30.396156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600006, 36.583454, 30.278170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709031, -0.389849, 0.587616,
		0.303843, -0.583075, -0.753461,
		0.636360, 0.712770, -0.294966,
		44.790913, 36.797287, 30.189680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826439, 35.959896, 30.081266>,  <44.345463, 36.298347, 30.396156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826439, 35.959896, 30.081266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974541, 36.305626, 30.217415>,  <45.063400, 36.513065, 30.299105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974541, 36.305626, 30.217415>,  <44.826439, 35.959896, 30.081266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974541, 36.305626, 30.217415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599384, -0.502221, 0.623308,
		0.709683, -0.026770, -0.704013,
		0.370256, 0.864325, 0.340371,
		45.085617, 36.564922, 30.319527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612637, 35.920254, 29.989506>,  <44.826439, 35.959896, 30.081266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612637, 35.920254, 29.989506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487934, 36.178432, 30.268419>,  <45.413113, 36.333340, 30.435768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487934, 36.178432, 30.268419>,  <45.612637, 35.920254, 29.989506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487934, 36.178432, 30.268419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345450, -0.606642, 0.715995,
		0.885140, 0.464092, -0.033846,
		-0.311755, 0.645448, 0.697284,
		45.394409, 36.372066, 30.477604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073093, 35.832928, 30.516636>,  <45.612637, 35.920254, 29.989506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073093, 35.832928, 30.516636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801369, 36.061497, 30.700815>,  <45.638332, 36.198639, 30.811323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801369, 36.061497, 30.700815>,  <46.073093, 35.832928, 30.516636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801369, 36.061497, 30.700815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301227, -0.355023, 0.884998,
		0.669178, 0.739887, 0.069043,
		-0.679310, 0.571424, 0.460448,
		45.597576, 36.232925, 30.838949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417419, 36.233303, 31.050724>,  <46.073093, 35.832928, 30.516636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417419, 36.233303, 31.050724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026600, 36.191532, 31.124979>,  <45.792107, 36.166470, 31.169531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026600, 36.191532, 31.124979>,  <46.417419, 36.233303, 31.050724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026600, 36.191532, 31.124979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212913, -0.454880, 0.864727,
		-0.005861, 0.884409, 0.466676,
		-0.977054, -0.104429, 0.185636,
		45.733482, 36.160202, 31.180670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376858, 36.393097, 31.712976>,  <46.417419, 36.233303, 31.050724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376858, 36.393097, 31.712976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047009, 36.184368, 31.625622>,  <45.849098, 36.059132, 31.573208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047009, 36.184368, 31.625622>,  <46.376858, 36.393097, 31.712976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047009, 36.184368, 31.625622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164127, -0.590168, 0.790420,
		-0.541344, 0.615958, 0.572313,
		-0.824627, -0.521821, -0.218389,
		45.799622, 36.027821, 31.560104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960739, 36.376904, 32.348289>,  <46.376858, 36.393097, 31.712976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960739, 36.376904, 32.348289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821735, 36.068268, 32.135166>,  <45.738331, 35.883087, 32.007294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821735, 36.068268, 32.135166>,  <45.960739, 36.376904, 32.348289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821735, 36.068268, 32.135166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107339, -0.597219, 0.794863,
		-0.931511, 0.219035, 0.290364,
		-0.347514, -0.771591, -0.532805,
		45.717480, 35.836792, 31.975325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509586, 36.038811, 32.738747>,  <45.960739, 36.376904, 32.348289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509586, 36.038811, 32.738747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570427, 35.741146, 32.478565>,  <45.606930, 35.562546, 32.322456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570427, 35.741146, 32.478565>,  <45.509586, 36.038811, 32.738747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570427, 35.741146, 32.478565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073680, -0.647743, 0.758287,
		-0.985615, -0.163259, -0.043691,
		0.152098, -0.744161, -0.650455,
		45.616055, 35.517899, 32.283428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098442, 35.408344, 32.921280>,  <45.509586, 36.038811, 32.738747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098442, 35.408344, 32.921280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416527, 35.283688, 32.713238>,  <45.607380, 35.208893, 32.588413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416527, 35.283688, 32.713238>,  <45.098442, 35.408344, 32.921280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416527, 35.283688, 32.713238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060034, -0.813118, 0.578995,
		-0.603348, -0.491650, -0.627895,
		0.795215, -0.311641, -0.520109,
		45.655090, 35.190197, 32.557205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997532, 34.613750, 32.772774>,  <45.098442, 35.408344, 32.921280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997532, 34.613750, 32.772774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386402, 34.705456, 32.753551>,  <45.619724, 34.760479, 32.742016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386402, 34.705456, 32.753551>,  <44.997532, 34.613750, 32.772774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386402, 34.705456, 32.753551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218953, -0.816443, 0.534304,
		0.083259, -0.529961, -0.843925,
		0.972177, 0.229265, -0.048060,
		45.678055, 34.774235, 32.739132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279949, 33.919479, 32.721066>,  <44.997532, 34.613750, 32.772774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279949, 33.919479, 32.721066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564014, 34.185368, 32.813862>,  <45.734451, 34.344902, 32.869541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564014, 34.185368, 32.813862>,  <45.279949, 33.919479, 32.721066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564014, 34.185368, 32.813862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383357, -0.641476, 0.664489,
		0.590518, -0.382956, -0.710375,
		0.710159, 0.664720, 0.231995,
		45.777061, 34.384785, 32.883461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809162, 33.575901, 32.580372>,  <45.279949, 33.919479, 32.721066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809162, 33.575901, 32.580372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910786, 33.865051, 32.837406>,  <45.971760, 34.038540, 32.991627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910786, 33.865051, 32.837406>,  <45.809162, 33.575901, 32.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910786, 33.865051, 32.837406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328027, -0.689403, 0.645850,
		0.909864, 0.046700, -0.412271,
		0.254059, 0.722871, 0.642582,
		45.987003, 34.081913, 33.030182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448997, 33.378288, 32.879234>,  <45.809162, 33.575901, 32.580372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448997, 33.378288, 32.879234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324532, 33.649975, 33.145119>,  <46.249851, 33.812988, 33.304649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324532, 33.649975, 33.145119>,  <46.448997, 33.378288, 32.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324532, 33.649975, 33.145119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294889, -0.595904, 0.746953,
		0.903448, 0.428440, -0.014872,
		-0.311162, 0.679219, 0.664710,
		46.231182, 33.853741, 33.344532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001102, 33.408081, 33.302101>,  <46.448997, 33.378288, 32.879234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001102, 33.408081, 33.302101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702271, 33.584614, 33.500938>,  <46.522972, 33.690533, 33.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702271, 33.584614, 33.500938>,  <47.001102, 33.408081, 33.302101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702271, 33.584614, 33.500938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349230, -0.375704, 0.858420,
		0.565604, 0.814908, 0.126556,
		-0.747081, 0.441328, 0.497091,
		46.478146, 33.717010, 33.650066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.430439, 33.527691, 33.784363>,  <47.001102, 33.408081, 33.302101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.430439, 33.527691, 33.784363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049217, 33.532513, 33.905388>,  <46.820484, 33.535404, 33.978004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049217, 33.532513, 33.905388>,  <47.430439, 33.527691, 33.784363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049217, 33.532513, 33.905388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286017, -0.292224, 0.912579,
		0.099416, 0.956274, 0.275057,
		-0.953053, 0.012053, 0.302563,
		46.763302, 33.536129, 33.996155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314144, 34.052109, 34.417507>,  <47.430439, 33.527691, 33.784363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314144, 34.052109, 34.417507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074097, 33.732235, 34.409859>,  <46.930069, 33.540310, 34.405270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074097, 33.732235, 34.409859>,  <47.314144, 34.052109, 34.417507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074097, 33.732235, 34.409859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359987, -0.291347, 0.886299,
		-0.714332, 0.524998, 0.462718,
		-0.600116, -0.799684, -0.019126,
		46.894062, 33.492329, 34.404121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462551, 33.994350, 35.107048>,  <47.314144, 34.052109, 34.417507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462551, 33.994350, 35.107048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838165, 33.990074, 34.969593>,  <48.063534, 33.987507, 34.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838165, 33.990074, 34.969593>,  <47.462551, 33.994350, 35.107048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.838165, 33.990074, 34.969593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092141, -0.970779, -0.221580,
		-0.331231, 0.239736, -0.912586,
		0.939040, -0.010692, -0.343642,
		48.119877, 33.986866, 34.866501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.524063, 34.825806, 35.207432>,  <47.462551, 33.994350, 35.107048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.524063, 34.825806, 35.207432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835503, 35.033367, 35.066277>,  <48.022366, 35.157906, 34.981583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835503, 35.033367, 35.066277>,  <47.524063, 34.825806, 35.207432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.835503, 35.033367, 35.066277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557941, 0.315053, -0.767753,
		-0.287212, 0.794658, 0.534816,
		0.778596, 0.518903, -0.352885,
		48.069080, 35.189037, 34.960411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.415180, 37.751804, 44.904247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066662, 37.579575, 44.810055>,  <34.857552, 37.476238, 44.753540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066662, 37.579575, 44.810055>,  <35.415180, 37.751804, 44.904247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066662, 37.579575, 44.810055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241987, 0.040499, -0.969434,
		0.426947, -0.901647, 0.068905,
		-0.871297, -0.430571, -0.235478,
		34.805271, 37.450405, 44.739410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622379, 37.198162, 44.408630>,  <35.415180, 37.751804, 44.904247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622379, 37.198162, 44.408630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225777, 37.247135, 44.391087>,  <34.987816, 37.276520, 44.380562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225777, 37.247135, 44.391087>,  <35.622379, 37.198162, 44.408630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225777, 37.247135, 44.391087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037525, -0.053562, -0.997859,
		-0.124526, -0.991030, 0.048512,
		-0.991507, 0.122439, -0.043858,
		34.928326, 37.283867, 44.377930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376423, 36.741867, 43.918858>,  <35.622379, 37.198162, 44.408630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376423, 36.741867, 43.918858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085960, 37.016285, 43.936935>,  <34.911682, 37.180935, 43.947784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085960, 37.016285, 43.936935>,  <35.376423, 36.741867, 43.918858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085960, 37.016285, 43.936935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032624, 0.031282, -0.998978,
		-0.686753, -0.726890, -0.000334,
		-0.726158, 0.686041, 0.045196,
		34.868114, 37.222095, 43.950493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951027, 36.634266, 43.347103>,  <35.376423, 36.741867, 43.918858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951027, 36.634266, 43.347103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875988, 37.014370, 43.446556>,  <34.830963, 37.242432, 43.506229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875988, 37.014370, 43.446556>,  <34.951027, 36.634266, 43.347103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875988, 37.014370, 43.446556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016927, 0.249961, -0.968108,
		-0.982100, -0.185823, -0.030807,
		-0.187597, 0.950258, 0.248632,
		34.819710, 37.299446, 43.521145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464645, 36.911083, 42.872604>,  <34.951027, 36.634266, 43.347103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464645, 36.911083, 42.872604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609406, 37.253765, 43.019619>,  <34.696262, 37.459373, 43.107830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609406, 37.253765, 43.019619>,  <34.464645, 36.911083, 42.872604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609406, 37.253765, 43.019619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064653, 0.370249, -0.926680,
		-0.929973, 0.359126, 0.078603,
		0.361898, 0.856705, 0.367540,
		34.717976, 37.510777, 43.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189579, 37.340664, 42.454048>,  <34.464645, 36.911083, 42.872604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189579, 37.340664, 42.454048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461872, 37.585247, 42.615402>,  <34.625248, 37.731998, 42.712215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461872, 37.585247, 42.615402>,  <34.189579, 37.340664, 42.454048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461872, 37.585247, 42.615402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177688, 0.396389, -0.900723,
		-0.710653, 0.684829, 0.161186,
		0.680735, 0.611461, 0.403381,
		34.666092, 37.768684, 42.736416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199795, 38.134037, 42.137917>,  <34.189579, 37.340664, 42.454048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199795, 38.134037, 42.137917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566128, 38.101788, 42.295269>,  <34.785927, 38.082436, 42.389679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566128, 38.101788, 42.295269>,  <34.199795, 38.134037, 42.137917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566128, 38.101788, 42.295269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390614, 0.406017, -0.826178,
		-0.093107, 0.910302, 0.403338,
		0.915834, -0.080626, 0.393380,
		34.840878, 38.077599, 42.413284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496487, 38.734154, 41.896309>,  <34.199795, 38.134037, 42.137917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496487, 38.734154, 41.896309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765110, 38.450485, 41.982178>,  <34.926285, 38.280285, 42.033699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765110, 38.450485, 41.982178>,  <34.496487, 38.734154, 41.896309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765110, 38.450485, 41.982178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493055, 0.211445, -0.843912,
		0.553085, 0.672584, 0.491658,
		0.671561, -0.709169, 0.214674,
		34.966579, 38.237736, 42.046581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182899, 39.057545, 41.769920>,  <34.496487, 38.734154, 41.896309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182899, 39.057545, 41.769920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257381, 38.664677, 41.759640>,  <35.302071, 38.428955, 41.753471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257381, 38.664677, 41.759640>,  <35.182899, 39.057545, 41.769920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257381, 38.664677, 41.759640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517318, 0.120251, -0.847303,
		0.835289, 0.144479, 0.530488,
		0.186209, -0.982174, -0.025703,
		35.313244, 38.370026, 41.751930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876770, 39.119499, 41.488789>,  <35.182899, 39.057545, 41.769920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876770, 39.119499, 41.488789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762577, 38.736385, 41.475269>,  <35.694061, 38.506516, 41.467159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762577, 38.736385, 41.475269>,  <35.876770, 39.119499, 41.488789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762577, 38.736385, 41.475269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651825, -0.168189, -0.739484,
		0.702586, -0.233136, 0.672325,
		-0.285478, -0.957789, -0.033796,
		35.676933, 38.449047, 41.465130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425198, 38.584808, 41.475605>,  <35.876770, 39.119499, 41.488789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425198, 38.584808, 41.475605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107349, 38.444057, 41.277714>,  <35.916641, 38.359608, 41.158978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107349, 38.444057, 41.277714>,  <36.425198, 38.584808, 41.475605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107349, 38.444057, 41.277714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584429, -0.222725, -0.780279,
		0.164371, -0.909163, 0.382628,
		-0.794622, -0.351874, -0.494732,
		35.868961, 38.338497, 41.129295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620121, 37.885246, 41.243546>,  <36.425198, 38.584808, 41.475605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620121, 37.885246, 41.243546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325787, 38.017212, 41.007004>,  <36.149185, 38.096390, 40.865078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325787, 38.017212, 41.007004>,  <36.620121, 37.885246, 41.243546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325787, 38.017212, 41.007004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567108, -0.176972, -0.804406,
		-0.370038, -0.927274, -0.056874,
		-0.735840, 0.329915, -0.591351,
		36.105034, 38.116188, 40.829597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645706, 37.410942, 40.736885>,  <36.620121, 37.885246, 41.243546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645706, 37.410942, 40.736885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427090, 37.708218, 40.582504>,  <36.295921, 37.886585, 40.489876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427090, 37.708218, 40.582504>,  <36.645706, 37.410942, 40.736885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427090, 37.708218, 40.582504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454398, -0.123940, -0.882134,
		-0.703430, -0.657498, -0.269967,
		-0.546542, 0.743192, -0.385949,
		36.263126, 37.931175, 40.466721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388416, 37.121113, 40.088421>,  <36.645706, 37.410942, 40.736885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388416, 37.121113, 40.088421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356632, 37.517399, 40.044308>,  <36.337563, 37.755173, 40.017838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356632, 37.517399, 40.044308>,  <36.388416, 37.121113, 40.088421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356632, 37.517399, 40.044308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309818, -0.080612, -0.947373,
		-0.947470, -0.109448, -0.300537,
		-0.079461, 0.990718, -0.110287,
		36.332794, 37.814613, 40.011223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035961, 37.174267, 39.418179>,  <36.388416, 37.121113, 40.088421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035961, 37.174267, 39.418179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.229183, 37.516857, 39.490959>,  <36.345116, 37.722412, 39.534626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.229183, 37.516857, 39.490959>,  <36.035961, 37.174267, 39.418179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229183, 37.516857, 39.490959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300946, 0.032735, -0.953079,
		-0.822246, 0.515147, -0.241940,
		0.483056, 0.856476, 0.181948,
		36.374100, 37.773800, 39.545544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713020, 37.742737, 39.014301>,  <36.035961, 37.174267, 39.418179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713020, 37.742737, 39.014301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088070, 37.860474, 39.088295>,  <36.313099, 37.931118, 39.132690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088070, 37.860474, 39.088295>,  <35.713020, 37.742737, 39.014301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088070, 37.860474, 39.088295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172873, 0.066899, -0.982669,
		-0.301621, 0.953354, 0.011842,
		0.937625, 0.294346, 0.184987,
		36.369358, 37.948776, 39.143791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769878, 38.362339, 38.558842>,  <35.713020, 37.742737, 39.014301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769878, 38.362339, 38.558842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151268, 38.295574, 38.659256>,  <36.380104, 38.255516, 38.719505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151268, 38.295574, 38.659256>,  <35.769878, 38.362339, 38.558842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151268, 38.295574, 38.659256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242805, -0.068341, -0.967665,
		0.178673, 0.983600, -0.024634,
		0.953479, -0.166915, 0.251034,
		36.437313, 38.245499, 38.734566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174232, 38.827789, 38.166595>,  <35.769878, 38.362339, 38.558842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174232, 38.827789, 38.166595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376957, 38.498837, 38.269997>,  <36.498592, 38.301464, 38.332039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376957, 38.498837, 38.269997>,  <36.174232, 38.827789, 38.166595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376957, 38.498837, 38.269997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312569, -0.104155, -0.944167,
		0.803395, 0.559314, 0.204265,
		0.506811, -0.822386, 0.258502,
		36.528999, 38.252121, 38.347546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687641, 38.810486, 37.693298>,  <36.174232, 38.827789, 38.166595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687641, 38.810486, 37.693298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691944, 38.441902, 37.848625>,  <36.694527, 38.220753, 37.941822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691944, 38.441902, 37.848625>,  <36.687641, 38.810486, 37.693298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691944, 38.441902, 37.848625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242239, -0.374371, -0.895079,
		0.970157, 0.103698, 0.219185,
		0.010761, -0.921462, 0.388319,
		36.695171, 38.165462, 37.965122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121330, 38.511768, 37.315376>,  <36.687641, 38.810486, 37.693298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121330, 38.511768, 37.315376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924156, 38.201168, 37.472374>,  <36.805851, 38.014809, 37.566574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924156, 38.201168, 37.472374>,  <37.121330, 38.511768, 37.315376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924156, 38.201168, 37.472374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054738, -0.477896, -0.876709,
		0.868340, -0.410679, 0.278078,
		-0.492939, -0.776504, 0.392497,
		36.776276, 37.968216, 37.590122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566673, 38.037018, 37.212620>,  <37.121330, 38.511768, 37.315376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566673, 38.037018, 37.212620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214458, 37.860218, 37.281071>,  <37.003128, 37.754139, 37.322140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214458, 37.860218, 37.281071>,  <37.566673, 38.037018, 37.212620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214458, 37.860218, 37.281071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163009, -0.621431, -0.766323,
		0.445060, -0.646883, 0.619245,
		-0.880540, -0.442002, 0.171126,
		36.950298, 37.727619, 37.332409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724319, 37.326385, 37.247055>,  <37.566673, 38.037018, 37.212620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724319, 37.326385, 37.247055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342026, 37.385658, 37.145378>,  <37.112648, 37.421223, 37.084373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342026, 37.385658, 37.145378>,  <37.724319, 37.326385, 37.247055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342026, 37.385658, 37.145378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125642, -0.575644, -0.807990,
		-0.266052, -0.804161, 0.531546,
		-0.955736, 0.148183, -0.254187,
		37.055305, 37.430115, 37.069122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481216, 37.089474, 36.968731>,  <37.724319, 37.326385, 37.247055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481216, 37.089474, 36.968731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748772, 36.797337, 37.024139>,  <38.909306, 36.622055, 37.057384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748772, 36.797337, 37.024139>,  <38.481216, 37.089474, 36.968731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748772, 36.797337, 37.024139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333938, -0.128738, 0.933762,
		-0.664134, -0.670840, -0.330001,
		0.668889, -0.730343, 0.138520,
		38.949440, 36.578236, 37.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195339, 36.427128, 37.150063>,  <38.481216, 37.089474, 36.968731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195339, 36.427128, 37.150063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559387, 36.443367, 37.315002>,  <38.777817, 36.453110, 37.413967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559387, 36.443367, 37.315002>,  <38.195339, 36.427128, 37.150063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559387, 36.443367, 37.315002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412216, -0.012012, 0.911007,
		0.041942, -0.999103, 0.005805,
		0.910120, 0.040602, 0.412350,
		38.832424, 36.455547, 37.438705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166149, 35.890106, 37.735222>,  <38.195339, 36.427128, 37.150063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166149, 35.890106, 37.735222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497074, 36.102409, 37.808811>,  <38.695629, 36.229790, 37.852966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497074, 36.102409, 37.808811>,  <38.166149, 35.890106, 37.735222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497074, 36.102409, 37.808811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202248, -0.024106, 0.979038,
		0.524068, -0.847180, 0.087402,
		0.827314, 0.530759, 0.183974,
		38.745270, 36.261639, 37.864002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528923, 35.492363, 38.279747>,  <38.166149, 35.890106, 37.735222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528923, 35.492363, 38.279747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646614, 35.874344, 38.295177>,  <38.717228, 36.103535, 38.304436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646614, 35.874344, 38.295177>,  <38.528923, 35.492363, 38.279747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646614, 35.874344, 38.295177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173381, 0.013643, 0.984761,
		0.939877, -0.296432, 0.169585,
		0.294228, 0.954957, 0.038573,
		38.734882, 36.160831, 38.306747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874928, 35.557575, 38.914959>,  <38.528923, 35.492363, 38.279747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874928, 35.557575, 38.914959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875046, 35.946682, 38.822247>,  <38.875118, 36.180145, 38.766621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875046, 35.946682, 38.822247>,  <38.874928, 35.557575, 38.914959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875046, 35.946682, 38.822247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127898, 0.229837, 0.964789,
		0.991787, -0.029927, -0.124347,
		0.000294, 0.972769, -0.231777,
		38.875134, 36.238514, 38.752712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450356, 35.857819, 39.164661>,  <38.874928, 35.557575, 38.914959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450356, 35.857819, 39.164661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155476, 36.126186, 39.132641>,  <38.978546, 36.287205, 39.113430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155476, 36.126186, 39.132641>,  <39.450356, 35.857819, 39.164661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155476, 36.126186, 39.132641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008371, 0.127533, 0.991799,
		0.675623, 0.730484, -0.099633,
		-0.737199, 0.670916, -0.080049,
		38.934315, 36.327461, 39.108627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548119, 36.199825, 39.737724>,  <39.450356, 35.857819, 39.164661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548119, 36.199825, 39.737724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185226, 36.332813, 39.634651>,  <38.967491, 36.412605, 39.572807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185226, 36.332813, 39.634651>,  <39.548119, 36.199825, 39.737724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185226, 36.332813, 39.634651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177676, 0.252373, 0.951178,
		0.381268, 0.908720, -0.169889,
		-0.907230, 0.332468, -0.257680,
		38.913059, 36.432552, 39.557346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409294, 36.862881, 40.077309>,  <39.548119, 36.199825, 39.737724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409294, 36.862881, 40.077309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.045197, 36.710548, 40.012280>,  <38.826740, 36.619148, 39.973263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.045197, 36.710548, 40.012280>,  <39.409294, 36.862881, 40.077309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045197, 36.710548, 40.012280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233653, 0.148235, 0.960954,
		-0.341862, 0.912685, -0.223912,
		-0.910240, -0.380831, -0.162576,
		38.772125, 36.596298, 39.963509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028687, 37.227753, 40.550560>,  <39.409294, 36.862881, 40.077309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028687, 37.227753, 40.550560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776585, 36.930290, 40.461338>,  <38.625324, 36.751812, 40.407803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776585, 36.930290, 40.461338>,  <39.028687, 37.227753, 40.550560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776585, 36.930290, 40.461338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262165, -0.066580, 0.962724,
		-0.730783, 0.665243, -0.152997,
		-0.630258, -0.743653, -0.223059,
		38.587505, 36.707195, 40.394421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316647, 37.375801, 40.861156>,  <39.028687, 37.227753, 40.550560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316647, 37.375801, 40.861156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337067, 36.978935, 40.815552>,  <38.349319, 36.740814, 40.788189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337067, 36.978935, 40.815552>,  <38.316647, 37.375801, 40.861156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337067, 36.978935, 40.815552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442897, -0.124808, 0.887843,
		-0.895118, 0.005172, -0.445800,
		0.051047, -0.992167, -0.114009,
		38.352383, 36.681286, 40.781349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721092, 37.085049, 41.001286>,  <38.316647, 37.375801, 40.861156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721092, 37.085049, 41.001286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968609, 36.774723, 41.050636>,  <38.117119, 36.588528, 41.080246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968609, 36.774723, 41.050636>,  <37.721092, 37.085049, 41.001286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968609, 36.774723, 41.050636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465673, -0.235777, 0.852970,
		-0.632653, -0.585259, -0.507169,
		0.618787, -0.775810, 0.123375,
		38.154243, 36.541981, 41.087650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306450, 36.579792, 41.372314>,  <37.721092, 37.085049, 41.001286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306450, 36.579792, 41.372314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685722, 36.465565, 41.428024>,  <37.913288, 36.397026, 41.461449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685722, 36.465565, 41.428024>,  <37.306450, 36.579792, 41.372314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685722, 36.465565, 41.428024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213223, -0.246945, 0.945280,
		-0.235536, -0.926000, -0.295038,
		0.948187, -0.285556, 0.139280,
		37.970177, 36.379894, 41.469807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352440, 35.922184, 41.610989>,  <37.306450, 36.579792, 41.372314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352440, 35.922184, 41.610989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675278, 36.114140, 41.748573>,  <37.868980, 36.229313, 41.831123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675278, 36.114140, 41.748573>,  <37.352440, 35.922184, 41.610989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675278, 36.114140, 41.748573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276315, -0.207829, 0.938327,
		0.521775, -0.852359, -0.035137,
		0.807094, 0.479887, 0.343959,
		37.917404, 36.258106, 41.851761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610802, 35.479668, 42.125496>,  <37.352440, 35.922184, 41.610989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610802, 35.479668, 42.125496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.757092, 35.847794, 42.181004>,  <37.844868, 36.068668, 42.214310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.757092, 35.847794, 42.181004>,  <37.610802, 35.479668, 42.125496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757092, 35.847794, 42.181004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229815, -0.055185, 0.971668,
		0.901903, -0.387257, 0.191321,
		0.365727, 0.920319, 0.138769,
		37.866810, 36.123890, 42.222633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139626, 35.457886, 42.594757>,  <37.610802, 35.479668, 42.125496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139626, 35.457886, 42.594757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971252, 35.820652, 42.601887>,  <37.870228, 36.038311, 42.606167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971252, 35.820652, 42.601887>,  <38.139626, 35.457886, 42.594757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971252, 35.820652, 42.601887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070344, -0.052229, 0.996154,
		0.904362, 0.418057, 0.085781,
		-0.420929, 0.906918, 0.017827,
		37.844975, 36.092728, 42.607235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438473, 35.672504, 43.326851>,  <38.139626, 35.457886, 42.594757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438473, 35.672504, 43.326851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130894, 35.897831, 43.205921>,  <37.946346, 36.033028, 43.133366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130894, 35.897831, 43.205921>,  <38.438473, 35.672504, 43.326851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130894, 35.897831, 43.205921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315328, 0.077182, 0.945839,
		0.556137, 0.822631, 0.118280,
		-0.768947, 0.563313, -0.302322,
		37.900211, 36.066826, 43.115223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453278, 36.233521, 43.807129>,  <38.438473, 35.672504, 43.326851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453278, 36.233521, 43.807129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089817, 36.199562, 43.643597>,  <37.871738, 36.179188, 43.545479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089817, 36.199562, 43.643597>,  <38.453278, 36.233521, 43.807129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089817, 36.199562, 43.643597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417392, 0.157968, 0.894891,
		-0.011392, 0.983788, -0.178974,
		-0.908655, -0.084897, -0.408826,
		37.817219, 36.174091, 43.520950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116146, 36.780777, 44.063046>,  <38.453278, 36.233521, 43.807129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116146, 36.780777, 44.063046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840881, 36.517448, 43.941036>,  <37.675720, 36.359451, 43.867832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840881, 36.517448, 43.941036>,  <38.116146, 36.780777, 44.063046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840881, 36.517448, 43.941036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459835, 0.070537, 0.885198,
		-0.561230, 0.749424, -0.351261,
		-0.688166, -0.658322, -0.305023,
		37.634430, 36.319950, 43.849529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.496609, 37.129173, 44.178684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388763, 36.745869, 44.140652>,  <37.324055, 36.515884, 44.117832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388763, 36.745869, 44.140652>,  <37.496609, 37.129173, 44.178684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388763, 36.745869, 44.140652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281796, -0.015906, 0.959342,
		-0.920815, 0.285446, -0.265747,
		-0.269613, -0.958263, -0.095084,
		37.307880, 36.458389, 44.112125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864132, 37.086697, 44.440475>,  <37.496609, 37.129173, 44.178684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864132, 37.086697, 44.440475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959820, 36.698311, 44.440819>,  <37.017231, 36.465279, 44.441025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959820, 36.698311, 44.440819>,  <36.864132, 37.086697, 44.440475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959820, 36.698311, 44.440819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351329, -0.085735, 0.932318,
		-0.905176, -0.223326, -0.361638,
		0.239216, -0.970966, 0.000855,
		37.031586, 36.407021, 44.441074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272057, 36.765011, 44.607258>,  <36.864132, 37.086697, 44.440475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272057, 36.765011, 44.607258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593998, 36.549622, 44.707066>,  <36.787163, 36.420387, 44.766949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593998, 36.549622, 44.707066>,  <36.272057, 36.765011, 44.607258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593998, 36.549622, 44.707066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374834, -0.135261, 0.917172,
		-0.460122, -0.831716, -0.310703,
		0.804852, -0.538473, 0.249520,
		36.835453, 36.388081, 44.781921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955013, 36.342751, 45.054367>,  <36.272057, 36.765011, 44.607258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955013, 36.342751, 45.054367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350456, 36.304081, 45.100513>,  <36.587723, 36.280880, 45.128201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350456, 36.304081, 45.100513>,  <35.955013, 36.342751, 45.054367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350456, 36.304081, 45.100513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137181, -0.263243, 0.954927,
		-0.061948, -0.959874, -0.273506,
		0.988607, -0.096675, 0.115369,
		36.647038, 36.275078, 45.135124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047398, 35.726887, 45.508564>,  <35.955013, 36.342751, 45.054367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047398, 35.726887, 45.508564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384800, 35.941734, 45.507530>,  <36.587242, 36.070641, 45.506908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384800, 35.941734, 45.507530>,  <36.047398, 35.726887, 45.508564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384800, 35.941734, 45.507530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071705, -0.107833, 0.991580,
		0.532316, -0.836586, -0.129472,
		0.843504, 0.537117, -0.002586,
		36.637852, 36.102871, 45.506756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553391, 35.371086, 46.008701>,  <36.047398, 35.726887, 45.508564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553391, 35.371086, 46.008701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665760, 35.754829, 46.019375>,  <36.733181, 35.985077, 46.025780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665760, 35.754829, 46.019375>,  <36.553391, 35.371086, 46.008701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665760, 35.754829, 46.019375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066341, -0.047147, 0.996683,
		0.957433, -0.278225, -0.076890,
		0.280927, 0.959358, 0.026682,
		36.750038, 36.042637, 46.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160831, 35.520947, 46.455112>,  <36.553391, 35.371086, 46.008701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160831, 35.520947, 46.455112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999115, 35.886307, 46.436111>,  <36.902084, 36.105522, 46.424709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999115, 35.886307, 46.436111>,  <37.160831, 35.520947, 46.455112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999115, 35.886307, 46.436111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168868, 0.125585, 0.977605,
		0.898907, 0.387213, -0.205016,
		-0.404288, 0.913397, -0.047501,
		36.877827, 36.160324, 46.421860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508564, 35.863914, 46.891689>,  <37.160831, 35.520947, 46.455112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508564, 35.863914, 46.891689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181732, 36.092319, 46.859882>,  <36.985634, 36.229362, 46.840797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181732, 36.092319, 46.859882>,  <37.508564, 35.863914, 46.891689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181732, 36.092319, 46.859882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031741, 0.093162, 0.995145,
		0.575649, 0.815637, -0.057996,
		-0.817080, 0.571014, -0.079518,
		36.936607, 36.263622, 46.836025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574780, 36.254021, 47.448273>,  <37.508564, 35.863914, 46.891689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574780, 36.254021, 47.448273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191673, 36.314781, 47.350613>,  <36.961811, 36.351238, 47.292015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191673, 36.314781, 47.350613>,  <37.574780, 36.254021, 47.448273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191673, 36.314781, 47.350613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231715, 0.095063, 0.968128,
		0.170268, 0.983814, -0.055851,
		-0.957767, 0.151900, -0.244151,
		36.904343, 36.360352, 47.277367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323193, 36.883472, 47.866558>,  <37.574780, 36.254021, 47.448273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323193, 36.883472, 47.866558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997334, 36.661968, 47.797619>,  <36.801819, 36.529064, 47.756256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997334, 36.661968, 47.797619>,  <37.323193, 36.883472, 47.866558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997334, 36.661968, 47.797619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266748, 0.093895, 0.959181,
		-0.514977, 0.827363, -0.224206,
		-0.814643, -0.553764, -0.172343,
		36.752941, 36.495838, 47.745914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714951, 37.302273, 48.217503>,  <37.323193, 36.883472, 47.866558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714951, 37.302273, 48.217503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598408, 36.922493, 48.170746>,  <36.528484, 36.694626, 48.142693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598408, 36.922493, 48.170746>,  <36.714951, 37.302273, 48.217503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598408, 36.922493, 48.170746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318705, -0.018877, 0.947666,
		-0.901965, 0.313361, -0.297093,
		-0.291353, -0.949447, -0.116896,
		36.511002, 36.637657, 48.135677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910564, 37.300076, 48.339111>,  <36.714951, 37.302273, 48.217503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910564, 37.300076, 48.339111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061478, 36.932064, 48.381462>,  <36.152027, 36.711258, 48.406872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061478, 36.932064, 48.381462>,  <35.910564, 37.300076, 48.339111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061478, 36.932064, 48.381462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455990, -0.085040, 0.885913,
		-0.806058, -0.382519, -0.451607,
		0.377283, -0.920026, 0.105878,
		36.174664, 36.656055, 48.413227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355312, 36.944897, 48.773071>,  <35.910564, 37.300076, 48.339111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355312, 36.944897, 48.773071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.686253, 36.720921, 48.790756>,  <35.884819, 36.586536, 48.801369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.686253, 36.720921, 48.790756>,  <35.355312, 36.944897, 48.773071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686253, 36.720921, 48.790756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143964, -0.135318, 0.980287,
		-0.542918, -0.817410, -0.192567,
		0.827354, -0.559938, 0.044211,
		35.934460, 36.552940, 48.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185051, 36.582142, 49.297230>,  <35.355312, 36.944897, 48.773071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185051, 36.582142, 49.297230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583832, 36.569164, 49.268875>,  <35.823101, 36.561378, 49.251862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583832, 36.569164, 49.268875>,  <35.185051, 36.582142, 49.297230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583832, 36.569164, 49.268875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067122, -0.105334, 0.992169,
		-0.039659, -0.993907, -0.102836,
		0.996956, -0.032446, -0.070890,
		35.882919, 36.559429, 49.247608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305332, 36.013783, 49.601261>,  <35.185051, 36.582142, 49.297230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305332, 36.013783, 49.601261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.665619, 36.186832, 49.617020>,  <35.881790, 36.290661, 49.626472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.665619, 36.186832, 49.617020>,  <35.305332, 36.013783, 49.601261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665619, 36.186832, 49.617020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010329, -0.111984, 0.993656,
		0.434289, -0.894594, -0.105335,
		0.900715, 0.432621, 0.039393,
		35.935833, 36.316620, 49.628838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651630, 35.496319, 49.939610>,  <35.305332, 36.013783, 49.601261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651630, 35.496319, 49.939610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840668, 35.847607, 49.968956>,  <35.954090, 36.058380, 49.986565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840668, 35.847607, 49.968956>,  <35.651630, 35.496319, 49.939610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840668, 35.847607, 49.968956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066861, -0.118742, 0.990672,
		0.878738, -0.463284, -0.114835,
		0.472598, 0.878219, 0.073368,
		35.982449, 36.111073, 49.990967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284107, 35.362446, 50.353649>,  <35.651630, 35.496319, 49.939610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284107, 35.362446, 50.353649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195400, 35.751053, 50.387062>,  <36.142178, 35.984215, 50.407108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195400, 35.751053, 50.387062>,  <36.284107, 35.362446, 50.353649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195400, 35.751053, 50.387062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135502, -0.115537, 0.984017,
		0.965639, 0.206902, 0.157264,
		-0.221765, 0.971516, 0.083532,
		36.128872, 36.042507, 50.412121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489914, 35.605064, 50.959480>,  <36.284107, 35.362446, 50.353649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489914, 35.605064, 50.959480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236019, 35.901382, 50.871552>,  <36.083683, 36.079174, 50.818794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236019, 35.901382, 50.871552>,  <36.489914, 35.605064, 50.959480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236019, 35.901382, 50.871552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388577, -0.060107, 0.919454,
		0.667918, 0.669032, 0.326009,
		-0.634739, 0.740799, -0.219824,
		36.045597, 36.123623, 50.805603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540928, 35.991299, 51.569878>,  <36.489914, 35.605064, 50.959480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540928, 35.991299, 51.569878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184460, 36.085625, 51.414852>,  <35.970577, 36.142220, 51.321838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184460, 36.085625, 51.414852>,  <36.540928, 35.991299, 51.569878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184460, 36.085625, 51.414852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423353, -0.125245, 0.897266,
		0.163053, 0.963692, 0.211450,
		-0.891171, 0.235820, -0.387560,
		35.917107, 36.156372, 51.298584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227577, 36.474106, 52.018723>,  <36.540928, 35.991299, 51.569878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227577, 36.474106, 52.018723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901829, 36.345280, 51.825611>,  <35.706379, 36.267986, 51.709743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901829, 36.345280, 51.825611>,  <36.227577, 36.474106, 52.018723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901829, 36.345280, 51.825611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521053, 0.039471, 0.852611,
		-0.255537, 0.945896, -0.199955,
		-0.814374, -0.322061, -0.482776,
		35.657516, 36.248661, 51.680779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737770, 36.837543, 52.178699>,  <36.227577, 36.474106, 52.018723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737770, 36.837543, 52.178699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539658, 36.511181, 52.059380>,  <35.420788, 36.315361, 51.987789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539658, 36.511181, 52.059380>,  <35.737770, 36.837543, 52.178699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539658, 36.511181, 52.059380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400363, -0.090358, 0.911890,
		-0.770975, 0.571073, -0.281908,
		-0.495284, -0.815911, -0.298301,
		35.391071, 36.266407, 51.969891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028931, 36.905041, 52.470753>,  <35.737770, 36.837543, 52.178699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028931, 36.905041, 52.470753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136745, 36.523251, 52.419628>,  <35.201435, 36.294178, 52.388954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136745, 36.523251, 52.419628>,  <35.028931, 36.905041, 52.470753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136745, 36.523251, 52.419628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425391, -0.237086, 0.873403,
		-0.863941, -0.181041, -0.469926,
		0.269535, -0.954471, -0.127815,
		35.217606, 36.236908, 52.381283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324383, 36.621510, 52.569061>,  <35.028931, 36.905041, 52.470753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324383, 36.621510, 52.569061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505924, 36.268635, 52.619289>,  <34.614849, 36.056911, 52.649426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505924, 36.268635, 52.619289>,  <34.324383, 36.621510, 52.569061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505924, 36.268635, 52.619289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701439, 0.440608, 0.560222,
		-0.549546, -0.166177, 0.818770,
		0.453853, -0.882185, 0.125571,
		34.642078, 36.003979, 52.656960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702301, 36.380783, 52.285995>,  <34.324383, 36.621510, 52.569061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702301, 36.380783, 52.285995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425716, 36.099689, 52.352997>,  <33.259766, 35.931034, 52.393196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425716, 36.099689, 52.352997>,  <33.702301, 36.380783, 52.285995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425716, 36.099689, 52.352997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179391, -0.391622, -0.902469,
		0.699790, -0.593971, 0.396853,
		-0.691457, -0.702731, 0.167500,
		33.218281, 35.888870, 52.403248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019539, 35.860397, 52.076488>,  <33.702301, 36.380783, 52.285995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019539, 35.860397, 52.076488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625374, 35.798950, 52.047188>,  <33.388874, 35.762081, 52.029606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625374, 35.798950, 52.047188>,  <34.019539, 35.860397, 52.076488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625374, 35.798950, 52.047188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129099, -0.394233, -0.909898,
		0.110902, -0.906080, 0.408314,
		-0.985411, -0.153622, -0.073253,
		33.329750, 35.752865, 52.025211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945465, 35.196632, 51.771030>,  <34.019539, 35.860397, 52.076488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945465, 35.196632, 51.771030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611549, 35.404823, 51.699226>,  <33.411201, 35.529739, 51.656143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611549, 35.404823, 51.699226>,  <33.945465, 35.196632, 51.771030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611549, 35.404823, 51.699226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042913, -0.263546, -0.963692,
		-0.548893, -0.812184, 0.197670,
		-0.834790, 0.520481, -0.179512,
		33.361111, 35.560966, 51.645374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482189, 34.811485, 51.411545>,  <33.945465, 35.196632, 51.771030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482189, 34.811485, 51.411545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346943, 35.178871, 51.329472>,  <33.265797, 35.399303, 51.280228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346943, 35.178871, 51.329472>,  <33.482189, 34.811485, 51.411545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346943, 35.178871, 51.329472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017263, -0.211937, -0.977131,
		-0.940947, -0.333924, 0.055803,
		-0.338114, 0.918465, -0.205186,
		33.245510, 35.454411, 51.267918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135334, 34.672600, 50.838196>,  <33.482189, 34.811485, 51.411545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135334, 34.672600, 50.838196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173679, 35.069118, 50.802097>,  <33.196686, 35.307030, 50.780437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173679, 35.069118, 50.802097>,  <33.135334, 34.672600, 50.838196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173679, 35.069118, 50.802097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165337, -0.073543, -0.983491,
		-0.981568, 0.109197, 0.156848,
		0.095859, 0.991296, -0.090242,
		33.202438, 35.366508, 50.775024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589558, 34.840965, 50.418373>,  <33.135334, 34.672600, 50.838196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589558, 34.840965, 50.418373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.825886, 35.163559, 50.409325>,  <32.967682, 35.357117, 50.403896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.825886, 35.163559, 50.409325>,  <32.589558, 34.840965, 50.418373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825886, 35.163559, 50.409325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216155, 0.131212, -0.967502,
		-0.777310, 0.576508, 0.251850,
		0.590818, 0.806488, -0.022623,
		33.003132, 35.405506, 50.402538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282726, 35.474716, 50.033009>,  <32.589558, 34.840965, 50.418373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282726, 35.474716, 50.033009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672955, 35.559937, 50.054474>,  <32.907089, 35.611069, 50.067352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672955, 35.559937, 50.054474>,  <32.282726, 35.474716, 50.033009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672955, 35.559937, 50.054474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021716, 0.149550, -0.988516,
		-0.218627, 0.965528, 0.141270,
		0.975567, 0.213048, 0.053663,
		32.965626, 35.623852, 50.070572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376049, 36.239601, 49.814880>,  <32.282726, 35.474716, 50.033009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376049, 36.239601, 49.814880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.723427, 36.047817, 49.764397>,  <32.931854, 35.932747, 49.734108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.723427, 36.047817, 49.764397>,  <32.376049, 36.239601, 49.814880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723427, 36.047817, 49.764397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006751, 0.243102, -0.969977,
		0.495746, 0.843220, 0.207883,
		0.868441, -0.479459, -0.126209,
		32.983959, 35.903980, 49.726536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823696, 36.758263, 49.396763>,  <32.376049, 36.239601, 49.814880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823696, 36.758263, 49.396763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008480, 36.404575, 49.369167>,  <33.119350, 36.192364, 49.352612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008480, 36.404575, 49.369167>,  <32.823696, 36.758263, 49.396763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008480, 36.404575, 49.369167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309580, 0.233656, -0.921719,
		0.831118, 0.404435, 0.381674,
		0.461956, -0.884216, -0.068990,
		33.147068, 36.139309, 49.348469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396320, 36.887779, 49.023312>,  <32.823696, 36.758263, 49.396763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396320, 36.887779, 49.023312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.369595, 36.488926, 49.009079>,  <33.353558, 36.249615, 49.000538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.369595, 36.488926, 49.009079>,  <33.396320, 36.887779, 49.023312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369595, 36.488926, 49.009079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503489, -0.002903, -0.863996,
		0.861414, -0.075644, 0.502239,
		-0.066814, -0.997131, -0.035586,
		33.349548, 36.189785, 48.998402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039513, 36.583588, 49.129063>,  <33.396320, 36.887779, 49.023312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039513, 36.583588, 49.129063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813572, 36.337280, 48.909328>,  <33.678009, 36.189495, 48.777489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813572, 36.337280, 48.909328>,  <34.039513, 36.583588, 49.129063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813572, 36.337280, 48.909328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687786, 0.016512, -0.725725,
		0.455952, -0.787751, 0.414192,
		-0.564852, -0.615772, -0.549333,
		33.644115, 36.152550, 48.744530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429810, 36.374199, 48.638107>,  <34.039513, 36.583588, 49.129063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429810, 36.374199, 48.638107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095871, 36.214386, 48.486629>,  <33.895508, 36.118500, 48.395744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095871, 36.214386, 48.486629>,  <34.429810, 36.374199, 48.638107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095871, 36.214386, 48.486629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393346, 0.048311, -0.918121,
		0.385114, -0.915445, 0.116823,
		-0.834845, -0.399533, -0.378692,
		33.845417, 36.094524, 48.373020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574043, 35.661491, 48.235432>,  <34.429810, 36.374199, 48.638107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574043, 35.661491, 48.235432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236610, 35.830070, 48.102314>,  <34.034149, 35.931217, 48.022446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236610, 35.830070, 48.102314>,  <34.574043, 35.661491, 48.235432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236610, 35.830070, 48.102314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401396, 0.083205, -0.912117,
		-0.356720, -0.903027, -0.239358,
		-0.843583, 0.421448, -0.332791,
		33.983536, 35.956505, 48.002476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464806, 35.345310, 47.506210>,  <34.574043, 35.661491, 48.235432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464806, 35.345310, 47.506210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239693, 35.675922, 47.501743>,  <34.104626, 35.874290, 47.499062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239693, 35.675922, 47.501743>,  <34.464806, 35.345310, 47.506210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239693, 35.675922, 47.501743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330857, 0.212859, -0.919361,
		-0.757502, -0.521095, -0.393257,
		-0.562783, 0.826530, -0.011167,
		34.070858, 35.923882, 47.498394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224316, 35.320576, 46.873203>,  <34.464806, 35.345310, 47.506210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224316, 35.320576, 46.873203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175171, 35.694530, 47.006409>,  <34.145683, 35.918903, 47.086330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175171, 35.694530, 47.006409>,  <34.224316, 35.320576, 46.873203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175171, 35.694530, 47.006409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330441, 0.354948, -0.874540,
		-0.935795, 0.002591, -0.352535,
		-0.122866, 0.934882, 0.333015,
		34.138309, 35.974995, 47.106312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011200, 35.551735, 46.326683>,  <34.224316, 35.320576, 46.873203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011200, 35.551735, 46.326683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077110, 35.886410, 46.535606>,  <34.116657, 36.087215, 46.660961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077110, 35.886410, 46.535606>,  <34.011200, 35.551735, 46.326683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077110, 35.886410, 46.535606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217970, 0.485567, -0.846589,
		-0.961945, 0.253346, -0.102362,
		0.164776, 0.836684, 0.522311,
		34.126545, 36.137417, 46.692299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520782, 35.941372, 46.143898>,  <34.011200, 35.551735, 46.326683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520782, 35.941372, 46.143898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853279, 36.127598, 46.265408>,  <34.052776, 36.239334, 46.338314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853279, 36.127598, 46.265408>,  <33.520782, 35.941372, 46.143898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853279, 36.127598, 46.265408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049249, 0.482623, -0.874443,
		-0.553720, 0.741837, 0.378249,
		0.831245, 0.465568, 0.303773,
		34.102654, 36.267269, 46.356541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375668, 36.658707, 46.069878>,  <33.520782, 35.941372, 46.143898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375668, 36.658707, 46.069878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772312, 36.614449, 46.096615>,  <34.010300, 36.587894, 46.112656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772312, 36.614449, 46.096615>,  <33.375668, 36.658707, 46.069878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772312, 36.614449, 46.096615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121861, 0.627591, -0.768947,
		0.043131, 0.770641, 0.635809,
		0.991610, -0.110645, 0.066843,
		34.069794, 36.581253, 46.116669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612617, 37.329880, 46.040867>,  <33.375668, 36.658707, 46.069878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612617, 37.329880, 46.040867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930054, 37.096275, 45.972584>,  <34.120518, 36.956112, 45.931614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930054, 37.096275, 45.972584>,  <33.612617, 37.329880, 46.040867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930054, 37.096275, 45.972584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182497, 0.496107, -0.848865,
		0.580436, 0.642500, 0.500288,
		0.793592, -0.584013, -0.170704,
		34.168133, 36.921070, 45.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095249, 37.777061, 45.884476>,  <33.612617, 37.329880, 46.040867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095249, 37.777061, 45.884476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228836, 37.452591, 45.692448>,  <34.308987, 37.257908, 45.577232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228836, 37.452591, 45.692448>,  <34.095249, 37.777061, 45.884476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228836, 37.452591, 45.692448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234547, 0.564808, -0.791189,
		0.912937, 0.151632, 0.378885,
		0.333967, -0.811172, -0.480070,
		34.329025, 37.209240, 45.548428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743782, 38.044331, 45.504169>,  <34.095249, 37.777061, 45.884476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743782, 38.044331, 45.504169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630741, 37.695923, 45.343437>,  <34.562916, 37.486877, 45.246998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630741, 37.695923, 45.343437>,  <34.743782, 38.044331, 45.504169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630741, 37.695923, 45.343437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130599, 0.380067, -0.915693,
		0.950306, -0.311253, 0.006347,
		-0.282600, -0.871017, -0.401829,
		34.545959, 37.434616, 45.222889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.804970, 35.844707, 28.381845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566414, 36.107601, 28.566174>,  <40.423279, 36.265339, 28.676771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566414, 36.107601, 28.566174>,  <40.804970, 35.844707, 28.381845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566414, 36.107601, 28.566174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481799, -0.166072, 0.860401,
		0.642016, 0.735160, -0.217612,
		-0.596394, 0.657236, 0.460820,
		40.387497, 36.304771, 28.704420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203781, 36.375816, 28.799286>,  <40.804970, 35.844707, 28.381845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203781, 36.375816, 28.799286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845673, 36.348129, 28.975332>,  <40.630810, 36.331516, 29.080961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845673, 36.348129, 28.975332>,  <41.203781, 36.375816, 28.799286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845673, 36.348129, 28.975332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444400, -0.208995, 0.871109,
		0.031685, 0.975464, 0.217867,
		-0.895268, -0.069219, 0.440118,
		40.577091, 36.327362, 29.107368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286495, 36.778858, 29.419773>,  <41.203781, 36.375816, 28.799286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286495, 36.778858, 29.419773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.948700, 36.572430, 29.477058>,  <40.746021, 36.448574, 29.511429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.948700, 36.572430, 29.477058>,  <41.286495, 36.778858, 29.419773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948700, 36.572430, 29.477058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153419, 0.023090, 0.987891,
		-0.513129, 0.856234, 0.059676,
		-0.844488, -0.516072, 0.143211,
		40.695354, 36.417606, 29.520021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942051, 37.195850, 29.925568>,  <41.286495, 36.778858, 29.419773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942051, 37.195850, 29.925568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.805943, 36.820957, 29.956074>,  <40.724277, 36.596024, 29.974379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.805943, 36.820957, 29.956074>,  <40.942051, 37.195850, 29.925568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805943, 36.820957, 29.956074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467556, -0.098262, 0.878485,
		-0.815849, 0.334579, 0.471644,
		-0.340268, -0.937231, 0.076267,
		40.703861, 36.539787, 29.978954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649334, 37.201569, 30.604322>,  <40.942051, 37.195850, 29.925568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649334, 37.201569, 30.604322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739769, 36.825371, 30.502844>,  <40.794029, 36.599651, 30.441957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739769, 36.825371, 30.502844>,  <40.649334, 37.201569, 30.604322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739769, 36.825371, 30.502844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344256, -0.166489, 0.923996,
		-0.911249, -0.296236, 0.286130,
		0.226083, -0.940492, -0.253694,
		40.807594, 36.543224, 30.426735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446465, 36.874500, 31.167389>,  <40.649334, 37.201569, 30.604322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446465, 36.874500, 31.167389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697674, 36.616207, 30.993664>,  <40.848400, 36.461231, 30.889429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697674, 36.616207, 30.993664>,  <40.446465, 36.874500, 31.167389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697674, 36.616207, 30.993664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351905, -0.262125, 0.898584,
		-0.694085, -0.717165, 0.062616,
		0.628020, -0.645728, -0.434311,
		40.886078, 36.422489, 30.863371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568779, 36.392704, 31.628357>,  <40.446465, 36.874500, 31.167389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568779, 36.392704, 31.628357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.874874, 36.300564, 31.387907>,  <41.058533, 36.245277, 31.243637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.874874, 36.300564, 31.387907>,  <40.568779, 36.392704, 31.628357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874874, 36.300564, 31.387907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478342, -0.421450, 0.770434,
		-0.430831, -0.877103, -0.212310,
		0.765228, -0.230370, -0.601128,
		41.104446, 36.231457, 31.207569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890217, 35.792328, 31.857805>,  <40.568779, 36.392704, 31.628357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890217, 35.792328, 31.857805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191200, 35.939125, 31.639036>,  <41.371788, 36.027203, 31.507774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191200, 35.939125, 31.639036>,  <40.890217, 35.792328, 31.857805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191200, 35.939125, 31.639036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656978, -0.359217, 0.662830,
		0.046792, -0.858066, -0.511403,
		0.752457, 0.366996, -0.546922,
		41.416939, 36.049225, 31.474960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372513, 35.320602, 31.874155>,  <40.890217, 35.792328, 31.857805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372513, 35.320602, 31.874155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579384, 35.654205, 31.797258>,  <41.703506, 35.854366, 31.751120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579384, 35.654205, 31.797258>,  <41.372513, 35.320602, 31.874155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579384, 35.654205, 31.797258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716560, -0.299093, 0.630147,
		0.468049, -0.463652, -0.752301,
		0.517177, 0.834009, -0.192244,
		41.734535, 35.904408, 31.739586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010715, 35.108902, 31.835960>,  <41.372513, 35.320602, 31.874155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010715, 35.108902, 31.835960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069569, 35.503788, 31.860512>,  <42.104881, 35.740719, 31.875242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069569, 35.503788, 31.860512>,  <42.010715, 35.108902, 31.835960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069569, 35.503788, 31.860512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866037, -0.158552, 0.474173,
		0.477841, -0.016612, -0.878290,
		0.147132, 0.987211, 0.061376,
		42.113708, 35.799950, 31.878925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739273, 35.247665, 31.673122>,  <42.010715, 35.108902, 31.835960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739273, 35.247665, 31.673122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613686, 35.568058, 31.877026>,  <42.538334, 35.760292, 31.999367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613686, 35.568058, 31.877026>,  <42.739273, 35.247665, 31.673122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613686, 35.568058, 31.877026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758082, -0.111752, 0.642513,
		0.571608, 0.588165, -0.572124,
		-0.313968, 0.800983, 0.509756,
		42.519497, 35.808353, 32.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388062, 35.709164, 31.772842>,  <42.739273, 35.247665, 31.673122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388062, 35.709164, 31.772842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116547, 35.820503, 32.044655>,  <42.953636, 35.887306, 32.207741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116547, 35.820503, 32.044655>,  <43.388062, 35.709164, 31.772842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116547, 35.820503, 32.044655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700052, -0.034145, 0.713275,
		0.221743, 0.959872, -0.171683,
		-0.678791, 0.278351, 0.679532,
		42.912910, 35.904007, 32.248516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758720, 36.111446, 32.169815>,  <43.388062, 35.709164, 31.772842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758720, 36.111446, 32.169815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445847, 35.987949, 32.386288>,  <43.258121, 35.913853, 32.516171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445847, 35.987949, 32.386288>,  <43.758720, 36.111446, 32.169815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445847, 35.987949, 32.386288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570100, -0.004236, 0.821564,
		-0.251356, 0.951138, 0.179325,
		-0.782180, -0.308738, 0.541179,
		43.211193, 35.895329, 32.548641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923344, 36.389629, 32.851852>,  <43.758720, 36.111446, 32.169815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923344, 36.389629, 32.851852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633362, 36.119522, 32.906193>,  <43.459373, 35.957458, 32.938797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633362, 36.119522, 32.906193>,  <43.923344, 36.389629, 32.851852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633362, 36.119522, 32.906193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375673, -0.222306, 0.899695,
		-0.577336, 0.703271, 0.414842,
		-0.724950, -0.675271, 0.135854,
		43.415878, 35.916943, 32.946949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798695, 36.469887, 33.554585>,  <43.923344, 36.389629, 32.851852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798695, 36.469887, 33.554585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666336, 36.107403, 33.449291>,  <43.586922, 35.889912, 33.386116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666336, 36.107403, 33.449291>,  <43.798695, 36.469887, 33.554585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666336, 36.107403, 33.449291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346313, -0.376104, 0.859426,
		-0.877822, 0.193222, 0.438284,
		-0.330900, -0.906207, -0.263237,
		43.567066, 35.835541, 33.370319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346863, 36.165710, 34.142483>,  <43.798695, 36.469887, 33.554585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346863, 36.165710, 34.142483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489925, 35.855446, 33.934471>,  <43.575764, 35.669289, 33.809666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489925, 35.855446, 33.934471>,  <43.346863, 36.165710, 34.142483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489925, 35.855446, 33.934471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352406, -0.403588, 0.844350,
		-0.864808, -0.485248, 0.129003,
		0.357655, -0.775662, -0.520030,
		43.597221, 35.622746, 33.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333847, 35.682034, 34.702663>,  <43.346863, 36.165710, 34.142483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333847, 35.682034, 34.702663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536930, 35.519188, 34.398956>,  <43.658779, 35.421478, 34.216732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536930, 35.519188, 34.398956>,  <43.333847, 35.682034, 34.702663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536930, 35.519188, 34.398956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495831, -0.582640, 0.643958,
		-0.704548, -0.703410, -0.093946,
		0.507704, -0.407118, -0.759271,
		43.689240, 35.397053, 34.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351013, 34.977852, 34.870739>,  <43.333847, 35.682034, 34.702663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351013, 34.977852, 34.870739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669380, 35.038185, 34.636211>,  <43.860401, 35.074383, 34.495495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669380, 35.038185, 34.636211>,  <43.351013, 34.977852, 34.870739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669380, 35.038185, 34.636211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527927, -0.646947, 0.550230,
		-0.296324, -0.747469, -0.594544,
		0.795918, 0.150829, -0.586315,
		43.908157, 35.083435, 34.460316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635456, 34.377499, 34.668583>,  <43.351013, 34.977852, 34.870739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635456, 34.377499, 34.668583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956234, 34.603195, 34.590084>,  <44.148701, 34.738613, 34.542984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956234, 34.603195, 34.590084>,  <43.635456, 34.377499, 34.668583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956234, 34.603195, 34.590084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563522, -0.605455, 0.562021,
		0.198298, -0.561300, -0.803505,
		0.801949, 0.564240, -0.196244,
		44.196819, 34.772469, 34.531212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186352, 33.818504, 34.550922>,  <43.635456, 34.377499, 34.668583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186352, 33.818504, 34.550922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353054, 34.167667, 34.652393>,  <44.453075, 34.377163, 34.713276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353054, 34.167667, 34.652393>,  <44.186352, 33.818504, 34.550922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353054, 34.167667, 34.652393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637426, -0.479585, 0.603064,
		0.648077, -0.089630, -0.756282,
		0.416754, 0.872906, 0.253675,
		44.478081, 34.429539, 34.728497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952972, 33.708530, 34.700325>,  <44.186352, 33.818504, 34.550922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952972, 33.708530, 34.700325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859348, 34.047615, 34.890739>,  <44.803173, 34.251064, 35.004986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859348, 34.047615, 34.890739>,  <44.952972, 33.708530, 34.700325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859348, 34.047615, 34.890739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548226, -0.289281, 0.784707,
		0.802909, 0.444643, -0.397026,
		-0.234063, 0.847708, 0.476032,
		44.789131, 34.301926, 35.033550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505039, 34.203621, 34.417561>,  <44.952972, 33.708530, 34.700325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505039, 34.203621, 34.417561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788937, 34.057236, 34.176785>,  <45.959274, 33.969406, 34.032318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788937, 34.057236, 34.176785>,  <45.505039, 34.203621, 34.417561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788937, 34.057236, 34.176785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254195, 0.663860, -0.703331,
		0.656996, 0.652197, 0.378146,
		0.709747, -0.365963, -0.601939,
		46.001862, 33.947445, 33.996204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699738, 34.804829, 34.094383>,  <45.505039, 34.203621, 34.417561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699738, 34.804829, 34.094383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.862724, 34.502911, 33.888760>,  <45.960518, 34.321762, 33.765385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.862724, 34.502911, 33.888760>,  <45.699738, 34.804829, 34.094383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862724, 34.502911, 33.888760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066844, 0.586053, -0.807511,
		0.910771, 0.294671, 0.289250,
		0.407466, -0.754792, -0.514063,
		45.984962, 34.276474, 33.734539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352474, 35.104893, 33.728329>,  <45.699738, 34.804829, 34.094383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352474, 35.104893, 33.728329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211578, 34.788776, 33.527782>,  <46.127041, 34.599106, 33.407455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211578, 34.788776, 33.527782>,  <46.352474, 35.104893, 33.728329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211578, 34.788776, 33.527782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000435, 0.535840, -0.844320,
		0.935911, -0.297183, -0.189086,
		-0.352237, -0.790290, -0.501369,
		46.105907, 34.551689, 33.377373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733551, 35.261013, 33.191044>,  <46.352474, 35.104893, 33.728329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733551, 35.261013, 33.191044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.460724, 34.980877, 33.106850>,  <46.297028, 34.812794, 33.056332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.460724, 34.980877, 33.106850>,  <46.733551, 35.261013, 33.191044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460724, 34.980877, 33.106850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207427, 0.461289, -0.862662,
		0.701254, -0.544733, -0.459900,
		-0.682068, -0.700341, -0.210489,
		46.256104, 34.770775, 33.043701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944889, 35.039452, 32.502323>,  <46.733551, 35.261013, 33.191044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944889, 35.039452, 32.502323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562878, 34.949543, 32.579689>,  <46.333672, 34.895599, 32.626106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562878, 34.949543, 32.579689>,  <46.944889, 35.039452, 32.502323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562878, 34.949543, 32.579689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276873, 0.442413, -0.853002,
		0.106161, -0.868188, -0.484747,
		-0.955024, -0.224769, 0.193411,
		46.276371, 34.882111, 32.637711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667931, 34.794308, 31.840990>,  <46.944889, 35.039452, 32.502323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667931, 34.794308, 31.840990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.345238, 34.890388, 32.056946>,  <46.151623, 34.948036, 32.186520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.345238, 34.890388, 32.056946>,  <46.667931, 34.794308, 31.840990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345238, 34.890388, 32.056946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372185, 0.503104, -0.779978,
		-0.458977, -0.830173, -0.316469,
		-0.806733, 0.240206, 0.539891,
		46.103218, 34.962452, 32.218914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030861, 34.707977, 31.325373>,  <46.667931, 34.794308, 31.840990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030861, 34.707977, 31.325373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899017, 34.945374, 31.619072>,  <45.819912, 35.087811, 31.795292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899017, 34.945374, 31.619072>,  <46.030861, 34.707977, 31.325373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899017, 34.945374, 31.619072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545869, 0.514740, -0.661113,
		-0.770313, -0.618714, 0.154305,
		-0.329613, 0.593494, 0.734248,
		45.800133, 35.123421, 31.839346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266319, 34.859474, 31.227453>,  <46.030861, 34.707977, 31.325373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266319, 34.859474, 31.227453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.449886, 35.145958, 31.437765>,  <45.560024, 35.317848, 31.563951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.449886, 35.145958, 31.437765>,  <45.266319, 34.859474, 31.227453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449886, 35.145958, 31.437765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418295, 0.696249, -0.583324,
		-0.783855, 0.047764, 0.619105,
		0.458913, 0.716209, 0.525778,
		45.587559, 35.360821, 31.595499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725239, 35.269119, 31.380007>,  <45.266319, 34.859474, 31.227453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725239, 35.269119, 31.380007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.059631, 35.485317, 31.417982>,  <45.260265, 35.615036, 31.440767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.059631, 35.485317, 31.417982>,  <44.725239, 35.269119, 31.380007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059631, 35.485317, 31.417982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418019, 0.739282, -0.527942,
		-0.355532, 0.401663, 0.843957,
		0.835977, 0.540490, 0.094936,
		45.310425, 35.647465, 31.446463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525745, 35.975960, 31.556887>,  <44.725239, 35.269119, 31.380007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525745, 35.975960, 31.556887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.896240, 36.012215, 31.410530>,  <45.118538, 36.033966, 31.322716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.896240, 36.012215, 31.410530>,  <44.525745, 35.975960, 31.556887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896240, 36.012215, 31.410530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293047, 0.783670, -0.547709,
		0.237097, 0.614530, 0.752422,
		0.926234, 0.090635, -0.365892,
		45.174110, 36.039406, 31.300762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586853, 36.680328, 31.511953>,  <44.525745, 35.975960, 31.556887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586853, 36.680328, 31.511953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.909286, 36.556568, 31.310163>,  <45.102749, 36.482311, 31.189089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.909286, 36.556568, 31.310163>,  <44.586853, 36.680328, 31.511953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909286, 36.556568, 31.310163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099285, 0.769658, -0.630689,
		0.583410, 0.558477, 0.589692,
		0.806086, -0.309403, -0.504475,
		45.151112, 36.463749, 31.158821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051456, 37.245670, 31.284370>,  <44.586853, 36.680328, 31.511953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051456, 37.245670, 31.284370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198845, 36.982025, 31.022133>,  <45.287277, 36.823837, 30.864790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198845, 36.982025, 31.022133>,  <45.051456, 37.245670, 31.284370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198845, 36.982025, 31.022133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118516, 0.666155, -0.736336,
		0.922053, 0.349017, 0.167345,
		0.368472, -0.659108, -0.655595,
		45.309387, 36.784294, 30.825455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494328, 37.685932, 30.880013>,  <45.051456, 37.245670, 31.284370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494328, 37.685932, 30.880013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377499, 37.350597, 30.695889>,  <45.307404, 37.149395, 30.585415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377499, 37.350597, 30.695889>,  <45.494328, 37.685932, 30.880013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377499, 37.350597, 30.695889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339775, 0.540851, -0.769437,
		0.894008, -0.068326, -0.442811,
		-0.292068, -0.838339, -0.460309,
		45.289879, 37.099094, 30.557796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626793, 37.712910, 30.226057>,  <45.494328, 37.685932, 30.880013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626793, 37.712910, 30.226057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343071, 37.432850, 30.193365>,  <45.172840, 37.264812, 30.173750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343071, 37.432850, 30.193365>,  <45.626793, 37.712910, 30.226057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343071, 37.432850, 30.193365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278466, 0.384831, -0.879978,
		0.647570, -0.601412, -0.467929,
		-0.709303, -0.700150, -0.081732,
		45.130280, 37.222805, 30.168846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680195, 37.651596, 29.641533>,  <45.626793, 37.712910, 30.226057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680195, 37.651596, 29.641533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334190, 37.467445, 29.721344>,  <45.126587, 37.356953, 29.769230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334190, 37.467445, 29.721344>,  <45.680195, 37.651596, 29.641533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334190, 37.467445, 29.721344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373084, 0.324239, -0.869297,
		0.335522, -0.826385, -0.452232,
		-0.865005, -0.460389, 0.199521,
		45.074688, 37.329330, 29.781202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501766, 37.251705, 28.978886>,  <45.680195, 37.651596, 29.641533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501766, 37.251705, 28.978886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167309, 37.285091, 29.195738>,  <44.966637, 37.305122, 29.325850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167309, 37.285091, 29.195738>,  <45.501766, 37.251705, 28.978886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167309, 37.285091, 29.195738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506469, 0.262028, -0.821480,
		-0.210616, -0.961444, -0.176821,
		-0.836140, 0.083462, 0.542129,
		44.916466, 37.310131, 29.358377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952560, 36.777588, 28.728371>,  <45.501766, 37.251705, 28.978886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952560, 36.777588, 28.728371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781509, 37.096279, 28.899181>,  <44.678879, 37.287495, 29.001667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781509, 37.096279, 28.899181>,  <44.952560, 36.777588, 28.728371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781509, 37.096279, 28.899181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591283, 0.110785, -0.798819,
		-0.683752, -0.594091, 0.423719,
		-0.427629, 0.796732, 0.427026,
		44.653221, 37.335300, 29.027288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247444, 36.708225, 28.536938>,  <44.952560, 36.777588, 28.728371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247444, 36.708225, 28.536938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289734, 37.095524, 28.627556>,  <44.315109, 37.327904, 28.681927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289734, 37.095524, 28.627556>,  <44.247444, 36.708225, 28.536938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289734, 37.095524, 28.627556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612625, 0.242875, -0.752132,
		-0.783271, -0.059269, 0.618849,
		0.105725, 0.968245, 0.226547,
		44.321453, 37.385998, 28.695520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454639, 36.994431, 28.519552>,  <44.247444, 36.708225, 28.536938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454639, 36.994431, 28.519552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.681362, 37.323936, 28.524370>,  <43.817394, 37.521641, 28.527262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.681362, 37.323936, 28.524370>,  <43.454639, 36.994431, 28.519552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681362, 37.323936, 28.524370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709044, 0.495212, -0.502018,
		-0.419508, 0.276007, 0.864774,
		0.566807, 0.823763, 0.012044,
		43.851406, 37.571064, 28.527983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964169, 37.502686, 28.817146>,  <43.454639, 36.994431, 28.519552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964169, 37.502686, 28.817146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269253, 37.690422, 28.639164>,  <43.452305, 37.803062, 28.532373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269253, 37.690422, 28.639164>,  <42.964169, 37.502686, 28.817146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269253, 37.690422, 28.639164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635797, 0.418129, -0.648792,
		-0.118455, 0.777745, 0.617318,
		0.762712, 0.469342, -0.444958,
		43.498066, 37.831226, 28.505676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840988, 38.234650, 28.796997>,  <42.964169, 37.502686, 28.817146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840988, 38.234650, 28.796997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105900, 38.159603, 28.506842>,  <43.264847, 38.114574, 28.332748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105900, 38.159603, 28.506842>,  <42.840988, 38.234650, 28.796997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105900, 38.159603, 28.506842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486476, 0.628647, -0.606749,
		0.569849, 0.754721, 0.325068,
		0.662278, -0.187617, -0.725388,
		43.304585, 38.103317, 28.289225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.214054, 36.009605, 41.644482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827446, 36.107727, 41.614357>,  <38.595482, 36.166599, 41.596283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827446, 36.107727, 41.614357>,  <39.214054, 36.009605, 41.644482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827446, 36.107727, 41.614357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046423, -0.121509, -0.991504,
		-0.252372, -0.961801, 0.106053,
		-0.966516, 0.245305, -0.075315,
		38.537491, 36.181316, 41.591763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836327, 35.480186, 41.238495>,  <39.214054, 36.009605, 41.644482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836327, 35.480186, 41.238495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593651, 35.797588, 41.219418>,  <38.448048, 35.988029, 41.207970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593651, 35.797588, 41.219418>,  <38.836327, 35.480186, 41.238495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593651, 35.797588, 41.219418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038707, -0.030441, -0.998787,
		-0.793998, -0.607797, -0.012246,
		-0.606687, 0.793509, -0.047696,
		38.411644, 36.035641, 41.205109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180401, 35.408833, 40.679108>,  <38.836327, 35.480186, 41.238495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180401, 35.408833, 40.679108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265129, 35.798931, 40.704472>,  <38.315964, 36.032990, 40.719688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265129, 35.798931, 40.704472>,  <38.180401, 35.408833, 40.679108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265129, 35.798931, 40.704472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054647, 0.052960, -0.997100,
		-0.975780, 0.214668, -0.042076,
		0.211817, 0.975250, 0.063408,
		38.328674, 36.091507, 40.723495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724152, 35.769436, 40.245552>,  <38.180401, 35.408833, 40.679108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724152, 35.769436, 40.245552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026134, 36.028530, 40.286514>,  <38.207325, 36.183987, 40.311092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026134, 36.028530, 40.286514>,  <37.724152, 35.769436, 40.245552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026134, 36.028530, 40.286514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035753, 0.196579, -0.979836,
		-0.654801, 0.736071, 0.171567,
		0.754955, 0.647732, 0.102403,
		38.252621, 36.222851, 40.317234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624519, 36.127621, 39.673084>,  <37.724152, 35.769436, 40.245552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624519, 36.127621, 39.673084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987354, 36.260487, 39.776512>,  <38.205055, 36.340206, 39.838570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987354, 36.260487, 39.776512>,  <37.624519, 36.127621, 39.673084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987354, 36.260487, 39.776512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151136, 0.316313, -0.936539,
		-0.392878, 0.888600, 0.236720,
		0.907086, 0.332169, 0.258571,
		38.259480, 36.360138, 39.854084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655960, 36.713219, 39.280384>,  <37.624519, 36.127621, 39.673084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655960, 36.713219, 39.280384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041134, 36.632542, 39.352028>,  <38.272240, 36.584137, 39.395016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041134, 36.632542, 39.352028>,  <37.655960, 36.713219, 39.280384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041134, 36.632542, 39.352028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226699, 0.245302, -0.942568,
		0.146169, 0.948235, 0.281932,
		0.962934, -0.201688, 0.179109,
		38.330013, 36.572037, 39.405762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069134, 37.293598, 39.029861>,  <37.655960, 36.713219, 39.280384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069134, 37.293598, 39.029861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299206, 36.967232, 39.053349>,  <38.437248, 36.771412, 39.067440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299206, 36.967232, 39.053349>,  <38.069134, 37.293598, 39.029861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299206, 36.967232, 39.053349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313081, 0.153255, -0.937280,
		0.755741, 0.557492, 0.343597,
		0.575184, -0.815914, 0.058719,
		38.471760, 36.722458, 39.070965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598671, 37.489559, 38.626236>,  <38.069134, 37.293598, 39.029861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598671, 37.489559, 38.626236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665340, 37.096371, 38.657192>,  <38.705341, 36.860458, 38.675766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665340, 37.096371, 38.657192>,  <38.598671, 37.489559, 38.626236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665340, 37.096371, 38.657192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444329, 0.004810, -0.895851,
		0.880222, 0.183706, 0.437564,
		0.166678, -0.982970, 0.077392,
		38.715343, 36.801479, 38.680408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293228, 37.338535, 38.347588>,  <38.598671, 37.489559, 38.626236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293228, 37.338535, 38.347588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123875, 36.976311, 38.336994>,  <39.022263, 36.758976, 38.330639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123875, 36.976311, 38.336994>,  <39.293228, 37.338535, 38.347588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123875, 36.976311, 38.336994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456936, -0.188214, -0.869359,
		0.782275, -0.380173, 0.493472,
		-0.423385, -0.905563, -0.026479,
		38.996861, 36.704643, 38.329052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834858, 36.905029, 38.179550>,  <39.293228, 37.338535, 38.347588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834858, 36.905029, 38.179550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500935, 36.706593, 38.084061>,  <39.300579, 36.587532, 38.026768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500935, 36.706593, 38.084061>,  <39.834858, 36.905029, 38.179550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500935, 36.706593, 38.084061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364324, -0.172707, -0.915118,
		0.412751, -0.850922, 0.324914,
		-0.834808, -0.496089, -0.238726,
		39.250492, 36.557766, 38.012444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087639, 36.361725, 37.828636>,  <39.834858, 36.905029, 38.179550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087639, 36.361725, 37.828636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705242, 36.381290, 37.712925>,  <39.475803, 36.393028, 37.643497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705242, 36.381290, 37.712925>,  <40.087639, 36.361725, 37.828636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705242, 36.381290, 37.712925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287133, -0.046451, -0.956764,
		-0.060242, -0.997722, 0.030360,
		-0.955995, 0.048920, -0.289277,
		39.418442, 36.395966, 37.626141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902901, 35.793442, 37.307526>,  <40.087639, 36.361725, 37.828636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902901, 35.793442, 37.307526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630394, 36.080265, 37.248600>,  <39.466888, 36.252357, 37.213245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630394, 36.080265, 37.248600>,  <39.902901, 35.793442, 37.307526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630394, 36.080265, 37.248600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251548, 0.040331, -0.967004,
		-0.687458, -0.695845, -0.207851,
		-0.681268, 0.717059, -0.147313,
		39.426014, 36.295383, 37.204407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536770, 35.605930, 36.838150>,  <39.902901, 35.793442, 37.307526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536770, 35.605930, 36.838150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484997, 36.000275, 36.795593>,  <39.453934, 36.236881, 36.770061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484997, 36.000275, 36.795593>,  <39.536770, 35.605930, 36.838150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484997, 36.000275, 36.795593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277093, -0.067056, -0.958500,
		-0.952085, -0.153541, -0.264497,
		-0.129433, 0.985865, -0.106388,
		39.446167, 36.296036, 36.763676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996975, 35.649681, 36.315407>,  <39.536770, 35.605930, 36.838150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996975, 35.649681, 36.315407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222050, 35.978741, 36.348000>,  <39.357094, 36.176174, 36.367558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222050, 35.978741, 36.348000>,  <38.996975, 35.649681, 36.315407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222050, 35.978741, 36.348000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034625, 0.121937, -0.991934,
		-0.825947, 0.555323, 0.097096,
		0.562683, 0.822647, 0.081485,
		39.390854, 36.225536, 36.372444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417202, 35.058735, 35.983299>,  <38.996975, 35.649681, 36.315407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417202, 35.058735, 35.983299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583469, 34.710270, 36.087837>,  <39.683228, 34.501190, 36.150562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583469, 34.710270, 36.087837>,  <39.417202, 35.058735, 35.983299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583469, 34.710270, 36.087837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727105, -0.145662, 0.670895,
		-0.546389, -0.468894, -0.693972,
		0.415664, -0.871161, 0.261347,
		39.708168, 34.448921, 36.166241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820717, 34.669205, 36.077320>,  <39.417202, 35.058735, 35.983299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820717, 34.669205, 36.077320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112907, 34.480240, 36.274593>,  <39.288223, 34.366859, 36.392956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112907, 34.480240, 36.274593>,  <38.820717, 34.669205, 36.077320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112907, 34.480240, 36.274593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622835, -0.164606, 0.764841,
		-0.280143, -0.865868, -0.414479,
		0.730477, -0.472417, 0.493179,
		39.332050, 34.338516, 36.422546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429020, 34.282204, 36.361420>,  <38.820717, 34.669205, 36.077320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429020, 34.282204, 36.361420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784039, 34.205353, 36.528919>,  <38.997051, 34.159241, 36.629417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784039, 34.205353, 36.528919>,  <38.429020, 34.282204, 36.361420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784039, 34.205353, 36.528919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460494, -0.398390, 0.793241,
		0.014421, -0.896868, -0.442063,
		0.887546, -0.192129, 0.418748,
		39.050301, 34.147713, 36.654545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392826, 33.550468, 36.554440>,  <38.429020, 34.282204, 36.361420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392826, 33.550468, 36.554440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652756, 33.743732, 36.789143>,  <38.808712, 33.859692, 36.929966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652756, 33.743732, 36.789143>,  <38.392826, 33.550468, 36.554440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652756, 33.743732, 36.789143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505192, -0.302230, 0.808355,
		0.567900, -0.821715, 0.047692,
		0.649824, 0.483159, 0.586760,
		38.847702, 33.888680, 36.965172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462379, 33.131641, 37.166107>,  <38.392826, 33.550468, 36.554440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462379, 33.131641, 37.166107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598583, 33.489235, 37.282619>,  <38.680305, 33.703793, 37.352528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598583, 33.489235, 37.282619>,  <38.462379, 33.131641, 37.166107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598583, 33.489235, 37.282619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401179, -0.142038, 0.904920,
		0.850358, -0.424988, 0.310284,
		0.340508, 0.893986, 0.291279,
		38.700737, 33.757431, 37.370003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887169, 33.139862, 37.857403>,  <38.462379, 33.131641, 37.166107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887169, 33.139862, 37.857403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702679, 33.491875, 37.812126>,  <38.591984, 33.703083, 37.784962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702679, 33.491875, 37.812126>,  <38.887169, 33.139862, 37.857403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702679, 33.491875, 37.812126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470612, -0.134488, 0.872030,
		0.752191, 0.455475, 0.476183,
		-0.461229, 0.880031, -0.113191,
		38.564308, 33.755882, 37.778168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874210, 33.404533, 38.521282>,  <38.887169, 33.139862, 37.857403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874210, 33.404533, 38.521282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611454, 33.650967, 38.347412>,  <38.453800, 33.798824, 38.243092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611454, 33.650967, 38.347412>,  <38.874210, 33.404533, 38.521282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611454, 33.650967, 38.347412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558134, -0.009719, 0.829694,
		0.506932, 0.787625, 0.350239,
		-0.656892, 0.616079, -0.434673,
		38.414387, 33.835789, 38.217010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785774, 34.052719, 38.933823>,  <38.874210, 33.404533, 38.521282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785774, 34.052719, 38.933823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435997, 34.032509, 38.740829>,  <38.226131, 34.020382, 38.625034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435997, 34.032509, 38.740829>,  <38.785774, 34.052719, 38.933823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435997, 34.032509, 38.740829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481146, 0.217387, 0.849259,
		0.061976, 0.974777, -0.214404,
		-0.874447, -0.050526, -0.482483,
		38.173664, 34.017349, 38.596085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456280, 34.459682, 39.395336>,  <38.785774, 34.052719, 38.933823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456280, 34.459682, 39.395336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172718, 34.313366, 39.154125>,  <38.002579, 34.225574, 39.009399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172718, 34.313366, 39.154125>,  <38.456280, 34.459682, 39.395336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172718, 34.313366, 39.154125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632097, -0.049800, 0.773288,
		-0.312893, 0.929363, -0.195912,
		-0.708909, -0.365791, -0.603030,
		37.960045, 34.203629, 38.973217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808941, 34.911674, 39.457241>,  <38.456280, 34.459682, 39.395336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808941, 34.911674, 39.457241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694885, 34.563896, 39.295864>,  <37.626453, 34.355228, 39.199039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694885, 34.563896, 39.295864>,  <37.808941, 34.911674, 39.457241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694885, 34.563896, 39.295864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607784, -0.161456, 0.777515,
		-0.741143, 0.466905, -0.482396,
		-0.285141, -0.869443, -0.403439,
		37.609344, 34.303062, 39.174831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099094, 34.930088, 39.401585>,  <37.808941, 34.911674, 39.457241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099094, 34.930088, 39.401585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214489, 34.547184, 39.409828>,  <37.283726, 34.317440, 39.414776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214489, 34.547184, 39.409828>,  <37.099094, 34.930088, 39.401585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214489, 34.547184, 39.409828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557133, -0.150317, 0.816705,
		-0.778703, -0.247092, -0.576687,
		0.288487, -0.957262, 0.020610,
		37.301037, 34.260006, 39.416012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489971, 34.511486, 39.525200>,  <37.099094, 34.930088, 39.401585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489971, 34.511486, 39.525200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805260, 34.304939, 39.659107>,  <36.994434, 34.181011, 39.739452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805260, 34.304939, 39.659107>,  <36.489971, 34.511486, 39.525200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805260, 34.304939, 39.659107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536092, -0.309066, 0.785546,
		-0.302128, -0.798676, -0.520418,
		0.788241, -0.516328, 0.334787,
		37.041725, 34.150028, 39.759537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144608, 33.918789, 39.791168>,  <36.489971, 34.511486, 39.525200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144608, 33.918789, 39.791168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515736, 33.892891, 39.938110>,  <36.738415, 33.877354, 40.026276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515736, 33.892891, 39.938110>,  <36.144608, 33.918789, 39.791168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515736, 33.892891, 39.938110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360343, -0.410111, 0.837832,
		0.096416, -0.909735, -0.403840,
		0.927824, -0.064740, 0.367358,
		36.794083, 33.873470, 40.048317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180058, 33.268665, 40.026707>,  <36.144608, 33.918789, 39.791168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180058, 33.268665, 40.026707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463879, 33.481003, 40.212067>,  <36.634171, 33.608406, 40.323284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463879, 33.481003, 40.212067>,  <36.180058, 33.268665, 40.026707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463879, 33.481003, 40.212067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267741, -0.405209, 0.874140,
		0.651805, -0.744320, -0.145389,
		0.709553, 0.530842, 0.463402,
		36.676746, 33.640255, 40.351086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796692, 32.860939, 39.636723>,  <36.180058, 33.268665, 40.026707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796692, 32.860939, 39.636723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408401, 32.766735, 39.617882>,  <35.175426, 32.710213, 39.606579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408401, 32.766735, 39.617882>,  <35.796692, 32.860939, 39.636723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408401, 32.766735, 39.617882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030623, 0.315886, -0.948303,
		0.238211, -0.919104, -0.313852,
		-0.970730, -0.235507, -0.047101,
		35.117184, 32.696083, 39.603752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654739, 32.472240, 38.909218>,  <35.796692, 32.860939, 39.636723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654739, 32.472240, 38.909218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310314, 32.621078, 39.047852>,  <35.103661, 32.710381, 39.131031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310314, 32.621078, 39.047852>,  <35.654739, 32.472240, 38.909218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310314, 32.621078, 39.047852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225868, 0.330776, -0.916281,
		-0.455589, -0.867254, -0.200772,
		-0.861059, 0.372099, 0.346582,
		35.051998, 32.732708, 39.151825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093838, 32.190788, 38.519318>,  <35.654739, 32.472240, 38.909218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093838, 32.190788, 38.519318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942623, 32.524723, 38.679386>,  <34.851894, 32.725082, 38.775429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942623, 32.524723, 38.679386>,  <35.093838, 32.190788, 38.519318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942623, 32.524723, 38.679386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456603, 0.207890, -0.865041,
		-0.805358, -0.509739, 0.302598,
		-0.378038, 0.834834, 0.400174,
		34.829212, 32.775173, 38.799438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415024, 32.288296, 38.068253>,  <35.093838, 32.190788, 38.519318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415024, 32.288296, 38.068253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516197, 32.630001, 38.249920>,  <34.576900, 32.835022, 38.358921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516197, 32.630001, 38.249920>,  <34.415024, 32.288296, 38.068253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516197, 32.630001, 38.249920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331077, 0.517511, -0.789031,
		-0.909074, 0.049205, 0.413720,
		0.252929, 0.854260, 0.454165,
		34.592075, 32.886280, 38.386169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995388, 32.693130, 37.837898>,  <34.415024, 32.288296, 38.068253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995388, 32.693130, 37.837898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258926, 32.957451, 37.981709>,  <34.417049, 33.116043, 38.067997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258926, 32.957451, 37.981709>,  <33.995388, 32.693130, 37.837898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258926, 32.957451, 37.981709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150193, 0.583843, -0.797853,
		-0.737131, 0.471664, 0.483911,
		0.658847, 0.660802, 0.359528,
		34.456581, 33.155693, 38.089565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682610, 33.316662, 37.824787>,  <33.995388, 32.693130, 37.837898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682610, 33.316662, 37.824787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071434, 33.409832, 37.813229>,  <34.304729, 33.465733, 37.806293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071434, 33.409832, 37.813229>,  <33.682610, 33.316662, 37.824787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071434, 33.409832, 37.813229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151649, 0.529316, -0.834762,
		-0.179138, 0.815826, 0.549852,
		0.972066, 0.232922, -0.028899,
		34.363052, 33.479710, 37.804558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688488, 33.989231, 37.590012>,  <33.682610, 33.316662, 37.824787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688488, 33.989231, 37.590012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060741, 33.852932, 37.536625>,  <34.284092, 33.771152, 37.504593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060741, 33.852932, 37.536625>,  <33.688488, 33.989231, 37.590012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060741, 33.852932, 37.536625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035725, 0.447554, -0.893543,
		0.364204, 0.826793, 0.428682,
		0.930634, -0.340747, -0.133464,
		34.339931, 33.750710, 37.496586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898846, 34.531616, 37.179226>,  <33.688488, 33.989231, 37.590012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898846, 34.531616, 37.179226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170437, 34.241283, 37.135132>,  <34.333393, 34.067081, 37.108677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170437, 34.241283, 37.135132>,  <33.898846, 34.531616, 37.179226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170437, 34.241283, 37.135132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259165, 0.377450, -0.889025,
		0.686891, 0.575062, 0.444392,
		0.678980, -0.725834, -0.110231,
		34.374130, 34.023533, 37.102062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604073, 34.846153, 37.131493>,  <33.898846, 34.531616, 37.179226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604073, 34.846153, 37.131493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567806, 34.487534, 36.958069>,  <34.546047, 34.272362, 36.854015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567806, 34.487534, 36.958069>,  <34.604073, 34.846153, 37.131493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567806, 34.487534, 36.958069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366522, 0.374757, -0.851597,
		0.925981, -0.236124, 0.294626,
		-0.090669, -0.896550, -0.433563,
		34.540604, 34.218567, 36.827999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032154, 34.870403, 36.473583>,  <34.604073, 34.846153, 37.131493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032154, 34.870403, 36.473583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846527, 34.519047, 36.427864>,  <34.735149, 34.308231, 36.400433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846527, 34.519047, 36.427864>,  <35.032154, 34.870403, 36.473583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846527, 34.519047, 36.427864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176111, 0.034962, -0.983749,
		0.868114, -0.476659, 0.138470,
		-0.464072, -0.878393, -0.114296,
		34.707306, 34.255527, 36.393574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512020, 34.438023, 36.113247>,  <35.032154, 34.870403, 36.473583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512020, 34.438023, 36.113247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147709, 34.287613, 36.045021>,  <34.929123, 34.197369, 36.004086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147709, 34.287613, 36.045021>,  <35.512020, 34.438023, 36.113247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147709, 34.287613, 36.045021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136254, 0.116242, -0.983830,
		0.389773, -0.919289, -0.054635,
		-0.910776, -0.376026, -0.170565,
		34.874477, 34.174805, 35.993851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543907, 33.852211, 35.594273>,  <35.512020, 34.438023, 36.113247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543907, 33.852211, 35.594273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185780, 34.030262, 35.600800>,  <34.970901, 34.137093, 35.604717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185780, 34.030262, 35.600800>,  <35.543907, 33.852211, 35.594273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185780, 34.030262, 35.600800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097676, 0.231946, -0.967812,
		-0.434582, -0.864908, -0.251144,
		-0.895320, 0.445124, 0.016319,
		34.917183, 34.163799, 35.605694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.681839, 31.058617, 42.690205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321308, 31.210945, 42.772739>,  <35.104988, 31.302341, 42.822262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321308, 31.210945, 42.772739>,  <35.681839, 31.058617, 42.690205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321308, 31.210945, 42.772739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118494, 0.241417, -0.963160,
		-0.416607, -0.892576, -0.172472,
		-0.901332, 0.380822, 0.206341,
		35.050907, 31.325191, 42.834641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254478, 30.733568, 42.231388>,  <35.681839, 31.058617, 42.690205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254478, 30.733568, 42.231388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062103, 31.071220, 42.326164>,  <34.946678, 31.273811, 42.383030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062103, 31.071220, 42.326164>,  <35.254478, 30.733568, 42.231388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062103, 31.071220, 42.326164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109065, 0.210550, -0.971480,
		-0.869946, -0.493060, -0.009195,
		-0.480934, 0.844133, 0.236943,
		34.917824, 31.324461, 42.397247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575668, 30.738012, 41.844437>,  <35.254478, 30.733568, 42.231388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575668, 30.738012, 41.844437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665394, 31.112698, 41.951950>,  <34.719231, 31.337509, 42.016460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665394, 31.112698, 41.951950>,  <34.575668, 30.738012, 41.844437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665394, 31.112698, 41.951950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121428, 0.300533, -0.946010,
		-0.966921, 0.179569, 0.181159,
		0.224318, 0.936715, 0.268787,
		34.732689, 31.393713, 42.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917915, 31.136324, 41.571083>,  <34.575668, 30.738012, 41.844437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917915, 31.136324, 41.571083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.241974, 31.360426, 41.640114>,  <34.436409, 31.494886, 41.681534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.241974, 31.360426, 41.640114>,  <33.917915, 31.136324, 41.571083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241974, 31.360426, 41.640114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090870, 0.410845, -0.907166,
		-0.579146, 0.719252, 0.383753,
		0.810144, 0.560253, 0.172580,
		34.485016, 31.528502, 41.691887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701248, 31.779034, 41.365814>,  <33.917915, 31.136324, 41.571083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701248, 31.779034, 41.365814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099518, 31.811056, 41.346931>,  <34.338478, 31.830269, 41.335602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099518, 31.811056, 41.346931>,  <33.701248, 31.779034, 41.365814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099518, 31.811056, 41.346931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081461, 0.507333, -0.857891,
		-0.044730, 0.858024, 0.511659,
		0.995672, 0.080054, -0.047202,
		34.398220, 31.835072, 41.332771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843884, 32.423820, 41.207882>,  <33.701248, 31.779034, 41.365814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843884, 32.423820, 41.207882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186138, 32.239590, 41.113434>,  <34.391491, 32.129051, 41.056763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186138, 32.239590, 41.113434>,  <33.843884, 32.423820, 41.207882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186138, 32.239590, 41.113434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001237, 0.458031, -0.888936,
		0.517573, 0.760315, 0.392478,
		0.855638, -0.460574, -0.236124,
		34.442829, 32.101418, 41.042595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341393, 32.987648, 40.978127>,  <33.843884, 32.423820, 41.207882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341393, 32.987648, 40.978127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.511658, 32.649040, 40.850246>,  <34.613815, 32.445873, 40.773518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.511658, 32.649040, 40.850246>,  <34.341393, 32.987648, 40.978127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511658, 32.649040, 40.850246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277474, 0.458395, -0.844323,
		0.861289, 0.270689, 0.430010,
		0.425664, -0.846523, -0.319702,
		34.639359, 32.395084, 40.754337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047352, 33.075333, 40.854950>,  <34.341393, 32.987648, 40.978127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047352, 33.075333, 40.854950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927345, 32.769650, 40.626572>,  <34.855343, 32.586239, 40.489544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927345, 32.769650, 40.626572>,  <35.047352, 33.075333, 40.854950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927345, 32.769650, 40.626572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359576, 0.463770, -0.809705,
		0.883570, -0.448220, 0.135654,
		-0.300013, -0.764209, -0.570943,
		34.837341, 32.540386, 40.455288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507603, 33.021652, 40.325008>,  <35.047352, 33.075333, 40.854950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507603, 33.021652, 40.325008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223450, 32.786816, 40.169743>,  <35.052956, 32.645912, 40.076584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223450, 32.786816, 40.169743>,  <35.507603, 33.021652, 40.325008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223450, 32.786816, 40.169743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229981, 0.327612, -0.916395,
		0.665179, -0.740263, -0.097709,
		-0.710384, -0.587095, -0.388167,
		35.010334, 32.610687, 40.053291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238647, 32.951668, 40.753124>,  <35.507603, 33.021652, 40.325008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238647, 32.951668, 40.753124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431046, 33.299461, 40.798107>,  <36.546482, 33.508137, 40.825096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431046, 33.299461, 40.798107>,  <36.238647, 32.951668, 40.753124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431046, 33.299461, 40.798107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121212, -0.061093, 0.990745,
		0.868306, -0.490171, 0.076006,
		0.480991, 0.869483, 0.112462,
		36.575344, 33.560307, 40.831844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792343, 32.837036, 41.200249>,  <36.238647, 32.951668, 40.753124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792343, 32.837036, 41.200249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706184, 33.226639, 41.228310>,  <36.654488, 33.460400, 41.245148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706184, 33.226639, 41.228310>,  <36.792343, 32.837036, 41.200249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706184, 33.226639, 41.228310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016998, -0.068089, 0.997535,
		0.976379, 0.216057, -0.001890,
		-0.215396, 0.974004, 0.070153,
		36.641567, 33.518841, 41.249355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148125, 33.103008, 41.768589>,  <36.792343, 32.837036, 41.200249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148125, 33.103008, 41.768589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.874004, 33.387009, 41.703766>,  <36.709534, 33.557407, 41.664871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.874004, 33.387009, 41.703766>,  <37.148125, 33.103008, 41.768589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874004, 33.387009, 41.703766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139156, 0.090762, 0.986102,
		0.714843, 0.698327, 0.036602,
		-0.685299, 0.710002, -0.162057,
		36.668415, 33.600010, 41.655148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241444, 33.442753, 42.347839>,  <37.148125, 33.103008, 41.768589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241444, 33.442753, 42.347839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898678, 33.599064, 42.213379>,  <36.693020, 33.692848, 42.132702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898678, 33.599064, 42.213379>,  <37.241444, 33.442753, 42.347839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898678, 33.599064, 42.213379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272853, 0.209413, 0.938988,
		0.437328, 0.896349, -0.072824,
		-0.856911, 0.390775, -0.336153,
		36.641605, 33.716297, 42.112534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236366, 34.058628, 42.615417>,  <37.241444, 33.442753, 42.347839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236366, 34.058628, 42.615417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852001, 33.974129, 42.543842>,  <36.621384, 33.923428, 42.500896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852001, 33.974129, 42.543842>,  <37.236366, 34.058628, 42.615417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852001, 33.974129, 42.543842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229860, 0.248525, 0.940957,
		-0.154304, 0.945309, -0.287368,
		-0.960913, -0.211248, -0.178941,
		36.563728, 33.910755, 42.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856316, 34.666576, 42.782799>,  <37.236366, 34.058628, 42.615417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856316, 34.666576, 42.782799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595390, 34.363411, 42.779911>,  <36.438835, 34.181511, 42.778179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595390, 34.363411, 42.779911>,  <36.856316, 34.666576, 42.782799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595390, 34.363411, 42.779911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375547, 0.314915, 0.871661,
		-0.658370, 0.571309, -0.490056,
		-0.652314, -0.757915, -0.007223,
		36.399696, 34.136036, 42.777744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121708, 34.889030, 43.207088>,  <36.856316, 34.666576, 42.782799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121708, 34.889030, 43.207088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081810, 34.493011, 43.167374>,  <36.057873, 34.255402, 43.143547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081810, 34.493011, 43.167374>,  <36.121708, 34.889030, 43.207088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081810, 34.493011, 43.167374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369305, -0.055819, 0.927630,
		-0.923940, 0.129188, -0.360062,
		-0.099740, -0.990048, -0.099284,
		36.051888, 34.195995, 43.137589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328793, 34.665085, 43.330769>,  <36.121708, 34.889030, 43.207088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328793, 34.665085, 43.330769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.601719, 34.386097, 43.418392>,  <35.765472, 34.218704, 43.470966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.601719, 34.386097, 43.418392>,  <35.328793, 34.665085, 43.330769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601719, 34.386097, 43.418392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417152, -0.125375, 0.900147,
		-0.600360, -0.705563, -0.376495,
		0.682313, -0.697468, 0.219057,
		35.806412, 34.176857, 43.484108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984638, 34.161457, 43.766338>,  <35.328793, 34.665085, 43.330769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984638, 34.161457, 43.766338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371246, 34.083935, 43.833599>,  <35.603210, 34.037422, 43.873955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371246, 34.083935, 43.833599>,  <34.984638, 34.161457, 43.766338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371246, 34.083935, 43.833599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185803, -0.076713, 0.979588,
		-0.176956, -0.978035, -0.110156,
		0.966521, -0.193811, 0.168147,
		35.661201, 34.025791, 43.884045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990685, 33.642788, 44.216770>,  <34.984638, 34.161457, 43.766338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990685, 33.642788, 44.216770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363441, 33.779881, 44.264290>,  <35.587097, 33.862137, 44.292801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363441, 33.779881, 44.264290>,  <34.990685, 33.642788, 44.216770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363441, 33.779881, 44.264290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100160, -0.071652, 0.992388,
		0.348637, -0.936696, -0.032444,
		0.931891, 0.342734, 0.118800,
		35.643009, 33.882702, 44.299931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370842, 33.180729, 44.644337>,  <34.990685, 33.642788, 44.216770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370842, 33.180729, 44.644337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558887, 33.530846, 44.689686>,  <35.671715, 33.740917, 44.716896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558887, 33.530846, 44.689686>,  <35.370842, 33.180729, 44.644337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558887, 33.530846, 44.689686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080860, -0.085204, 0.993077,
		0.878896, -0.476023, 0.030721,
		0.470110, 0.875295, 0.113377,
		35.699921, 33.793434, 44.723698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872898, 33.067791, 45.127548>,  <35.370842, 33.180729, 44.644337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872898, 33.067791, 45.127548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851048, 33.467079, 45.137127>,  <35.837936, 33.706654, 45.142876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851048, 33.467079, 45.137127>,  <35.872898, 33.067791, 45.127548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851048, 33.467079, 45.137127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194718, -0.012872, 0.980775,
		0.979337, 0.058241, -0.193668,
		-0.054628, 0.998220, 0.023947,
		35.834660, 33.766544, 45.144310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449955, 33.267555, 45.409161>,  <35.872898, 33.067791, 45.127548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449955, 33.267555, 45.409161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.212433, 33.584724, 45.463814>,  <36.069920, 33.775024, 45.496605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.212433, 33.584724, 45.463814>,  <36.449955, 33.267555, 45.409161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212433, 33.584724, 45.463814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265459, 0.032759, 0.963565,
		0.759554, 0.608444, -0.229941,
		-0.593808, 0.792920, 0.136635,
		36.034290, 33.822601, 45.504803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902107, 33.738617, 45.762264>,  <36.449955, 33.267555, 45.409161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902107, 33.738617, 45.762264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518936, 33.841694, 45.812824>,  <36.289036, 33.903542, 45.843159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518936, 33.841694, 45.812824>,  <36.902107, 33.738617, 45.762264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518936, 33.841694, 45.812824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181780, 0.203884, 0.961971,
		0.222120, 0.944472, -0.242148,
		-0.957924, 0.257691, 0.126400,
		36.231560, 33.919003, 45.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.488806, 35.760540, 45.609745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729652, 35.441177, 45.608643>,  <31.874161, 35.249561, 45.607979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729652, 35.441177, 45.608643>,  <31.488806, 35.760540, 45.609745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729652, 35.441177, 45.608643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347728, 0.265346, -0.899265,
		0.718709, 0.540502, 0.437396,
		0.602116, -0.798404, -0.002759,
		31.910288, 35.201656, 45.607815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127201, 35.954124, 45.343395>,  <31.488806, 35.760540, 45.609745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127201, 35.954124, 45.343395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.148773, 35.556877, 45.301815>,  <32.161716, 35.318527, 45.276867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.148773, 35.556877, 45.301815>,  <32.127201, 35.954124, 45.343395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148773, 35.556877, 45.301815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507056, 0.116917, -0.853947,
		0.860224, -0.006654, 0.509873,
		0.053931, -0.993119, -0.103949,
		32.164951, 35.258942, 45.270630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863937, 35.761055, 45.298119>,  <32.127201, 35.954124, 45.343395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863937, 35.761055, 45.298119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.652618, 35.473782, 45.116962>,  <32.525826, 35.301418, 45.008266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.652618, 35.473782, 45.116962>,  <32.863937, 35.761055, 45.298119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652618, 35.473782, 45.116962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649218, 0.002074, -0.760600,
		0.547190, -0.695850, 0.465162,
		-0.528298, -0.718185, -0.452893,
		32.494129, 35.258327, 44.981094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393654, 35.450748, 45.038197>,  <32.863937, 35.761055, 45.298119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393654, 35.450748, 45.038197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069969, 35.326183, 44.838917>,  <32.875759, 35.251442, 44.719349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069969, 35.326183, 44.838917>,  <33.393654, 35.450748, 45.038197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069969, 35.326183, 44.838917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540266, -0.061227, -0.839264,
		0.230858, -0.948299, 0.217793,
		-0.809208, -0.311416, -0.498199,
		32.827206, 35.232758, 44.689457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664173, 35.256786, 44.447277>,  <33.393654, 35.450748, 45.038197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664173, 35.256786, 44.447277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273018, 35.226818, 44.369179>,  <33.038326, 35.208836, 44.322319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273018, 35.226818, 44.369179>,  <33.664173, 35.256786, 44.447277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273018, 35.226818, 44.369179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198295, -0.035577, -0.979497,
		0.066441, -0.996554, 0.049648,
		-0.977888, -0.074924, -0.195248,
		32.979652, 35.204342, 44.310604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570679, 34.655453, 44.043568>,  <33.664173, 35.256786, 44.447277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570679, 34.655453, 44.043568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289566, 34.930393, 43.970196>,  <33.120899, 35.095356, 43.926170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289566, 34.930393, 43.970196>,  <33.570679, 34.655453, 44.043568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289566, 34.930393, 43.970196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310506, 0.064379, -0.948388,
		-0.640067, -0.723466, -0.258672,
		-0.702780, 0.687351, -0.183434,
		33.078732, 35.136600, 43.915165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542305, 34.641304, 43.338310>,  <33.570679, 34.655453, 44.043568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542305, 34.641304, 43.338310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343266, 34.977180, 43.425312>,  <33.223843, 35.178707, 43.477512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343266, 34.977180, 43.425312>,  <33.542305, 34.641304, 43.338310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343266, 34.977180, 43.425312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120641, 0.315316, -0.941287,
		-0.858975, -0.442145, -0.258203,
		-0.497601, 0.839692, 0.217508,
		33.193985, 35.229088, 43.490566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058960, 34.675529, 42.786114>,  <33.542305, 34.641304, 43.338310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058960, 34.675529, 42.786114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103302, 35.046940, 42.927849>,  <33.129910, 35.269787, 43.012890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103302, 35.046940, 42.927849>,  <33.058960, 34.675529, 42.786114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103302, 35.046940, 42.927849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109391, 0.342965, -0.932957,
		-0.987798, 0.142186, -0.063552,
		0.110857, 0.928525, 0.354334,
		33.136559, 35.325497, 43.034149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671562, 35.136745, 42.378044>,  <33.058960, 34.675529, 42.786114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671562, 35.136745, 42.378044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942944, 35.380352, 42.542389>,  <33.105774, 35.526516, 42.640995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942944, 35.380352, 42.542389>,  <32.671562, 35.136745, 42.378044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942944, 35.380352, 42.542389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254829, 0.329448, -0.909135,
		-0.689031, 0.721504, 0.068321,
		0.678453, 0.609012, 0.410860,
		33.146481, 35.563057, 42.665646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545822, 35.748089, 42.100819>,  <32.671562, 35.136745, 42.378044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545822, 35.748089, 42.100819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908447, 35.816639, 42.255104>,  <33.126022, 35.857769, 42.347675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908447, 35.816639, 42.255104>,  <32.545822, 35.748089, 42.100819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908447, 35.816639, 42.255104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235248, 0.553575, -0.798883,
		-0.350431, 0.814975, 0.461534,
		0.906563, 0.171379, 0.385711,
		33.180416, 35.868053, 42.370819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690140, 36.450665, 41.931496>,  <32.545822, 35.748089, 42.100819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690140, 36.450665, 41.931496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.043026, 36.284760, 42.020634>,  <33.254757, 36.185215, 42.074116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.043026, 36.284760, 42.020634>,  <32.690140, 36.450665, 41.931496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043026, 36.284760, 42.020634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396762, 0.400037, -0.826167,
		0.253516, 0.817277, 0.517482,
		0.882219, -0.414763, 0.222849,
		33.307693, 36.160332, 42.087490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143356, 36.986706, 41.935692>,  <32.690140, 36.450665, 41.931496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143356, 36.986706, 41.935692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352467, 36.659584, 41.839443>,  <33.477932, 36.463310, 41.781696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352467, 36.659584, 41.839443>,  <33.143356, 36.986706, 41.935692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352467, 36.659584, 41.839443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329864, 0.454334, -0.827509,
		0.786064, 0.353230, 0.507279,
		0.522775, -0.817808, -0.240618,
		33.509300, 36.414242, 41.767258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732483, 37.175743, 41.776394>,  <33.143356, 36.986706, 41.935692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732483, 37.175743, 41.776394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786537, 36.814560, 41.613228>,  <33.818970, 36.597851, 41.515327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786537, 36.814560, 41.613228>,  <33.732483, 37.175743, 41.776394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786537, 36.814560, 41.613228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450892, 0.422640, -0.786176,
		0.882290, -0.077688, 0.464251,
		0.135135, -0.902962, -0.407919,
		33.827076, 36.543671, 41.490852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458340, 37.173500, 41.318588>,  <33.732483, 37.175743, 41.776394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458340, 37.173500, 41.318588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211044, 36.889278, 41.184189>,  <34.062668, 36.718746, 41.103550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211044, 36.889278, 41.184189>,  <34.458340, 37.173500, 41.318588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211044, 36.889278, 41.184189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207238, 0.264994, -0.941717,
		0.758178, -0.651837, -0.016576,
		-0.618239, -0.710554, -0.335998,
		34.025574, 36.676113, 41.083389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124084, 37.296455, 41.221889>,  <34.458340, 37.173500, 41.318588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124084, 37.296455, 41.221889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280754, 37.662605, 41.259136>,  <35.374756, 37.882298, 41.281483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280754, 37.662605, 41.259136>,  <35.124084, 37.296455, 41.221889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280754, 37.662605, 41.259136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124405, -0.047586, 0.991090,
		0.911654, -0.399770, 0.095240,
		0.391676, 0.915379, 0.093115,
		35.398258, 37.937218, 41.287071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504253, 37.126347, 41.717682>,  <35.124084, 37.296455, 41.221889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504253, 37.126347, 41.717682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446091, 37.521896, 41.730202>,  <35.411194, 37.759228, 41.737713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446091, 37.521896, 41.730202>,  <35.504253, 37.126347, 41.717682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446091, 37.521896, 41.730202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297508, -0.073872, 0.951857,
		0.943581, 0.129097, 0.304941,
		-0.145409, 0.988877, 0.031297,
		35.402470, 37.818558, 41.739590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951168, 37.396366, 42.303253>,  <35.504253, 37.126347, 41.717682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951168, 37.396366, 42.303253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655613, 37.656536, 42.232834>,  <35.478279, 37.812637, 42.190582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655613, 37.656536, 42.232834>,  <35.951168, 37.396366, 42.303253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655613, 37.656536, 42.232834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151809, 0.093870, 0.983942,
		0.656505, 0.753749, 0.029381,
		-0.738887, 0.650424, -0.176052,
		35.433949, 37.851662, 42.180019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018814, 37.928368, 42.837997>,  <35.951168, 37.396366, 42.303253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018814, 37.928368, 42.837997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646767, 37.952000, 42.693005>,  <35.423538, 37.966179, 42.606010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646767, 37.952000, 42.693005>,  <36.018814, 37.928368, 42.837997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646767, 37.952000, 42.693005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359478, 0.055662, 0.931492,
		0.075207, 0.996700, -0.030535,
		-0.930118, 0.059078, -0.362478,
		35.367733, 37.969723, 42.584263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606983, 38.498142, 43.315845>,  <36.018814, 37.928368, 42.837997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606983, 38.498142, 43.315845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313637, 38.280579, 43.152710>,  <35.137627, 38.150040, 43.054829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313637, 38.280579, 43.152710>,  <35.606983, 38.498142, 43.315845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313637, 38.280579, 43.152710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409330, -0.125697, 0.903686,
		-0.542788, 0.829676, -0.130456,
		-0.733369, -0.543910, -0.407838,
		35.093628, 38.117405, 43.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993282, 38.684864, 43.596478>,  <35.606983, 38.498142, 43.315845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993282, 38.684864, 43.596478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919689, 38.318874, 43.452824>,  <34.875534, 38.099281, 43.366631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919689, 38.318874, 43.452824>,  <34.993282, 38.684864, 43.596478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919689, 38.318874, 43.452824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361365, -0.276823, 0.890384,
		-0.914093, 0.293596, -0.279707,
		-0.183984, -0.914970, -0.359138,
		34.864494, 38.044384, 43.345081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392349, 38.467014, 44.004906>,  <34.993282, 38.684864, 43.596478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392349, 38.467014, 44.004906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.518780, 38.122459, 43.845856>,  <34.594639, 37.915726, 43.750423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.518780, 38.122459, 43.845856>,  <34.392349, 38.467014, 44.004906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518780, 38.122459, 43.845856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224792, -0.475176, 0.850692,
		-0.921718, -0.179500, -0.343824,
		0.316076, -0.861387, -0.397628,
		34.613602, 37.864044, 43.726566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841858, 38.001743, 44.124817>,  <34.392349, 38.467014, 44.004906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841858, 38.001743, 44.124817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150265, 37.757542, 44.052349>,  <34.335308, 37.611023, 44.008869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150265, 37.757542, 44.052349>,  <33.841858, 38.001743, 44.124817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150265, 37.757542, 44.052349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152754, -0.453494, 0.878071,
		-0.618225, -0.649331, -0.442908,
		0.771015, -0.610502, -0.181173,
		34.381569, 37.574390, 43.997997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667530, 37.225647, 44.221420>,  <33.841858, 38.001743, 44.124817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667530, 37.225647, 44.221420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.060051, 37.273407, 44.281799>,  <34.295563, 37.302063, 44.318027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.060051, 37.273407, 44.281799>,  <33.667530, 37.225647, 44.221420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060051, 37.273407, 44.281799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089222, -0.412712, 0.906482,
		0.170528, -0.903003, -0.394343,
		0.981305, 0.119396, 0.150946,
		34.354443, 37.309227, 44.327084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720665, 36.804588, 44.677853>,  <33.667530, 37.225647, 44.221420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720665, 36.804588, 44.677853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.079227, 36.981861, 44.680679>,  <34.294365, 37.088226, 44.682373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.079227, 36.981861, 44.680679>,  <33.720665, 36.804588, 44.677853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079227, 36.981861, 44.680679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173478, -0.365460, 0.914519,
		0.407883, -0.818551, -0.404482,
		0.896402, 0.443186, 0.007065,
		34.348148, 37.114819, 44.682800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283325, 36.255802, 44.689400>,  <33.720665, 36.804588, 44.677853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283325, 36.255802, 44.689400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384346, 36.608776, 44.848160>,  <34.444958, 36.820560, 44.943417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384346, 36.608776, 44.848160>,  <34.283325, 36.255802, 44.689400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384346, 36.608776, 44.848160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023378, -0.415640, 0.909229,
		0.967300, -0.220350, -0.125601,
		0.252554, 0.882434, 0.396897,
		34.460114, 36.873505, 44.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853420, 36.173939, 45.045265>,  <34.283325, 36.255802, 44.689400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853420, 36.173939, 45.045265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696705, 36.506393, 45.203106>,  <34.602676, 36.705868, 45.297810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696705, 36.506393, 45.203106>,  <34.853420, 36.173939, 45.045265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696705, 36.506393, 45.203106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063463, -0.452277, 0.889617,
		0.917864, 0.323498, 0.229943,
		-0.391788, 0.831140, 0.394599,
		34.579170, 36.755737, 45.321484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191315, 36.210686, 45.651169>,  <34.853420, 36.173939, 45.045265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191315, 36.210686, 45.651169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895432, 36.463501, 45.743576>,  <34.717903, 36.615189, 45.799023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895432, 36.463501, 45.743576>,  <35.191315, 36.210686, 45.651169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895432, 36.463501, 45.743576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117452, -0.459295, 0.880484,
		0.662603, 0.624164, 0.413976,
		-0.739704, 0.632034, 0.231022,
		34.673519, 36.653111, 45.812881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443409, 36.713833, 46.233250>,  <35.191315, 36.210686, 45.651169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443409, 36.713833, 46.233250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048519, 36.660423, 46.198490>,  <34.811584, 36.628376, 46.177635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048519, 36.660423, 46.198490>,  <35.443409, 36.713833, 46.233250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048519, 36.660423, 46.198490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059607, -0.196263, 0.978738,
		-0.147739, 0.971418, 0.185798,
		-0.987229, -0.133523, -0.086899,
		34.752350, 36.620365, 46.172421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958622, 37.060036, 46.717537>,  <35.443409, 36.713833, 46.233250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958622, 37.060036, 46.717537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254341, 36.794758, 46.764191>,  <36.431774, 36.635590, 46.792183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254341, 36.794758, 46.764191>,  <35.958622, 37.060036, 46.717537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254341, 36.794758, 46.764191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225392, 0.080494, -0.970937,
		0.634536, 0.744102, 0.208989,
		0.739299, -0.663199, 0.116638,
		36.476131, 36.595798, 46.799183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472931, 37.374573, 46.335274>,  <35.958622, 37.060036, 46.717537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472931, 37.374573, 46.335274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.597683, 36.995110, 46.356323>,  <36.672535, 36.767429, 46.368954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.597683, 36.995110, 46.356323>,  <36.472931, 37.374573, 46.335274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597683, 36.995110, 46.356323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386238, 0.075991, -0.919264,
		0.868072, 0.307027, 0.390110,
		0.311884, -0.948662, 0.052620,
		36.691250, 36.710510, 46.372108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039268, 37.311516, 45.916615>,  <36.472931, 37.374573, 46.335274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039268, 37.311516, 45.916615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.957932, 36.921387, 45.951035>,  <36.909130, 36.687309, 45.971687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.957932, 36.921387, 45.951035>,  <37.039268, 37.311516, 45.916615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957932, 36.921387, 45.951035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280930, -0.142307, -0.949119,
		0.937939, -0.168824, 0.302934,
		-0.203344, -0.975319, 0.086048,
		36.896927, 36.628792, 45.976849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642784, 36.882748, 45.745907>,  <37.039268, 37.311516, 45.916615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642784, 36.882748, 45.745907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334770, 36.643124, 45.658115>,  <37.149960, 36.499348, 45.605442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334770, 36.643124, 45.658115>,  <37.642784, 36.882748, 45.745907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334770, 36.643124, 45.658115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323579, -0.070235, -0.943591,
		0.549852, -0.797619, 0.247926,
		-0.770039, -0.599059, -0.219474,
		37.103760, 36.463406, 45.592274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941586, 36.317314, 45.334026>,  <37.642784, 36.882748, 45.745907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941586, 36.317314, 45.334026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545757, 36.289978, 45.283291>,  <37.308262, 36.273575, 45.252850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545757, 36.289978, 45.283291>,  <37.941586, 36.317314, 45.334026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545757, 36.289978, 45.283291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140340, -0.257922, -0.955919,
		0.032613, -0.963746, 0.264821,
		-0.989566, -0.068341, -0.126841,
		37.248886, 36.269478, 45.245239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778263, 35.625835, 45.118084>,  <37.941586, 36.317314, 45.334026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778263, 35.625835, 45.118084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487316, 35.868809, 44.990360>,  <37.312748, 36.014591, 44.913727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487316, 35.868809, 44.990360>,  <37.778263, 35.625835, 45.118084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487316, 35.868809, 44.990360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083301, -0.383711, -0.919688,
		-0.681171, -0.695552, 0.228500,
		-0.727369, 0.607431, -0.319314,
		37.269104, 36.051037, 44.894566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447372, 35.216431, 44.603741>,  <37.778263, 35.625835, 45.118084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447372, 35.216431, 44.603741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286423, 35.575554, 44.532146>,  <37.189854, 35.791027, 44.489189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286423, 35.575554, 44.532146>,  <37.447372, 35.216431, 44.603741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286423, 35.575554, 44.532146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005198, -0.193264, -0.981133,
		-0.915462, -0.395710, 0.073097,
		-0.402371, 0.897810, -0.178983,
		37.165710, 35.844898, 44.478451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019985, 35.216766, 43.992371>,  <37.447372, 35.216431, 44.603741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019985, 35.216766, 43.992371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125572, 35.600571, 44.031681>,  <37.188923, 35.830853, 44.055267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125572, 35.600571, 44.031681>,  <37.019985, 35.216766, 43.992371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125572, 35.600571, 44.031681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054920, 0.086768, -0.994713,
		-0.962966, 0.267970, -0.029792,
		0.263968, 0.959512, 0.098272,
		37.204762, 35.888424, 44.061161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573906, 35.666595, 43.596222>,  <37.019985, 35.216766, 43.992371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573906, 35.666595, 43.596222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934757, 35.829178, 43.654133>,  <37.151268, 35.926727, 43.688877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934757, 35.829178, 43.654133>,  <36.573906, 35.666595, 43.596222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934757, 35.829178, 43.654133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024229, 0.287290, -0.957537,
		-0.430785, 0.867330, 0.249324,
		0.902129, 0.406451, 0.144775,
		37.205395, 35.951115, 43.697567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626705, 36.095840, 42.999409>,  <36.573906, 35.666595, 43.596222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626705, 36.095840, 42.999409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.988174, 36.125969, 43.168026>,  <37.205055, 36.144047, 43.269196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.988174, 36.125969, 43.168026>,  <36.626705, 36.095840, 42.999409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988174, 36.125969, 43.168026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356587, 0.412708, -0.838163,
		-0.237111, 0.907743, 0.346093,
		0.903672, 0.075326, 0.421547,
		37.259277, 36.148567, 43.294491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858032, 36.869286, 42.940342>,  <36.626705, 36.095840, 42.999409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858032, 36.869286, 42.940342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.177864, 36.634121, 42.989391>,  <37.369762, 36.493023, 43.018822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.177864, 36.634121, 42.989391>,  <36.858032, 36.869286, 42.940342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177864, 36.634121, 42.989391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398084, 0.365960, -0.841191,
		0.449673, 0.721410, 0.526651,
		0.799577, -0.587912, 0.122619,
		37.417736, 36.457748, 43.026176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371246, 37.311760, 42.619785>,  <36.858032, 36.869286, 42.940342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371246, 37.311760, 42.619785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512100, 36.937454, 42.627140>,  <37.596615, 36.712872, 42.631554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512100, 36.937454, 42.627140>,  <37.371246, 37.311760, 42.619785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512100, 36.937454, 42.627140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488629, 0.167051, -0.856350,
		0.798273, 0.310537, 0.516068,
		0.352138, -0.935768, 0.018385,
		37.617741, 36.656723, 42.632656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042358, 37.373405, 42.408508>,  <37.371246, 37.311760, 42.619785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042358, 37.373405, 42.408508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988564, 36.980694, 42.354805>,  <37.956287, 36.745068, 42.322582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988564, 36.980694, 42.354805>,  <38.042358, 37.373405, 42.408508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988564, 36.980694, 42.354805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488884, 0.052115, -0.870791,
		0.861920, -0.182746, 0.472967,
		-0.134485, -0.981778, -0.134261,
		37.948219, 36.686161, 42.314526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705173, 37.097340, 42.340923>,  <38.042358, 37.373405, 42.408508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705173, 37.097340, 42.340923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432362, 36.868816, 42.158302>,  <38.268673, 36.731701, 42.048729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432362, 36.868816, 42.158302>,  <38.705173, 37.097340, 42.340923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432362, 36.868816, 42.158302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511138, 0.074105, -0.856298,
		0.523044, -0.817382, 0.241477,
		-0.682028, -0.571310, -0.456555,
		38.227753, 36.697422, 42.021336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.718992, 38.217850, 41.938343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.935337, 38.474216, 41.720463>,  <26.065144, 38.628036, 41.589737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.935337, 38.474216, 41.720463>,  <25.718992, 38.217850, 41.938343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935337, 38.474216, 41.720463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144069, -0.567431, -0.810720,
		-0.828682, 0.516961, -0.214566,
		0.540861, 0.640916, -0.544698,
		26.097595, 38.666492, 41.557053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315388, 38.332676, 41.380939>,  <25.718992, 38.217850, 41.938343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315388, 38.332676, 41.380939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.688728, 38.413021, 41.261940>,  <25.912733, 38.461227, 41.190540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.688728, 38.413021, 41.261940>,  <25.315388, 38.332676, 41.380939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688728, 38.413021, 41.261940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164714, -0.496729, -0.852132,
		-0.318938, 0.844343, -0.430539,
		0.933353, 0.200862, -0.297501,
		25.968735, 38.473278, 41.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307724, 38.582592, 40.751190>,  <25.315388, 38.332676, 41.380939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307724, 38.582592, 40.751190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690470, 38.466873, 40.740444>,  <25.920116, 38.397442, 40.733997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690470, 38.466873, 40.740444>,  <25.307724, 38.582592, 40.751190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690470, 38.466873, 40.740444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128610, -0.338840, -0.932012,
		0.260523, 0.895264, -0.361429,
		0.956863, -0.289294, -0.026864,
		25.977530, 38.380085, 40.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409208, 38.666862, 40.087379>,  <25.307724, 38.582592, 40.751190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409208, 38.666862, 40.087379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722616, 38.438503, 40.185501>,  <25.910662, 38.301487, 40.244373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722616, 38.438503, 40.185501>,  <25.409208, 38.666862, 40.087379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722616, 38.438503, 40.185501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018373, -0.415890, -0.909229,
		0.621093, 0.707894, -0.336348,
		0.783522, -0.570896, 0.245300,
		25.957672, 38.267235, 40.259090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866198, 38.657986, 39.556305>,  <25.409208, 38.666862, 40.087379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866198, 38.657986, 39.556305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970055, 38.330017, 39.760391>,  <26.032370, 38.133236, 39.882843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970055, 38.330017, 39.760391>,  <25.866198, 38.657986, 39.556305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970055, 38.330017, 39.760391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262887, -0.448369, -0.854316,
		0.929234, 0.355945, 0.099130,
		0.259643, -0.819920, 0.510213,
		26.047947, 38.084042, 39.913456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557766, 38.396313, 39.289070>,  <25.866198, 38.657986, 39.556305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557766, 38.396313, 39.289070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408716, 38.066620, 39.459621>,  <26.319286, 37.868805, 39.561951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408716, 38.066620, 39.459621>,  <26.557766, 38.396313, 39.289070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408716, 38.066620, 39.459621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173923, -0.513354, -0.840368,
		0.911538, -0.238985, 0.334640,
		-0.372625, -0.824229, 0.426376,
		26.296928, 37.819351, 39.587536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047712, 37.928642, 39.251301>,  <26.557766, 38.396313, 39.289070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047712, 37.928642, 39.251301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710829, 37.719284, 39.303062>,  <26.508699, 37.593670, 39.334118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710829, 37.719284, 39.303062>,  <27.047712, 37.928642, 39.251301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710829, 37.719284, 39.303062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251359, -0.593504, -0.764573,
		0.476975, -0.611402, 0.631413,
		-0.842208, -0.523394, 0.129405,
		26.458166, 37.562267, 39.341885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211535, 37.242268, 39.251335>,  <27.047712, 37.928642, 39.251301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211535, 37.242268, 39.251335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822399, 37.237961, 39.158844>,  <26.588917, 37.235374, 39.103348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822399, 37.237961, 39.158844>,  <27.211535, 37.242268, 39.251335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822399, 37.237961, 39.158844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203087, -0.519061, -0.830260,
		-0.111081, -0.854670, 0.507150,
		-0.972840, -0.010770, -0.231230,
		26.530548, 37.234730, 39.089474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947554, 36.452271, 39.156307>,  <27.211535, 37.242268, 39.251335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947554, 36.452271, 39.156307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.715038, 36.703697, 38.949615>,  <26.575529, 36.854553, 38.825600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.715038, 36.703697, 38.949615>,  <26.947554, 36.452271, 39.156307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715038, 36.703697, 38.949615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029042, -0.618607, -0.785164,
		-0.813178, -0.471414, 0.341335,
		-0.581290, 0.628565, -0.516728,
		26.540651, 36.892265, 38.794598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587332, 35.960491, 38.701271>,  <26.947554, 36.452271, 39.156307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587332, 35.960491, 38.701271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525518, 36.317108, 38.530964>,  <26.488430, 36.531078, 38.428780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525518, 36.317108, 38.530964>,  <26.587332, 35.960491, 38.701271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525518, 36.317108, 38.530964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230832, -0.386439, -0.892962,
		-0.960643, -0.236274, -0.146077,
		-0.154534, 0.891538, -0.425769,
		26.479158, 36.584568, 38.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435411, 35.729752, 38.082138>,  <26.587332, 35.960491, 38.701271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435411, 35.729752, 38.082138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514091, 36.119190, 38.035786>,  <26.561300, 36.352852, 38.007977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514091, 36.119190, 38.035786>,  <26.435411, 35.729752, 38.082138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514091, 36.119190, 38.035786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296203, -0.171672, -0.939570,
		-0.934651, 0.150491, -0.322149,
		0.196701, 0.973592, -0.115877,
		26.573101, 36.411266, 38.001022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957203, 35.954521, 37.505447>,  <26.435411, 35.729752, 38.082138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957203, 35.954521, 37.505447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256466, 36.219521, 37.520161>,  <26.436024, 36.378521, 37.528988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256466, 36.219521, 37.520161>,  <25.957203, 35.954521, 37.505447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256466, 36.219521, 37.520161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208471, -0.182069, -0.960932,
		-0.629920, 0.726598, -0.274329,
		0.748158, 0.662500, 0.036786,
		26.480913, 36.418270, 37.531197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871126, 36.397655, 37.010750>,  <25.957203, 35.954521, 37.505447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871126, 36.397655, 37.010750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261240, 36.431675, 37.092323>,  <26.495308, 36.452087, 37.141270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261240, 36.431675, 37.092323>,  <25.871126, 36.397655, 37.010750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261240, 36.431675, 37.092323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211817, -0.097073, -0.972477,
		-0.062912, 0.991637, -0.112689,
		0.975282, 0.085050, 0.203938,
		26.553825, 36.457191, 37.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094400, 36.741673, 36.418056>,  <25.871126, 36.397655, 37.010750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094400, 36.741673, 36.418056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.446383, 36.623802, 36.567104>,  <26.657572, 36.553078, 36.656532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.446383, 36.623802, 36.567104>,  <26.094400, 36.741673, 36.418056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446383, 36.623802, 36.567104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343446, -0.147290, -0.927551,
		0.328214, 0.944177, -0.028401,
		0.879955, -0.294680, 0.372616,
		26.710369, 36.535397, 36.678890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536673, 37.075485, 36.042515>,  <26.094400, 36.741673, 36.418056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536673, 37.075485, 36.042515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707754, 36.750080, 36.200130>,  <26.810404, 36.554836, 36.294701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707754, 36.750080, 36.200130>,  <26.536673, 37.075485, 36.042515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707754, 36.750080, 36.200130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354227, -0.250216, -0.901063,
		0.831621, 0.524969, 0.181149,
		0.427703, -0.813511, 0.394043,
		26.836065, 36.506027, 36.318344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159138, 37.035912, 35.632317>,  <26.536673, 37.075485, 36.042515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159138, 37.035912, 35.632317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156328, 36.668961, 35.791504>,  <27.154642, 36.448792, 35.887016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156328, 36.668961, 35.791504>,  <27.159138, 37.035912, 35.632317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156328, 36.668961, 35.791504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503761, -0.347030, -0.791072,
		0.863814, 0.194923, 0.464575,
		-0.007024, -0.917374, 0.397964,
		27.154221, 36.393749, 35.910892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763878, 36.723431, 35.471668>,  <27.159138, 37.035912, 35.632317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763878, 36.723431, 35.471668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547112, 36.401134, 35.567265>,  <27.417051, 36.207756, 35.624622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547112, 36.401134, 35.567265>,  <27.763878, 36.723431, 35.471668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547112, 36.401134, 35.567265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342266, -0.471299, -0.812853,
		0.767581, -0.358701, 0.531181,
		-0.541917, -0.805736, 0.238989,
		27.384537, 36.159412, 35.638962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244865, 36.124302, 35.555187>,  <27.763878, 36.723431, 35.471668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244865, 36.124302, 35.555187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872211, 36.027813, 35.446472>,  <27.648619, 35.969921, 35.381245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872211, 36.027813, 35.446472>,  <28.244865, 36.124302, 35.555187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872211, 36.027813, 35.446472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344500, -0.348220, -0.871816,
		0.115660, -0.905845, 0.407515,
		-0.931634, -0.241223, -0.271788,
		27.592722, 35.955444, 35.364937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145386, 36.031742, 36.209667>,  <28.244865, 36.124302, 35.555187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145386, 36.031742, 36.209667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532167, 36.048748, 36.109116>,  <28.764236, 36.058952, 36.048786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532167, 36.048748, 36.109116>,  <28.145386, 36.031742, 36.209667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532167, 36.048748, 36.109116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146365, 0.714757, 0.683886,
		0.208748, -0.698080, 0.684915,
		0.966955, 0.042512, -0.251379,
		28.822254, 36.061501, 36.033703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574743, 36.123207, 36.864803>,  <28.145386, 36.031742, 36.209667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574743, 36.123207, 36.864803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775665, 36.264103, 36.548923>,  <28.896217, 36.348640, 36.359398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775665, 36.264103, 36.548923>,  <28.574743, 36.123207, 36.864803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775665, 36.264103, 36.548923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390564, 0.722381, 0.570636,
		0.771461, -0.595059, 0.225282,
		0.502302, 0.352237, -0.789697,
		28.926357, 36.369774, 36.312016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223829, 36.163776, 37.089653>,  <28.574743, 36.123207, 36.864803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223829, 36.163776, 37.089653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198601, 36.422626, 36.785744>,  <29.183464, 36.577938, 36.603397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198601, 36.422626, 36.785744>,  <29.223829, 36.163776, 37.089653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198601, 36.422626, 36.785744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436899, 0.702366, 0.561963,
		0.897297, -0.296499, -0.327027,
		-0.063071, 0.647125, -0.759771,
		29.179680, 36.616764, 36.557812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872591, 36.581768, 37.159096>,  <29.223829, 36.163776, 37.089653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872591, 36.581768, 37.159096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611687, 36.803276, 36.952061>,  <29.455143, 36.936180, 36.827839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611687, 36.803276, 36.952061>,  <29.872591, 36.581768, 37.159096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611687, 36.803276, 36.952061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370564, 0.828636, 0.419577,
		0.661238, 0.081877, -0.745695,
		-0.652263, 0.553768, -0.517585,
		29.416008, 36.969406, 36.796783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234333, 37.246250, 37.004040>,  <29.872591, 36.581768, 37.159096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234333, 37.246250, 37.004040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842951, 37.320065, 36.966995>,  <29.608122, 37.364353, 36.944771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842951, 37.320065, 36.966995>,  <30.234333, 37.246250, 37.004040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842951, 37.320065, 36.966995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154121, 0.951257, 0.267128,
		0.137388, 0.247099, -0.959201,
		-0.978454, 0.184533, -0.092609,
		29.549416, 37.375423, 36.939213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238720, 37.791584, 36.602585>,  <30.234333, 37.246250, 37.004040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238720, 37.791584, 36.602585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.870695, 37.788769, 36.759266>,  <29.649879, 37.787079, 36.853275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.870695, 37.788769, 36.759266>,  <30.238720, 37.791584, 36.602585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870695, 37.788769, 36.759266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170316, 0.893222, 0.416109,
		-0.352809, 0.449561, -0.820622,
		-0.920064, -0.007042, 0.391705,
		29.594675, 37.786655, 36.876778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978664, 38.450733, 36.476032>,  <30.238720, 37.791584, 36.602585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978664, 38.450733, 36.476032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756456, 38.303097, 36.774071>,  <29.623131, 38.214516, 36.952896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756456, 38.303097, 36.774071>,  <29.978664, 38.450733, 36.476032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756456, 38.303097, 36.774071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006791, 0.898070, 0.439801,
		-0.831475, 0.239258, -0.501403,
		-0.555521, -0.369088, 0.745098,
		29.589800, 38.192371, 36.997601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435799, 38.871174, 36.532516>,  <29.978664, 38.450733, 36.476032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435799, 38.871174, 36.532516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481739, 38.686504, 36.884350>,  <29.509304, 38.575703, 37.095451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481739, 38.686504, 36.884350>,  <29.435799, 38.871174, 36.532516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481739, 38.686504, 36.884350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018791, 0.884276, 0.466586,
		-0.993205, -0.070117, 0.092887,
		0.114853, -0.461670, 0.879585,
		29.516195, 38.548004, 37.148224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831736, 39.056194, 36.933723>,  <29.435799, 38.871174, 36.532516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831736, 39.056194, 36.933723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110670, 38.952091, 37.200855>,  <29.278030, 38.889629, 37.361134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110670, 38.952091, 37.200855>,  <28.831736, 39.056194, 36.933723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110670, 38.952091, 37.200855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140637, 0.863950, 0.483540,
		-0.702813, -0.431110, 0.565860,
		0.697334, -0.260257, 0.667826,
		29.319870, 38.874016, 37.401203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468027, 39.149513, 37.534904>,  <28.831736, 39.056194, 36.933723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468027, 39.149513, 37.534904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858267, 39.142139, 37.622421>,  <29.092411, 39.137714, 37.674931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858267, 39.142139, 37.622421>,  <28.468027, 39.149513, 37.534904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858267, 39.142139, 37.622421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145965, 0.689950, 0.708987,
		-0.164024, -0.723622, 0.670423,
		0.975598, -0.018433, 0.218792,
		29.150946, 39.136608, 37.688061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525816, 39.189487, 38.265957>,  <28.468027, 39.149513, 37.534904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525816, 39.189487, 38.265957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916996, 39.265427, 38.231163>,  <29.151705, 39.310989, 38.210285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916996, 39.265427, 38.231163>,  <28.525816, 39.189487, 38.265957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916996, 39.265427, 38.231163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030184, 0.540676, 0.840689,
		0.206637, -0.819528, 0.534486,
		0.977952, 0.189850, -0.086986,
		29.210382, 39.322380, 38.205067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756474, 39.269924, 38.927334>,  <28.525816, 39.189487, 38.265957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756474, 39.269924, 38.927334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033588, 39.445629, 38.698566>,  <29.199858, 39.551052, 38.561306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033588, 39.445629, 38.698566>,  <28.756474, 39.269924, 38.927334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033588, 39.445629, 38.698566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035054, 0.771622, 0.635115,
		0.720288, -0.460049, 0.519173,
		0.692789, 0.439266, -0.571917,
		29.241425, 39.577408, 38.526993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294241, 39.473125, 39.418381>,  <28.756474, 39.269924, 38.927334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294241, 39.473125, 39.418381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296894, 39.707962, 39.094585>,  <29.298485, 39.848866, 38.900307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296894, 39.707962, 39.094585>,  <29.294241, 39.473125, 39.418381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296894, 39.707962, 39.094585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050903, 0.808657, 0.586073,
		0.998681, 0.037320, 0.035247,
		0.006630, 0.587095, -0.809491,
		29.298883, 39.884090, 38.851738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749140, 40.070946, 39.567375>,  <29.294241, 39.473125, 39.418381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749140, 40.070946, 39.567375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518227, 40.179008, 39.259151>,  <29.379679, 40.243847, 39.074219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518227, 40.179008, 39.259151>,  <29.749140, 40.070946, 39.567375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518227, 40.179008, 39.259151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090559, 0.916678, 0.389232,
		0.811508, 0.294477, -0.504715,
		-0.577281, 0.270158, -0.770559,
		29.345043, 40.260056, 39.027985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039965, 40.704269, 39.241119>,  <29.749140, 40.070946, 39.567375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039965, 40.704269, 39.241119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647436, 40.678654, 39.168556>,  <29.411919, 40.663284, 39.125019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647436, 40.678654, 39.168556>,  <30.039965, 40.704269, 39.241119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647436, 40.678654, 39.168556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126810, 0.924433, 0.359642,
		0.144663, 0.375928, -0.915287,
		-0.981321, -0.064040, -0.181403,
		29.353039, 40.659443, 39.114136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918755, 41.373573, 39.222038>,  <30.039965, 40.704269, 39.241119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918755, 41.373573, 39.222038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552591, 41.212849, 39.231617>,  <29.332893, 41.116413, 39.237366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552591, 41.212849, 39.231617>,  <29.918755, 41.373573, 39.222038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552591, 41.212849, 39.231617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334778, 0.793033, 0.508943,
		-0.223490, 0.457874, -0.860467,
		-0.915410, -0.401809, 0.023949,
		29.277967, 41.092304, 39.238800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425097, 41.841236, 38.972885>,  <29.918755, 41.373573, 39.222038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425097, 41.841236, 38.972885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222185, 41.593594, 39.212677>,  <29.100439, 41.445007, 39.356552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222185, 41.593594, 39.212677>,  <29.425097, 41.841236, 38.972885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222185, 41.593594, 39.212677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327233, 0.781909, 0.530600,
		-0.797237, 0.072992, -0.599237,
		-0.507278, -0.619104, 0.599482,
		29.070002, 41.407864, 39.392521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752001, 42.093540, 39.006126>,  <29.425097, 41.841236, 38.972885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752001, 42.093540, 39.006126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769363, 41.852592, 39.324940>,  <28.779781, 41.708023, 39.516228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769363, 41.852592, 39.324940>,  <28.752001, 42.093540, 39.006126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769363, 41.852592, 39.324940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445308, 0.702491, 0.555165,
		-0.894325, -0.379025, -0.237746,
		0.043407, -0.602368, 0.797038,
		28.782385, 41.671883, 39.564053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162441, 42.192429, 39.265526>,  <28.752001, 42.093540, 39.006126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162441, 42.192429, 39.265526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359175, 42.006969, 39.560314>,  <28.477215, 41.895695, 39.737186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359175, 42.006969, 39.560314>,  <28.162441, 42.192429, 39.265526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359175, 42.006969, 39.560314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643228, 0.376979, 0.666441,
		-0.586817, -0.801821, -0.112821,
		0.491836, -0.463649, 0.736972,
		28.506725, 41.867874, 39.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636839, 41.899006, 39.804279>,  <28.162441, 42.192429, 39.265526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636839, 41.899006, 39.804279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994188, 41.943703, 39.978359>,  <28.208597, 41.970520, 40.082806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994188, 41.943703, 39.978359>,  <27.636839, 41.899006, 39.804279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994188, 41.943703, 39.978359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431363, 0.484341, 0.761143,
		-0.125737, -0.867714, 0.480897,
		0.893373, 0.111737, 0.435200,
		28.262199, 41.977222, 40.108917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592770, 41.616913, 40.527138>,  <27.636839, 41.899006, 39.804279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592770, 41.616913, 40.527138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924665, 41.839863, 40.538898>,  <28.123804, 41.973633, 40.545956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924665, 41.839863, 40.538898>,  <27.592770, 41.616913, 40.527138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924665, 41.839863, 40.538898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285789, 0.379009, 0.880157,
		0.479434, -0.738705, 0.473771,
		0.829740, 0.557376, 0.029404,
		28.173588, 42.007076, 40.547718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912144, 41.470741, 41.090523>,  <27.592770, 41.616913, 40.527138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912144, 41.470741, 41.090523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057995, 41.830162, 40.992832>,  <28.145506, 42.045815, 40.934219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057995, 41.830162, 40.992832>,  <27.912144, 41.470741, 41.090523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057995, 41.830162, 40.992832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314511, 0.365716, 0.875976,
		0.876430, -0.242593, 0.415956,
		0.364627, 0.898555, -0.244226,
		28.167383, 42.099728, 40.919563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345892, 41.639305, 41.680679>,  <27.912144, 41.470741, 41.090523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345892, 41.639305, 41.680679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236710, 41.960964, 41.469460>,  <28.171200, 42.153961, 41.342728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236710, 41.960964, 41.469460>,  <28.345892, 41.639305, 41.680679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236710, 41.960964, 41.469460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265608, 0.464568, 0.844766,
		0.924634, 0.370838, 0.086783,
		-0.272955, 0.804149, -0.528053,
		28.154823, 42.202209, 41.311043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532694, 42.350288, 42.109673>,  <28.345892, 41.639305, 41.680679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532694, 42.350288, 42.109673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239985, 42.443172, 41.853367>,  <28.064358, 42.498905, 41.699581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239985, 42.443172, 41.853367>,  <28.532694, 42.350288, 42.109673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239985, 42.443172, 41.853367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591816, 0.249790, 0.766393,
		0.338024, 0.940043, -0.045363,
		-0.731774, 0.232213, -0.640768,
		28.020452, 42.512836, 41.661137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.861588, 34.332806, 46.692192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486122, 34.246132, 46.584885>,  <36.260845, 34.194130, 46.520500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486122, 34.246132, 46.584885>,  <36.861588, 34.332806, 46.692192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486122, 34.246132, 46.584885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195470, -0.306574, 0.931560,
		-0.284095, 0.926856, 0.245415,
		-0.938660, -0.216680, -0.268268,
		36.204525, 34.181129, 46.504406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452663, 34.776123, 47.026653>,  <36.861588, 34.332806, 46.692192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452663, 34.776123, 47.026653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242390, 34.451092, 46.925964>,  <36.116226, 34.256073, 46.865551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242390, 34.451092, 46.925964>,  <36.452663, 34.776123, 47.026653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242390, 34.451092, 46.925964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265180, -0.124633, 0.956110,
		-0.808290, 0.569367, -0.149962,
		-0.525687, -0.812581, -0.251724,
		36.084682, 34.207317, 46.850449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854687, 34.856667, 47.354465>,  <36.452663, 34.776123, 47.026653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854687, 34.856667, 47.354465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883244, 34.467396, 47.266987>,  <35.900379, 34.233833, 47.214500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883244, 34.467396, 47.266987>,  <35.854687, 34.856667, 47.354465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883244, 34.467396, 47.266987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328910, -0.229959, 0.915935,
		-0.941659, 0.006539, -0.336505,
		0.071393, -0.973178, -0.218694,
		35.904663, 34.175442, 47.201378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388462, 34.630962, 47.791088>,  <35.854687, 34.856667, 47.354465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388462, 34.630962, 47.791088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568687, 34.289970, 47.685055>,  <35.676823, 34.085377, 47.621433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568687, 34.289970, 47.685055>,  <35.388462, 34.630962, 47.791088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568687, 34.289970, 47.685055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092227, -0.339794, 0.935967,
		-0.887967, -0.397266, -0.231720,
		0.450565, -0.852479, -0.265087,
		35.703857, 34.034225, 47.605530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890335, 33.988857, 47.955841>,  <35.388462, 34.630962, 47.791088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890335, 33.988857, 47.955841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257683, 33.830620, 47.951618>,  <35.478092, 33.735676, 47.949085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257683, 33.830620, 47.951618>,  <34.890335, 33.988857, 47.955841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257683, 33.830620, 47.951618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063962, -0.174706, 0.982541,
		-0.390531, -0.901656, -0.185747,
		0.918365, -0.395594, -0.010556,
		35.533192, 33.711941, 47.948452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832848, 33.413837, 48.288452>,  <34.890335, 33.988857, 47.955841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832848, 33.413837, 48.288452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225655, 33.481384, 48.322205>,  <35.461338, 33.521912, 48.342457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225655, 33.481384, 48.322205>,  <34.832848, 33.413837, 48.288452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225655, 33.481384, 48.322205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009520, -0.402098, 0.915547,
		0.188536, -0.899889, -0.393261,
		0.982020, 0.168870, 0.084377,
		35.520260, 33.532043, 48.347519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112938, 32.828560, 48.493587>,  <34.832848, 33.413837, 48.288452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112938, 32.828560, 48.493587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373711, 33.105621, 48.617012>,  <35.530174, 33.271858, 48.691067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373711, 33.105621, 48.617012>,  <35.112938, 32.828560, 48.493587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373711, 33.105621, 48.617012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008193, -0.400467, 0.916274,
		0.758233, -0.599877, -0.255403,
		0.651932, 0.692657, 0.308562,
		35.569290, 33.313419, 48.709579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584824, 32.348389, 48.863674>,  <35.112938, 32.828560, 48.493587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584824, 32.348389, 48.863674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630356, 32.730732, 48.972031>,  <35.657677, 32.960136, 49.037045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630356, 32.730732, 48.972031>,  <35.584824, 32.348389, 48.863674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630356, 32.730732, 48.972031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060452, -0.278822, 0.958438,
		0.991659, -0.092727, -0.089523,
		0.113834, 0.955856, 0.270891,
		35.664505, 33.017490, 49.053299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825089, 32.348217, 49.575356>,  <35.584824, 32.348389, 48.863674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825089, 32.348217, 49.575356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752048, 32.741199, 49.560162>,  <35.708225, 32.976990, 49.551044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752048, 32.741199, 49.560162>,  <35.825089, 32.348217, 49.575356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752048, 32.741199, 49.560162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330280, -0.024902, 0.943554,
		0.926052, 0.184837, 0.329032,
		-0.182597, 0.982454, -0.037987,
		35.697269, 33.035934, 49.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273781, 32.620373, 50.193665>,  <35.825089, 32.348217, 49.575356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273781, 32.620373, 50.193665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967358, 32.857830, 50.095078>,  <35.783504, 33.000305, 50.035927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967358, 32.857830, 50.095078>,  <36.273781, 32.620373, 50.193665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967358, 32.857830, 50.095078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243912, 0.086289, 0.965951,
		0.594698, 0.800089, 0.078695,
		-0.766056, 0.593643, -0.246467,
		35.737541, 33.035923, 50.021137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269600, 33.202957, 50.680557>,  <36.273781, 32.620373, 50.193665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269600, 33.202957, 50.680557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895325, 33.180916, 50.541153>,  <35.670761, 33.167690, 50.457512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895325, 33.180916, 50.541153>,  <36.269600, 33.202957, 50.680557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895325, 33.180916, 50.541153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351972, 0.076464, 0.932882,
		-0.024756, 0.995549, -0.090941,
		-0.935683, -0.055103, -0.348512,
		35.614620, 33.164387, 50.436600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871780, 33.681751, 51.053734>,  <36.269600, 33.202957, 50.680557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871780, 33.681751, 51.053734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587814, 33.438740, 50.911221>,  <35.417435, 33.292934, 50.825710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587814, 33.438740, 50.911221>,  <35.871780, 33.681751, 51.053734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587814, 33.438740, 50.911221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501530, 0.080912, 0.861349,
		-0.494462, 0.790169, -0.362132,
		-0.709912, -0.607524, -0.356286,
		35.374840, 33.256481, 50.804337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186588, 34.074631, 50.795708>,  <35.871780, 33.681751, 51.053734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186588, 34.074631, 50.795708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135414, 33.703514, 50.935902>,  <35.104710, 33.480843, 51.020016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135414, 33.703514, 50.935902>,  <35.186588, 34.074631, 50.795708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135414, 33.703514, 50.935902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442684, 0.369648, 0.816940,
		-0.887504, -0.050639, -0.458009,
		-0.127933, -0.927791, 0.350481,
		35.097034, 33.425179, 51.041046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684986, 34.213417, 51.355923>,  <35.186588, 34.074631, 50.795708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684986, 34.213417, 51.355923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786858, 33.830059, 51.407478>,  <34.847980, 33.600044, 51.438412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786858, 33.830059, 51.407478>,  <34.684986, 34.213417, 51.355923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786858, 33.830059, 51.407478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375414, 0.024844, 0.926524,
		-0.891181, -0.284353, -0.353469,
		0.254678, -0.958398, 0.128891,
		34.863262, 33.542542, 51.446144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217499, 34.720833, 51.744442>,  <34.684986, 34.213417, 51.355923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217499, 34.720833, 51.744442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119892, 34.604187, 52.114395>,  <35.061329, 34.534199, 52.336369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119892, 34.604187, 52.114395>,  <35.217499, 34.720833, 51.744442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119892, 34.604187, 52.114395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849921, -0.523580, 0.059148,
		0.467004, 0.800514, 0.375613,
		-0.244012, -0.291619, 0.924887,
		35.046688, 34.516701, 52.391861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689922, 35.252865, 51.636520>,  <35.217499, 34.720833, 51.744442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689922, 35.252865, 51.636520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917442, 35.568928, 51.727833>,  <35.053955, 35.758568, 51.782619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917442, 35.568928, 51.727833>,  <34.689922, 35.252865, 51.636520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917442, 35.568928, 51.727833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330030, 0.034961, -0.943323,
		-0.753359, 0.611900, -0.240891,
		0.568798, 0.790162, 0.228284,
		35.088081, 35.805977, 51.796318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662266, 35.730263, 51.055626>,  <34.689922, 35.252865, 51.636520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662266, 35.730263, 51.055626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985214, 35.853951, 51.256638>,  <35.178986, 35.928165, 51.377243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985214, 35.853951, 51.256638>,  <34.662266, 35.730263, 51.055626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985214, 35.853951, 51.256638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491843, 0.117772, -0.862682,
		-0.325944, 0.943669, -0.057003,
		0.807373, 0.309222, 0.502524,
		35.227425, 35.946716, 51.407394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789764, 36.341045, 50.698669>,  <34.662266, 35.730263, 51.055626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789764, 36.341045, 50.698669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133335, 36.255939, 50.884991>,  <35.339478, 36.204876, 50.996784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133335, 36.255939, 50.884991>,  <34.789764, 36.341045, 50.698669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133335, 36.255939, 50.884991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494577, 0.108761, -0.862302,
		0.132809, 0.971030, 0.198649,
		0.858927, -0.212769, 0.465805,
		35.391014, 36.192108, 51.024731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092636, 36.939007, 50.596340>,  <34.789764, 36.341045, 50.698669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092636, 36.939007, 50.596340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393635, 36.690441, 50.683605>,  <35.574234, 36.541302, 50.735966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393635, 36.690441, 50.683605>,  <35.092636, 36.939007, 50.596340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393635, 36.690441, 50.683605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422832, 0.201871, -0.883437,
		0.504936, 0.757032, 0.414659,
		0.752498, -0.621410, 0.218166,
		35.619385, 36.504017, 50.749054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743507, 37.362289, 50.503952>,  <35.092636, 36.939007, 50.596340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743507, 37.362289, 50.503952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831398, 36.974396, 50.461380>,  <35.884132, 36.741657, 50.435837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831398, 36.974396, 50.461380>,  <35.743507, 37.362289, 50.503952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831398, 36.974396, 50.461380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451754, 0.197833, -0.869931,
		0.864661, 0.143069, 0.481552,
		0.219727, -0.969739, -0.106426,
		35.897316, 36.683475, 50.429451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470303, 37.240471, 50.296959>,  <35.743507, 37.362289, 50.503952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470303, 37.240471, 50.296959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302399, 36.901989, 50.165668>,  <36.201656, 36.698898, 50.086895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302399, 36.901989, 50.165668>,  <36.470303, 37.240471, 50.296959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302399, 36.901989, 50.165668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438565, 0.127515, -0.889607,
		0.794647, -0.517370, 0.317592,
		-0.419758, -0.846208, -0.328229,
		36.176472, 36.648125, 50.067200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050098, 36.935112, 49.776924>,  <36.470303, 37.240471, 50.296959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050098, 36.935112, 49.776924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706848, 36.737434, 49.721226>,  <36.500896, 36.618828, 49.687809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706848, 36.737434, 49.721226>,  <37.050098, 36.935112, 49.776924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706848, 36.737434, 49.721226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123680, 0.064250, -0.990240,
		0.498315, -0.866975, 0.005987,
		-0.858129, -0.494192, -0.139244,
		36.449409, 36.589176, 49.679451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197681, 36.464523, 49.201126>,  <37.050098, 36.935112, 49.776924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197681, 36.464523, 49.201126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797707, 36.460011, 49.200138>,  <36.557724, 36.457302, 49.199543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797707, 36.460011, 49.200138>,  <37.197681, 36.464523, 49.201126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797707, 36.460011, 49.200138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004763, -0.207805, -0.978159,
		0.010520, -0.978105, 0.207845,
		-0.999933, -0.011280, -0.002473,
		36.497726, 36.456627, 49.199398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948410, 35.814137, 49.108337>,  <37.197681, 36.464523, 49.201126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948410, 35.814137, 49.108337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647549, 36.046661, 48.984177>,  <36.467033, 36.186176, 48.909679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647549, 36.046661, 48.984177>,  <36.948410, 35.814137, 49.108337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647549, 36.046661, 48.984177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183958, -0.267092, -0.945950,
		-0.632797, -0.768596, 0.093957,
		-0.752149, 0.581310, -0.310404,
		36.421906, 36.221054, 48.891056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543941, 35.423164, 48.590843>,  <36.948410, 35.814137, 49.108337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543941, 35.423164, 48.590843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469296, 35.813595, 48.546219>,  <36.424507, 36.047855, 48.519444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469296, 35.813595, 48.546219>,  <36.543941, 35.423164, 48.590843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469296, 35.813595, 48.546219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063613, -0.101312, -0.992819,
		-0.980372, -0.192367, -0.043185,
		-0.186611, 0.976079, -0.111560,
		36.413311, 36.106419, 48.512753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129440, 35.403099, 47.976646>,  <36.543941, 35.423164, 48.590843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129440, 35.403099, 47.976646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.251072, 35.780834, 48.026852>,  <36.324051, 36.007477, 48.056973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.251072, 35.780834, 48.026852>,  <36.129440, 35.403099, 47.976646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251072, 35.780834, 48.026852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070223, 0.153610, -0.985633,
		-0.950054, 0.290901, 0.113025,
		0.304083, 0.944341, 0.125509,
		36.342297, 36.064137, 48.064503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733109, 35.841965, 47.474327>,  <36.129440, 35.403099, 47.976646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733109, 35.841965, 47.474327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052109, 36.066235, 47.563442>,  <36.243507, 36.200798, 47.616913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052109, 36.066235, 47.563442>,  <35.733109, 35.841965, 47.474327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052109, 36.066235, 47.563442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110702, 0.227010, -0.967580,
		-0.593077, 0.796308, 0.118972,
		0.797499, 0.560679, 0.222787,
		36.291359, 36.234440, 47.630280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632195, 36.452358, 47.170536>,  <35.733109, 35.841965, 47.474327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632195, 36.452358, 47.170536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030125, 36.423138, 47.198769>,  <36.268883, 36.405605, 47.215710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030125, 36.423138, 47.198769>,  <35.632195, 36.452358, 47.170536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030125, 36.423138, 47.198769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072094, 0.018255, -0.997231,
		0.071563, 0.997161, 0.023428,
		0.994827, -0.073053, 0.070583,
		36.328571, 36.401222, 47.219944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157936, 36.942223, 46.852367>,  <35.632195, 36.452358, 47.170536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157936, 36.942223, 46.852367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819374, 36.795044, 46.698368>,  <34.616238, 36.706738, 46.605968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819374, 36.795044, 46.698368>,  <35.157936, 36.942223, 46.852367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819374, 36.795044, 46.698368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275084, -0.316944, 0.907676,
		-0.455999, 0.874163, 0.167045,
		-0.846400, -0.367947, -0.384995,
		34.565453, 36.684658, 46.582870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681736, 37.075912, 47.435848>,  <35.157936, 36.942223, 46.852367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681736, 37.075912, 47.435848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499165, 36.801594, 47.209095>,  <34.389622, 36.637001, 47.073044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499165, 36.801594, 47.209095>,  <34.681736, 37.075912, 47.435848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499165, 36.801594, 47.209095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440183, -0.379642, 0.813702,
		-0.773248, 0.620926, -0.128599,
		-0.456427, -0.685800, -0.566879,
		34.362236, 36.595852, 47.039032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004883, 37.185314, 47.578018>,  <34.681736, 37.075912, 47.435848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004883, 37.185314, 47.578018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043133, 36.822720, 47.413513>,  <34.066082, 36.605164, 47.314812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043133, 36.822720, 47.413513>,  <34.004883, 37.185314, 47.578018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043133, 36.822720, 47.413513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546186, -0.393187, 0.739652,
		-0.832187, 0.153892, -0.532711,
		0.095628, -0.906488, -0.411259,
		34.071823, 36.550774, 47.290134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355423, 37.062107, 47.562401>,  <34.004883, 37.185314, 47.578018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355423, 37.062107, 47.562401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560394, 36.719387, 47.539368>,  <33.683376, 36.513756, 47.525547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560394, 36.719387, 47.539368>,  <33.355423, 37.062107, 47.562401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560394, 36.719387, 47.539368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596415, -0.403344, 0.693976,
		-0.617825, -0.321266, -0.717691,
		0.512427, -0.856797, -0.057588,
		33.714123, 36.462349, 47.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844048, 36.503056, 47.598278>,  <33.355423, 37.062107, 47.562401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844048, 36.503056, 47.598278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187080, 36.332050, 47.712666>,  <33.392902, 36.229446, 47.781296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187080, 36.332050, 47.712666>,  <32.844048, 36.503056, 47.598278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187080, 36.332050, 47.712666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471325, -0.430619, 0.769688,
		-0.205911, -0.794857, -0.570792,
		0.857586, -0.427515, 0.285967,
		33.444355, 36.203796, 47.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690369, 35.851486, 47.745304>,  <32.844048, 36.503056, 47.598278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690369, 35.851486, 47.745304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025948, 35.910744, 47.954769>,  <33.227295, 35.946297, 48.080448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025948, 35.910744, 47.954769>,  <32.690369, 35.851486, 47.745304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025948, 35.910744, 47.954769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410185, -0.460242, 0.787353,
		0.357651, -0.875346, -0.325353,
		0.838948, 0.148143, 0.523660,
		33.277634, 35.955185, 48.111866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817684, 35.275028, 48.184174>,  <32.690369, 35.851486, 47.745304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817684, 35.275028, 48.184174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060394, 35.548576, 48.346237>,  <33.206020, 35.712704, 48.443474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060394, 35.548576, 48.346237>,  <32.817684, 35.275028, 48.184174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060394, 35.548576, 48.346237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167821, -0.388007, 0.906249,
		0.776959, -0.617880, -0.120664,
		0.606771, 0.683868, 0.405158,
		33.242424, 35.753738, 48.467785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813725, 34.545937, 48.199642>,  <32.817684, 35.275028, 48.184174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813725, 34.545937, 48.199642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453903, 34.376846, 48.155640>,  <32.238010, 34.275391, 48.129238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453903, 34.376846, 48.155640>,  <32.813725, 34.545937, 48.199642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453903, 34.376846, 48.155640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029464, 0.192543, -0.980846,
		0.435811, -0.885567, -0.160748,
		-0.899556, -0.422727, -0.110004,
		32.184036, 34.250027, 48.122639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846153, 34.018890, 47.726021>,  <32.813725, 34.545937, 48.199642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846153, 34.018890, 47.726021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462315, 34.129211, 47.748310>,  <32.232010, 34.195404, 47.761684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462315, 34.129211, 47.748310>,  <32.846153, 34.018890, 47.726021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462315, 34.129211, 47.748310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005304, 0.180259, -0.983605,
		-0.281330, -0.944159, -0.171513,
		-0.959596, 0.275807, 0.055720,
		32.174435, 34.211952, 47.765026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545006, 33.769115, 47.187263>,  <32.846153, 34.018890, 47.726021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545006, 33.769115, 47.187263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282246, 34.055096, 47.283028>,  <32.124588, 34.226685, 47.340488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282246, 34.055096, 47.283028>,  <32.545006, 33.769115, 47.187263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282246, 34.055096, 47.283028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190220, 0.150111, -0.970197,
		-0.729585, -0.682867, 0.037390,
		-0.656903, 0.714954, 0.239413,
		32.085175, 34.269581, 47.354851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942886, 33.596157, 46.811836>,  <32.545006, 33.769115, 47.187263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942886, 33.596157, 46.811836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925634, 33.986248, 46.898621>,  <31.915283, 34.220303, 46.950691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925634, 33.986248, 46.898621>,  <31.942886, 33.596157, 46.811836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925634, 33.986248, 46.898621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169341, 0.206885, -0.963599,
		-0.984613, -0.078299, 0.156223,
		-0.043129, 0.975227, 0.216961,
		31.912695, 34.278816, 46.963711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356211, 33.890568, 46.451447>,  <31.942886, 33.596157, 46.811836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356211, 33.890568, 46.451447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594278, 34.199532, 46.540127>,  <31.737120, 34.384911, 46.593334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594278, 34.199532, 46.540127>,  <31.356211, 33.890568, 46.451447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594278, 34.199532, 46.540127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023429, 0.292447, -0.955995,
		-0.803259, 0.563784, 0.192153,
		0.595170, 0.772413, 0.221702,
		31.772829, 34.431255, 46.606636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049263, 34.550121, 46.216125>,  <31.356211, 33.890568, 46.451447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049263, 34.550121, 46.216125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438797, 34.634655, 46.249538>,  <31.672518, 34.685375, 46.269585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438797, 34.634655, 46.249538>,  <31.049263, 34.550121, 46.216125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438797, 34.634655, 46.249538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004471, 0.385327, -0.922769,
		-0.227203, 0.898254, 0.376190,
		0.973837, 0.211338, 0.083531,
		31.730947, 34.698055, 46.274597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133465, 35.290607, 46.096710>,  <31.049263, 34.550121, 46.216125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133465, 35.290607, 46.096710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479931, 35.109612, 46.011852>,  <31.687811, 35.001015, 45.960938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479931, 35.109612, 46.011852>,  <31.133465, 35.290607, 46.096710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479931, 35.109612, 46.011852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034860, 0.478175, -0.877573,
		0.498540, 0.752728, 0.429952,
		0.866166, -0.452493, -0.212149,
		31.739780, 34.973866, 45.948208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.676605, 31.107662, 49.777500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994884, 31.346281, 49.735554>,  <33.185852, 31.489452, 49.710384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994884, 31.346281, 49.735554>,  <32.676605, 31.107662, 49.777500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994884, 31.346281, 49.735554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027032, -0.207940, -0.977768,
		-0.605090, 0.775173, -0.181584,
		0.795698, 0.596546, -0.104868,
		33.233593, 31.525246, 49.704094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413059, 31.661385, 49.400776>,  <32.676605, 31.107662, 49.777500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413059, 31.661385, 49.400776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809021, 31.630867, 49.352989>,  <33.046597, 31.612556, 49.324318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809021, 31.630867, 49.352989>,  <32.413059, 31.661385, 49.400776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809021, 31.630867, 49.352989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125371, -0.077974, -0.989041,
		0.066144, 0.994032, -0.086752,
		0.989902, -0.076296, -0.119465,
		33.105991, 31.607979, 49.317150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595833, 31.992517, 48.807793>,  <32.413059, 31.661385, 49.400776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595833, 31.992517, 48.807793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.938347, 31.790436, 48.850765>,  <33.143856, 31.669188, 48.876549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.938347, 31.790436, 48.850765>,  <32.595833, 31.992517, 48.807793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938347, 31.790436, 48.850765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050166, -0.125670, -0.990803,
		0.514057, 0.853802, -0.082266,
		0.856288, -0.505202, 0.107434,
		33.195232, 31.638876, 48.882996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972961, 32.316360, 48.389988>,  <32.595833, 31.992517, 48.807793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972961, 32.316360, 48.389988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.200283, 31.988705, 48.421074>,  <33.336678, 31.792110, 48.439728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.200283, 31.988705, 48.421074>,  <32.972961, 32.316360, 48.389988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200283, 31.988705, 48.421074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206977, 0.050899, -0.977021,
		0.796360, 0.571333, 0.198469,
		0.568306, -0.819139, 0.077719,
		33.370773, 31.742964, 48.444389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775028, 32.386497, 48.181797>,  <32.972961, 32.316360, 48.389988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775028, 32.386497, 48.181797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644585, 32.015289, 48.109772>,  <33.566319, 31.792562, 48.066555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644585, 32.015289, 48.109772>,  <33.775028, 32.386497, 48.181797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644585, 32.015289, 48.109772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394653, 0.039433, -0.917984,
		0.859012, -0.370426, 0.353388,
		-0.326110, -0.928025, -0.180063,
		33.546753, 31.736881, 48.055752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450981, 31.991581, 48.065788>,  <33.775028, 32.386497, 48.181797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450981, 31.991581, 48.065788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.152508, 31.794214, 47.887016>,  <33.973423, 31.675795, 47.779755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.152508, 31.794214, 47.887016>,  <34.450981, 31.991581, 48.065788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152508, 31.794214, 47.887016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583201, -0.160713, -0.796271,
		0.321065, -0.854817, 0.407683,
		-0.746186, -0.493416, -0.446931,
		33.928654, 31.646189, 47.752937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782547, 31.781120, 47.414890>,  <34.450981, 31.991581, 48.065788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782547, 31.781120, 47.414890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.399349, 31.671280, 47.381813>,  <34.169430, 31.605375, 47.361969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.399349, 31.671280, 47.381813>,  <34.782547, 31.781120, 47.414890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399349, 31.671280, 47.381813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145292, -0.216149, -0.965489,
		0.247249, -0.936950, 0.246967,
		-0.957997, -0.274599, -0.082689,
		34.111950, 31.588900, 47.357006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849487, 31.167715, 47.088596>,  <34.782547, 31.781120, 47.414890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849487, 31.167715, 47.088596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492744, 31.340151, 47.033829>,  <34.278698, 31.443613, 47.000969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492744, 31.340151, 47.033829>,  <34.849487, 31.167715, 47.088596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492744, 31.340151, 47.033829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027334, -0.250794, -0.967654,
		-0.451485, -0.866755, 0.211890,
		-0.891860, 0.431089, -0.136922,
		34.225185, 31.469479, 46.992752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438316, 30.663296, 46.634552>,  <34.849487, 31.167715, 47.088596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438316, 30.663296, 46.634552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249401, 31.014505, 46.603508>,  <34.136051, 31.225231, 46.584881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249401, 31.014505, 46.603508>,  <34.438316, 30.663296, 46.634552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249401, 31.014505, 46.603508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026256, -0.102018, -0.994436,
		-0.881055, -0.467620, 0.071235,
		-0.472285, 0.878023, -0.077606,
		34.107716, 31.277912, 46.580227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840996, 30.572741, 46.225388>,  <34.438316, 30.663296, 46.634552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840996, 30.572741, 46.225388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911877, 30.964241, 46.184124>,  <33.954407, 31.199142, 46.159367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911877, 30.964241, 46.184124>,  <33.840996, 30.572741, 46.225388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911877, 30.964241, 46.184124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051078, -0.113818, -0.992188,
		-0.982848, 0.170552, -0.070161,
		0.177205, 0.978753, -0.103154,
		33.965038, 31.257868, 46.153179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326405, 30.787531, 45.609798>,  <33.840996, 30.572741, 46.225388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326405, 30.787531, 45.609798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626995, 31.048948, 45.645935>,  <33.807350, 31.205799, 45.667618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626995, 31.048948, 45.645935>,  <33.326405, 30.787531, 45.609798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626995, 31.048948, 45.645935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086822, 0.037787, -0.995507,
		-0.654019, 0.755947, -0.028346,
		0.751479, 0.653542, 0.090346,
		33.852440, 31.245010, 45.673038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220917, 31.280172, 44.984379>,  <33.326405, 30.787531, 45.609798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220917, 31.280172, 44.984379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.582287, 31.367880, 45.131756>,  <33.799110, 31.420504, 45.220181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.582287, 31.367880, 45.131756>,  <33.220917, 31.280172, 44.984379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582287, 31.367880, 45.131756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362380, 0.068762, -0.929490,
		-0.229141, 0.973239, -0.017337,
		0.903424, 0.219267, 0.368439,
		33.853313, 31.433661, 45.242287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876423, 31.741123, 45.212418>,  <33.220917, 31.280172, 44.984379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876423, 31.741123, 45.212418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511246, 31.898544, 45.169247>,  <32.292137, 31.992996, 45.143345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511246, 31.898544, 45.169247>,  <32.876423, 31.741123, 45.212418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511246, 31.898544, 45.169247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194201, -0.186391, 0.963091,
		0.358910, 0.900209, 0.246593,
		-0.912946, 0.393551, -0.107924,
		32.237362, 32.016609, 45.136871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677395, 31.911812, 45.952469>,  <32.876423, 31.741123, 45.212418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677395, 31.911812, 45.952469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335289, 31.914610, 45.745209>,  <32.130028, 31.916288, 45.620853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335289, 31.914610, 45.745209>,  <32.677395, 31.911812, 45.952469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335289, 31.914610, 45.745209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518046, -0.035835, 0.854602,
		-0.012588, 0.999333, 0.034273,
		-0.855260, 0.006997, -0.518152,
		32.078712, 31.916710, 45.589764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266460, 32.379246, 46.231434>,  <32.677395, 31.911812, 45.952469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266460, 32.379246, 46.231434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995974, 32.140701, 46.058422>,  <31.833681, 31.997574, 45.954613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995974, 32.140701, 46.058422>,  <32.266460, 32.379246, 46.231434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995974, 32.140701, 46.058422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448554, -0.132455, 0.883886,
		-0.584407, 0.791713, -0.177932,
		-0.676216, -0.596361, -0.432533,
		31.793108, 31.961794, 45.928661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579128, 32.552326, 46.509644>,  <32.266460, 32.379246, 46.231434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579128, 32.552326, 46.509644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511444, 32.188961, 46.356724>,  <31.470833, 31.970942, 46.264973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511444, 32.188961, 46.356724>,  <31.579128, 32.552326, 46.509644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511444, 32.188961, 46.356724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590757, -0.217005, 0.777119,
		-0.788906, 0.357344, -0.499932,
		-0.169212, -0.908413, -0.382301,
		31.460680, 31.916437, 46.242035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881645, 32.444118, 46.647987>,  <31.579128, 32.552326, 46.509644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881645, 32.444118, 46.647987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026829, 32.075943, 46.589954>,  <31.113939, 31.855038, 46.555134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026829, 32.075943, 46.589954>,  <30.881645, 32.444118, 46.647987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026829, 32.075943, 46.589954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403345, -0.295553, 0.866003,
		-0.839984, -0.255807, -0.478529,
		0.362960, -0.920441, -0.145081,
		31.135717, 31.799810, 46.546429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335381, 32.035431, 46.935913>,  <30.881645, 32.444118, 46.647987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335381, 32.035431, 46.935913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.635324, 31.771931, 46.911377>,  <30.815290, 31.613831, 46.896656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.635324, 31.771931, 46.911377>,  <30.335381, 32.035431, 46.935913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635324, 31.771931, 46.911377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229163, -0.345586, 0.909975,
		-0.620643, -0.668296, -0.410102,
		0.749857, -0.658749, -0.061337,
		30.860281, 31.574306, 46.892975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056690, 31.465061, 47.115192>,  <30.335381, 32.035431, 46.935913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056690, 31.465061, 47.115192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.433687, 31.354723, 47.190681>,  <30.659885, 31.288521, 47.235973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.433687, 31.354723, 47.190681>,  <30.056690, 31.465061, 47.115192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433687, 31.354723, 47.190681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274249, -0.315538, 0.908418,
		-0.191033, -0.907935, -0.373043,
		0.942493, -0.275844, 0.188722,
		30.716434, 31.271969, 47.247299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036055, 30.790569, 47.305771>,  <30.056690, 31.465061, 47.115192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036055, 30.790569, 47.305771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.361498, 30.948071, 47.476887>,  <30.556763, 31.042570, 47.579556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.361498, 30.948071, 47.476887>,  <30.036055, 30.790569, 47.305771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361498, 30.948071, 47.476887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341070, -0.272651, 0.899629,
		0.470868, -0.877851, -0.087534,
		0.813606, 0.393751, 0.427791,
		30.605579, 31.066196, 47.605225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176727, 30.385609, 47.911983>,  <30.036055, 30.790569, 47.305771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176727, 30.385609, 47.911983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.357037, 30.741306, 47.943092>,  <30.465221, 30.954725, 47.961758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.357037, 30.741306, 47.943092>,  <30.176727, 30.385609, 47.911983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357037, 30.741306, 47.943092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062478, -0.118342, 0.991005,
		0.890449, -0.441859, -0.108904,
		0.450773, 0.889244, 0.077771,
		30.492268, 31.008080, 47.966423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742962, 30.241510, 48.458069>,  <30.176727, 30.385609, 47.911983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742962, 30.241510, 48.458069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741417, 30.641428, 48.450104>,  <30.740490, 30.881378, 48.445324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741417, 30.641428, 48.450104>,  <30.742962, 30.241510, 48.458069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741417, 30.641428, 48.450104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066787, 0.019609, 0.997575,
		0.997760, 0.005183, 0.066697,
		-0.003863, 0.999794, -0.019912,
		30.740257, 30.941366, 48.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297722, 30.417585, 48.917595>,  <30.742962, 30.241510, 48.458069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297722, 30.417585, 48.917595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.041351, 30.724436, 48.906734>,  <30.887529, 30.908546, 48.900219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.041351, 30.724436, 48.906734>,  <31.297722, 30.417585, 48.917595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041351, 30.724436, 48.906734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031975, 0.062016, 0.997563,
		0.766938, 0.638494, -0.064277,
		-0.640924, 0.767124, -0.027147,
		30.849073, 30.954573, 48.898590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628326, 30.884283, 49.353489>,  <31.297722, 30.417585, 48.917595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628326, 30.884283, 49.353489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.234898, 30.952682, 49.330341>,  <30.998840, 30.993723, 49.316452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.234898, 30.952682, 49.330341>,  <31.628326, 30.884283, 49.353489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234898, 30.952682, 49.330341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020084, 0.214911, 0.976427,
		0.179406, 0.961547, -0.207946,
		-0.983570, 0.171001, -0.057868,
		30.939827, 31.003983, 49.312981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500114, 31.231642, 49.992714>,  <31.628326, 30.884283, 49.353489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500114, 31.231642, 49.992714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119732, 31.158195, 49.893143>,  <30.891502, 31.114128, 49.833401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119732, 31.158195, 49.893143>,  <31.500114, 31.231642, 49.992714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119732, 31.158195, 49.893143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286318, 0.217995, 0.933006,
		-0.117050, 0.958522, -0.259876,
		-0.950958, -0.183615, -0.248926,
		30.834444, 31.103111, 49.818466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050056, 31.723825, 50.304798>,  <31.500114, 31.231642, 49.992714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050056, 31.723825, 50.304798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832235, 31.396158, 50.232773>,  <30.701542, 31.199558, 50.189556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832235, 31.396158, 50.232773>,  <31.050056, 31.723825, 50.304798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832235, 31.396158, 50.232773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322078, 0.006008, 0.946694,
		-0.774419, 0.573522, -0.267108,
		-0.544555, -0.819168, -0.180066,
		30.668869, 31.150408, 50.178753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476557, 32.095688, 49.765472>,  <31.050056, 31.723825, 50.304798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476557, 32.095688, 49.765472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.378189, 32.404255, 50.000229>,  <31.319168, 32.589394, 50.141083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.378189, 32.404255, 50.000229>,  <31.476557, 32.095688, 49.765472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378189, 32.404255, 50.000229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354655, 0.635110, -0.686189,
		-0.902077, 0.039396, -0.429772,
		-0.245920, 0.771416, 0.586890,
		31.304413, 32.635681, 50.176296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020800, 32.501240, 49.373947>,  <31.476557, 32.095688, 49.765472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020800, 32.501240, 49.373947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.170856, 32.756866, 49.642532>,  <31.260891, 32.910244, 49.803684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.170856, 32.756866, 49.642532>,  <31.020800, 32.501240, 49.373947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170856, 32.756866, 49.642532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173454, 0.663173, -0.728090,
		-0.910595, 0.389603, 0.137933,
		0.375140, 0.639070, 0.671460,
		31.283398, 32.948589, 49.843971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635963, 33.110554, 49.387856>,  <31.020800, 32.501240, 49.373947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635963, 33.110554, 49.387856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002640, 33.183247, 49.530205>,  <31.222645, 33.226864, 49.615616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002640, 33.183247, 49.530205>,  <30.635963, 33.110554, 49.387856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002640, 33.183247, 49.530205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200931, 0.560177, -0.803635,
		-0.345403, 0.808192, 0.476993,
		0.916692, 0.181735, 0.355878,
		31.277647, 33.237766, 49.636967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762001, 33.800190, 49.192291>,  <30.635963, 33.110554, 49.387856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762001, 33.800190, 49.192291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115486, 33.644810, 49.296719>,  <31.327578, 33.551582, 49.359375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115486, 33.644810, 49.296719>,  <30.762001, 33.800190, 49.192291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115486, 33.644810, 49.296719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402636, 0.346582, -0.847210,
		0.238620, 0.853805, 0.462684,
		0.883711, -0.388455, 0.261072,
		31.380600, 33.528275, 49.375042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169748, 34.362354, 49.306419>,  <30.762001, 33.800190, 49.192291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169748, 34.362354, 49.306419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449158, 34.086185, 49.231182>,  <31.616804, 33.920483, 49.186039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449158, 34.086185, 49.231182>,  <31.169748, 34.362354, 49.306419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449158, 34.086185, 49.231182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264773, 0.493572, -0.828421,
		0.664800, 0.528869, 0.527578,
		0.698524, -0.690423, -0.188096,
		31.658714, 33.879059, 49.174751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774483, 34.835018, 49.105412>,  <31.169748, 34.362354, 49.306419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774483, 34.835018, 49.105412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.824306, 34.449409, 49.011478>,  <31.854200, 34.218044, 48.955120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.824306, 34.449409, 49.011478>,  <31.774483, 34.835018, 49.105412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824306, 34.449409, 49.011478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477763, 0.265704, -0.837343,
		0.869614, -0.007895, 0.493670,
		0.124559, -0.964022, -0.234832,
		31.861673, 34.160202, 48.941029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452572, 34.847202, 48.878078>,  <31.774483, 34.835018, 49.105412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452572, 34.847202, 48.878078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.239586, 34.537685, 48.740829>,  <32.111794, 34.351974, 48.658482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.239586, 34.537685, 48.740829>,  <32.452572, 34.847202, 48.878078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239586, 34.537685, 48.740829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275385, 0.224949, -0.934645,
		0.800404, -0.592153, 0.093313,
		-0.532462, -0.773790, -0.343121,
		32.079845, 34.305550, 48.637894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245991, 34.938877, 48.761650>,  <32.452572, 34.847202, 48.878078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245991, 34.938877, 48.761650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.289059, 35.327209, 48.847340>,  <33.314899, 35.560211, 48.898754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.289059, 35.327209, 48.847340>,  <33.245991, 34.938877, 48.761650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289059, 35.327209, 48.847340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013660, -0.214009, 0.976736,
		0.994093, -0.108094, -0.009782,
		0.107673, 0.970833, 0.214221,
		33.321362, 35.618458, 48.911606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779449, 34.979458, 49.240837>,  <33.245991, 34.938877, 48.761650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779449, 34.979458, 49.240837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592686, 35.331036, 49.279728>,  <33.480629, 35.541985, 49.303062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592686, 35.331036, 49.279728>,  <33.779449, 34.979458, 49.240837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592686, 35.331036, 49.279728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050972, -0.136511, 0.989327,
		0.882837, 0.456966, 0.108540,
		-0.466906, 0.878946, 0.097225,
		33.452614, 35.594719, 49.308895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204742, 35.367748, 49.640308>,  <33.779449, 34.979458, 49.240837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204742, 35.367748, 49.640308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838593, 35.527172, 49.663094>,  <33.618904, 35.622826, 49.676765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838593, 35.527172, 49.663094>,  <34.204742, 35.367748, 49.640308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838593, 35.527172, 49.663094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054425, -0.017691, 0.998361,
		0.398912, 0.916973, -0.005498,
		-0.915373, 0.398558, 0.056963,
		33.563980, 35.646740, 49.680183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223675, 35.932732, 50.093388>,  <34.204742, 35.367748, 49.640308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223675, 35.932732, 50.093388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839684, 35.823570, 50.068211>,  <33.609287, 35.758072, 50.053104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839684, 35.823570, 50.068211>,  <34.223675, 35.932732, 50.093388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839684, 35.823570, 50.068211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079823, 0.051183, 0.995494,
		-0.268455, 0.960678, -0.070919,
		-0.959979, -0.272907, -0.062944,
		33.551689, 35.741699, 50.049328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865978, 36.422935, 50.449818>,  <34.223675, 35.932732, 50.093388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865978, 36.422935, 50.449818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601830, 36.123421, 50.427097>,  <33.443340, 35.943710, 50.413464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601830, 36.123421, 50.427097>,  <33.865978, 36.422935, 50.449818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601830, 36.123421, 50.427097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058189, -0.024394, 0.998008,
		-0.748682, 0.662360, -0.027463,
		-0.660371, -0.748788, -0.056805,
		33.403717, 35.898785, 50.410057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367241, 36.655174, 50.874817>,  <33.865978, 36.422935, 50.449818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367241, 36.655174, 50.874817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.299477, 36.262615, 50.838680>,  <33.258820, 36.027081, 50.816998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.299477, 36.262615, 50.838680>,  <33.367241, 36.655174, 50.874817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299477, 36.262615, 50.838680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123176, -0.069864, 0.989923,
		-0.977818, 0.178827, -0.109049,
		-0.169406, -0.981397, -0.090342,
		33.248653, 35.968197, 50.811577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729717, 36.618420, 51.233528>,  <33.367241, 36.655174, 50.874817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729717, 36.618420, 51.233528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.869267, 36.243668, 51.224186>,  <32.952995, 36.018818, 51.218578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.869267, 36.243668, 51.224186>,  <32.729717, 36.618420, 51.233528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869267, 36.243668, 51.224186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110869, -0.066009, 0.991641,
		-0.930587, -0.343371, -0.126899,
		0.348878, -0.936878, -0.023358,
		32.973930, 35.962605, 51.217178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230812, 36.191578, 51.578941>,  <32.729717, 36.618420, 51.233528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230812, 36.191578, 51.578941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.591137, 36.019215, 51.600361>,  <32.807331, 35.915798, 51.613213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.591137, 36.019215, 51.600361>,  <32.230812, 36.191578, 51.578941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591137, 36.019215, 51.600361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113173, -0.113934, 0.987021,
		-0.419210, -0.895176, -0.151400,
		0.900807, -0.430904, 0.053547,
		32.861378, 35.889942, 51.616425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058804, 35.563564, 51.972122>,  <32.230812, 36.191578, 51.578941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058804, 35.563564, 51.972122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.453293, 35.629536, 51.977150>,  <32.689987, 35.669117, 51.980167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.453293, 35.629536, 51.977150>,  <32.058804, 35.563564, 51.972122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453293, 35.629536, 51.977150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053982, 0.249131, 0.966964,
		0.156344, -0.954324, 0.254602,
		0.986226, 0.164923, 0.012566,
		32.749161, 35.679012, 51.980919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.795792, 37.304020, 36.741646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180912, 37.306770, 36.849693>,  <36.411983, 37.308418, 36.914524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180912, 37.306770, 36.849693>,  <35.795792, 37.304020, 36.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180912, 37.306770, 36.849693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266987, 0.178125, 0.947095,
		-0.041607, -0.983984, 0.173333,
		0.962802, 0.006872, 0.270122,
		36.469753, 37.308830, 36.930729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770844, 37.256424, 37.435307>,  <35.795792, 37.304020, 36.741646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770844, 37.256424, 37.435307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150574, 37.380398, 37.414459>,  <36.378414, 37.454781, 37.401951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150574, 37.380398, 37.414459>,  <35.770844, 37.256424, 37.435307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150574, 37.380398, 37.414459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055500, 0.328534, 0.942860,
		0.309343, -0.892193, 0.329088,
		0.949330, 0.309931, -0.052113,
		36.435371, 37.473377, 37.398827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105804, 37.000660, 38.142933>,  <35.770844, 37.256424, 37.435307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105804, 37.000660, 38.142933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313080, 37.292194, 37.963924>,  <36.437443, 37.467117, 37.856518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313080, 37.292194, 37.963924>,  <36.105804, 37.000660, 38.142933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313080, 37.292194, 37.963924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130973, 0.449463, 0.883646,
		0.845181, -0.516506, 0.137447,
		0.518185, 0.728838, -0.447526,
		36.468536, 37.510845, 37.829666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747108, 37.011314, 38.543365>,  <36.105804, 37.000660, 38.142933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747108, 37.011314, 38.543365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710491, 37.360561, 38.351830>,  <36.688522, 37.570110, 38.236908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710491, 37.360561, 38.351830>,  <36.747108, 37.011314, 38.543365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710491, 37.360561, 38.351830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131321, 0.487244, 0.863336,
		0.987104, 0.016151, -0.159262,
		-0.091543, 0.873117, -0.478839,
		36.683029, 37.622498, 38.208179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413971, 37.353386, 38.676594>,  <36.747108, 37.011314, 38.543365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413971, 37.353386, 38.676594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129436, 37.618923, 38.584236>,  <36.958717, 37.778244, 38.528820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129436, 37.618923, 38.584236>,  <37.413971, 37.353386, 38.676594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129436, 37.618923, 38.584236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096534, 0.233124, 0.967644,
		0.696190, 0.710610, -0.101747,
		-0.711337, 0.663842, -0.230896,
		36.916035, 37.818077, 38.514969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627487, 37.909393, 39.061947>,  <37.413971, 37.353386, 38.676594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627487, 37.909393, 39.061947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248074, 37.989784, 38.964062>,  <37.020424, 38.038017, 38.905331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248074, 37.989784, 38.964062>,  <37.627487, 37.909393, 39.061947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248074, 37.989784, 38.964062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208043, 0.187117, 0.960055,
		0.238738, 0.961559, -0.135676,
		-0.948537, 0.200976, -0.244717,
		36.963512, 38.050076, 38.890648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467514, 38.527740, 39.504063>,  <37.627487, 37.909393, 39.061947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467514, 38.527740, 39.504063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136719, 38.331139, 39.394875>,  <36.938240, 38.213177, 39.329361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136719, 38.331139, 39.394875>,  <37.467514, 38.527740, 39.504063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136719, 38.331139, 39.394875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401724, 0.176914, 0.898509,
		-0.393325, 0.852719, -0.343753,
		-0.826990, -0.491500, -0.272973,
		36.888622, 38.183689, 39.312984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002373, 38.920322, 39.802143>,  <37.467514, 38.527740, 39.504063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002373, 38.920322, 39.802143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796253, 38.591991, 39.703579>,  <36.672581, 38.394993, 39.644440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796253, 38.591991, 39.703579>,  <37.002373, 38.920322, 39.802143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796253, 38.591991, 39.703579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619117, 0.157729, 0.769295,
		-0.592589, 0.548973, -0.589463,
		-0.515298, -0.820823, -0.246410,
		36.641663, 38.345745, 39.629658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305611, 39.049549, 39.677708>,  <37.002373, 38.920322, 39.802143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305611, 39.049549, 39.677708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315071, 38.669571, 39.802315>,  <36.320747, 38.441586, 39.877079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315071, 38.669571, 39.802315>,  <36.305611, 39.049549, 39.677708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315071, 38.669571, 39.802315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710587, 0.203216, 0.673624,
		-0.703212, -0.237294, -0.670212,
		0.023649, -0.949944, 0.311522,
		36.322166, 38.384586, 39.895771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596684, 38.874969, 39.833447>,  <36.305611, 39.049549, 39.677708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596684, 38.874969, 39.833447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794960, 38.585400, 40.025372>,  <35.913925, 38.411659, 40.140526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794960, 38.585400, 40.025372>,  <35.596684, 38.874969, 39.833447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794960, 38.585400, 40.025372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664773, 0.039265, 0.746013,
		-0.558895, -0.688764, -0.461780,
		0.495695, -0.723921, 0.479817,
		35.943668, 38.368225, 40.169315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160000, 38.374184, 40.030720>,  <35.596684, 38.874969, 39.833447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160000, 38.374184, 40.030720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452255, 38.308525, 40.295815>,  <35.627609, 38.269131, 40.454872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452255, 38.308525, 40.295815>,  <35.160000, 38.374184, 40.030720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452255, 38.308525, 40.295815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651531, 0.122594, 0.748651,
		-0.204136, -0.978788, -0.017374,
		0.730641, -0.164147, 0.662737,
		35.671448, 38.259281, 40.494637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902130, 37.784744, 40.479206>,  <35.160000, 38.374184, 40.030720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902130, 37.784744, 40.479206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191872, 37.977516, 40.676407>,  <35.365715, 38.093182, 40.794727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191872, 37.977516, 40.676407>,  <34.902130, 37.784744, 40.479206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191872, 37.977516, 40.676407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472438, -0.173824, 0.864053,
		0.502112, -0.858793, 0.101774,
		0.724352, 0.481933, 0.493006,
		35.409176, 38.122097, 40.824310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752605, 37.029911, 40.645927>,  <34.902130, 37.784744, 40.479206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752605, 37.029911, 40.645927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421398, 36.806538, 40.625748>,  <34.222675, 36.672512, 40.613640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421398, 36.806538, 40.625748>,  <34.752605, 37.029911, 40.645927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421398, 36.806538, 40.625748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006266, 0.099180, -0.995050,
		0.560672, -0.823600, -0.085621,
		-0.828014, -0.558433, -0.050447,
		34.172993, 36.639008, 40.610615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837772, 36.402809, 40.145245>,  <34.752605, 37.029911, 40.645927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837772, 36.402809, 40.145245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453823, 36.508965, 40.181488>,  <34.223454, 36.572659, 40.203236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453823, 36.508965, 40.181488>,  <34.837772, 36.402809, 40.145245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453823, 36.508965, 40.181488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049633, 0.157241, -0.986312,
		-0.276006, -0.951232, -0.137759,
		-0.959873, 0.265391, 0.090612,
		34.165859, 36.588581, 40.208672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542892, 36.008419, 39.673038>,  <34.837772, 36.402809, 40.145245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542892, 36.008419, 39.673038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283695, 36.303570, 39.748566>,  <34.128178, 36.480659, 39.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283695, 36.303570, 39.748566>,  <34.542892, 36.008419, 39.673038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283695, 36.303570, 39.748566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070814, 0.188470, -0.979523,
		-0.758349, -0.648092, -0.069875,
		-0.647990, 0.737872, 0.188820,
		34.089298, 36.524933, 39.805210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964222, 35.930870, 39.176281>,  <34.542892, 36.008419, 39.673038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964222, 35.930870, 39.176281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906906, 36.309757, 39.290997>,  <33.872517, 36.537090, 39.359825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906906, 36.309757, 39.290997>,  <33.964222, 35.930870, 39.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906906, 36.309757, 39.290997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337477, 0.225651, -0.913888,
		-0.930364, -0.227736, 0.287330,
		-0.143289, 0.947216, 0.286794,
		33.863918, 36.593922, 39.377033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270550, 35.977280, 39.015930>,  <33.964222, 35.930870, 39.176281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270550, 35.977280, 39.015930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441273, 36.337749, 39.046196>,  <33.543705, 36.554031, 39.064354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441273, 36.337749, 39.046196>,  <33.270550, 35.977280, 39.015930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441273, 36.337749, 39.046196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306148, 0.222703, -0.925568,
		-0.850948, 0.371872, 0.370943,
		0.426803, 0.901174, 0.075661,
		33.569313, 36.608101, 39.068893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771641, 36.462662, 39.031769>,  <33.270550, 35.977280, 39.015930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771641, 36.462662, 39.031769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098969, 36.653732, 38.903912>,  <33.295364, 36.768375, 38.827198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098969, 36.653732, 38.903912>,  <32.771641, 36.462662, 39.031769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098969, 36.653732, 38.903912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450370, 0.187382, -0.872958,
		-0.357099, 0.858318, 0.368471,
		0.818320, 0.477680, -0.319647,
		33.344463, 36.797035, 38.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582401, 37.111332, 38.799473>,  <32.771641, 36.462662, 39.031769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582401, 37.111332, 38.799473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919754, 37.026482, 38.602005>,  <33.122166, 36.975571, 38.483524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919754, 37.026482, 38.602005>,  <32.582401, 37.111332, 38.799473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919754, 37.026482, 38.602005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394644, 0.378951, -0.837050,
		0.364639, 0.900776, 0.235885,
		0.843383, -0.212130, -0.493666,
		33.172768, 36.962841, 38.453907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866951, 37.750092, 38.384537>,  <32.582401, 37.111332, 38.799473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866951, 37.750092, 38.384537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064419, 37.449417, 38.209606>,  <33.182899, 37.269012, 38.104649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064419, 37.449417, 38.209606>,  <32.866951, 37.750092, 38.384537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064419, 37.449417, 38.209606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242581, 0.363885, -0.899301,
		0.835129, 0.550047, -0.002705,
		0.493674, -0.751689, -0.437322,
		33.212521, 37.223911, 38.078411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206615, 38.081467, 37.824612>,  <32.866951, 37.750092, 38.384537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206615, 38.081467, 37.824612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220772, 37.694813, 37.723125>,  <33.229263, 37.462822, 37.662235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220772, 37.694813, 37.723125>,  <33.206615, 38.081467, 37.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220772, 37.694813, 37.723125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088267, 0.249856, -0.964252,
		0.995468, 0.056517, -0.076480,
		0.035388, -0.966632, -0.253712,
		33.231388, 37.404823, 37.647011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632065, 38.076847, 37.149387>,  <33.206615, 38.081467, 37.824612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632065, 38.076847, 37.149387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440956, 37.726116, 37.170918>,  <33.326290, 37.515678, 37.183834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440956, 37.726116, 37.170918>,  <33.632065, 38.076847, 37.149387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440956, 37.726116, 37.170918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258621, 0.081833, -0.962506,
		0.839551, -0.473783, -0.265865,
		-0.477775, -0.876831, 0.053827,
		33.297623, 37.463066, 37.187065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707409, 37.963501, 36.452991>,  <33.632065, 38.076847, 37.149387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707409, 37.963501, 36.452991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401005, 37.727310, 36.554623>,  <33.217163, 37.585594, 36.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401005, 37.727310, 36.554623>,  <33.707409, 37.963501, 36.452991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401005, 37.727310, 36.554623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447007, 0.205250, -0.870665,
		0.461963, -0.780515, -0.421174,
		-0.766013, -0.590482, 0.254077,
		33.171200, 37.550167, 36.630844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540554, 37.378307, 35.998493>,  <33.707409, 37.963501, 36.452991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540554, 37.378307, 35.998493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186817, 37.454887, 36.168800>,  <32.974575, 37.500835, 36.270985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186817, 37.454887, 36.168800>,  <33.540554, 37.378307, 35.998493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186817, 37.454887, 36.168800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444979, -0.069921, -0.892807,
		-0.141165, -0.979007, 0.147028,
		-0.884345, 0.191457, 0.425767,
		32.921513, 37.512321, 36.296532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991581, 37.022923, 35.716629>,  <33.540554, 37.378307, 35.998493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991581, 37.022923, 35.716629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753281, 37.285168, 35.902210>,  <32.610302, 37.442516, 36.013561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753281, 37.285168, 35.902210>,  <32.991581, 37.022923, 35.716629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753281, 37.285168, 35.902210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766755, -0.292282, -0.571540,
		-0.239103, -0.696234, 0.676822,
		-0.595748, 0.655614, 0.463956,
		32.574554, 37.481853, 36.041397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389687, 36.742947, 35.658508>,  <32.991581, 37.022923, 35.716629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389687, 36.742947, 35.658508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307449, 37.123985, 35.748211>,  <32.258106, 37.352608, 35.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307449, 37.123985, 35.748211>,  <32.389687, 36.742947, 35.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307449, 37.123985, 35.748211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820182, -0.042706, -0.570506,
		-0.533884, -0.301227, 0.790082,
		-0.205593, 0.952596, 0.224261,
		32.245770, 37.409763, 35.815491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636009, 36.847637, 35.746861>,  <32.389687, 36.742947, 35.658508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636009, 36.847637, 35.746861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798635, 37.193474, 35.628750>,  <31.896212, 37.400974, 35.557884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798635, 37.193474, 35.628750>,  <31.636009, 36.847637, 35.746861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798635, 37.193474, 35.628750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750744, 0.131971, -0.647276,
		-0.520660, 0.484839, 0.702740,
		0.406567, 0.864589, -0.295278,
		31.920605, 37.452850, 35.540165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868486, 36.181561, 35.292530>,  <31.636009, 36.847637, 35.746861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868486, 36.181561, 35.292530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708580, 35.827587, 35.196964>,  <31.612637, 35.615204, 35.139626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708580, 35.827587, 35.196964>,  <31.868486, 36.181561, 35.292530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708580, 35.827587, 35.196964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056506, -0.236357, 0.970022,
		-0.914873, 0.401284, 0.044484,
		-0.399768, -0.884933, -0.238912,
		31.588650, 35.562107, 35.125290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097521, 36.042496, 35.522602>,  <31.868486, 36.181561, 35.292530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097521, 36.042496, 35.522602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323687, 35.713188, 35.502441>,  <31.459387, 35.515606, 35.490345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323687, 35.713188, 35.502441>,  <31.097521, 36.042496, 35.522602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323687, 35.713188, 35.502441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065715, -0.105881, 0.992205,
		-0.822185, -0.557695, -0.113968,
		0.565415, -0.823265, -0.050405,
		31.493311, 35.466209, 35.487320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754984, 35.614525, 35.864506>,  <31.097521, 36.042496, 35.522602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754984, 35.614525, 35.864506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122580, 35.456837, 35.867123>,  <31.343138, 35.362225, 35.868694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122580, 35.456837, 35.867123>,  <30.754984, 35.614525, 35.864506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122580, 35.456837, 35.867123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160945, -0.359934, 0.918991,
		-0.359934, -0.845597, -0.394225,
		-0.918991, 0.394225, -0.006542,
		31.398277, 35.338570, 35.869083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648655, 35.037209, 36.292339>,  <30.754984, 35.614525, 35.864506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648655, 35.037209, 36.292339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047415, 35.062992, 36.310387>,  <31.286671, 35.078461, 36.321213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047415, 35.062992, 36.310387>,  <30.648655, 35.037209, 36.292339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047415, 35.062992, 36.310387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052544, 0.118649, 0.991545,
		0.058555, -0.990842, 0.121668,
		0.996900, 0.064453, 0.045115,
		31.346485, 35.082329, 36.323921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835035, 34.466576, 36.755135>,  <30.648655, 35.037209, 36.292339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835035, 34.466576, 36.755135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120251, 34.746784, 36.743504>,  <31.291380, 34.914909, 36.736526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120251, 34.746784, 36.743504>,  <30.835035, 34.466576, 36.755135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120251, 34.746784, 36.743504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190274, -0.153425, 0.969668,
		0.674812, -0.696943, -0.242689,
		0.713039, 0.700522, -0.029077,
		31.334162, 34.956940, 36.734779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524199, 34.215084, 37.030163>,  <30.835035, 34.466576, 36.755135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524199, 34.215084, 37.030163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506437, 34.612926, 37.067673>,  <31.495781, 34.851631, 37.090179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506437, 34.612926, 37.067673>,  <31.524199, 34.215084, 37.030163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506437, 34.612926, 37.067673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369016, -0.070900, 0.926715,
		0.928362, 0.075755, -0.363876,
		-0.044404, 0.994603, 0.093776,
		31.493116, 34.911308, 37.095806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121696, 34.272606, 37.340008>,  <31.524199, 34.215084, 37.030163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121696, 34.272606, 37.340008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925325, 34.615623, 37.401459>,  <31.807503, 34.821434, 37.438328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925325, 34.615623, 37.401459>,  <32.121696, 34.272606, 37.340008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925325, 34.615623, 37.401459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246000, -0.032707, 0.968718,
		0.835746, 0.513365, -0.194900,
		-0.490931, 0.857547, 0.153623,
		31.778046, 34.872887, 37.447544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523190, 34.798222, 37.798714>,  <32.121696, 34.272606, 37.340008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523190, 34.798222, 37.798714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140244, 34.909351, 37.830395>,  <31.910477, 34.976028, 37.849403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140244, 34.909351, 37.830395>,  <32.523190, 34.798222, 37.798714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140244, 34.909351, 37.830395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067888, -0.050117, 0.996433,
		0.280805, 0.959323, 0.029119,
		-0.957361, 0.277827, 0.079199,
		31.853035, 34.992699, 37.854153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478996, 35.387085, 38.289276>,  <32.523190, 34.798222, 37.798714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478996, 35.387085, 38.289276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126427, 35.199322, 38.268311>,  <31.914885, 35.086662, 38.255733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126427, 35.199322, 38.268311>,  <32.478996, 35.387085, 38.289276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126427, 35.199322, 38.268311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049166, -0.201546, 0.978244,
		-0.469757, 0.859673, 0.200726,
		-0.881425, -0.469406, -0.052411,
		31.862000, 35.058498, 38.252586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109486, 35.646996, 38.861656>,  <32.478996, 35.387085, 38.289276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109486, 35.646996, 38.861656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896681, 35.324097, 38.759430>,  <31.768997, 35.130356, 38.698093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896681, 35.324097, 38.759430>,  <32.109486, 35.646996, 38.861656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896681, 35.324097, 38.759430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138742, -0.214633, 0.966790,
		-0.835290, 0.549805, 0.002189,
		-0.532016, -0.807246, -0.255562,
		31.737076, 35.081924, 38.682762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615957, 35.648331, 39.332073>,  <32.109486, 35.646996, 38.861656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615957, 35.648331, 39.332073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589977, 35.270821, 39.202419>,  <31.574390, 35.044315, 39.124626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589977, 35.270821, 39.202419>,  <31.615957, 35.648331, 39.332073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589977, 35.270821, 39.202419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144695, -0.312481, 0.938839,
		-0.987342, 0.107877, -0.116265,
		-0.064948, -0.943779, -0.324135,
		31.570494, 34.987686, 39.105179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906702, 35.323269, 39.588581>,  <31.615957, 35.648331, 39.332073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906702, 35.323269, 39.588581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145304, 35.009121, 39.522392>,  <31.288465, 34.820633, 39.482677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145304, 35.009121, 39.522392>,  <30.906702, 35.323269, 39.588581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145304, 35.009121, 39.522392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170480, -0.325444, 0.930066,
		-0.784294, -0.526580, -0.328018,
		0.596506, -0.785366, -0.165473,
		31.324255, 34.773510, 39.472752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582159, 34.744122, 39.844898>,  <30.906702, 35.323269, 39.588581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582159, 34.744122, 39.844898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971033, 34.651402, 39.831482>,  <31.204357, 34.595768, 39.823433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971033, 34.651402, 39.831482>,  <30.582159, 34.744122, 39.844898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971033, 34.651402, 39.831482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042463, -0.315263, 0.948054,
		-0.230329, -0.920261, -0.316337,
		0.972186, -0.231797, -0.033537,
		31.262688, 34.581860, 39.821419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625765, 34.153652, 40.242714>,  <30.582159, 34.744122, 39.844898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625765, 34.153652, 40.242714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014910, 34.245255, 40.229488>,  <31.248398, 34.300217, 40.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014910, 34.245255, 40.229488>,  <30.625765, 34.153652, 40.242714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014910, 34.245255, 40.229488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134916, -0.445369, 0.885124,
		0.187972, -0.865566, -0.464180,
		0.972864, 0.229004, -0.033062,
		31.306768, 34.313957, 40.219570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955349, 33.538857, 40.373505>,  <30.625765, 34.153652, 40.242714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955349, 33.538857, 40.373505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228462, 33.820248, 40.452419>,  <31.392330, 33.989082, 40.499767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228462, 33.820248, 40.452419>,  <30.955349, 33.538857, 40.373505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228462, 33.820248, 40.452419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211618, -0.448868, 0.868179,
		0.699304, -0.551028, -0.455349,
		0.682782, 0.703481, 0.197288,
		31.433296, 34.031292, 40.511604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595346, 33.180035, 40.422874>,  <30.955349, 33.538857, 40.373505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595346, 33.180035, 40.422874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682899, 33.515602, 40.622196>,  <31.735432, 33.716942, 40.741791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682899, 33.515602, 40.622196>,  <31.595346, 33.180035, 40.422874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682899, 33.515602, 40.622196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231900, -0.540783, 0.808565,
		0.947794, -0.061422, -0.312911,
		0.218881, 0.838917, 0.498307,
		31.748564, 33.767277, 40.771687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292458, 33.120510, 40.696213>,  <31.595346, 33.180035, 40.422874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292458, 33.120510, 40.696213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125553, 33.400513, 40.928040>,  <32.025410, 33.568512, 41.067135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125553, 33.400513, 40.928040>,  <32.292458, 33.120510, 40.696213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125553, 33.400513, 40.928040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315628, -0.486412, 0.814729,
		0.852218, 0.522877, -0.017981,
		-0.417257, 0.700002, 0.579563,
		32.000378, 33.610512, 41.101910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796677, 33.309029, 41.258381>,  <32.292458, 33.120510, 40.696213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796677, 33.309029, 41.258381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437874, 33.422207, 41.394211>,  <32.222591, 33.490116, 41.475708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437874, 33.422207, 41.394211>,  <32.796677, 33.309029, 41.258381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437874, 33.422207, 41.394211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202826, -0.419102, 0.884994,
		0.392723, 0.862725, 0.318550,
		-0.897012, 0.282948, 0.339574,
		32.168770, 33.507092, 41.496082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922958, 33.483570, 41.982285>,  <32.796677, 33.309029, 41.258381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922958, 33.483570, 41.982285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527710, 33.434628, 41.945091>,  <32.290562, 33.405262, 41.922775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527710, 33.434628, 41.945091>,  <32.922958, 33.483570, 41.982285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527710, 33.434628, 41.945091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014668, -0.527200, 0.849615,
		-0.152972, 0.840886, 0.519143,
		-0.988122, -0.122352, -0.092981,
		32.231274, 33.397923, 41.917198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664070, 33.628933, 42.582264>,  <32.922958, 33.483570, 41.982285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664070, 33.628933, 42.582264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379681, 33.405403, 42.411514>,  <32.209045, 33.271286, 42.309063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379681, 33.405403, 42.411514>,  <32.664070, 33.628933, 42.582264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379681, 33.405403, 42.411514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216561, -0.403541, 0.888963,
		-0.669039, 0.724478, 0.165888,
		-0.710977, -0.558826, -0.426878,
		32.166389, 33.237755, 42.283451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036007, 33.805992, 42.954437>,  <32.664070, 33.628933, 42.582264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036007, 33.805992, 42.954437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030647, 33.445660, 42.780853>,  <32.027431, 33.229462, 42.676704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030647, 33.445660, 42.780853>,  <32.036007, 33.805992, 42.954437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030647, 33.445660, 42.780853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363395, -0.399936, 0.841424,
		-0.931539, 0.168976, -0.321998,
		-0.013402, -0.900832, -0.433961,
		32.026627, 33.175411, 42.650665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504780, 33.477699, 43.229172>,  <32.036007, 33.805992, 42.954437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504780, 33.477699, 43.229172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708797, 33.159779, 43.097626>,  <31.831207, 32.969028, 43.018700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708797, 33.159779, 43.097626>,  <31.504780, 33.477699, 43.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708797, 33.159779, 43.097626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110301, -0.439613, 0.891389,
		-0.853047, -0.418373, -0.311888,
		0.510043, -0.794799, -0.328864,
		31.861811, 32.921341, 42.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291883, 32.979015, 43.614365>,  <31.504780, 33.477699, 43.229172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291883, 32.979015, 43.614365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610645, 32.799278, 43.452858>,  <31.801903, 32.691437, 43.355953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610645, 32.799278, 43.452858>,  <31.291883, 32.979015, 43.614365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610645, 32.799278, 43.452858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022795, -0.645533, 0.763392,
		-0.603673, -0.617556, -0.504186,
		0.796906, -0.449347, -0.403768,
		31.849716, 32.664474, 43.331726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131298, 32.218113, 43.585155>,  <31.291883, 32.979015, 43.614365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131298, 32.218113, 43.585155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518423, 32.318504, 43.592602>,  <31.750698, 32.378738, 43.597069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518423, 32.318504, 43.592602>,  <31.131298, 32.218113, 43.585155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518423, 32.318504, 43.592602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076408, -0.363503, 0.928454,
		0.239793, -0.897147, -0.370980,
		0.967813, 0.250982, 0.018616,
		31.808767, 32.393799, 43.598186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393463, 31.683897, 43.937023>,  <31.131298, 32.218113, 43.585155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393463, 31.683897, 43.937023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683111, 31.955772, 43.983799>,  <31.856899, 32.118896, 44.011864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683111, 31.955772, 43.983799>,  <31.393463, 31.683897, 43.937023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683111, 31.955772, 43.983799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196595, -0.365950, 0.909632,
		0.661063, -0.635691, -0.398614,
		0.724118, 0.679689, 0.116942,
		31.900347, 32.159679, 44.018883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047581, 31.358727, 44.116863>,  <31.393463, 31.683897, 43.937023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047581, 31.358727, 44.116863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089348, 31.741810, 44.224117>,  <32.114410, 31.971659, 44.288467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089348, 31.741810, 44.224117>,  <32.047581, 31.358727, 44.116863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089348, 31.741810, 44.224117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205404, -0.284560, 0.936395,
		0.973091, -0.042703, -0.226430,
		0.104420, 0.957707, 0.268131,
		32.120674, 32.029121, 44.304558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688747, 31.426954, 44.531708>,  <32.047581, 31.358727, 44.116863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688747, 31.426954, 44.531708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454319, 31.737038, 44.626007>,  <32.313663, 31.923088, 44.682587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454319, 31.737038, 44.626007>,  <32.688747, 31.426954, 44.531708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454319, 31.737038, 44.626007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102672, -0.217563, 0.970631,
		0.803731, 0.593060, 0.047914,
		-0.586067, 0.775207, 0.235753,
		32.278500, 31.969601, 44.696732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394653, 31.855791, 44.605995>,  <32.688747, 31.426954, 44.531708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394653, 31.855791, 44.605995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737507, 31.685448, 44.721905>,  <33.943218, 31.583242, 44.791451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737507, 31.685448, 44.721905>,  <33.394653, 31.855791, 44.605995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737507, 31.685448, 44.721905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365716, 0.106977, -0.924558,
		0.362730, 0.898444, 0.247437,
		0.857134, -0.425857, 0.289772,
		33.994648, 31.557690, 44.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915936, 32.271706, 44.392891>,  <33.394653, 31.855791, 44.605995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915936, 32.271706, 44.392891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133854, 31.943195, 44.460659>,  <34.264606, 31.746090, 44.501320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133854, 31.943195, 44.460659>,  <33.915936, 32.271706, 44.392891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133854, 31.943195, 44.460659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347840, 0.037489, -0.936804,
		0.763021, 0.569302, 0.306096,
		0.544800, -0.821273, 0.169421,
		34.297295, 31.696814, 44.511486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602097, 32.475311, 44.124519>,  <33.915936, 32.271706, 44.392891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602097, 32.475311, 44.124519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527187, 32.082390, 44.125786>,  <34.482243, 31.846638, 44.126545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527187, 32.082390, 44.125786>,  <34.602097, 32.475311, 44.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527187, 32.082390, 44.125786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527979, -0.103372, -0.842943,
		0.828353, -0.156185, 0.537994,
		-0.187268, -0.982304, 0.003166,
		34.471008, 31.787699, 44.126736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254539, 32.228413, 44.184021>,  <34.602097, 32.475311, 44.124519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254539, 32.228413, 44.184021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012264, 31.945431, 44.038338>,  <34.866898, 31.775642, 43.950928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012264, 31.945431, 44.038338>,  <35.254539, 32.228413, 44.184021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012264, 31.945431, 44.038338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611677, -0.121222, -0.781765,
		0.508911, -0.696287, 0.506156,
		-0.605690, -0.707453, -0.364211,
		34.830559, 31.733194, 43.929073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623100, 31.759678, 43.924446>,  <35.254539, 32.228413, 44.184021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623100, 31.759678, 43.924446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290283, 31.701607, 43.710293>,  <35.090595, 31.666765, 43.581802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290283, 31.701607, 43.710293>,  <35.623100, 31.759678, 43.924446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290283, 31.701607, 43.710293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541484, -0.003028, -0.840705,
		0.120430, -0.989401, 0.081131,
		-0.832040, -0.145177, -0.535381,
		35.040672, 31.658054, 43.549679>
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
