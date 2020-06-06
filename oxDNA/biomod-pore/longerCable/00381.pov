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
	<24.230394, 34.751713, 34.794697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495293, 34.950108, 35.019348>,  <24.654232, 35.069145, 35.154140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495293, 34.950108, 35.019348>,  <24.230394, 34.751713, 34.794697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495293, 34.950108, 35.019348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623189, 0.051567, -0.780369,
		-0.416015, 0.866798, -0.274944,
		0.662244, 0.495987, 0.561632,
		24.693966, 35.098904, 35.187836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405418, 35.382618, 34.470814>,  <24.230394, 34.751713, 34.794697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405418, 35.382618, 34.470814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711462, 35.279797, 34.706959>,  <24.895088, 35.218105, 34.848648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711462, 35.279797, 34.706959>,  <24.405418, 35.382618, 34.470814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711462, 35.279797, 34.706959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596899, -0.060718, -0.800016,
		0.241490, 0.964489, 0.106977,
		0.765110, -0.257050, 0.590365,
		24.940994, 35.202682, 34.884068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971159, 35.842091, 34.355488>,  <24.405418, 35.382618, 34.470814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971159, 35.842091, 34.355488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126657, 35.509438, 34.514111>,  <25.219957, 35.309845, 34.609283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126657, 35.509438, 34.514111>,  <24.971159, 35.842091, 34.355488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126657, 35.509438, 34.514111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628011, -0.075752, -0.774509,
		0.674149, 0.550131, 0.492828,
		0.388748, -0.831635, 0.396557,
		25.243282, 35.259949, 34.633076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664930, 35.920349, 34.361294>,  <24.971159, 35.842091, 34.355488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664930, 35.920349, 34.361294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572897, 35.531277, 34.348972>,  <25.517677, 35.297832, 34.341579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572897, 35.531277, 34.348972>,  <25.664930, 35.920349, 34.361294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572897, 35.531277, 34.348972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552333, -0.104457, -0.827053,
		0.801243, -0.207308, 0.561279,
		-0.230084, -0.972683, -0.030808,
		25.503872, 35.239471, 34.339729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060572, 35.771400, 33.792793>,  <25.664930, 35.920349, 34.361294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060572, 35.771400, 33.792793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904133, 35.409019, 33.857658>,  <25.810268, 35.191593, 33.896576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904133, 35.409019, 33.857658>,  <26.060572, 35.771400, 33.792793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904133, 35.409019, 33.857658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531871, -0.366275, -0.763515,
		0.751103, -0.212360, 0.625099,
		-0.391098, -0.905950, 0.162162,
		25.786804, 35.137234, 33.906307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535557, 35.182465, 33.818707>,  <26.060572, 35.771400, 33.792793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535557, 35.182465, 33.818707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182291, 35.077003, 33.663525>,  <25.970331, 35.013729, 33.570415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182291, 35.077003, 33.663525>,  <26.535557, 35.182465, 33.818707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182291, 35.077003, 33.663525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456820, -0.295683, -0.838980,
		0.106483, -0.918184, 0.381576,
		-0.883163, -0.263649, -0.387959,
		25.917341, 34.997910, 33.547138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787556, 34.594479, 33.483658>,  <26.535557, 35.182465, 33.818707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787556, 34.594479, 33.483658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448191, 34.752392, 33.342606>,  <26.244572, 34.847141, 33.257977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448191, 34.752392, 33.342606>,  <26.787556, 34.594479, 33.483658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448191, 34.752392, 33.342606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417158, 0.088577, -0.904507,
		-0.325849, -0.914495, -0.239837,
		-0.848411, 0.394782, -0.352626,
		26.193666, 34.870827, 33.236816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428646, 34.244812, 32.943329>,  <26.787556, 34.594479, 33.483658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428646, 34.244812, 32.943329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409069, 34.643654, 32.966606>,  <26.397322, 34.882957, 32.980572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409069, 34.643654, 32.966606>,  <26.428646, 34.244812, 32.943329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409069, 34.643654, 32.966606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424240, 0.073501, -0.902562,
		-0.904226, -0.019487, -0.426609,
		-0.048944, 0.997105, 0.058195,
		26.394386, 34.942787, 32.984066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430803, 34.433872, 32.219494>,  <26.428646, 34.244812, 32.943329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430803, 34.433872, 32.219494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561213, 34.761280, 32.408695>,  <26.639458, 34.957726, 32.522217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561213, 34.761280, 32.408695>,  <26.430803, 34.433872, 32.219494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561213, 34.761280, 32.408695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667602, 0.154910, -0.728224,
		-0.669339, 0.553196, -0.495942,
		0.326025, 0.818521, 0.473002,
		26.659019, 35.006836, 32.550594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601534, 34.806805, 31.671524>,  <26.430803, 34.433872, 32.219494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601534, 34.806805, 31.671524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794085, 34.990036, 31.970440>,  <26.909615, 35.099976, 32.149788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794085, 34.990036, 31.970440>,  <26.601534, 34.806805, 31.671524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794085, 34.990036, 31.970440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797077, 0.125878, -0.590613,
		-0.364613, 0.879955, -0.304528,
		0.481379, 0.458077, 0.747288,
		26.938498, 35.127460, 32.194626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697718, 35.563541, 31.529184>,  <26.601534, 34.806805, 31.671524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697718, 35.563541, 31.529184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974535, 35.415348, 31.776997>,  <27.140625, 35.326431, 31.925684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974535, 35.415348, 31.776997>,  <26.697718, 35.563541, 31.529184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974535, 35.415348, 31.776997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652051, -0.047366, -0.756694,
		0.309686, 0.927631, 0.208794,
		0.692043, -0.370482, 0.619531,
		27.182148, 35.304203, 31.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384295, 35.945301, 31.507145>,  <26.697718, 35.563541, 31.529184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384295, 35.945301, 31.507145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409210, 35.559540, 31.609947>,  <27.424160, 35.328083, 31.671629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409210, 35.559540, 31.609947>,  <27.384295, 35.945301, 31.507145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409210, 35.559540, 31.609947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582337, -0.174011, -0.794106,
		0.810558, 0.199126, 0.550767,
		0.062288, -0.964401, 0.257004,
		27.427896, 35.270218, 31.687048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149860, 35.720478, 31.335632>,  <27.384295, 35.945301, 31.507145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149860, 35.720478, 31.335632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888218, 35.420753, 31.294296>,  <27.731234, 35.240917, 31.269495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888218, 35.420753, 31.294296>,  <28.149860, 35.720478, 31.335632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888218, 35.420753, 31.294296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298172, -0.129868, -0.945636,
		0.695156, -0.649358, 0.308371,
		-0.654104, -0.749312, -0.103342,
		27.691986, 35.195961, 31.263294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465801, 35.098598, 31.196623>,  <28.149860, 35.720478, 31.335632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465801, 35.098598, 31.196623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104548, 35.136856, 31.029194>,  <27.887796, 35.159809, 30.928736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104548, 35.136856, 31.029194>,  <28.465801, 35.098598, 31.196623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104548, 35.136856, 31.029194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421937, 0.017183, -0.906462,
		-0.079504, -0.995267, -0.055874,
		-0.903132, 0.095643, -0.418574,
		27.833609, 35.165550, 30.903622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271320, 34.689732, 31.768101>,  <28.465801, 35.098598, 31.196623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271320, 34.689732, 31.768101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575125, 34.608257, 31.520988>,  <28.757408, 34.559372, 31.372721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575125, 34.608257, 31.520988>,  <28.271320, 34.689732, 31.768101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575125, 34.608257, 31.520988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649396, 0.292546, 0.701927,
		0.037754, -0.934306, 0.354468,
		0.759513, -0.203689, -0.617779,
		28.802979, 34.547150, 31.335655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779192, 34.303879, 32.260746>,  <28.271320, 34.689732, 31.768101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779192, 34.303879, 32.260746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808441, 34.683201, 32.137215>,  <27.825991, 34.910793, 32.063095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808441, 34.683201, 32.137215>,  <27.779192, 34.303879, 32.260746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808441, 34.683201, 32.137215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772730, 0.249638, 0.583583,
		0.630509, 0.195969, 0.751036,
		0.073123, 0.948302, -0.308830,
		27.830378, 34.967693, 32.044567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069658, 34.862713, 32.775703>,  <27.779192, 34.303879, 32.260746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069658, 34.862713, 32.775703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788364, 34.999374, 32.526310>,  <27.619589, 35.081371, 32.376675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788364, 34.999374, 32.526310>,  <28.069658, 34.862713, 32.775703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788364, 34.999374, 32.526310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565393, 0.262928, 0.781792,
		0.431035, 0.902297, 0.008270,
		-0.703235, 0.341656, -0.623484,
		27.577394, 35.101871, 32.339264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767508, 35.574974, 33.070072>,  <28.069658, 34.862713, 32.775703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767508, 35.574974, 33.070072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491198, 35.427662, 32.821171>,  <27.325411, 35.339275, 32.671829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491198, 35.427662, 32.821171>,  <27.767508, 35.574974, 33.070072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491198, 35.427662, 32.821171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722799, 0.328167, 0.608168,
		-0.019773, 0.869872, -0.492881,
		-0.690776, -0.368279, -0.622254,
		27.283964, 35.317177, 32.634495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157492, 35.983692, 33.214729>,  <27.767508, 35.574974, 33.070072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157492, 35.983692, 33.214729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002012, 35.694347, 32.986462>,  <26.908724, 35.520741, 32.849499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002012, 35.694347, 32.986462>,  <27.157492, 35.983692, 33.214729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002012, 35.694347, 32.986462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875981, 0.098138, 0.472256,
		-0.285606, 0.683462, -0.671795,
		-0.388698, -0.723359, -0.570671,
		26.885403, 35.477341, 32.815262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445780, 36.189487, 32.919277>,  <27.157492, 35.983692, 33.214729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445780, 36.189487, 32.919277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436882, 35.790165, 32.940762>,  <26.431543, 35.550571, 32.953651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436882, 35.790165, 32.940762>,  <26.445780, 36.189487, 32.919277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436882, 35.790165, 32.940762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798743, 0.050059, 0.599587,
		-0.601261, -0.029565, -0.798505,
		-0.022246, -0.998309, 0.053713,
		26.430208, 35.490673, 32.956875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863901, 35.949684, 32.670578>,  <26.445780, 36.189487, 32.919277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863901, 35.949684, 32.670578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998732, 35.693012, 32.946152>,  <26.079630, 35.539009, 33.111496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998732, 35.693012, 32.946152>,  <25.863901, 35.949684, 32.670578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998732, 35.693012, 32.946152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858593, 0.090709, 0.504569,
		-0.386263, -0.761592, -0.520364,
		0.337075, -0.641677, 0.688935,
		26.099854, 35.500507, 33.152832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324812, 35.362064, 32.795361>,  <25.863901, 35.949684, 32.670578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324812, 35.362064, 32.795361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568846, 35.423481, 33.106289>,  <25.715265, 35.460331, 33.292847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568846, 35.423481, 33.106289>,  <25.324812, 35.362064, 32.795361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568846, 35.423481, 33.106289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792257, 0.104255, 0.601215,
		0.011271, -0.982627, 0.185247,
		0.610083, 0.153540, 0.777319,
		25.751871, 35.469543, 33.339485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001890, 35.076004, 33.219105>,  <25.324812, 35.362064, 32.795361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001890, 35.076004, 33.219105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217093, 35.332069, 33.438461>,  <25.346214, 35.485710, 33.570076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217093, 35.332069, 33.438461>,  <25.001890, 35.076004, 33.219105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217093, 35.332069, 33.438461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728135, 0.025160, 0.684971,
		0.424698, -0.767824, 0.479665,
		0.538006, 0.640167, 0.548394,
		25.378494, 35.524120, 33.602978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986032, 34.803596, 33.891521>,  <25.001890, 35.076004, 33.219105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986032, 34.803596, 33.891521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015459, 35.197571, 33.828934>,  <25.033115, 35.433956, 33.791382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015459, 35.197571, 33.828934>,  <24.986032, 34.803596, 33.891521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015459, 35.197571, 33.828934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841908, 0.145433, 0.519653,
		0.534582, 0.093503, 0.839928,
		0.073564, 0.984939, -0.156467,
		25.037529, 35.493053, 33.781994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164124, 34.014217, 33.774155>,  <24.986032, 34.803596, 33.891521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164124, 34.014217, 33.774155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370819, 34.346851, 33.855587>,  <25.494837, 34.546432, 33.904446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370819, 34.346851, 33.855587>,  <25.164124, 34.014217, 33.774155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370819, 34.346851, 33.855587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339701, -0.019119, 0.940339,
		0.785865, -0.555067, 0.272611,
		0.516739, 0.831586, 0.203582,
		25.525841, 34.596329, 33.916660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447491, 33.939014, 34.344654>,  <25.164124, 34.014217, 33.774155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447491, 33.939014, 34.344654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458172, 34.338459, 34.362789>,  <25.464581, 34.578125, 34.373669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458172, 34.338459, 34.362789>,  <25.447491, 33.939014, 34.344654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458172, 34.338459, 34.362789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355010, -0.032925, 0.934283,
		0.934481, -0.041045, 0.353638,
		0.026704, 0.998615, 0.045339,
		25.466183, 34.638042, 34.376392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684929, 34.114628, 34.923008>,  <25.447491, 33.939014, 34.344654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684929, 34.114628, 34.923008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520908, 34.469975, 34.840385>,  <25.422495, 34.683182, 34.790810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520908, 34.469975, 34.840385>,  <25.684929, 34.114628, 34.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520908, 34.469975, 34.840385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343646, 0.059300, 0.937225,
		0.844845, 0.455296, 0.280966,
		-0.410053, 0.888363, -0.206560,
		25.397892, 34.736485, 34.778416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761766, 34.452030, 35.539570>,  <25.684929, 34.114628, 34.923008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761766, 34.452030, 35.539570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451061, 34.575245, 35.319843>,  <25.264639, 34.649174, 35.188007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451061, 34.575245, 35.319843>,  <25.761766, 34.452030, 35.539570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451061, 34.575245, 35.319843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529840, 0.151883, 0.834387,
		0.340455, 0.939172, 0.045233,
		-0.776763, 0.308037, -0.549320,
		25.218033, 34.667656, 35.155048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417084, 34.556503, 36.255768>,  <25.761766, 34.452030, 35.539570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417084, 34.556503, 36.255768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556038, 34.922104, 36.171932>,  <25.639410, 35.141464, 36.121632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556038, 34.922104, 36.171932>,  <25.417084, 34.556503, 36.255768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556038, 34.922104, 36.171932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913079, -0.278794, 0.297591,
		0.213566, -0.294751, -0.931403,
		0.347384, 0.914000, -0.209590,
		25.660254, 35.196304, 36.109055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086180, 34.377159, 36.195011>,  <25.417084, 34.556503, 36.255768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086180, 34.377159, 36.195011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077291, 34.774567, 36.239616>,  <26.071959, 35.013012, 36.266380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077291, 34.774567, 36.239616>,  <26.086180, 34.377159, 36.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077291, 34.774567, 36.239616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757237, -0.056105, 0.650726,
		0.652762, 0.098902, -0.751079,
		-0.022219, 0.993514, 0.111516,
		26.070625, 35.072620, 36.273071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716858, 34.709938, 36.311733>,  <26.086180, 34.377159, 36.195011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716858, 34.709938, 36.311733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924181, 34.917408, 36.583714>,  <27.048574, 35.041889, 36.746902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924181, 34.917408, 36.583714>,  <26.716858, 34.709938, 36.311733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924181, 34.917408, 36.583714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605607, 0.783986, -0.136400,
		-0.603820, -0.341086, 0.720460,
		0.518307, 0.518677, 0.679951,
		27.079674, 35.073009, 36.787701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270578, 34.940830, 36.797482>,  <26.716858, 34.709938, 36.311733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270578, 34.940830, 36.797482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579113, 35.195118, 36.785488>,  <26.764235, 35.347691, 36.778294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579113, 35.195118, 36.785488>,  <26.270578, 34.940830, 36.797482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579113, 35.195118, 36.785488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617799, 0.736612, -0.275186,
		-0.152858, 0.230783, 0.960923,
		0.771336, 0.635722, -0.029980,
		26.810514, 35.385834, 36.776493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206608, 35.512802, 37.230068>,  <26.270578, 34.940830, 36.797482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206608, 35.512802, 37.230068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441900, 35.627838, 36.927738>,  <26.583076, 35.696857, 36.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441900, 35.627838, 36.927738>,  <26.206608, 35.512802, 37.230068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441900, 35.627838, 36.927738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564994, 0.814842, -0.129671,
		0.578590, 0.503315, 0.641800,
		0.588231, 0.287587, -0.755829,
		26.618370, 35.714115, 36.700989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454321, 36.272900, 37.383221>,  <26.206608, 35.512802, 37.230068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454321, 36.272900, 37.383221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466494, 36.186821, 36.992783>,  <26.473797, 36.135174, 36.758518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466494, 36.186821, 36.992783>,  <26.454321, 36.272900, 37.383221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466494, 36.186821, 36.992783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485452, 0.850457, -0.202630,
		0.873734, 0.480014, -0.078589,
		0.030429, -0.215196, -0.976097,
		26.475622, 36.122261, 36.699955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751371, 36.800797, 36.918941>,  <26.454321, 36.272900, 37.383221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751371, 36.800797, 36.918941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484631, 36.596779, 36.701626>,  <26.324587, 36.474369, 36.571236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484631, 36.596779, 36.701626>,  <26.751371, 36.800797, 36.918941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484631, 36.596779, 36.701626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501452, 0.846437, -0.179139,
		0.551230, 0.152975, -0.820210,
		-0.666851, -0.510043, -0.543291,
		26.284575, 36.443768, 36.538639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891239, 37.175777, 36.229153>,  <26.751371, 36.800797, 36.918941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891239, 37.175777, 36.229153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703453, 36.874115, 36.045479>,  <26.590782, 36.693115, 35.935276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703453, 36.874115, 36.045479>,  <26.891239, 37.175777, 36.229153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703453, 36.874115, 36.045479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809628, 0.575181, -0.116918,
		0.352287, 0.316878, -0.880615,
		-0.469464, -0.754159, -0.459181,
		26.562614, 36.647869, 35.907722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649370, 37.506775, 35.676575>,  <26.891239, 37.175777, 36.229153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649370, 37.506775, 35.676575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422626, 37.194065, 35.780495>,  <26.286581, 37.006439, 35.842846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422626, 37.194065, 35.780495>,  <26.649370, 37.506775, 35.676575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422626, 37.194065, 35.780495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817900, 0.571794, -0.063959,
		-0.098549, -0.248745, -0.963543,
		-0.566857, -0.781779, 0.259798,
		26.252569, 36.959530, 35.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152311, 37.453655, 35.206032>,  <26.649370, 37.506775, 35.676575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152311, 37.453655, 35.206032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008871, 37.273815, 35.533264>,  <25.922808, 37.165909, 35.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008871, 37.273815, 35.533264>,  <26.152311, 37.453655, 35.206032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008871, 37.273815, 35.533264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739419, 0.671736, 0.045057,
		-0.569795, -0.588751, -0.573329,
		-0.358598, -0.449604, 0.818085,
		25.901291, 37.138935, 35.778690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378736, 37.341385, 35.179413>,  <26.152311, 37.453655, 35.206032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378736, 37.341385, 35.179413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516354, 37.386192, 35.552311>,  <25.598923, 37.413078, 35.776051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516354, 37.386192, 35.552311>,  <25.378736, 37.341385, 35.179413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516354, 37.386192, 35.552311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614639, 0.777444, 0.133412,
		-0.709827, -0.618896, 0.336323,
		0.344041, 0.112018, 0.932249,
		25.619566, 37.419796, 35.831985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.828867, 37.167080, 35.704060>,  <25.378736, 37.341385, 35.179413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.828867, 37.167080, 35.704060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099194, 37.420559, 35.854630>,  <25.261389, 37.572647, 35.944973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099194, 37.420559, 35.854630>,  <24.828867, 37.167080, 35.704060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099194, 37.420559, 35.854630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687919, 0.725664, 0.013431,
		-0.264650, -0.268029, 0.926348,
		0.675817, 0.633697, 0.376429,
		25.301939, 37.610668, 35.967560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546913, 37.543568, 36.230595>,  <24.828867, 37.167080, 35.704060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546913, 37.543568, 36.230595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853058, 37.776772, 36.121544>,  <25.036745, 37.916695, 36.056114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853058, 37.776772, 36.121544>,  <24.546913, 37.543568, 36.230595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853058, 37.776772, 36.121544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543827, 0.812366, 0.210508,
		0.344200, -0.012853, 0.938808,
		0.765362, 0.583006, -0.272627,
		25.082666, 37.951672, 36.039757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907743, 37.711552, 36.826771>,  <24.546913, 37.543568, 36.230595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907743, 37.711552, 36.826771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518406, 37.783867, 36.883221>,  <24.284803, 37.827255, 36.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518406, 37.783867, 36.883221>,  <24.907743, 37.711552, 36.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518406, 37.783867, 36.883221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137497, 0.032513, -0.989968,
		-0.183568, -0.982984, -0.006788,
		-0.973343, 0.180793, 0.141126,
		24.226402, 37.838104, 36.925560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313541, 36.988800, 36.974640>,  <24.907743, 37.711552, 36.826771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313541, 36.988800, 36.974640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338303, 37.090633, 36.588612>,  <25.353159, 37.151733, 36.356995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338303, 37.090633, 36.588612>,  <25.313541, 36.988800, 36.974640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338303, 37.090633, 36.588612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470337, -0.860270, -0.196772,
		-0.880313, -0.441726, -0.172993,
		0.061901, 0.254587, -0.965067,
		25.356873, 37.167007, 36.299091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179779, 36.382137, 36.550606>,  <25.313541, 36.988800, 36.974640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179779, 36.382137, 36.550606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403769, 36.623661, 36.323677>,  <25.538162, 36.768574, 36.187519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403769, 36.623661, 36.323677>,  <25.179779, 36.382137, 36.550606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403769, 36.623661, 36.323677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559046, -0.780736, -0.279140,
		-0.611472, -0.160846, -0.774746,
		0.559973, 0.603805, -0.567318,
		25.571760, 36.804802, 36.153481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433340, 35.914375, 36.157513>,  <25.179779, 36.382137, 36.550606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433340, 35.914375, 36.157513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668890, 36.233082, 36.103268>,  <25.810221, 36.424305, 36.070721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668890, 36.233082, 36.103268>,  <25.433340, 35.914375, 36.157513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668890, 36.233082, 36.103268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786781, -0.603519, -0.129380,
		-0.184931, -0.030510, -0.982278,
		0.588876, 0.796764, -0.135614,
		25.845552, 36.472111, 36.062584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871294, 35.731537, 35.676529>,  <25.433340, 35.914375, 36.157513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871294, 35.731537, 35.676529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070269, 36.007923, 35.886337>,  <26.189653, 36.173756, 36.012222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070269, 36.007923, 35.886337>,  <25.871294, 35.731537, 35.676529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070269, 36.007923, 35.886337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757567, -0.640594, 0.125426,
		0.422671, 0.334970, -0.842107,
		0.497435, 0.690967, 0.524523,
		26.219500, 36.215214, 36.043694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540989, 35.825974, 35.434971>,  <25.871294, 35.731537, 35.676529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540989, 35.825974, 35.434971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521219, 35.908802, 35.825802>,  <26.509357, 35.958500, 36.060299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521219, 35.908802, 35.825802>,  <26.540989, 35.825974, 35.434971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521219, 35.908802, 35.825802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772202, -0.612525, 0.168870,
		0.633452, 0.762848, -0.129624,
		-0.049424, 0.207067, 0.977077,
		26.506392, 35.970921, 36.118927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244146, 35.949558, 35.648037>,  <26.540989, 35.825974, 35.434971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244146, 35.949558, 35.648037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053778, 35.879971, 35.992882>,  <26.939556, 35.838219, 36.199787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053778, 35.879971, 35.992882>,  <27.244146, 35.949558, 35.648037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053778, 35.879971, 35.992882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822767, -0.434395, 0.366544,
		0.310731, 0.883762, 0.349872,
		-0.475921, -0.173967, 0.862111,
		26.911001, 35.827782, 36.251514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715536, 36.117527, 36.192539>,  <27.244146, 35.949558, 35.648037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715536, 36.117527, 36.192539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443035, 35.870525, 36.349804>,  <27.279533, 35.722324, 36.444164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443035, 35.870525, 36.349804>,  <27.715536, 36.117527, 36.192539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443035, 35.870525, 36.349804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723639, -0.486895, 0.489163,
		-0.110631, 0.617754, 0.778550,
		-0.681255, -0.617505, 0.393166,
		27.238659, 35.685272, 36.467754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857805, 36.232647, 36.862423>,  <27.715536, 36.117527, 36.192539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857805, 36.232647, 36.862423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671400, 35.885345, 36.794342>,  <27.559557, 35.676964, 36.753494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671400, 35.885345, 36.794342>,  <27.857805, 36.232647, 36.862423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671400, 35.885345, 36.794342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796086, -0.495413, 0.347581,
		-0.386109, 0.026480, 0.922073,
		-0.466011, -0.868254, -0.170204,
		27.531597, 35.624870, 36.743282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755350, 35.812096, 37.456795>,  <27.857805, 36.232647, 36.862423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755350, 35.812096, 37.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788258, 35.557045, 37.150417>,  <27.808002, 35.404015, 36.966591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788258, 35.557045, 37.150417>,  <27.755350, 35.812096, 37.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788258, 35.557045, 37.150417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735581, -0.479696, 0.478344,
		-0.672424, -0.602762, 0.429564,
		0.082267, -0.637628, -0.765939,
		27.812939, 35.365757, 36.920635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293079, 36.276562, 37.836605>,  <27.755350, 35.812096, 37.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293079, 36.276562, 37.836605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991261, 36.146461, 38.064594>,  <27.810169, 36.068401, 38.201389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991261, 36.146461, 38.064594>,  <28.293079, 36.276562, 37.836605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991261, 36.146461, 38.064594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131817, -0.925951, -0.353891,
		0.642873, -0.191895, 0.741546,
		-0.754545, -0.325256, 0.569974,
		27.764896, 36.048885, 38.235588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684732, 36.268620, 37.153217>,  <28.293079, 36.276562, 37.836605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684732, 36.268620, 37.153217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768305, 35.906536, 37.005192>,  <28.818449, 35.689285, 36.916374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768305, 35.906536, 37.005192>,  <28.684732, 36.268620, 37.153217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768305, 35.906536, 37.005192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977899, 0.190401, 0.086372,
		-0.007724, -0.379934, 0.924981,
		0.208933, -0.905206, -0.370067,
		28.830984, 35.634975, 36.894173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996244, 35.969631, 37.676643>,  <28.684732, 36.268620, 37.153217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996244, 35.969631, 37.676643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102692, 35.820957, 37.320885>,  <29.166561, 35.731754, 37.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102692, 35.820957, 37.320885>,  <28.996244, 35.969631, 37.676643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102692, 35.820957, 37.320885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951341, 0.249962, 0.180194,
		0.155342, -0.894076, 0.420116,
		0.266120, -0.371681, -0.889400,
		29.182528, 35.709454, 37.054066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640762, 35.479279, 37.727905>,  <28.996244, 35.969631, 37.676643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640762, 35.479279, 37.727905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615040, 35.677135, 37.381222>,  <29.599607, 35.795849, 37.173210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615040, 35.677135, 37.381222>,  <29.640762, 35.479279, 37.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615040, 35.677135, 37.381222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925499, 0.354406, 0.133599,
		0.373252, -0.793550, -0.480585,
		-0.064304, 0.494647, -0.866712,
		29.595749, 35.825531, 37.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247171, 35.023033, 37.738884>,  <29.640762, 35.479279, 37.727905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247171, 35.023033, 37.738884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382145, 34.648109, 37.704056>,  <30.463129, 34.423153, 37.683159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382145, 34.648109, 37.704056>,  <30.247171, 35.023033, 37.738884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382145, 34.648109, 37.704056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455599, 0.243550, -0.856220,
		0.823751, 0.249252, 0.509222,
		0.337435, -0.937314, -0.087066,
		30.483376, 34.366917, 37.677937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011366, 34.989975, 37.802143>,  <30.247171, 35.023033, 37.738884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011366, 34.989975, 37.802143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822468, 34.744541, 37.549004>,  <30.709129, 34.597282, 37.397118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822468, 34.744541, 37.549004>,  <31.011366, 34.989975, 37.802143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822468, 34.744541, 37.549004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526002, 0.379950, -0.760894,
		0.707324, -0.692209, 0.143317,
		-0.472245, -0.613583, -0.632851,
		30.680794, 34.560467, 37.359150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271439, 35.165443, 37.228592>,  <31.011366, 34.989975, 37.802143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271439, 35.165443, 37.228592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111876, 34.822506, 37.098469>,  <31.016138, 34.616741, 37.020393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111876, 34.822506, 37.098469>,  <31.271439, 35.165443, 37.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111876, 34.822506, 37.098469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501296, 0.093168, -0.860245,
		0.767838, -0.506236, 0.392620,
		-0.398908, -0.857347, -0.325312,
		30.992203, 34.565300, 37.000874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477421, 35.590092, 37.867947>,  <31.271439, 35.165443, 37.228592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477421, 35.590092, 37.867947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529343, 35.216881, 38.002174>,  <31.560495, 34.992954, 38.082710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529343, 35.216881, 38.002174>,  <31.477421, 35.590092, 37.867947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529343, 35.216881, 38.002174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883297, -0.044949, -0.466654,
		0.450485, 0.356983, 0.818307,
		0.129806, -0.933029, 0.335571,
		31.568285, 34.936974, 38.102844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189690, 35.490570, 38.148777>,  <31.477421, 35.590092, 37.867947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189690, 35.490570, 38.148777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102005, 35.106567, 38.079109>,  <32.049397, 34.876167, 38.037308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102005, 35.106567, 38.079109>,  <32.189690, 35.490570, 38.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102005, 35.106567, 38.079109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917327, -0.141982, -0.371957,
		0.332353, -0.241307, 0.911764,
		-0.219210, -0.960006, -0.174169,
		32.036243, 34.818565, 38.026859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662460, 35.021481, 38.454563>,  <32.189690, 35.490570, 38.148777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662460, 35.021481, 38.454563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474613, 34.885300, 38.128731>,  <32.361904, 34.803589, 37.933231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474613, 34.885300, 38.128731>,  <32.662460, 35.021481, 38.454563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474613, 34.885300, 38.128731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882869, -0.182186, -0.432839,
		-0.001042, -0.922441, 0.386137,
		-0.469618, -0.340457, -0.814585,
		32.333729, 34.783161, 37.884354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988144, 34.459263, 38.273937>,  <32.662460, 35.021481, 38.454563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988144, 34.459263, 38.273937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798618, 34.572906, 37.940521>,  <32.684902, 34.641094, 37.740471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798618, 34.572906, 37.940521>,  <32.988144, 34.459263, 38.273937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798618, 34.572906, 37.940521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788164, -0.285394, -0.545295,
		-0.392813, -0.915330, -0.088706,
		-0.473809, 0.284114, -0.833537,
		32.656475, 34.658142, 37.690460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520660, 33.908833, 38.697208>,  <32.988144, 34.459263, 38.273937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520660, 33.908833, 38.697208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215282, 34.088795, 38.511848>,  <32.032055, 34.196774, 38.400631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215282, 34.088795, 38.511848>,  <32.520660, 33.908833, 38.697208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215282, 34.088795, 38.511848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297027, 0.392541, 0.870452,
		0.573525, 0.802182, -0.166049,
		-0.763442, 0.449905, -0.463402,
		31.986250, 34.223766, 38.372829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166382, 34.127563, 39.049301>,  <32.520660, 33.908833, 38.697208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166382, 34.127563, 39.049301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812462, 34.287941, 39.144276>,  <32.600109, 34.384167, 39.201260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812462, 34.287941, 39.144276>,  <33.166382, 34.127563, 39.049301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812462, 34.287941, 39.144276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144031, 0.249266, -0.957664,
		-0.443153, -0.881539, -0.162802,
		-0.884799, 0.400944, 0.237432,
		32.547024, 34.408226, 39.215504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502048, 33.542751, 38.727287>,  <33.166382, 34.127563, 39.049301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502048, 33.542751, 38.727287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224831, 33.366581, 38.499001>,  <33.058498, 33.260880, 38.362030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224831, 33.366581, 38.499001>,  <33.502048, 33.542751, 38.727287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224831, 33.366581, 38.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150411, 0.862594, -0.483020,
		0.705026, -0.248915, -0.664063,
		-0.693047, -0.440424, -0.570712,
		33.016918, 33.234455, 38.327785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722153, 33.657921, 38.058956>,  <33.502048, 33.542751, 38.727287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722153, 33.657921, 38.058956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327858, 33.647709, 38.125484>,  <33.091282, 33.641582, 38.165401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327858, 33.647709, 38.125484>,  <33.722153, 33.657921, 38.058956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327858, 33.647709, 38.125484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064378, 0.970446, -0.232573,
		-0.155466, -0.239964, -0.958252,
		-0.985741, -0.025533, 0.166320,
		33.032135, 33.640049, 38.175381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257301, 34.118919, 37.686172>,  <33.722153, 33.657921, 38.058956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257301, 34.118919, 37.686172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964119, 34.298298, 37.481560>,  <32.788208, 34.405926, 37.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964119, 34.298298, 37.481560>,  <33.257301, 34.118919, 37.686172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964119, 34.298298, 37.481560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333073, -0.419087, -0.844647,
		-0.593160, -0.789467, 0.157805,
		-0.732955, 0.448451, -0.511536,
		32.744232, 34.432835, 37.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638390, 33.683334, 37.352295>,  <33.257301, 34.118919, 37.686172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638390, 33.683334, 37.352295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720829, 34.011112, 37.138367>,  <32.770294, 34.207779, 37.010010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720829, 34.011112, 37.138367>,  <32.638390, 33.683334, 37.352295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720829, 34.011112, 37.138367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296266, -0.573159, -0.764013,
		-0.932604, -0.000988, -0.360900,
		0.206098, 0.819444, -0.534823,
		32.782658, 34.256947, 36.977921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295753, 33.674889, 36.633747>,  <32.638390, 33.683334, 37.352295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295753, 33.674889, 36.633747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623314, 33.904179, 36.622284>,  <32.819851, 34.041752, 36.615406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623314, 33.904179, 36.622284>,  <32.295753, 33.674889, 36.633747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623314, 33.904179, 36.622284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343862, -0.529996, -0.775154,
		-0.459523, 0.624918, -0.631122,
		0.818900, 0.573220, -0.028660,
		32.868984, 34.076145, 36.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360497, 33.834301, 35.906914>,  <32.295753, 33.674889, 36.633747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360497, 33.834301, 35.906914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732143, 33.915405, 36.030602>,  <32.955132, 33.964069, 36.104816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732143, 33.915405, 36.030602>,  <32.360497, 33.834301, 35.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732143, 33.915405, 36.030602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368228, -0.430957, -0.823823,
		-0.033780, 0.879297, -0.475075,
		0.929122, 0.202764, 0.309224,
		33.010880, 33.976234, 36.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675781, 34.045227, 35.258034>,  <32.360497, 33.834301, 35.906914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675781, 34.045227, 35.258034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961658, 33.932259, 35.513988>,  <33.133183, 33.864475, 35.667561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961658, 33.932259, 35.513988>,  <32.675781, 34.045227, 35.258034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961658, 33.932259, 35.513988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553925, -0.330050, -0.764352,
		0.427067, 0.900723, -0.079441,
		0.714690, -0.282425, 0.639887,
		33.176064, 33.847530, 35.705956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275234, 34.405388, 34.984600>,  <32.675781, 34.045227, 35.258034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275234, 34.405388, 34.984600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430714, 34.123558, 35.222084>,  <33.524002, 33.954460, 35.364574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430714, 34.123558, 35.222084>,  <33.275234, 34.405388, 34.984600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430714, 34.123558, 35.222084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367883, -0.472105, -0.801111,
		0.844733, 0.529809, 0.075691,
		0.388702, -0.704570, 0.593710,
		33.547325, 33.912186, 35.400196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968956, 34.328861, 34.923306>,  <33.275234, 34.405388, 34.984600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968956, 34.328861, 34.923306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857513, 33.964798, 35.045937>,  <33.790649, 33.746361, 35.119514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857513, 33.964798, 35.045937>,  <33.968956, 34.328861, 34.923306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857513, 33.964798, 35.045937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362774, -0.395298, -0.843881,
		0.889255, -0.123890, 0.440314,
		-0.278604, -0.910160, 0.306576,
		33.773933, 33.691750, 35.137909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436596, 33.886726, 34.721458>,  <33.968956, 34.328861, 34.923306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436596, 33.886726, 34.721458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177296, 33.594723, 34.808044>,  <34.021713, 33.419521, 34.859997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177296, 33.594723, 34.808044>,  <34.436596, 33.886726, 34.721458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177296, 33.594723, 34.808044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460838, -0.602467, -0.651661,
		0.606130, -0.322686, 0.726966,
		-0.648255, -0.730005, 0.216467,
		33.982819, 33.375721, 34.872986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891853, 33.323669, 34.768547>,  <34.436596, 33.886726, 34.721458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891853, 33.323669, 34.768547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518345, 33.197445, 34.701023>,  <34.294239, 33.121708, 34.660511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518345, 33.197445, 34.701023>,  <34.891853, 33.323669, 34.768547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518345, 33.197445, 34.701023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325607, -0.553377, -0.766651,
		0.148514, -0.770839, 0.619476,
		-0.933769, -0.315564, -0.168807,
		34.238213, 33.102776, 34.650379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971733, 32.613861, 34.564030>,  <34.891853, 33.323669, 34.768547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971733, 32.613861, 34.564030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598644, 32.705326, 34.452503>,  <34.374790, 32.760208, 34.385586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598644, 32.705326, 34.452503>,  <34.971733, 32.613861, 34.564030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598644, 32.705326, 34.452503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125560, -0.518875, -0.845579,
		-0.338027, -0.823699, 0.455256,
		-0.932723, 0.228667, -0.278817,
		34.318829, 32.773926, 34.368858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681244, 32.036743, 34.370541>,  <34.971733, 32.613861, 34.564030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681244, 32.036743, 34.370541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451893, 32.322350, 34.209831>,  <34.314281, 32.493713, 34.113407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451893, 32.322350, 34.209831>,  <34.681244, 32.036743, 34.370541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451893, 32.322350, 34.209831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087055, -0.434518, -0.896446,
		-0.814652, -0.548979, 0.186985,
		-0.573379, 0.714014, -0.401772,
		34.279881, 32.536552, 34.089298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380291, 31.718723, 33.741116>,  <34.681244, 32.036743, 34.370541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380291, 31.718723, 33.741116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316574, 32.107506, 33.671917>,  <34.278343, 32.340775, 33.630398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316574, 32.107506, 33.671917>,  <34.380291, 31.718723, 33.741116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316574, 32.107506, 33.671917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100030, -0.158446, -0.982288,
		-0.982151, -0.173778, -0.071985,
		-0.159294, 0.971955, -0.173000,
		34.268787, 32.399094, 33.620018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765930, 31.762121, 33.237526>,  <34.380291, 31.718723, 33.741116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765930, 31.762121, 33.237526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983261, 32.096745, 33.209347>,  <34.113659, 32.297520, 33.192440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983261, 32.096745, 33.209347>,  <33.765930, 31.762121, 33.237526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983261, 32.096745, 33.209347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010787, -0.076953, -0.996976,
		-0.839452, 0.542444, -0.032787,
		0.543327, 0.836560, -0.070449,
		34.146259, 32.347713, 33.188213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480000, 32.069172, 32.637775>,  <33.765930, 31.762121, 33.237526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480000, 32.069172, 32.637775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820972, 32.272396, 32.687130>,  <34.025558, 32.394333, 32.716743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820972, 32.272396, 32.687130>,  <33.480000, 32.069172, 32.637775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820972, 32.272396, 32.687130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014486, 0.212949, -0.976956,
		-0.522631, 0.834580, 0.174166,
		0.852436, 0.508064, 0.123384,
		34.076702, 32.424816, 32.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433552, 32.729633, 32.366211>,  <33.480000, 32.069172, 32.637775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433552, 32.729633, 32.366211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825111, 32.653400, 32.336742>,  <34.060047, 32.607662, 32.319061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825111, 32.653400, 32.336742>,  <33.433552, 32.729633, 32.366211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825111, 32.653400, 32.336742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052816, 0.112302, -0.992269,
		0.197383, 0.975226, 0.099867,
		0.978902, -0.190583, -0.073674,
		34.118782, 32.596226, 32.314640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665512, 33.256306, 31.873585>,  <33.433552, 32.729633, 32.366211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665512, 33.256306, 31.873585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942860, 32.968109, 31.878145>,  <34.109268, 32.795193, 31.880882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942860, 32.968109, 31.878145>,  <33.665512, 33.256306, 31.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942860, 32.968109, 31.878145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118418, -0.129542, -0.984478,
		0.710783, 0.681259, -0.175140,
		0.693372, -0.720490, 0.011403,
		34.150871, 32.751961, 31.881567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900539, 33.400417, 31.276917>,  <33.665512, 33.256306, 31.873585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900539, 33.400417, 31.276917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087543, 33.056671, 31.359785>,  <34.199745, 32.850422, 31.409506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087543, 33.056671, 31.359785>,  <33.900539, 33.400417, 31.276917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087543, 33.056671, 31.359785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154359, -0.151399, -0.976346,
		0.870404, 0.488435, 0.061870,
		0.467515, -0.859366, 0.207173,
		34.227798, 32.798862, 31.421936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576683, 33.433250, 30.876593>,  <33.900539, 33.400417, 31.276917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576683, 33.433250, 30.876593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471035, 33.059032, 30.970388>,  <34.407646, 32.834499, 31.026667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471035, 33.059032, 30.970388>,  <34.576683, 33.433250, 30.876593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471035, 33.059032, 30.970388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197505, -0.290436, -0.936290,
		0.944050, -0.200982, 0.261486,
		-0.264122, -0.935550, 0.234491,
		34.391800, 32.778366, 31.040735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097061, 33.072578, 30.532143>,  <34.576683, 33.433250, 30.876593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097061, 33.072578, 30.532143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789948, 32.834347, 30.626629>,  <34.605679, 32.691410, 30.683321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789948, 32.834347, 30.626629>,  <35.097061, 33.072578, 30.532143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789948, 32.834347, 30.626629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051404, -0.424750, -0.903850,
		0.638644, -0.681819, 0.356731,
		-0.767783, -0.595576, 0.236216,
		34.559612, 32.655674, 30.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384247, 32.444561, 30.489485>,  <35.097061, 33.072578, 30.532143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384247, 32.444561, 30.489485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986874, 32.417747, 30.452383>,  <34.748451, 32.401661, 30.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986874, 32.417747, 30.452383>,  <35.384247, 32.444561, 30.489485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986874, 32.417747, 30.452383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112988, -0.445795, -0.887975,
		0.018174, -0.892622, 0.450440,
		-0.993430, -0.067032, -0.092754,
		34.688843, 32.397636, 30.424557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232944, 31.788284, 30.148901>,  <35.384247, 32.444561, 30.489485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232944, 31.788284, 30.148901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878819, 31.964029, 30.088003>,  <34.666344, 32.069477, 30.051464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878819, 31.964029, 30.088003>,  <35.232944, 31.788284, 30.148901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878819, 31.964029, 30.088003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030908, -0.271086, -0.962059,
		-0.463967, -0.856429, 0.226416,
		-0.885314, 0.439365, -0.152245,
		34.613224, 32.095840, 30.042330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745834, 31.277960, 29.907930>,  <35.232944, 31.788284, 30.148901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745834, 31.277960, 29.907930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608372, 31.628628, 29.773262>,  <34.525894, 31.839029, 29.692461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608372, 31.628628, 29.773262>,  <34.745834, 31.277960, 29.907930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608372, 31.628628, 29.773262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084006, -0.385768, -0.918763,
		-0.935329, -0.287460, 0.206219,
		-0.343660, 0.876670, -0.336672,
		34.505272, 31.891628, 29.672260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244156, 31.099266, 29.360659>,  <34.745834, 31.277960, 29.907930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244156, 31.099266, 29.360659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299316, 31.491518, 29.305014>,  <34.332413, 31.726870, 29.271626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299316, 31.491518, 29.305014>,  <34.244156, 31.099266, 29.360659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299316, 31.491518, 29.305014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398800, -0.073593, -0.914080,
		-0.906610, 0.181530, 0.380926,
		0.137899, 0.980628, -0.139114,
		34.340687, 31.785706, 29.263279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654701, 31.262060, 29.008162>,  <34.244156, 31.099266, 29.360659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654701, 31.262060, 29.008162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936497, 31.530418, 28.915564>,  <34.105576, 31.691433, 28.860004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936497, 31.530418, 28.915564>,  <33.654701, 31.262060, 29.008162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936497, 31.530418, 28.915564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258655, -0.061039, -0.964039,
		-0.660900, 0.739035, 0.130529,
		0.704492, 0.670896, -0.231495,
		34.147842, 31.731688, 28.846115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325920, 31.729137, 28.542448>,  <33.654701, 31.262060, 29.008162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325920, 31.729137, 28.542448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708054, 31.824015, 28.471935>,  <33.937332, 31.880941, 28.429628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708054, 31.824015, 28.471935>,  <33.325920, 31.729137, 28.542448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708054, 31.824015, 28.471935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115794, -0.248362, -0.961721,
		-0.271896, 0.939178, -0.209803,
		0.955335, 0.237195, -0.176280,
		33.994656, 31.895174, 28.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323765, 32.173679, 28.023026>,  <33.325920, 31.729137, 28.542448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323765, 32.173679, 28.023026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707279, 32.060150, 28.017815>,  <33.937389, 31.992033, 28.014688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707279, 32.060150, 28.017815>,  <33.323765, 32.173679, 28.023026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707279, 32.060150, 28.017815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001947, 0.052409, -0.998624,
		0.284113, 0.957444, 0.050802,
		0.958789, -0.283821, -0.013026,
		33.994915, 31.975004, 28.013906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662712, 32.592304, 27.532143>,  <33.323765, 32.173679, 28.023026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662712, 32.592304, 27.532143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912842, 32.280453, 27.545643>,  <34.062920, 32.093342, 27.553743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912842, 32.280453, 27.545643>,  <33.662712, 32.592304, 27.532143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912842, 32.280453, 27.545643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091399, 0.030221, -0.995355,
		0.774990, 0.625509, 0.090155,
		0.625329, -0.779631, 0.033750,
		34.100441, 32.046562, 27.555767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273167, 32.753387, 27.088726>,  <33.662712, 32.592304, 27.532143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273167, 32.753387, 27.088726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246723, 32.355175, 27.115685>,  <34.230858, 32.116245, 27.131861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246723, 32.355175, 27.115685>,  <34.273167, 32.753387, 27.088726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246723, 32.355175, 27.115685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183220, -0.078509, -0.979932,
		0.980847, -0.052434, 0.187592,
		-0.066109, -0.995533, 0.067398,
		34.226891, 32.056515, 27.135904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889175, 32.467201, 26.749508>,  <34.273167, 32.753387, 27.088726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889175, 32.467201, 26.749508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600475, 32.191162, 26.728191>,  <34.427258, 32.025539, 26.715401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600475, 32.191162, 26.728191>,  <34.889175, 32.467201, 26.749508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600475, 32.191162, 26.728191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272497, -0.212529, -0.938390,
		0.636258, -0.691804, 0.341443,
		-0.721749, -0.690100, -0.053291,
		34.383949, 31.984133, 26.712204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215000, 31.931097, 26.494976>,  <34.889175, 32.467201, 26.749508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215000, 31.931097, 26.494976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856495, 31.779032, 26.403595>,  <34.641392, 31.687792, 26.348766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856495, 31.779032, 26.403595>,  <35.215000, 31.931097, 26.494976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856495, 31.779032, 26.403595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404903, -0.491097, -0.771283,
		0.181022, -0.783772, 0.594081,
		-0.896262, -0.380164, -0.228452,
		34.587616, 31.664982, 26.335060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416019, 31.265381, 26.323027>,  <35.215000, 31.931097, 26.494976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416019, 31.265381, 26.323027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060226, 31.313681, 26.146738>,  <34.846748, 31.342661, 26.040964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060226, 31.313681, 26.146738>,  <35.416019, 31.265381, 26.323027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060226, 31.313681, 26.146738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392456, -0.292194, -0.872124,
		-0.234081, -0.948706, 0.212516,
		-0.889485, 0.120744, -0.440722,
		34.793381, 31.349905, 26.014521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374100, 30.620277, 25.941401>,  <35.416019, 31.265381, 26.323027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374100, 30.620277, 25.941401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130726, 30.898643, 25.788818>,  <34.984699, 31.065662, 25.697269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130726, 30.898643, 25.788818>,  <35.374100, 30.620277, 25.941401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130726, 30.898643, 25.788818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359209, -0.187106, -0.914308,
		-0.707653, -0.693321, -0.136137,
		-0.608438, 0.695915, -0.381453,
		34.948196, 31.107418, 25.674383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006550, 30.304146, 25.342621>,  <35.374100, 30.620277, 25.941401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006550, 30.304146, 25.342621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971886, 30.700497, 25.301332>,  <34.951088, 30.938307, 25.276560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971886, 30.700497, 25.301332>,  <35.006550, 30.304146, 25.342621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971886, 30.700497, 25.301332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251650, -0.078481, -0.964631,
		-0.963931, -0.109568, -0.242553,
		-0.086657, 0.990876, -0.103223,
		34.945889, 30.997759, 25.270365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583714, 30.357143, 24.765802>,  <35.006550, 30.304146, 25.342621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583714, 30.357143, 24.765802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750191, 30.720406, 24.783863>,  <34.850075, 30.938362, 24.794699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750191, 30.720406, 24.783863>,  <34.583714, 30.357143, 24.765802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750191, 30.720406, 24.783863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180237, -0.033724, -0.983045,
		-0.891235, 0.417272, -0.177719,
		0.416190, 0.908156, 0.045152,
		34.875050, 30.992853, 24.797409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289864, 30.683628, 24.207878>,  <34.583714, 30.357143, 24.765802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289864, 30.683628, 24.207878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600986, 30.915855, 24.304167>,  <34.787663, 31.055193, 24.361940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600986, 30.915855, 24.304167>,  <34.289864, 30.683628, 24.207878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600986, 30.915855, 24.304167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109286, 0.252244, -0.961473,
		-0.618924, 0.774152, 0.132750,
		0.777811, 0.580570, 0.240724,
		34.834332, 31.090027, 24.376385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184658, 31.446806, 24.015436>,  <34.289864, 30.683628, 24.207878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184658, 31.446806, 24.015436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581772, 31.411428, 24.047832>,  <34.820042, 31.390202, 24.067270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581772, 31.411428, 24.047832>,  <34.184658, 31.446806, 24.015436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581772, 31.411428, 24.047832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100585, 0.246365, -0.963943,
		0.065300, 0.965133, 0.253483,
		0.992783, -0.088442, 0.080991,
		34.879608, 31.384895, 24.072130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505135, 31.987148, 23.732363>,  <34.184658, 31.446806, 24.015436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505135, 31.987148, 23.732363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790333, 31.707140, 23.716328>,  <34.961452, 31.539135, 23.706707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790333, 31.707140, 23.716328>,  <34.505135, 31.987148, 23.732363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790333, 31.707140, 23.716328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169417, 0.227475, -0.958933,
		0.680390, 0.676926, 0.280785,
		0.712998, -0.700019, -0.040089,
		35.004230, 31.497135, 23.704302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888424, 32.249172, 23.235914>,  <34.505135, 31.987148, 23.732363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888424, 32.249172, 23.235914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042763, 31.881435, 23.266720>,  <35.135368, 31.660793, 23.285204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042763, 31.881435, 23.266720>,  <34.888424, 32.249172, 23.235914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042763, 31.881435, 23.266720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420875, 0.101125, -0.901464,
		0.820965, 0.380244, 0.425947,
		0.385850, -0.919341, 0.077015,
		35.158520, 31.605633, 23.289824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596428, 32.273582, 23.054663>,  <34.888424, 32.249172, 23.235914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596428, 32.273582, 23.054663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496620, 31.890663, 22.996258>,  <35.436737, 31.660912, 22.961214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496620, 31.890663, 22.996258>,  <35.596428, 32.273582, 23.054663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496620, 31.890663, 22.996258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346158, 0.052647, -0.936698,
		0.904388, -0.284264, 0.318241,
		-0.249515, -0.957300, -0.146014,
		35.421764, 31.603474, 22.952454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151413, 32.064861, 22.649565>,  <35.596428, 32.273582, 23.054663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151413, 32.064861, 22.649565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850128, 31.811699, 22.577890>,  <35.669357, 31.659801, 22.534885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850128, 31.811699, 22.577890>,  <36.151413, 32.064861, 22.649565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850128, 31.811699, 22.577890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304847, -0.094479, -0.947704,
		0.582878, -0.768442, 0.264102,
		-0.753207, -0.632906, -0.179188,
		35.624165, 31.621826, 22.524134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403931, 31.547964, 22.266520>,  <36.151413, 32.064861, 22.649565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403931, 31.547964, 22.266520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011990, 31.547562, 22.186628>,  <35.776825, 31.547319, 22.138693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011990, 31.547562, 22.186628>,  <36.403931, 31.547964, 22.266520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011990, 31.547562, 22.186628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199275, -0.072420, -0.977264,
		-0.013477, -0.997374, 0.071162,
		-0.979850, -0.001010, -0.199727,
		35.718033, 31.547258, 22.126711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402679, 31.210783, 21.568541>,  <36.403931, 31.547964, 22.266520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402679, 31.210783, 21.568541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033390, 31.357454, 21.614492>,  <35.811817, 31.445457, 21.642063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033390, 31.357454, 21.614492>,  <36.402679, 31.210783, 21.568541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033390, 31.357454, 21.614492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029277, 0.230975, -0.972519,
		-0.383138, -0.901219, -0.202507,
		-0.923227, 0.366680, 0.114880,
		35.756420, 31.467459, 21.648956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006374, 30.912413, 20.955338>,  <36.402679, 31.210783, 21.568541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006374, 30.912413, 20.955338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848351, 31.247688, 21.105732>,  <35.753536, 31.448854, 21.195969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848351, 31.247688, 21.105732>,  <36.006374, 30.912413, 20.955338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848351, 31.247688, 21.105732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060951, 0.384461, -0.921127,
		-0.916632, -0.386815, -0.100796,
		-0.395057, 0.838191, 0.375986,
		35.729832, 31.499146, 21.218527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553585, 31.004618, 20.425253>,  <36.006374, 30.912413, 20.955338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553585, 31.004618, 20.425253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581673, 31.351906, 20.621727>,  <35.598526, 31.560278, 20.739613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581673, 31.351906, 20.621727>,  <35.553585, 31.004618, 20.425253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581673, 31.351906, 20.621727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024956, 0.493777, -0.869230,
		-0.997219, 0.048781, 0.056341,
		0.070222, 0.868219, 0.491186,
		35.602737, 31.612371, 20.769083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023411, 31.485704, 20.115171>,  <35.553585, 31.004618, 20.425253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023411, 31.485704, 20.115171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349102, 31.670446, 20.255871>,  <35.544518, 31.781292, 20.340290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349102, 31.670446, 20.255871>,  <35.023411, 31.485704, 20.115171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349102, 31.670446, 20.255871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011144, 0.618209, -0.785934,
		-0.580441, 0.636009, 0.508509,
		0.814226, 0.461855, 0.351747,
		35.593369, 31.809004, 20.361395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036774, 32.260212, 20.231390>,  <35.023411, 31.485704, 20.115171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036774, 32.260212, 20.231390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390709, 32.114498, 20.115210>,  <35.603069, 32.027069, 20.045502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390709, 32.114498, 20.115210>,  <35.036774, 32.260212, 20.231390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390709, 32.114498, 20.115210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004265, 0.629722, -0.776809,
		0.465884, 0.686109, 0.558754,
		0.884835, -0.364286, -0.290451,
		35.656158, 32.005211, 20.028074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501049, 32.872700, 20.274464>,  <35.036774, 32.260212, 20.231390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501049, 32.872700, 20.274464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689545, 33.200237, 20.143356>,  <35.802643, 33.396759, 20.064692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689545, 33.200237, 20.143356>,  <35.501049, 32.872700, 20.274464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689545, 33.200237, 20.143356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239061, -0.476282, -0.846170,
		-0.848991, 0.320391, -0.420196,
		0.471237, 0.818843, -0.327766,
		35.830917, 33.445889, 20.045027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257153, 32.926361, 19.604448>,  <35.501049, 32.872700, 20.274464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257153, 32.926361, 19.604448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592518, 33.144363, 19.606899>,  <35.793736, 33.275166, 19.608370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592518, 33.144363, 19.606899>,  <35.257153, 32.926361, 19.604448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592518, 33.144363, 19.606899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284401, -0.427865, -0.857932,
		-0.464954, 0.721043, -0.513726,
		0.838412, 0.545003, 0.006128,
		35.844040, 33.307865, 19.608738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352135, 33.199577, 18.951822>,  <35.257153, 32.926361, 19.604448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352135, 33.199577, 18.951822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700100, 33.177376, 19.147852>,  <35.908878, 33.164055, 19.265471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700100, 33.177376, 19.147852>,  <35.352135, 33.199577, 18.951822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700100, 33.177376, 19.147852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414617, -0.455837, -0.787595,
		0.267108, 0.888331, -0.373526,
		0.869912, -0.055503, 0.490075,
		35.961075, 33.160725, 19.294874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743832, 32.627277, 18.843336>,  <35.352135, 33.199577, 18.951822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743832, 32.627277, 18.843336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981632, 32.897972, 18.669628>,  <36.124313, 33.060387, 18.565403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981632, 32.897972, 18.669628>,  <35.743832, 32.627277, 18.843336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981632, 32.897972, 18.669628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029138, 0.557855, 0.829427,
		0.803563, -0.480444, 0.351367,
		0.594505, 0.676735, -0.434273,
		36.159985, 33.100994, 18.539347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271103, 32.646778, 19.316549>,  <35.743832, 32.627277, 18.843336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271103, 32.646778, 19.316549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252426, 32.977570, 19.092432>,  <36.241219, 33.176044, 18.957962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252426, 32.977570, 19.092432>,  <36.271103, 32.646778, 19.316549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252426, 32.977570, 19.092432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186796, 0.558239, 0.808379,
		0.981288, -0.066913, -0.180542,
		-0.046694, 0.826977, -0.560293,
		36.238419, 33.225662, 18.924345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893753, 33.200119, 19.411175>,  <36.271103, 32.646778, 19.316549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893753, 33.200119, 19.411175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545578, 33.368843, 19.309654>,  <36.336674, 33.470078, 19.248741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545578, 33.368843, 19.309654>,  <36.893753, 33.200119, 19.411175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545578, 33.368843, 19.309654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000649, 0.516549, 0.856257,
		0.492277, 0.745155, -0.449898,
		-0.870439, 0.421808, -0.253801,
		36.284447, 33.495384, 19.233515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895767, 34.005600, 19.436859>,  <36.893753, 33.200119, 19.411175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895767, 34.005600, 19.436859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548649, 33.820488, 19.509264>,  <36.340378, 33.709419, 19.552706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548649, 33.820488, 19.509264>,  <36.895767, 34.005600, 19.436859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548649, 33.820488, 19.509264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118945, 0.547123, 0.828558,
		-0.482476, 0.697489, -0.529836,
		-0.867796, -0.462780, 0.181011,
		36.288311, 33.681652, 19.563568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547314, 34.535259, 19.766788>,  <36.895767, 34.005600, 19.436859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547314, 34.535259, 19.766788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337399, 34.202297, 19.837999>,  <36.211449, 34.002518, 19.880726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337399, 34.202297, 19.837999>,  <36.547314, 34.535259, 19.766788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337399, 34.202297, 19.837999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368380, 0.410628, 0.834075,
		-0.767395, 0.372130, -0.522135,
		-0.524787, -0.832409, 0.178028,
		36.179962, 33.952576, 19.891407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760181, 34.654167, 19.693846>,  <36.547314, 34.535259, 19.766788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760181, 34.654167, 19.693846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845245, 34.353661, 19.943764>,  <35.896282, 34.173355, 20.093716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845245, 34.353661, 19.943764>,  <35.760181, 34.654167, 19.693846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845245, 34.353661, 19.943764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487688, 0.472482, 0.734113,
		-0.846721, -0.460821, -0.265907,
		0.212659, -0.751269, 0.624797,
		35.909042, 34.128281, 20.131203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157948, 34.707676, 20.209217>,  <35.760181, 34.654167, 19.693846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157948, 34.707676, 20.209217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424309, 34.455631, 20.368980>,  <35.584126, 34.304405, 20.464838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424309, 34.455631, 20.368980>,  <35.157948, 34.707676, 20.209217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424309, 34.455631, 20.368980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376766, 0.178041, 0.909037,
		-0.643910, -0.755814, -0.118848,
		0.665903, -0.630116, 0.399408,
		35.624081, 34.266598, 20.488802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795841, 34.263313, 20.711229>,  <35.157948, 34.707676, 20.209217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795841, 34.263313, 20.711229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177452, 34.223759, 20.824406>,  <35.406418, 34.200024, 20.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177452, 34.223759, 20.824406>,  <34.795841, 34.263313, 20.711229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177452, 34.223759, 20.824406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234833, 0.339986, 0.910639,
		-0.186250, -0.935217, 0.301133,
		0.954025, -0.098890, 0.282942,
		35.463661, 34.194092, 20.909288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778893, 33.761501, 21.270159>,  <34.795841, 34.263313, 20.711229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778893, 33.761501, 21.270159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120926, 33.961124, 21.326401>,  <35.326145, 34.080898, 21.360146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120926, 33.961124, 21.326401>,  <34.778893, 33.761501, 21.270159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120926, 33.961124, 21.326401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174814, 0.022192, 0.984351,
		0.488131, -0.866283, 0.106219,
		0.855084, 0.499061, 0.140606,
		35.377453, 34.110844, 21.368582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070286, 33.442257, 21.859694>,  <34.778893, 33.761501, 21.270159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070286, 33.442257, 21.859694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291019, 33.775253, 21.839928>,  <35.423462, 33.975052, 21.828068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291019, 33.775253, 21.839928>,  <35.070286, 33.442257, 21.859694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291019, 33.775253, 21.839928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077273, 0.110038, 0.990919,
		0.830365, -0.543007, 0.125051,
		0.551836, 0.832488, -0.049412,
		35.456570, 34.024998, 21.825104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585983, 33.376953, 22.293243>,  <35.070286, 33.442257, 21.859694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585983, 33.376953, 22.293243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572052, 33.775379, 22.260630>,  <35.563694, 34.014435, 22.241060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572052, 33.775379, 22.260630>,  <35.585983, 33.376953, 22.293243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572052, 33.775379, 22.260630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082808, 0.084181, 0.993004,
		0.995957, 0.027832, -0.085414,
		-0.034827, 0.996062, -0.081536,
		35.561604, 34.074196, 22.236170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191460, 33.614445, 22.663443>,  <35.585983, 33.376953, 22.293243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191460, 33.614445, 22.663443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925060, 33.912735, 22.656025>,  <35.765221, 34.091709, 22.651575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925060, 33.912735, 22.656025>,  <36.191460, 33.614445, 22.663443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925060, 33.912735, 22.656025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129862, 0.140385, 0.981543,
		0.734562, 0.651298, -0.190337,
		-0.665998, 0.745723, -0.018543,
		35.725262, 34.136452, 22.650461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427277, 34.148506, 23.136955>,  <36.191460, 33.614445, 22.663443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427277, 34.148506, 23.136955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041817, 34.241932, 23.085058>,  <35.810543, 34.297989, 23.053921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041817, 34.241932, 23.085058>,  <36.427277, 34.148506, 23.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041817, 34.241932, 23.085058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091160, 0.169035, 0.981385,
		0.251148, 0.957536, -0.141598,
		-0.963646, 0.233565, -0.129742,
		35.752724, 34.312000, 23.046135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327568, 34.683662, 23.600294>,  <36.427277, 34.148506, 23.136955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327568, 34.683662, 23.600294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949650, 34.576344, 23.525066>,  <35.722897, 34.511951, 23.479929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949650, 34.576344, 23.525066>,  <36.327568, 34.683662, 23.600294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949650, 34.576344, 23.525066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254838, 0.240941, 0.936485,
		-0.205944, 0.932718, -0.296014,
		-0.944799, -0.268299, -0.188072,
		35.666210, 34.495853, 23.468645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914993, 35.277580, 23.800787>,  <36.327568, 34.683662, 23.600294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914993, 35.277580, 23.800787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724026, 34.927036, 23.826321>,  <35.609447, 34.716709, 23.841640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724026, 34.927036, 23.826321>,  <35.914993, 35.277580, 23.800787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724026, 34.927036, 23.826321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313037, 0.237517, 0.919562,
		-0.821025, 0.419030, -0.387726,
		-0.477415, -0.876356, 0.063836,
		35.580803, 34.664131, 23.845470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361847, 35.417877, 24.236553>,  <35.914993, 35.277580, 23.800787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361847, 35.417877, 24.236553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365971, 35.018200, 24.221048>,  <35.368443, 34.778393, 24.211744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365971, 35.018200, 24.221048>,  <35.361847, 35.417877, 24.236553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365971, 35.018200, 24.221048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204194, -0.040051, 0.978111,
		-0.978876, -0.002165, -0.204442,
		0.010306, -0.999195, -0.038763,
		35.369061, 34.718441, 24.209419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710609, 35.265045, 24.400787>,  <35.361847, 35.417877, 24.236553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710609, 35.265045, 24.400787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966808, 34.967575, 24.477428>,  <35.120529, 34.789093, 24.523413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966808, 34.967575, 24.477428>,  <34.710609, 35.265045, 24.400787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966808, 34.967575, 24.477428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296471, -0.009291, 0.954997,
		-0.708423, -0.668481, -0.226428,
		0.640501, -0.743671, 0.191603,
		35.158958, 34.744473, 24.534910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327377, 34.837811, 24.762690>,  <34.710609, 35.265045, 24.400787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327377, 34.837811, 24.762690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677643, 34.656612, 24.829639>,  <34.887802, 34.547894, 24.869810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677643, 34.656612, 24.829639>,  <34.327377, 34.837811, 24.762690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677643, 34.656612, 24.829639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256401, -0.142401, 0.956023,
		-0.409240, -0.880067, -0.240843,
		0.875660, -0.452996, 0.167374,
		34.940342, 34.520714, 24.879852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190845, 34.169346, 25.049129>,  <34.327377, 34.837811, 24.762690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190845, 34.169346, 25.049129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551552, 34.299953, 25.162415>,  <34.767975, 34.378319, 25.230385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551552, 34.299953, 25.162415>,  <34.190845, 34.169346, 25.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551552, 34.299953, 25.162415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303562, 0.011985, 0.952736,
		0.307695, -0.945114, 0.109927,
		0.901762, 0.326522, 0.283213,
		34.822079, 34.397911, 25.247379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352142, 33.784950, 25.649826>,  <34.190845, 34.169346, 25.049129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352142, 33.784950, 25.649826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597702, 34.098618, 25.686045>,  <34.745037, 34.286819, 25.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597702, 34.098618, 25.686045>,  <34.352142, 33.784950, 25.649826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597702, 34.098618, 25.686045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271709, 0.102215, 0.956936,
		0.741148, -0.612066, 0.275817,
		0.613900, 0.784173, 0.090547,
		34.781872, 34.333870, 25.713209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749454, 33.685307, 26.328434>,  <34.352142, 33.784950, 25.649826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749454, 33.685307, 26.328434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792110, 34.068195, 26.220844>,  <34.817703, 34.297928, 26.156290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792110, 34.068195, 26.220844>,  <34.749454, 33.685307, 26.328434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792110, 34.068195, 26.220844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189069, 0.285105, 0.939664,
		0.976156, -0.049351, 0.211385,
		0.106640, 0.957225, -0.268976,
		34.824104, 34.355362, 26.140152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947269, 33.980682, 26.995583>,  <34.749454, 33.685307, 26.328434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947269, 33.980682, 26.995583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893475, 34.297943, 26.757990>,  <34.861198, 34.488300, 26.615435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893475, 34.297943, 26.757990>,  <34.947269, 33.980682, 26.995583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893475, 34.297943, 26.757990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147131, 0.576802, 0.803525,
		0.979932, 0.195454, 0.039128,
		-0.134483, 0.793156, -0.593984,
		34.853130, 34.535889, 26.579794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403385, 34.516602, 27.212814>,  <34.947269, 33.980682, 26.995583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403385, 34.516602, 27.212814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082687, 34.677254, 27.035770>,  <34.890270, 34.773643, 26.929544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082687, 34.677254, 27.035770>,  <35.403385, 34.516602, 27.212814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082687, 34.677254, 27.035770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349609, 0.285492, 0.892338,
		0.484749, 0.870167, -0.088479,
		-0.801743, 0.401627, -0.442610,
		34.842163, 34.797741, 26.902987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362335, 35.280575, 27.414627>,  <35.403385, 34.516602, 27.212814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362335, 35.280575, 27.414627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993259, 35.191505, 27.288733>,  <34.771812, 35.138062, 27.213196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993259, 35.191505, 27.288733>,  <35.362335, 35.280575, 27.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993259, 35.191505, 27.288733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379264, 0.377498, 0.844780,
		-0.069301, 0.898838, -0.432767,
		-0.922689, -0.222677, -0.314736,
		34.716454, 35.124702, 27.194311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985935, 35.947540, 27.334854>,  <35.362335, 35.280575, 27.414627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985935, 35.947540, 27.334854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715855, 35.655910, 27.379688>,  <34.553806, 35.480934, 27.406588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715855, 35.655910, 27.379688>,  <34.985935, 35.947540, 27.334854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715855, 35.655910, 27.379688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400984, 0.490318, 0.773821,
		-0.619128, 0.477538, -0.623408,
		-0.675198, -0.729071, 0.112084,
		34.513294, 35.437187, 27.413313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461674, 36.284176, 27.612783>,  <34.985935, 35.947540, 27.334854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461674, 36.284176, 27.612783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334671, 35.910942, 27.680357>,  <34.258469, 35.687000, 27.720901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334671, 35.910942, 27.680357>,  <34.461674, 36.284176, 27.612783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334671, 35.910942, 27.680357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452412, 0.305629, 0.837804,
		-0.833373, 0.189584, -0.519179,
		-0.317510, -0.933086, 0.168933,
		34.239418, 35.631016, 27.731037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743599, 36.377254, 27.842955>,  <34.461674, 36.284176, 27.612783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743599, 36.377254, 27.842955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869850, 36.021000, 27.973890>,  <33.945602, 35.807247, 28.052452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869850, 36.021000, 27.973890>,  <33.743599, 36.377254, 27.842955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869850, 36.021000, 27.973890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369250, 0.202497, 0.907000,
		-0.874090, -0.407145, -0.264953,
		0.315628, -0.890633, 0.327339,
		33.964539, 35.753811, 28.072092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244247, 36.212650, 28.192741>,  <33.743599, 36.377254, 27.842955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244247, 36.212650, 28.192741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538483, 35.970882, 28.315104>,  <33.715023, 35.825821, 28.388521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538483, 35.970882, 28.315104>,  <33.244247, 36.212650, 28.192741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538483, 35.970882, 28.315104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355746, 0.039632, 0.933742,
		-0.576499, -0.795677, -0.185868,
		0.735591, -0.604423, 0.305907,
		33.759159, 35.789555, 28.406876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019779, 35.559395, 28.603342>,  <33.244247, 36.212650, 28.192741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019779, 35.559395, 28.603342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398533, 35.617767, 28.717960>,  <33.625786, 35.652790, 28.786732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398533, 35.617767, 28.717960>,  <33.019779, 35.559395, 28.603342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398533, 35.617767, 28.717960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272729, -0.107634, 0.956051,
		0.170362, -0.983422, -0.062118,
		0.946887, 0.145933, 0.286545,
		33.682598, 35.661549, 28.803925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016346, 35.226372, 29.272486>,  <33.019779, 35.559395, 28.603342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016346, 35.226372, 29.272486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354347, 35.440197, 29.278273>,  <33.557148, 35.568493, 29.281744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354347, 35.440197, 29.278273>,  <33.016346, 35.226372, 29.272486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354347, 35.440197, 29.278273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113768, 0.153277, 0.981613,
		0.522513, -0.831115, 0.190336,
		0.845007, 0.534560, 0.014465,
		33.607849, 35.600563, 29.282612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381424, 35.050110, 29.956026>,  <33.016346, 35.226372, 29.272486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381424, 35.050110, 29.956026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579433, 35.374844, 29.832174>,  <33.698238, 35.569683, 29.757864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579433, 35.374844, 29.832174>,  <33.381424, 35.050110, 29.956026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579433, 35.374844, 29.832174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353695, 0.137211, 0.925242,
		0.793629, -0.567534, -0.219219,
		0.495027, 0.811836, -0.309629,
		33.727943, 35.618393, 29.739286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084106, 34.984802, 30.231579>,  <33.381424, 35.050110, 29.956026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084106, 34.984802, 30.231579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016426, 35.374466, 30.171740>,  <33.975819, 35.608265, 30.135836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016426, 35.374466, 30.171740>,  <34.084106, 34.984802, 30.231579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016426, 35.374466, 30.171740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126448, 0.171991, 0.976949,
		0.977436, 0.146388, -0.152282,
		-0.169205, 0.974161, -0.149600,
		33.965664, 35.666714, 30.126860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736149, 35.370434, 30.337021>,  <34.084106, 34.984802, 30.231579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736149, 35.370434, 30.337021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417286, 35.601505, 30.407261>,  <34.225967, 35.740147, 30.449406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417286, 35.601505, 30.407261>,  <34.736149, 35.370434, 30.337021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417286, 35.601505, 30.407261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264058, 0.072013, 0.961815,
		0.542970, 0.813084, -0.209945,
		-0.797155, 0.577674, 0.175600,
		34.178139, 35.774807, 30.459942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845631, 35.850899, 30.904524>,  <34.736149, 35.370434, 30.337021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845631, 35.850899, 30.904524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448112, 35.895203, 30.900467>,  <34.209602, 35.921783, 30.898033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448112, 35.895203, 30.900467>,  <34.845631, 35.850899, 30.904524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448112, 35.895203, 30.900467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014180, 0.216639, 0.976149,
		0.110313, 0.969949, -0.216865,
		-0.993796, 0.110757, -0.010144,
		34.149975, 35.928429, 30.897423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712902, 36.428398, 31.341866>,  <34.845631, 35.850899, 30.904524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712902, 36.428398, 31.341866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372917, 36.217739, 31.336191>,  <34.168926, 36.091343, 31.332787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372917, 36.217739, 31.336191>,  <34.712902, 36.428398, 31.341866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372917, 36.217739, 31.336191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071783, 0.089095, 0.993433,
		-0.521923, 0.845403, -0.113532,
		-0.849967, -0.526646, -0.014185,
		34.117928, 36.059746, 31.331936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327560, 36.751362, 31.790476>,  <34.712902, 36.428398, 31.341866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327560, 36.751362, 31.790476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132900, 36.403111, 31.761707>,  <34.016106, 36.194160, 31.744446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132900, 36.403111, 31.761707>,  <34.327560, 36.751362, 31.790476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132900, 36.403111, 31.761707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180518, 0.019666, 0.983375,
		-0.854743, 0.491542, -0.166736,
		-0.486649, -0.870632, -0.071923,
		33.986904, 36.141922, 31.740131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703465, 36.798866, 32.127895>,  <34.327560, 36.751362, 31.790476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703465, 36.798866, 32.127895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763470, 36.403568, 32.139679>,  <33.799473, 36.166389, 32.146751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763470, 36.403568, 32.139679>,  <33.703465, 36.798866, 32.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763470, 36.403568, 32.139679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233034, -0.006383, 0.972448,
		-0.960828, -0.152750, -0.231253,
		0.150017, -0.988244, 0.029463,
		33.808475, 36.107094, 32.148518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316151, 36.665997, 32.707790>,  <33.703465, 36.798866, 32.127895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316151, 36.665997, 32.707790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513298, 36.327805, 32.625576>,  <33.631588, 36.124889, 32.576248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513298, 36.327805, 32.625576>,  <33.316151, 36.665997, 32.707790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513298, 36.327805, 32.625576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026892, -0.221301, 0.974835,
		-0.869689, -0.485991, -0.086335,
		0.492867, -0.845481, -0.205532,
		33.661160, 36.074162, 32.563915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900761, 35.980686, 32.929375>,  <33.316151, 36.665997, 32.707790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900761, 35.980686, 32.929375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295063, 35.917763, 32.905586>,  <33.531643, 35.880009, 32.891312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295063, 35.917763, 32.905586>,  <32.900761, 35.980686, 32.929375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295063, 35.917763, 32.905586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023002, -0.224210, 0.974269,
		-0.166594, -0.961761, -0.217398,
		0.985757, -0.157307, -0.059474,
		33.590790, 35.870571, 32.887745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016155, 35.353638, 33.216885>,  <32.900761, 35.980686, 32.929375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016155, 35.353638, 33.216885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361126, 35.555607, 33.231171>,  <33.568108, 35.676788, 33.239742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361126, 35.555607, 33.231171>,  <33.016155, 35.353638, 33.216885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361126, 35.555607, 33.231171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059548, -0.171273, 0.983422,
		0.502672, -0.846000, -0.177777,
		0.862424, 0.504925, 0.035717,
		33.619854, 35.707085, 33.241886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483669, 34.841206, 33.594093>,  <33.016155, 35.353638, 33.216885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483669, 34.841206, 33.594093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638348, 35.207680, 33.636177>,  <33.731155, 35.427563, 33.661427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638348, 35.207680, 33.636177>,  <33.483669, 34.841206, 33.594093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638348, 35.207680, 33.636177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295048, -0.230997, 0.927139,
		0.873733, -0.327484, -0.359646,
		0.386701, 0.916185, 0.105206,
		33.754356, 35.482536, 33.667740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239307, 34.720135, 33.860023>,  <33.483669, 34.841206, 33.594093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239307, 34.720135, 33.860023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146473, 35.101566, 33.936775>,  <34.090771, 35.330425, 33.982826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146473, 35.101566, 33.936775>,  <34.239307, 34.720135, 33.860023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146473, 35.101566, 33.936775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181031, -0.151469, 0.971743,
		0.955700, 0.260267, -0.137474,
		-0.232090, 0.953582, 0.191876,
		34.076847, 35.387642, 33.994339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639778, 34.904282, 34.493179>,  <34.239307, 34.720135, 33.860023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639778, 34.904282, 34.493179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379292, 35.206848, 34.468678>,  <34.223000, 35.388390, 34.453976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379292, 35.206848, 34.468678>,  <34.639778, 34.904282, 34.493179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379292, 35.206848, 34.468678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020882, 0.062827, 0.997806,
		0.758608, 0.651063, -0.025118,
		-0.651213, 0.756419, -0.061256,
		34.183929, 35.433773, 34.450302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009102, 35.470486, 34.925022>,  <34.639778, 34.904282, 34.493179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009102, 35.470486, 34.925022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614113, 35.519268, 34.884968>,  <34.377121, 35.548538, 34.860935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614113, 35.519268, 34.884968>,  <35.009102, 35.470486, 34.925022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614113, 35.519268, 34.884968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096683, 0.033924, 0.994737,
		0.124712, 0.991955, -0.021708,
		-0.987471, 0.121957, -0.100136,
		34.317871, 35.555855, 34.854927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847939, 36.163124, 34.768883>,  <35.009102, 35.470486, 34.925022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847939, 36.163124, 34.768883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128445, 36.305222, 35.016117>,  <35.296749, 36.390480, 35.164459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128445, 36.305222, 35.016117>,  <34.847939, 36.163124, 34.768883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128445, 36.305222, 35.016117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673431, -0.045608, -0.737842,
		-0.233925, 0.933660, -0.271217,
		0.701263, 0.355246, 0.618087,
		35.338825, 36.411797, 35.201542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112698, 36.756828, 34.436802>,  <34.847939, 36.163124, 34.768883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112698, 36.756828, 34.436802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388027, 36.603634, 34.683224>,  <35.553226, 36.511715, 34.831078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388027, 36.603634, 34.683224>,  <35.112698, 36.756828, 34.436802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388027, 36.603634, 34.683224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623121, -0.122623, -0.772453,
		0.371383, 0.915578, 0.154244,
		0.688327, -0.382988, 0.616056,
		35.594524, 36.488739, 34.868042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656010, 37.139668, 34.264034>,  <35.112698, 36.756828, 34.436802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656010, 37.139668, 34.264034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816078, 36.823246, 34.449116>,  <35.912121, 36.633392, 34.560165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816078, 36.823246, 34.449116>,  <35.656010, 37.139668, 34.264034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816078, 36.823246, 34.449116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645638, -0.114967, -0.754940,
		0.650396, 0.600842, 0.464730,
		0.400171, -0.791057, 0.462700,
		35.936131, 36.585930, 34.587925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331989, 37.236931, 34.297421>,  <35.656010, 37.139668, 34.264034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331989, 37.236931, 34.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311581, 36.837704, 34.311604>,  <36.299335, 36.598167, 34.320114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311581, 36.837704, 34.311604>,  <36.331989, 37.236931, 34.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311581, 36.837704, 34.311604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535556, -0.057312, -0.842553,
		0.842957, -0.023995, 0.537445,
		-0.051019, -0.998068, 0.035461,
		36.296276, 36.538284, 34.322243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041168, 37.006165, 34.203732>,  <36.331989, 37.236931, 34.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041168, 37.006165, 34.203732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801609, 36.696918, 34.120193>,  <36.657875, 36.511372, 34.070072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801609, 36.696918, 34.120193>,  <37.041168, 37.006165, 34.203732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801609, 36.696918, 34.120193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485181, -0.142811, -0.862673,
		0.637120, -0.617980, 0.460629,
		-0.598898, -0.773114, -0.208844,
		36.621941, 36.464985, 34.057541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539379, 36.671078, 33.792805>,  <37.041168, 37.006165, 34.203732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539379, 36.671078, 33.792805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204388, 36.467148, 33.714111>,  <37.003391, 36.344788, 33.666897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204388, 36.467148, 33.714111>,  <37.539379, 36.671078, 33.792805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204388, 36.467148, 33.714111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290816, -0.111007, -0.950318,
		0.462659, -0.853085, 0.241232,
		-0.837480, -0.509827, -0.196733,
		36.953144, 36.314201, 33.655090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745979, 36.012756, 33.501343>,  <37.539379, 36.671078, 33.792805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745979, 36.012756, 33.501343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372444, 36.104950, 33.391930>,  <37.148323, 36.160267, 33.326283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372444, 36.104950, 33.391930>,  <37.745979, 36.012756, 33.501343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372444, 36.104950, 33.391930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272031, -0.038903, -0.961502,
		-0.232250, -0.972299, -0.026369,
		-0.933841, 0.230482, -0.273530,
		37.092293, 36.174095, 33.309872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485966, 35.475029, 33.110432>,  <37.745979, 36.012756, 33.501343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485966, 35.475029, 33.110432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246841, 35.783157, 33.021690>,  <37.103367, 35.968037, 32.968445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246841, 35.783157, 33.021690>,  <37.485966, 35.475029, 33.110432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246841, 35.783157, 33.021690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021595, -0.261176, -0.965050,
		-0.801345, -0.581710, 0.139499,
		-0.597812, 0.770325, -0.221854,
		37.067497, 36.014256, 32.955135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054428, 35.170837, 32.568363>,  <37.485966, 35.475029, 33.110432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054428, 35.170837, 32.568363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026657, 35.568668, 32.537388>,  <37.009995, 35.807365, 32.518803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026657, 35.568668, 32.537388>,  <37.054428, 35.170837, 32.568363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026657, 35.568668, 32.537388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153101, -0.087333, -0.984344,
		-0.985768, -0.056488, 0.158335,
		-0.069432, 0.994576, -0.077442,
		37.005829, 35.867043, 32.514156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550793, 35.190842, 32.086994>,  <37.054428, 35.170837, 32.568363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550793, 35.190842, 32.086994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718716, 35.553860, 32.091496>,  <36.819469, 35.771671, 32.094196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718716, 35.553860, 32.091496>,  <36.550793, 35.190842, 32.086994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718716, 35.553860, 32.091496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151149, 0.082129, -0.985093,
		-0.894938, 0.411851, 0.171652,
		0.419810, 0.907543, 0.011250,
		36.844658, 35.826122, 32.094872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196472, 35.627956, 31.641920>,  <36.550793, 35.190842, 32.086994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196472, 35.627956, 31.641920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529636, 35.847519, 31.670118>,  <36.729534, 35.979256, 31.687037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529636, 35.847519, 31.670118>,  <36.196472, 35.627956, 31.641920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529636, 35.847519, 31.670118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068412, 0.024283, -0.997362,
		-0.549170, 0.835531, -0.017326,
		0.832906, 0.548906, 0.070496,
		36.779507, 36.012192, 31.691267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132668, 36.251797, 31.196819>,  <36.196472, 35.627956, 31.641920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132668, 36.251797, 31.196819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528893, 36.203602, 31.222954>,  <36.766628, 36.174683, 31.238634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528893, 36.203602, 31.222954>,  <36.132668, 36.251797, 31.196819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528893, 36.203602, 31.222954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071181, 0.044839, -0.996455,
		0.117132, 0.991701, 0.052993,
		0.990562, -0.120489, 0.065338,
		36.826061, 36.167454, 31.242556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327320, 36.715797, 30.720446>,  <36.132668, 36.251797, 31.196819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327320, 36.715797, 30.720446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649052, 36.483612, 30.771227>,  <36.842091, 36.344299, 30.801697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649052, 36.483612, 30.771227>,  <36.327320, 36.715797, 30.720446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649052, 36.483612, 30.771227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243834, 0.127605, -0.961385,
		0.541852, 0.804224, 0.244174,
		0.804327, -0.580466, 0.126954,
		36.890350, 36.309471, 30.809313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775295, 37.173737, 30.333155>,  <36.327320, 36.715797, 30.720446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775295, 37.173737, 30.333155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926365, 36.803703, 30.349073>,  <37.017006, 36.581684, 30.358625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926365, 36.803703, 30.349073>,  <36.775295, 37.173737, 30.333155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926365, 36.803703, 30.349073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210069, 0.043744, -0.976707,
		0.901793, 0.377241, 0.210852,
		0.377678, -0.925081, 0.039798,
		37.039669, 36.526180, 30.361013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362610, 37.133930, 29.865625>,  <36.775295, 37.173737, 30.333155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362610, 37.133930, 29.865625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238815, 36.755943, 29.908054>,  <37.164539, 36.529152, 29.933512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238815, 36.755943, 29.908054>,  <37.362610, 37.133930, 29.865625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238815, 36.755943, 29.908054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266159, -0.193177, -0.944374,
		0.912895, -0.264040, 0.311298,
		-0.309488, -0.944969, 0.106074,
		37.145969, 36.472454, 29.939877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995941, 36.625294, 29.603617>,  <37.362610, 37.133930, 29.865625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995941, 36.625294, 29.603617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651691, 36.422901, 29.580593>,  <37.445141, 36.301468, 29.566778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651691, 36.422901, 29.580593>,  <37.995941, 36.625294, 29.603617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651691, 36.422901, 29.580593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254851, -0.330082, -0.908899,
		0.440883, -0.796889, 0.413026,
		-0.860624, -0.505978, -0.057561,
		37.393505, 36.271107, 29.563324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146465, 35.948013, 29.301031>,  <37.995941, 36.625294, 29.603617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146465, 35.948013, 29.301031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748047, 35.956970, 29.266655>,  <37.508995, 35.962345, 29.246029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748047, 35.956970, 29.266655>,  <38.146465, 35.948013, 29.301031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748047, 35.956970, 29.266655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068529, -0.421728, -0.904129,
		-0.056491, -0.906446, 0.418527,
		-0.996049, 0.022394, -0.085942,
		37.449234, 35.963688, 29.240871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929394, 35.314232, 29.098928>,  <38.146465, 35.948013, 29.301031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929394, 35.314232, 29.098928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621761, 35.543915, 28.986643>,  <37.437180, 35.681725, 28.919271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621761, 35.543915, 28.986643>,  <37.929394, 35.314232, 29.098928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621761, 35.543915, 28.986643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206557, -0.192338, -0.959344,
		-0.604850, -0.795800, 0.029318,
		-0.769084, 0.574203, -0.280714,
		37.391037, 35.716175, 28.902430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598606, 34.927544, 28.457926>,  <37.929394, 35.314232, 29.098928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598606, 34.927544, 28.457926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423855, 35.283352, 28.404409>,  <37.319004, 35.496838, 28.372299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423855, 35.283352, 28.404409>,  <37.598606, 34.927544, 28.457926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423855, 35.283352, 28.404409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097263, -0.194578, -0.976053,
		-0.894249, -0.413400, 0.171523,
		-0.436875, 0.889517, -0.133792,
		37.292793, 35.550205, 28.364271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881157, 34.895222, 28.127497>,  <37.598606, 34.927544, 28.457926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881157, 34.895222, 28.127497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985828, 35.274895, 28.057545>,  <37.048630, 35.502697, 28.015574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985828, 35.274895, 28.057545>,  <36.881157, 34.895222, 28.127497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985828, 35.274895, 28.057545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210291, -0.120768, -0.970151,
		-0.941968, 0.290640, 0.168002,
		0.261675, 0.949180, -0.174879,
		37.064331, 35.559650, 28.005081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332218, 35.105946, 27.694714>,  <36.881157, 34.895222, 28.127497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332218, 35.105946, 27.694714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635117, 35.361202, 27.639078>,  <36.816856, 35.514355, 27.605698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635117, 35.361202, 27.639078>,  <36.332218, 35.105946, 27.694714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635117, 35.361202, 27.639078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114694, -0.079718, -0.990197,
		-0.642975, 0.765780, 0.012825,
		0.757251, 0.638143, -0.139087,
		36.862293, 35.552647, 27.597353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086666, 35.493488, 27.185261>,  <36.332218, 35.105946, 27.694714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086666, 35.493488, 27.185261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482323, 35.552052, 27.180002>,  <36.719715, 35.587189, 27.176847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482323, 35.552052, 27.180002>,  <36.086666, 35.493488, 27.185261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482323, 35.552052, 27.180002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007230, -0.040876, -0.999138,
		-0.146818, 0.988379, -0.039374,
		0.989137, 0.146407, -0.013147,
		36.779064, 35.595974, 27.176058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157211, 35.985561, 26.649611>,  <36.086666, 35.493488, 27.185261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157211, 35.985561, 26.649611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509094, 35.800182, 26.692190>,  <36.720222, 35.688953, 26.717737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509094, 35.800182, 26.692190>,  <36.157211, 35.985561, 26.649611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509094, 35.800182, 26.692190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045630, -0.140555, -0.989021,
		0.473321, 0.874906, -0.102500,
		0.879707, -0.463447, 0.106449,
		36.773006, 35.661148, 26.724125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532890, 36.161400, 26.048151>,  <36.157211, 35.985561, 26.649611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532890, 36.161400, 26.048151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745373, 35.845921, 26.171938>,  <36.872864, 35.656631, 26.246210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745373, 35.845921, 26.171938>,  <36.532890, 36.161400, 26.048151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745373, 35.845921, 26.171938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038135, -0.342640, -0.938693,
		0.846382, 0.510445, -0.151937,
		0.531210, -0.788698, 0.309470,
		36.904736, 35.609310, 26.264778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193874, 36.138496, 25.669682>,  <36.532890, 36.161400, 26.048151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193874, 36.138496, 25.669682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145214, 35.764576, 25.803152>,  <37.116020, 35.540222, 25.883234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145214, 35.764576, 25.803152>,  <37.193874, 36.138496, 25.669682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145214, 35.764576, 25.803152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360172, -0.354834, -0.862768,
		0.924921, 0.015227, 0.379855,
		-0.121648, -0.934805, 0.333678,
		37.108719, 35.484135, 25.903255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865719, 35.750835, 25.694447>,  <37.193874, 36.138496, 25.669682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865719, 35.750835, 25.694447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590229, 35.460838, 25.691807>,  <37.424934, 35.286839, 25.690224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590229, 35.460838, 25.691807>,  <37.865719, 35.750835, 25.694447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590229, 35.460838, 25.691807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361309, -0.335317, -0.870068,
		0.628579, -0.601623, 0.492888,
		-0.688726, -0.724991, -0.006599,
		37.383610, 35.243340, 25.689827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201462, 35.101135, 25.550180>,  <37.865719, 35.750835, 25.694447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201462, 35.101135, 25.550180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824654, 35.032188, 25.435015>,  <37.598568, 34.990822, 25.365915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824654, 35.032188, 25.435015>,  <38.201462, 35.101135, 25.550180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824654, 35.032188, 25.435015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335062, -0.530082, -0.778939,
		-0.018358, -0.830243, 0.557099,
		-0.942017, -0.172363, -0.287915,
		37.542049, 34.980480, 25.348640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173965, 34.373245, 25.411001>,  <38.201462, 35.101135, 25.550180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173965, 34.373245, 25.411001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832916, 34.485500, 25.234694>,  <37.628288, 34.552853, 25.128908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832916, 34.485500, 25.234694>,  <38.173965, 34.373245, 25.411001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832916, 34.485500, 25.234694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168547, -0.650738, -0.740360,
		-0.494594, -0.705539, 0.507535,
		-0.852624, 0.280634, -0.440767,
		37.577129, 34.569691, 25.102463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747684, 33.744797, 25.327066>,  <38.173965, 34.373245, 25.411001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747684, 33.744797, 25.327066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644432, 34.027935, 25.064062>,  <37.582481, 34.197819, 24.906260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644432, 34.027935, 25.064062>,  <37.747684, 33.744797, 25.327066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644432, 34.027935, 25.064062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070738, -0.664901, -0.743574,
		-0.963517, -0.238451, 0.121559,
		-0.258131, 0.707848, -0.657511,
		37.566994, 34.240288, 24.866810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285404, 33.426956, 24.894672>,  <37.747684, 33.744797, 25.327066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285404, 33.426956, 24.894672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418732, 33.731380, 24.672075>,  <37.498726, 33.914036, 24.538517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418732, 33.731380, 24.672075>,  <37.285404, 33.426956, 24.894672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418732, 33.731380, 24.672075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138568, -0.623381, -0.769542,
		-0.932577, 0.179387, -0.313241,
		0.333315, 0.761062, -0.556494,
		37.518726, 33.959698, 24.505127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944061, 33.297939, 24.189396>,  <37.285404, 33.426956, 24.894672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944061, 33.297939, 24.189396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260509, 33.533482, 24.123211>,  <37.450378, 33.674805, 24.083500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260509, 33.533482, 24.123211>,  <36.944061, 33.297939, 24.189396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260509, 33.533482, 24.123211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243890, -0.551766, -0.797542,
		-0.560932, 0.590598, -0.580129,
		0.791122, 0.588854, -0.165462,
		37.497845, 33.710136, 24.073572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950977, 33.457836, 23.411896>,  <36.944061, 33.297939, 24.189396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950977, 33.457836, 23.411896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317081, 33.564888, 23.532349>,  <37.536743, 33.629120, 23.604620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317081, 33.564888, 23.532349>,  <36.950977, 33.457836, 23.411896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317081, 33.564888, 23.532349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401294, -0.539587, -0.740141,
		-0.035596, 0.798261, -0.601258,
		0.915257, 0.267627, 0.301131,
		37.591660, 33.645176, 23.622688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264828, 33.701527, 22.729414>,  <36.950977, 33.457836, 23.411896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264828, 33.701527, 22.729414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547291, 33.627998, 23.002924>,  <37.716770, 33.583881, 23.167030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547291, 33.627998, 23.002924>,  <37.264828, 33.701527, 22.729414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547291, 33.627998, 23.002924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459694, -0.615480, -0.640207,
		0.538532, 0.766416, -0.350127,
		0.706162, -0.183821, 0.683773,
		37.759140, 33.572853, 23.208055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874523, 33.863037, 22.378319>,  <37.264828, 33.701527, 22.729414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874523, 33.863037, 22.378319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941959, 33.612659, 22.682888>,  <37.982422, 33.462433, 22.865629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941959, 33.612659, 22.682888>,  <37.874523, 33.863037, 22.378319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941959, 33.612659, 22.682888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557824, -0.576289, -0.597264,
		0.812656, 0.525433, 0.252012,
		0.168591, -0.625949, 0.761423,
		37.992538, 33.424873, 22.911316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514610, 33.761078, 22.353340>,  <37.874523, 33.863037, 22.378319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514610, 33.761078, 22.353340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355339, 33.448727, 22.545872>,  <38.259777, 33.261314, 22.661390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355339, 33.448727, 22.545872>,  <38.514610, 33.761078, 22.353340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355339, 33.448727, 22.545872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531127, -0.624076, -0.573091,
		0.747903, 0.027456, 0.663241,
		-0.398178, -0.780881, 0.481331,
		38.235886, 33.214462, 22.690271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052719, 33.273121, 22.310661>,  <38.514610, 33.761078, 22.353340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052719, 33.273121, 22.310661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745331, 33.035095, 22.404772>,  <38.560898, 32.892281, 22.461239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745331, 33.035095, 22.404772>,  <39.052719, 33.273121, 22.310661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745331, 33.035095, 22.404772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304678, -0.663604, -0.683228,
		0.562692, -0.453358, 0.691263,
		-0.768472, -0.595060, 0.235276,
		38.514790, 32.856579, 22.475355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292534, 32.547260, 22.413042>,  <39.052719, 33.273121, 22.310661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292534, 32.547260, 22.413042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901737, 32.494415, 22.346079>,  <38.667259, 32.462708, 22.305901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901737, 32.494415, 22.346079>,  <39.292534, 32.547260, 22.413042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901737, 32.494415, 22.346079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195233, -0.869940, -0.452867,
		-0.085807, -0.475133, 0.875720,
		-0.976996, -0.132110, -0.167409,
		38.608639, 32.454781, 22.295856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221340, 31.845671, 22.320192>,  <39.292534, 32.547260, 22.413042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221340, 31.845671, 22.320192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863941, 31.951801, 22.175266>,  <38.649502, 32.015480, 22.088310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863941, 31.951801, 22.175266>,  <39.221340, 31.845671, 22.320192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863941, 31.951801, 22.175266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058430, -0.731255, -0.679597,
		-0.445259, -0.628385, 0.637868,
		-0.893493, 0.265326, -0.362315,
		38.595894, 32.031399, 22.066572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208252, 31.145697, 22.098928>,  <39.221340, 31.845671, 22.320192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208252, 31.145697, 22.098928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575836, 31.085432, 22.244701>,  <39.796387, 31.049274, 22.332165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575836, 31.085432, 22.244701>,  <39.208252, 31.145697, 22.098928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575836, 31.085432, 22.244701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146760, 0.727100, 0.670662,
		-0.366022, -0.669797, 0.646066,
		0.918961, -0.150661, 0.364433,
		39.851524, 31.040234, 22.354031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104012, 31.200176, 22.873465>,  <39.208252, 31.145697, 22.098928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104012, 31.200176, 22.873465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491409, 31.256826, 22.791529>,  <39.723846, 31.290817, 22.742367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491409, 31.256826, 22.791529>,  <39.104012, 31.200176, 22.873465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491409, 31.256826, 22.791529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074351, 0.620590, 0.780602,
		0.237676, -0.771240, 0.590508,
		0.968495, 0.141625, -0.204842,
		39.781960, 31.299314, 22.730076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388912, 31.165678, 23.492496>,  <39.104012, 31.200176, 22.873465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388912, 31.165678, 23.492496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669506, 31.352806, 23.277441>,  <39.837864, 31.465082, 23.148407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669506, 31.352806, 23.277441>,  <39.388912, 31.165678, 23.492496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669506, 31.352806, 23.277441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212934, 0.582353, 0.784553,
		0.680127, -0.664837, 0.308899,
		0.701489, 0.467821, -0.537641,
		39.879951, 31.493153, 23.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969711, 31.100811, 23.931578>,  <39.388912, 31.165678, 23.492496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969711, 31.100811, 23.931578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019070, 31.418064, 23.693010>,  <40.048683, 31.608416, 23.549870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019070, 31.418064, 23.693010>,  <39.969711, 31.100811, 23.931578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019070, 31.418064, 23.693010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165468, 0.576154, 0.800417,
		0.978465, -0.197454, -0.060145,
		0.123393, 0.793132, -0.596419,
		40.056087, 31.656004, 23.514084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541748, 31.451616, 24.206404>,  <39.969711, 31.100811, 23.931578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541748, 31.451616, 24.206404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361214, 31.720465, 23.971611>,  <40.252895, 31.881775, 23.830734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361214, 31.720465, 23.971611>,  <40.541748, 31.451616, 24.206404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361214, 31.720465, 23.971611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110396, 0.694794, 0.710686,
		0.885500, 0.255956, -0.387783,
		-0.451334, 0.672122, -0.586983,
		40.225815, 31.922102, 23.795517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959362, 32.032696, 24.197994>,  <40.541748, 31.451616, 24.206404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959362, 32.032696, 24.197994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597710, 32.176773, 24.106071>,  <40.380718, 32.263218, 24.050919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597710, 32.176773, 24.106071>,  <40.959362, 32.032696, 24.197994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597710, 32.176773, 24.106071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058638, 0.637379, 0.768316,
		0.423215, 0.681182, -0.597394,
		-0.904130, 0.360193, -0.229805,
		40.326469, 32.284832, 24.037130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943954, 32.740482, 24.344837>,  <40.959362, 32.032696, 24.197994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943954, 32.740482, 24.344837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554688, 32.652863, 24.373003>,  <40.321125, 32.600292, 24.389902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554688, 32.652863, 24.373003>,  <40.943954, 32.740482, 24.344837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554688, 32.652863, 24.373003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119633, 0.743127, 0.658370,
		-0.196542, 0.632282, -0.749394,
		-0.973170, -0.219049, 0.070414,
		40.262737, 32.587147, 24.394127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565052, 33.348202, 24.289093>,  <40.943954, 32.740482, 24.344837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565052, 33.348202, 24.289093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291080, 33.109009, 24.455599>,  <40.126698, 32.965492, 24.555502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291080, 33.109009, 24.455599>,  <40.565052, 33.348202, 24.289093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291080, 33.109009, 24.455599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328278, 0.763322, 0.556394,
		-0.650461, 0.244442, -0.719130,
		-0.684933, -0.597987, 0.416266,
		40.085602, 32.929611, 24.580479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960705, 33.771141, 24.432301>,  <40.565052, 33.348202, 24.289093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960705, 33.771141, 24.432301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906078, 33.447506, 24.660940>,  <39.873302, 33.253326, 24.798124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906078, 33.447506, 24.660940>,  <39.960705, 33.771141, 24.432301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906078, 33.447506, 24.660940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344840, 0.579744, 0.738229,
		-0.928674, -0.096295, -0.358179,
		-0.136564, -0.809088, 0.571600,
		39.865108, 33.204781, 24.832420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237907, 33.740738, 24.725937>,  <39.960705, 33.771141, 24.432301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237907, 33.740738, 24.725937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470005, 33.529259, 24.973740>,  <39.609264, 33.402370, 25.122421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470005, 33.529259, 24.973740>,  <39.237907, 33.740738, 24.725937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470005, 33.529259, 24.973740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145228, 0.681294, 0.717459,
		-0.801388, -0.506273, 0.318536,
		0.580247, -0.528703, 0.619506,
		39.644077, 33.370647, 25.159592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931019, 33.843552, 25.391434>,  <39.237907, 33.740738, 24.725937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931019, 33.843552, 25.391434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271564, 33.677727, 25.520000>,  <39.475891, 33.578232, 25.597141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271564, 33.677727, 25.520000>,  <38.931019, 33.843552, 25.391434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271564, 33.677727, 25.520000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001283, 0.614368, 0.789019,
		-0.524567, -0.671333, 0.523585,
		0.851368, -0.414565, 0.321416,
		39.526974, 33.553356, 25.616425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838406, 33.809364, 26.125114>,  <38.931019, 33.843552, 25.391434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838406, 33.809364, 26.125114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232914, 33.773384, 26.069727>,  <39.469620, 33.751797, 26.036495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232914, 33.773384, 26.069727>,  <38.838406, 33.809364, 26.125114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232914, 33.773384, 26.069727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163217, 0.404168, 0.900005,
		-0.024990, -0.910251, 0.413302,
		0.986274, -0.089950, -0.138469,
		39.528797, 33.746399, 26.028187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207283, 33.348877, 26.591143>,  <38.838406, 33.809364, 26.125114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207283, 33.348877, 26.591143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475849, 33.623081, 26.478516>,  <39.636990, 33.787601, 26.410938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475849, 33.623081, 26.478516>,  <39.207283, 33.348877, 26.591143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475849, 33.623081, 26.478516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073405, 0.316558, 0.945728,
		0.737438, -0.655644, 0.162222,
		0.671414, 0.685508, -0.281570,
		39.677273, 33.828735, 26.394045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587898, 33.377277, 27.153952>,  <39.207283, 33.348877, 26.591143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587898, 33.377277, 27.153952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658184, 33.721962, 26.963551>,  <39.700356, 33.928772, 26.849310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658184, 33.721962, 26.963551>,  <39.587898, 33.377277, 27.153952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658184, 33.721962, 26.963551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064936, 0.472327, 0.879028,
		0.982296, -0.185371, 0.027041,
		0.175718, 0.861710, -0.476003,
		39.710899, 33.980476, 26.820749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213497, 33.562611, 27.428167>,  <39.587898, 33.377277, 27.153952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213497, 33.562611, 27.428167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059078, 33.889118, 27.256275>,  <39.966427, 34.085022, 27.153139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059078, 33.889118, 27.256275>,  <40.213497, 33.562611, 27.428167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059078, 33.889118, 27.256275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007035, 0.468434, 0.883470,
		0.922451, 0.338040, -0.186581,
		-0.386049, 0.816271, -0.429730,
		39.943264, 34.133999, 27.127356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657364, 34.138641, 27.628401>,  <40.213497, 33.562611, 27.428167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657364, 34.138641, 27.628401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313080, 34.326157, 27.548988>,  <40.106510, 34.438667, 27.501341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313080, 34.326157, 27.548988>,  <40.657364, 34.138641, 27.628401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313080, 34.326157, 27.548988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054881, 0.473137, 0.879278,
		0.506131, 0.745907, -0.432961,
		-0.860709, 0.468791, -0.198533,
		40.054867, 34.466793, 27.489428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688206, 34.810169, 27.981421>,  <40.657364, 34.138641, 27.628401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688206, 34.810169, 27.981421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301361, 34.755962, 27.895330>,  <40.069252, 34.723438, 27.843676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301361, 34.755962, 27.895330>,  <40.688206, 34.810169, 27.981421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301361, 34.755962, 27.895330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254168, 0.484138, 0.837263,
		-0.009267, 0.864434, -0.502662,
		-0.967116, -0.135520, -0.215225,
		40.011227, 34.715305, 27.830763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396214, 35.495995, 28.126593>,  <40.688206, 34.810169, 27.981421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396214, 35.495995, 28.126593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075577, 35.256855, 28.124548>,  <39.883194, 35.113369, 28.123322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075577, 35.256855, 28.124548>,  <40.396214, 35.495995, 28.126593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075577, 35.256855, 28.124548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357671, 0.472671, 0.805391,
		-0.479088, 0.647422, -0.592722,
		-0.801590, -0.597852, -0.005113,
		39.835098, 35.077499, 28.123014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796814, 35.883446, 28.202295>,  <40.396214, 35.495995, 28.126593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796814, 35.883446, 28.202295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690189, 35.514034, 28.312601>,  <39.626217, 35.292389, 28.378784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690189, 35.514034, 28.312601>,  <39.796814, 35.883446, 28.202295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690189, 35.514034, 28.312601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306929, 0.352558, 0.884023,
		-0.913642, 0.151004, -0.377435,
		-0.266558, -0.923526, 0.275764,
		39.610222, 35.236977, 28.395330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204960, 35.948597, 28.525227>,  <39.796814, 35.883446, 28.202295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204960, 35.948597, 28.525227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363281, 35.612331, 28.673073>,  <39.458275, 35.410572, 28.761780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363281, 35.612331, 28.673073>,  <39.204960, 35.948597, 28.525227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363281, 35.612331, 28.673073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261702, 0.282538, 0.922867,
		-0.880255, -0.462006, -0.108174,
		0.395807, -0.840668, 0.369613,
		39.482025, 35.360130, 28.783957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718365, 35.668484, 28.987322>,  <39.204960, 35.948597, 28.525227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718365, 35.668484, 28.987322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075291, 35.518379, 29.087687>,  <39.289444, 35.428314, 29.147905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075291, 35.518379, 29.087687>,  <38.718365, 35.668484, 28.987322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075291, 35.518379, 29.087687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147679, 0.282575, 0.947809,
		-0.426580, -0.882796, 0.196727,
		0.892312, -0.375264, 0.250911,
		39.342983, 35.405800, 29.162960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657520, 35.284199, 29.715294>,  <38.718365, 35.668484, 28.987322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657520, 35.284199, 29.715294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053719, 35.314003, 29.669050>,  <39.291439, 35.331886, 29.641304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053719, 35.314003, 29.669050>,  <38.657520, 35.284199, 29.715294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053719, 35.314003, 29.669050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121420, -0.078856, 0.989464,
		0.064614, -0.994097, -0.087154,
		0.990496, 0.074516, -0.115608,
		39.350868, 35.336357, 29.634367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967014, 34.812111, 30.135340>,  <38.657520, 35.284199, 29.715294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967014, 34.812111, 30.135340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223595, 35.112419, 30.072233>,  <39.377541, 35.292603, 30.034369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223595, 35.112419, 30.072233>,  <38.967014, 34.812111, 30.135340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223595, 35.112419, 30.072233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156403, 0.073354, 0.984966,
		0.751056, -0.656478, -0.070370,
		0.641446, 0.750770, -0.157768,
		39.416027, 35.337650, 30.024902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447693, 34.597618, 30.602873>,  <38.967014, 34.812111, 30.135340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447693, 34.597618, 30.602873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536396, 34.973663, 30.499334>,  <39.589619, 35.199291, 30.437210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536396, 34.973663, 30.499334>,  <39.447693, 34.597618, 30.602873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536396, 34.973663, 30.499334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245836, 0.202980, 0.947821,
		0.943603, -0.273825, -0.186101,
		0.221762, 0.940116, -0.258849,
		39.602924, 35.255699, 30.421680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132507, 34.781025, 30.872868>,  <39.447693, 34.597618, 30.602873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132507, 34.781025, 30.872868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945950, 35.132267, 30.830137>,  <39.834015, 35.343010, 30.804499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945950, 35.132267, 30.830137>,  <40.132507, 34.781025, 30.872868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945950, 35.132267, 30.830137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140662, 0.192847, 0.971094,
		0.873322, 0.437886, -0.213459,
		-0.466394, 0.878103, -0.106824,
		39.806030, 35.395699, 30.798090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494221, 35.275238, 31.191185>,  <40.132507, 34.781025, 30.872868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494221, 35.275238, 31.191185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135597, 35.452087, 31.180510>,  <39.920422, 35.558197, 31.174105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135597, 35.452087, 31.180510>,  <40.494221, 35.275238, 31.191185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135597, 35.452087, 31.180510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046351, 0.153578, 0.987049,
		0.440494, 0.883710, -0.158185,
		-0.896558, 0.442121, -0.026689,
		39.866631, 35.584724, 31.172503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552658, 35.888931, 31.662958>,  <40.494221, 35.275238, 31.191185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552658, 35.888931, 31.662958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160007, 35.818783, 31.632885>,  <39.924416, 35.776691, 31.614841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160007, 35.818783, 31.632885>,  <40.552658, 35.888931, 31.662958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160007, 35.818783, 31.632885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114394, 0.225542, 0.967494,
		-0.152718, 0.958318, -0.241460,
		-0.981627, -0.175376, -0.075182,
		39.865520, 35.766171, 31.610331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250698, 36.486252, 31.944040>,  <40.552658, 35.888931, 31.662958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250698, 36.486252, 31.944040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944897, 36.228943, 31.960703>,  <39.761417, 36.074558, 31.970699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944897, 36.228943, 31.960703>,  <40.250698, 36.486252, 31.944040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944897, 36.228943, 31.960703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221777, 0.323144, 0.919996,
		-0.605272, 0.694100, -0.389707,
		-0.764501, -0.643276, 0.041655,
		39.715546, 36.035961, 31.973200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776390, 36.866562, 32.318520>,  <40.250698, 36.486252, 31.944040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776390, 36.866562, 32.318520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647991, 36.488827, 32.347347>,  <39.570953, 36.262188, 32.364643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647991, 36.488827, 32.347347>,  <39.776390, 36.866562, 32.318520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647991, 36.488827, 32.347347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192653, 0.139611, 0.971285,
		-0.927279, 0.297894, -0.226743,
		-0.320995, -0.944335, 0.072069,
		39.551693, 36.205524, 32.368969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170376, 36.848320, 32.707134>,  <39.776390, 36.866562, 32.318520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170376, 36.848320, 32.707134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317684, 36.478878, 32.749695>,  <39.406071, 36.257214, 32.775230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317684, 36.478878, 32.749695>,  <39.170376, 36.848320, 32.707134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317684, 36.478878, 32.749695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205333, 0.030818, 0.978207,
		-0.906759, -0.382097, -0.178298,
		0.368275, -0.923608, 0.106401,
		39.428165, 36.201794, 32.781616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640217, 36.473122, 33.066219>,  <39.170376, 36.848320, 32.707134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640217, 36.473122, 33.066219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966805, 36.246677, 33.111641>,  <39.162758, 36.110809, 33.138893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966805, 36.246677, 33.111641>,  <38.640217, 36.473122, 33.066219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966805, 36.246677, 33.111641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235568, -0.147046, 0.960669,
		-0.527152, -0.811104, -0.253417,
		0.816467, -0.566116, 0.113555,
		39.211746, 36.076843, 33.145706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439316, 35.881580, 33.449074>,  <38.640217, 36.473122, 33.066219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439316, 35.881580, 33.449074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835297, 35.911407, 33.497128>,  <39.072884, 35.929306, 33.525959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835297, 35.911407, 33.497128>,  <38.439316, 35.881580, 33.449074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835297, 35.911407, 33.497128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114124, -0.080269, 0.990218,
		0.083485, -0.993980, -0.070952,
		0.989952, 0.074571, 0.120138,
		39.132282, 35.933777, 33.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673328, 35.314201, 33.730415>,  <38.439316, 35.881580, 33.449074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673328, 35.314201, 33.730415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920315, 35.616425, 33.817932>,  <39.068508, 35.797756, 33.870441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920315, 35.616425, 33.817932>,  <38.673328, 35.314201, 33.730415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920315, 35.616425, 33.817932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198514, -0.119459, 0.972791,
		0.761133, -0.644101, 0.076226,
		0.617469, 0.755555, 0.218787,
		39.105556, 35.843090, 33.883568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672993, 35.272861, 34.421375>,  <38.673328, 35.314201, 33.730415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672993, 35.272861, 34.421375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872486, 35.614532, 34.362522>,  <38.992184, 35.819534, 34.327209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872486, 35.614532, 34.362522>,  <38.672993, 35.272861, 34.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872486, 35.614532, 34.362522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005747, 0.173005, 0.984904,
		0.866734, -0.490363, 0.091193,
		0.498737, 0.854174, -0.147132,
		39.022106, 35.870785, 34.318382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235542, 35.302475, 34.886509>,  <38.672993, 35.272861, 34.421375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235542, 35.302475, 34.886509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207638, 35.691093, 34.795975>,  <39.190895, 35.924267, 34.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207638, 35.691093, 34.795975>,  <39.235542, 35.302475, 34.886509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207638, 35.691093, 34.795975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178010, 0.235368, 0.955466,
		0.981552, 0.026369, -0.189366,
		-0.069766, 0.971549, -0.226332,
		39.186707, 35.982559, 34.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771759, 35.583256, 35.218281>,  <39.235542, 35.302475, 34.886509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771759, 35.583256, 35.218281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523605, 35.891094, 35.157818>,  <39.374714, 36.075798, 35.121540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523605, 35.891094, 35.157818>,  <39.771759, 35.583256, 35.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523605, 35.891094, 35.157818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091917, 0.262744, 0.960478,
		0.778891, 0.581974, -0.233741,
		-0.620387, 0.769592, -0.151155,
		39.337490, 36.121971, 35.112473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055065, 36.116302, 35.454105>,  <39.771759, 35.583256, 35.218281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055065, 36.116302, 35.454105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676651, 36.245548, 35.444130>,  <39.449604, 36.323093, 35.438145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676651, 36.245548, 35.444130>,  <40.055065, 36.116302, 35.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676651, 36.245548, 35.444130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096441, 0.354169, 0.930195,
		0.309389, 0.877590, -0.366216,
		-0.946032, 0.323110, -0.024941,
		39.392841, 36.342480, 35.436649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997726, 36.859501, 35.814774>,  <40.055065, 36.116302, 35.454105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997726, 36.859501, 35.814774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630844, 36.700680, 35.801628>,  <39.410713, 36.605389, 35.793739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630844, 36.700680, 35.801628>,  <39.997726, 36.859501, 35.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630844, 36.700680, 35.801628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201349, 0.390773, 0.898195,
		-0.343786, 0.830449, -0.438366,
		-0.917207, -0.397052, -0.032868,
		39.355682, 36.581566, 35.791767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604733, 37.386196, 36.167503>,  <39.997726, 36.859501, 35.814774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604733, 37.386196, 36.167503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409847, 37.037010, 36.158070>,  <39.292915, 36.827499, 36.152409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409847, 37.037010, 36.158070>,  <39.604733, 37.386196, 36.167503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409847, 37.037010, 36.158070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326999, 0.157331, 0.931836,
		-0.809748, 0.461717, -0.362112,
		-0.487216, -0.872963, -0.023582,
		39.263683, 36.775120, 36.150993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962563, 37.499931, 36.464874>,  <39.604733, 37.386196, 36.167503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962563, 37.499931, 36.464874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041992, 37.108231, 36.481022>,  <39.089649, 36.873211, 36.490711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041992, 37.108231, 36.481022>,  <38.962563, 37.499931, 36.464874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041992, 37.108231, 36.481022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138560, 0.012726, 0.990272,
		-0.970242, -0.202236, -0.133158,
		0.198574, -0.979254, 0.040369,
		39.101566, 36.814453, 36.493134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470947, 37.250832, 36.847801>,  <38.962563, 37.499931, 36.464874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470947, 37.250832, 36.847801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746662, 36.962116, 36.872814>,  <38.912090, 36.788887, 36.887821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746662, 36.962116, 36.872814>,  <38.470947, 37.250832, 36.847801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746662, 36.962116, 36.872814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134890, -0.043049, 0.989925,
		-0.711821, -0.690777, -0.127034,
		0.689286, -0.721785, 0.062535,
		38.953449, 36.745583, 36.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206898, 36.708092, 37.297184>,  <38.470947, 37.250832, 36.847801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206898, 36.708092, 37.297184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604145, 36.666401, 37.318539>,  <38.842495, 36.641388, 37.331352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604145, 36.666401, 37.318539>,  <38.206898, 36.708092, 37.297184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604145, 36.666401, 37.318539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076691, -0.234330, 0.969127,
		-0.088496, -0.966554, -0.240711,
		0.993120, -0.104224, 0.053389,
		38.902081, 36.635132, 37.334557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377838, 36.262589, 37.857235>,  <38.206898, 36.708092, 37.297184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377838, 36.262589, 37.857235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751118, 36.397373, 37.807289>,  <38.975086, 36.478245, 37.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751118, 36.397373, 37.807289>,  <38.377838, 36.262589, 37.857235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751118, 36.397373, 37.807289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148373, -0.044825, 0.987915,
		0.327289, -0.940452, -0.091827,
		0.933203, 0.336958, -0.124866,
		39.031078, 36.498459, 37.769829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844551, 35.727203, 38.105759>,  <38.377838, 36.262589, 37.857235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844551, 35.727203, 38.105759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029427, 36.080814, 38.133663>,  <39.140354, 36.292980, 38.150406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029427, 36.080814, 38.133663>,  <38.844551, 35.727203, 38.105759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029427, 36.080814, 38.133663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294154, -0.227053, 0.928396,
		0.836572, -0.408576, -0.364984,
		0.462192, 0.884032, 0.069762,
		39.168083, 36.346024, 38.154591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424763, 35.521744, 38.411907>,  <38.844551, 35.727203, 38.105759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424763, 35.521744, 38.411907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447208, 35.917984, 38.461819>,  <39.460674, 36.155727, 38.491764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447208, 35.917984, 38.461819>,  <39.424763, 35.521744, 38.411907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447208, 35.917984, 38.461819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349565, -0.136554, 0.926907,
		0.935230, -0.008392, -0.353940,
		0.056111, 0.990597, 0.124776,
		39.464043, 36.215164, 38.499252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104290, 35.552540, 38.537643>,  <39.424763, 35.521744, 38.411907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104290, 35.552540, 38.537643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911621, 35.879089, 38.665092>,  <39.796021, 36.075020, 38.741562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911621, 35.879089, 38.665092>,  <40.104290, 35.552540, 38.537643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911621, 35.879089, 38.665092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425574, -0.099930, 0.899389,
		0.766080, 0.568809, -0.299295,
		-0.481672, 0.816376, 0.318625,
		39.767120, 36.124001, 38.760681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562607, 35.834988, 39.017170>,  <40.104290, 35.552540, 38.537643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562607, 35.834988, 39.017170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218376, 36.016884, 39.108932>,  <40.011837, 36.126022, 39.163990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218376, 36.016884, 39.108932>,  <40.562607, 35.834988, 39.017170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218376, 36.016884, 39.108932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242580, -0.030095, 0.969665,
		0.447851, 0.890115, -0.084412,
		-0.860573, 0.454742, 0.229402,
		39.960205, 36.153305, 39.177753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725502, 36.302292, 39.543198>,  <40.562607, 35.834988, 39.017170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725502, 36.302292, 39.543198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328747, 36.263412, 39.575985>,  <40.090694, 36.240086, 39.595657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328747, 36.263412, 39.575985>,  <40.725502, 36.302292, 39.543198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328747, 36.263412, 39.575985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083984, -0.016807, 0.996325,
		-0.095467, 0.995123, 0.024834,
		-0.991883, -0.097202, 0.081970,
		40.031181, 36.234253, 39.600574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465027, 36.827179, 39.876858>,  <40.725502, 36.302292, 39.543198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465027, 36.827179, 39.876858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220291, 36.516254, 39.935421>,  <40.073448, 36.329700, 39.970558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220291, 36.516254, 39.935421>,  <40.465027, 36.827179, 39.876858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220291, 36.516254, 39.935421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253308, -0.017210, 0.967233,
		-0.749324, 0.628877, 0.207430,
		-0.611841, -0.777314, 0.146404,
		40.036739, 36.283062, 39.979343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175819, 37.070225, 40.458157>,  <40.465027, 36.827179, 39.876858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175819, 37.070225, 40.458157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115646, 36.676243, 40.424118>,  <40.079544, 36.439854, 40.403694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115646, 36.676243, 40.424118>,  <40.175819, 37.070225, 40.458157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115646, 36.676243, 40.424118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368465, -0.135729, 0.919680,
		-0.917390, 0.106992, 0.383338,
		-0.150428, -0.984952, -0.085094,
		40.070518, 36.380756, 40.398590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742722, 36.901493, 40.991608>,  <40.175819, 37.070225, 40.458157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742722, 36.901493, 40.991608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942539, 36.574245, 40.877670>,  <40.062428, 36.377895, 40.809307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942539, 36.574245, 40.877670>,  <39.742722, 36.901493, 40.991608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942539, 36.574245, 40.877670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170120, -0.229767, 0.958262,
		-0.849422, -0.527149, 0.024400,
		0.499541, -0.818120, -0.284848,
		40.092400, 36.328808, 40.792217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772831, 36.551456, 41.533951>,  <39.742722, 36.901493, 40.991608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772831, 36.551456, 41.533951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030556, 36.313644, 41.341534>,  <40.185192, 36.170959, 41.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030556, 36.313644, 41.341534>,  <39.772831, 36.551456, 41.533951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030556, 36.313644, 41.341534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451382, -0.212122, 0.866751,
		-0.617348, -0.775590, 0.131687,
		0.644310, -0.594528, -0.481041,
		40.223850, 36.135284, 41.197220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858376, 35.814407, 41.904949>,  <39.772831, 36.551456, 41.533951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858376, 35.814407, 41.904949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167404, 35.871117, 41.657387>,  <40.352821, 35.905144, 41.508850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167404, 35.871117, 41.657387>,  <39.858376, 35.814407, 41.904949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167404, 35.871117, 41.657387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633417, -0.104774, 0.766685,
		0.043850, -0.984339, -0.170746,
		0.772567, 0.141773, -0.618902,
		40.399174, 35.913647, 41.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283573, 35.286354, 42.108917>,  <39.858376, 35.814407, 41.904949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283573, 35.286354, 42.108917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551132, 35.523220, 41.929173>,  <40.711666, 35.665340, 41.821327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551132, 35.523220, 41.929173>,  <40.283573, 35.286354, 42.108917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551132, 35.523220, 41.929173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693301, -0.278883, 0.664498,
		0.268171, -0.756021, -0.597090,
		0.668893, 0.592162, -0.449362,
		40.751801, 35.700871, 41.794365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880234, 34.896690, 41.745579>,  <40.283573, 35.286354, 42.108917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880234, 34.896690, 41.745579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991474, 35.258602, 41.874596>,  <41.058220, 35.475750, 41.952007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991474, 35.258602, 41.874596>,  <40.880234, 34.896690, 41.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991474, 35.258602, 41.874596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661594, -0.423866, 0.618571,
		0.696386, 0.041367, -0.716475,
		0.278100, 0.904780, 0.322543,
		41.074905, 35.530037, 41.971359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447861, 34.715694, 42.213020>,  <40.880234, 34.896690, 41.745579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447861, 34.715694, 42.213020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451759, 35.109753, 42.281593>,  <41.454098, 35.346188, 42.322739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451759, 35.109753, 42.281593>,  <41.447861, 34.715694, 42.213020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451759, 35.109753, 42.281593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637422, -0.138216, 0.758017,
		0.770453, 0.101889, -0.629302,
		0.009746, 0.985147, 0.171436,
		41.454681, 35.405296, 42.333023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144855, 34.916107, 42.178928>,  <41.447861, 34.715694, 42.213020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144855, 34.916107, 42.178928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913330, 35.135704, 42.420120>,  <41.774414, 35.267464, 42.564835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913330, 35.135704, 42.420120>,  <42.144855, 34.916107, 42.178928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913330, 35.135704, 42.420120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637569, -0.156338, 0.754364,
		0.508408, 0.821076, -0.259530,
		-0.578816, 0.548993, 0.602976,
		41.739685, 35.300404, 42.601013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651047, 35.149857, 42.700890>,  <42.144855, 34.916107, 42.178928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651047, 35.149857, 42.700890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284454, 35.204185, 42.851418>,  <42.064499, 35.236782, 42.941734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284454, 35.204185, 42.851418>,  <42.651047, 35.149857, 42.700890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284454, 35.204185, 42.851418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323127, -0.303347, 0.896420,
		0.235908, 0.943151, 0.234124,
		-0.916480, 0.135821, 0.376319,
		42.009510, 35.244930, 42.964314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737514, 35.442375, 43.367603>,  <42.651047, 35.149857, 42.700890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737514, 35.442375, 43.367603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377483, 35.268177, 43.361961>,  <42.161465, 35.163658, 43.358574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377483, 35.268177, 43.361961>,  <42.737514, 35.442375, 43.367603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377483, 35.268177, 43.361961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208841, -0.459597, 0.863224,
		-0.382410, 0.774027, 0.504624,
		-0.900082, -0.435491, -0.014106,
		42.107460, 35.137531, 43.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509056, 35.444180, 44.115055>,  <42.737514, 35.442375, 43.367603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509056, 35.444180, 44.115055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327400, 35.165344, 43.893124>,  <42.218407, 34.998043, 43.759964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327400, 35.165344, 43.893124>,  <42.509056, 35.444180, 44.115055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327400, 35.165344, 43.893124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076409, -0.650928, 0.755285,
		-0.887650, 0.300609, 0.348873,
		-0.454136, -0.697085, -0.554827,
		42.191158, 34.956219, 43.726677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786312, 35.172604, 44.387115>,  <42.509056, 35.444180, 44.115055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786312, 35.172604, 44.387115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033539, 34.918613, 44.201729>,  <42.181873, 34.766220, 44.090496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033539, 34.918613, 44.201729>,  <41.786312, 35.172604, 44.387115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033539, 34.918613, 44.201729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062741, -0.627523, 0.776066,
		-0.783618, -0.450582, -0.427690,
		0.618066, -0.634973, -0.463469,
		42.218960, 34.728123, 44.062687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353062, 34.648899, 44.381165>,  <41.786312, 35.172604, 44.387115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353062, 34.648899, 44.381165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743507, 34.563068, 44.367573>,  <41.977776, 34.511570, 44.359417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743507, 34.563068, 44.367573>,  <41.353062, 34.648899, 44.381165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743507, 34.563068, 44.367573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067815, -0.449521, 0.890692,
		-0.206398, -0.867114, -0.453336,
		0.976115, -0.214580, -0.033977,
		42.036343, 34.498695, 44.357380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402832, 33.955181, 44.345173>,  <41.353062, 34.648899, 44.381165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402832, 33.955181, 44.345173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727230, 34.114704, 44.516403>,  <41.921867, 34.210419, 44.619141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727230, 34.114704, 44.516403>,  <41.402832, 33.955181, 44.345173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727230, 34.114704, 44.516403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125281, -0.596329, 0.792904,
		0.571485, -0.696669, -0.433656,
		0.810993, 0.398803, 0.428072,
		41.970528, 34.234344, 44.644825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750355, 34.166870, 43.776772>,  <41.402832, 33.955181, 44.345173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750355, 34.166870, 43.776772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428745, 33.946114, 43.865288>,  <41.235779, 33.813660, 43.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428745, 33.946114, 43.865288>,  <41.750355, 34.166870, 43.776772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428745, 33.946114, 43.865288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593902, -0.763397, 0.253981,
		0.028761, 0.335629, 0.941555,
		-0.804023, -0.551887, 0.221286,
		41.187538, 33.780548, 43.931675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777393, 33.888107, 43.096649>,  <41.750355, 34.166870, 43.776772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777393, 33.888107, 43.096649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869450, 34.226501, 43.289043>,  <41.924683, 34.429539, 43.404480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869450, 34.226501, 43.289043>,  <41.777393, 33.888107, 43.096649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869450, 34.226501, 43.289043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024590, 0.489037, -0.871917,
		-0.972846, 0.212494, 0.091746,
		0.230144, 0.845984, 0.480983,
		41.938492, 34.480297, 43.433338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233620, 34.151630, 42.868740>,  <41.777393, 33.888107, 43.096649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233620, 34.151630, 42.868740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518379, 34.418911, 42.955185>,  <41.689236, 34.579281, 43.007050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518379, 34.418911, 42.955185>,  <41.233620, 34.151630, 42.868740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518379, 34.418911, 42.955185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116153, 0.415517, -0.902139,
		-0.692608, 0.617132, 0.373420,
		0.711901, 0.668202, 0.216109,
		41.731949, 34.619373, 43.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896706, 34.718594, 43.304077>,  <41.233620, 34.151630, 42.868740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896706, 34.718594, 43.304077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274513, 34.847233, 43.330811>,  <41.501198, 34.924416, 43.346851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274513, 34.847233, 43.330811>,  <40.896706, 34.718594, 43.304077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274513, 34.847233, 43.330811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203163, 0.731855, -0.650472,
		-0.258099, 0.600803, 0.756585,
		0.944516, 0.321596, 0.066830,
		41.557869, 34.943710, 43.350861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858665, 35.480980, 43.550434>,  <40.896706, 34.718594, 43.304077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858665, 35.480980, 43.550434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210445, 35.414364, 43.372070>,  <41.421513, 35.374393, 43.265053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210445, 35.414364, 43.372070>,  <40.858665, 35.480980, 43.550434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210445, 35.414364, 43.372070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252616, 0.630690, -0.733768,
		0.403433, 0.757955, 0.512588,
		0.879447, -0.166538, -0.445912,
		41.474281, 35.364403, 43.238297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107422, 36.154396, 43.320431>,  <40.858665, 35.480980, 43.550434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107422, 36.154396, 43.320431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296700, 35.885323, 43.092896>,  <41.410267, 35.723877, 42.956375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296700, 35.885323, 43.092896>,  <41.107422, 36.154396, 43.320431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296700, 35.885323, 43.092896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250121, 0.516549, -0.818912,
		0.844705, 0.529783, 0.076175,
		0.473194, -0.672686, -0.568842,
		41.438656, 35.683517, 42.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383804, 36.560143, 42.784676>,  <41.107422, 36.154396, 43.320431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383804, 36.560143, 42.784676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392948, 36.184093, 42.648651>,  <41.398434, 35.958462, 42.567036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392948, 36.184093, 42.648651>,  <41.383804, 36.560143, 42.784676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392948, 36.184093, 42.648651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162178, 0.332153, -0.929179,
		0.986497, 0.076395, -0.144873,
		0.022864, -0.940127, -0.340057,
		41.399807, 35.902054, 42.546635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615162, 36.654163, 42.155575>,  <41.383804, 36.560143, 42.784676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615162, 36.654163, 42.155575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440300, 36.300415, 42.090107>,  <41.335384, 36.088165, 42.050827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440300, 36.300415, 42.090107>,  <41.615162, 36.654163, 42.155575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440300, 36.300415, 42.090107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376987, 0.345392, -0.859410,
		0.816566, -0.313992, -0.484385,
		-0.437150, -0.884372, -0.163665,
		41.309155, 36.035103, 42.041008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640182, 36.559242, 41.395767>,  <41.615162, 36.654163, 42.155575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640182, 36.559242, 41.395767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356411, 36.293514, 41.489910>,  <41.186150, 36.134079, 41.546394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356411, 36.293514, 41.489910>,  <41.640182, 36.559242, 41.395767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356411, 36.293514, 41.489910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463461, 0.188152, -0.865911,
		0.530961, -0.723378, -0.441367,
		-0.709425, -0.664321, 0.235356,
		41.143581, 36.094219, 41.560516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488331, 36.325760, 40.718647>,  <41.640182, 36.559242, 41.395767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488331, 36.325760, 40.718647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208424, 36.184536, 40.967056>,  <41.040478, 36.099800, 41.116100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208424, 36.184536, 40.967056>,  <41.488331, 36.325760, 40.718647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208424, 36.184536, 40.967056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653656, -0.034259, -0.756016,
		0.288196, -0.934972, -0.206808,
		-0.699769, -0.353062, 0.621023,
		40.998493, 36.078617, 41.153362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200962, 35.699482, 40.438015>,  <41.488331, 36.325760, 40.718647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200962, 35.699482, 40.438015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905827, 35.805382, 40.686371>,  <40.728745, 35.868923, 40.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905827, 35.805382, 40.686371>,  <41.200962, 35.699482, 40.438015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905827, 35.805382, 40.686371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658469, -0.080104, -0.748333,
		-0.148390, -0.960983, 0.233437,
		-0.737834, 0.264756, 0.620890,
		40.684475, 35.884808, 40.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645039, 35.163265, 40.434219>,  <41.200962, 35.699482, 40.438015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645039, 35.163265, 40.434219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480457, 35.504524, 40.562500>,  <40.381710, 35.709278, 40.639469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480457, 35.504524, 40.562500>,  <40.645039, 35.163265, 40.434219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480457, 35.504524, 40.562500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672866, -0.046989, -0.738271,
		-0.614782, -0.519554, 0.593386,
		-0.411454, 0.853145, 0.320702,
		40.357021, 35.760468, 40.658710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959412, 35.107052, 40.439709>,  <40.645039, 35.163265, 40.434219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959412, 35.107052, 40.439709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986492, 35.506104, 40.434818>,  <40.002739, 35.745537, 40.431885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986492, 35.506104, 40.434818>,  <39.959412, 35.107052, 40.439709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986492, 35.506104, 40.434818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613093, 0.031929, -0.789366,
		-0.787105, 0.060935, 0.613802,
		0.067697, 0.997631, -0.012227,
		40.006802, 35.805393, 40.431149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312393, 35.303997, 40.322975>,  <39.959412, 35.107052, 40.439709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312393, 35.303997, 40.322975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518532, 35.624077, 40.200272>,  <39.642216, 35.816124, 40.126652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518532, 35.624077, 40.200272>,  <39.312393, 35.303997, 40.322975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518532, 35.624077, 40.200272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510830, -0.000567, -0.859681,
		-0.688088, 0.599737, 0.408473,
		0.515351, 0.800197, -0.306754,
		39.673138, 35.864136, 40.108246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789101, 35.841946, 40.204071>,  <39.312393, 35.303997, 40.322975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789101, 35.841946, 40.204071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121998, 35.904026, 39.991177>,  <39.321735, 35.941273, 39.863438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121998, 35.904026, 39.991177>,  <38.789101, 35.841946, 40.204071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121998, 35.904026, 39.991177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549290, 0.100736, -0.829538,
		-0.075130, 0.982734, 0.169088,
		0.832247, 0.155201, -0.532238,
		39.371674, 35.950588, 39.831505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721893, 36.085995, 39.523762>,  <38.789101, 35.841946, 40.204071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721893, 36.085995, 39.523762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115501, 36.153095, 39.547646>,  <39.351665, 36.193356, 39.561977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115501, 36.153095, 39.547646>,  <38.721893, 36.085995, 39.523762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115501, 36.153095, 39.547646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014141, 0.407907, -0.912914,
		-0.177498, 0.897481, 0.403761,
		0.984020, 0.167750, 0.059712,
		39.410706, 36.203419, 39.565559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859684, 36.762741, 39.439205>,  <38.721893, 36.085995, 39.523762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859684, 36.762741, 39.439205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199177, 36.569592, 39.352955>,  <39.402870, 36.453701, 39.301205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199177, 36.569592, 39.352955>,  <38.859684, 36.762741, 39.439205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199177, 36.569592, 39.352955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042837, 0.343621, -0.938131,
		0.527091, 0.805455, 0.270956,
		0.848728, -0.482874, -0.215623,
		39.453796, 36.424728, 39.288269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312176, 37.250225, 39.313526>,  <38.859684, 36.762741, 39.439205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312176, 37.250225, 39.313526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404327, 36.907276, 39.129425>,  <39.459618, 36.701508, 39.018963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404327, 36.907276, 39.129425>,  <39.312176, 37.250225, 39.313526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404327, 36.907276, 39.129425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003794, 0.472184, -0.881491,
		0.973094, 0.204820, 0.105527,
		0.230376, -0.857374, -0.460257,
		39.473438, 36.650063, 38.991348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584774, 37.514366, 38.710850>,  <39.312176, 37.250225, 39.313526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584774, 37.514366, 38.710850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548668, 37.122551, 38.638897>,  <39.527004, 36.887463, 38.595726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548668, 37.122551, 38.638897>,  <39.584774, 37.514366, 38.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548668, 37.122551, 38.638897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043611, 0.184332, -0.981896,
		0.994962, -0.080787, -0.059358,
		-0.090266, -0.979538, -0.179880,
		39.521587, 36.828690, 38.584934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896587, 37.431259, 38.048317>,  <39.584774, 37.514366, 38.710850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896587, 37.431259, 38.048317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724506, 37.074150, 38.101803>,  <39.621258, 36.859886, 38.133892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724506, 37.074150, 38.101803>,  <39.896587, 37.431259, 38.048317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724506, 37.074150, 38.101803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142130, -0.079284, -0.986668,
		0.891472, -0.443475, -0.092781,
		-0.430206, -0.892774, 0.133710,
		39.595444, 36.806316, 38.141914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206356, 36.934288, 37.585346>,  <39.896587, 37.431259, 38.048317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206356, 36.934288, 37.585346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832336, 36.806610, 37.647045>,  <39.607925, 36.730003, 37.684067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832336, 36.806610, 37.647045>,  <40.206356, 36.934288, 37.585346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832336, 36.806610, 37.647045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104723, -0.166993, -0.980381,
		0.338688, -0.932861, 0.122721,
		-0.935053, -0.319192, 0.154250,
		39.551819, 36.710854, 37.693321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177464, 36.272182, 37.325390>,  <40.206356, 36.934288, 37.585346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177464, 36.272182, 37.325390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803352, 36.413738, 37.327309>,  <39.578888, 36.498672, 37.328461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803352, 36.413738, 37.327309>,  <40.177464, 36.272182, 37.325390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803352, 36.413738, 37.327309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097325, -0.244147, -0.964842,
		-0.340281, -0.902858, 0.262786,
		-0.935274, 0.353893, 0.004792,
		39.522770, 36.519905, 37.328747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849686, 35.801437, 36.891315>,  <40.177464, 36.272182, 37.325390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849686, 35.801437, 36.891315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574005, 36.090755, 36.908501>,  <39.408596, 36.264347, 36.918812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574005, 36.090755, 36.908501>,  <39.849686, 35.801437, 36.891315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574005, 36.090755, 36.908501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060992, 0.001175, -0.998138,
		-0.722001, -0.690536, 0.043305,
		-0.689199, 0.723297, 0.042965,
		39.367245, 36.307743, 36.921391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636841, 35.651691, 36.868771>,  <39.849686, 35.801437, 36.891315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636841, 35.651691, 36.868771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539898, 35.654533, 36.480705>,  <40.481731, 35.656239, 36.247868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539898, 35.654533, 36.480705>,  <40.636841, 35.651691, 36.868771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539898, 35.654533, 36.480705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967700, 0.073314, -0.241208,
		0.069414, -0.997284, -0.024639,
		-0.242359, 0.007100, -0.970161,
		40.467190, 35.656666, 36.189655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940163, 35.017338, 36.652317>,  <40.636841, 35.651691, 36.868771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940163, 35.017338, 36.652317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874908, 35.290833, 36.367809>,  <40.835758, 35.454929, 36.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874908, 35.290833, 36.367809>,  <40.940163, 35.017338, 36.652317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874908, 35.290833, 36.367809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964348, -0.041761, -0.261323,
		-0.208378, -0.728537, -0.652544,
		-0.163133, 0.683733, -0.711264,
		40.825970, 35.495953, 36.154430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210682, 34.822330, 36.062576>,  <40.940163, 35.017338, 36.652317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210682, 34.822330, 36.062576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226051, 35.222019, 36.066235>,  <41.235275, 35.461830, 36.068432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226051, 35.222019, 36.066235>,  <41.210682, 34.822330, 36.062576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226051, 35.222019, 36.066235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953419, -0.033923, -0.299736,
		-0.299192, 0.020240, -0.953978,
		0.038428, 0.999220, 0.009148,
		41.237579, 35.521786, 36.068977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378326, 35.050823, 35.408474>,  <41.210682, 34.822330, 36.062576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378326, 35.050823, 35.408474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510796, 35.309078, 35.683712>,  <41.590275, 35.464031, 35.848854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510796, 35.309078, 35.683712>,  <41.378326, 35.050823, 35.408474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510796, 35.309078, 35.683712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937217, -0.140589, -0.319153,
		-0.109317, 0.750593, -0.651659,
		0.331171, 0.645635, 0.688100,
		41.610146, 35.502769, 35.890141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714378, 35.611378, 35.109844>,  <41.378326, 35.050823, 35.408474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714378, 35.611378, 35.109844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875435, 35.539433, 35.468849>,  <41.972069, 35.496265, 35.684254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875435, 35.539433, 35.468849>,  <41.714378, 35.611378, 35.109844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875435, 35.539433, 35.468849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914789, 0.044460, -0.401478,
		0.032309, 0.982686, 0.182440,
		0.402638, -0.179865, 0.897514,
		41.996227, 35.485474, 35.738102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843796, 36.093128, 35.651054>,  <41.714378, 35.611378, 35.109844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843796, 36.093128, 35.651054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130596, 35.821705, 35.587234>,  <42.302677, 35.658852, 35.548943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130596, 35.821705, 35.587234>,  <41.843796, 36.093128, 35.651054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130596, 35.821705, 35.587234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553159, 0.693155, -0.462117,
		0.424168, 0.243084, 0.872348,
		0.717005, -0.678562, -0.159550,
		42.345699, 35.618137, 35.539368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439468, 36.332634, 35.931664>,  <41.843796, 36.093128, 35.651054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439468, 36.332634, 35.931664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498936, 36.085026, 35.623192>,  <42.534615, 35.936462, 35.438110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498936, 36.085026, 35.623192>,  <42.439468, 36.332634, 35.931664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498936, 36.085026, 35.623192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486375, 0.724770, -0.488004,
		0.861010, -0.302530, 0.408825,
		0.148668, -0.619019, -0.771177,
		42.543537, 35.899319, 35.391838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152664, 36.229881, 35.681343>,  <42.439468, 36.332634, 35.931664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152664, 36.229881, 35.681343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905350, 36.186512, 35.369968>,  <42.756962, 36.160492, 35.183144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905350, 36.186512, 35.369968>,  <43.152664, 36.229881, 35.681343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905350, 36.186512, 35.369968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530483, 0.673236, -0.515113,
		0.579920, -0.731436, -0.358739,
		-0.618288, -0.108420, -0.778437,
		42.719864, 36.153984, 35.136436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594124, 36.165634, 35.099373>,  <43.152664, 36.229881, 35.681343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594124, 36.165634, 35.099373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245228, 36.333427, 34.998798>,  <43.035889, 36.434105, 34.938454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245228, 36.333427, 34.998798>,  <43.594124, 36.165634, 35.099373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245228, 36.333427, 34.998798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488765, 0.765883, -0.417771,
		0.017322, -0.487292, -0.873067,
		-0.872244, 0.419488, -0.251438,
		42.983555, 36.459274, 34.923367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780128, 36.771404, 35.567863>,  <43.594124, 36.165634, 35.099373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780128, 36.771404, 35.567863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044289, 36.924885, 35.309669>,  <44.202785, 37.016975, 35.154755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044289, 36.924885, 35.309669>,  <43.780128, 36.771404, 35.567863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044289, 36.924885, 35.309669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748468, -0.267001, 0.607047,
		0.060583, -0.884014, -0.463519,
		0.660398, 0.383706, -0.645480,
		44.242409, 37.039997, 35.116024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354599, 36.256866, 35.452690>,  <43.780128, 36.771404, 35.567863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354599, 36.256866, 35.452690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481918, 36.630733, 35.389347>,  <44.558311, 36.855053, 35.351341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481918, 36.630733, 35.389347>,  <44.354599, 36.256866, 35.452690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481918, 36.630733, 35.389347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781736, -0.164294, 0.601579,
		0.536261, -0.315275, -0.782959,
		0.318298, 0.934671, -0.158358,
		44.577408, 36.911133, 35.341839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141682, 36.174774, 35.274654>,  <44.354599, 36.256866, 35.452690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141682, 36.174774, 35.274654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027969, 36.526516, 35.427456>,  <44.959743, 36.737560, 35.519138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027969, 36.526516, 35.427456>,  <45.141682, 36.174774, 35.274654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027969, 36.526516, 35.427456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754932, -0.040300, 0.654564,
		0.590986, 0.474467, -0.652393,
		-0.284278, 0.879350, 0.382007,
		44.942684, 36.790321, 35.542057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475143, 36.784695, 35.057617>,  <45.141682, 36.174774, 35.274654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475143, 36.784695, 35.057617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341724, 36.826721, 35.432362>,  <45.261673, 36.851936, 35.657207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341724, 36.826721, 35.432362>,  <45.475143, 36.784695, 35.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341724, 36.826721, 35.432362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939884, -0.040156, 0.339125,
		0.073252, 0.993654, -0.085359,
		-0.333545, 0.105070, 0.936861,
		45.241661, 36.858242, 35.713421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807491, 37.401154, 35.394833>,  <45.475143, 36.784695, 35.057617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807491, 37.401154, 35.394833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716324, 37.107327, 35.650478>,  <45.661625, 36.931030, 35.803867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716324, 37.107327, 35.650478>,  <45.807491, 37.401154, 35.394833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716324, 37.107327, 35.650478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973587, -0.162792, 0.160087,
		-0.013551, 0.658723, 0.752263,
		-0.227915, -0.734563, 0.639118,
		45.647949, 36.886959, 35.842213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329823, 37.488430, 35.959251>,  <45.807491, 37.401154, 35.394833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329823, 37.488430, 35.959251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171497, 37.121105, 35.961937>,  <46.076504, 36.900711, 35.963547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171497, 37.121105, 35.961937>,  <46.329823, 37.488430, 35.959251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171497, 37.121105, 35.961937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913070, -0.392748, 0.109782,
		-0.098178, 0.049581, 0.993933,
		-0.395809, -0.918308, 0.006712,
		46.052753, 36.845612, 35.963951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610645, 37.201279, 36.618908>,  <46.329823, 37.488430, 35.959251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610645, 37.201279, 36.618908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519894, 36.937248, 36.332462>,  <46.465443, 36.778828, 36.160595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519894, 36.937248, 36.332462>,  <46.610645, 37.201279, 36.618908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519894, 36.937248, 36.332462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912219, -0.401585, 0.081150,
		-0.341146, -0.634843, 0.693248,
		-0.226881, -0.660078, -0.716116,
		46.451828, 36.739223, 36.117626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880116, 36.576008, 36.809322>,  <46.610645, 37.201279, 36.618908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880116, 36.576008, 36.809322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840179, 36.545635, 36.412483>,  <46.816216, 36.527412, 36.174377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840179, 36.545635, 36.412483>,  <46.880116, 36.576008, 36.809322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840179, 36.545635, 36.412483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741738, -0.670283, -0.023346,
		-0.663215, -0.738211, 0.123246,
		-0.099844, -0.075933, -0.992101,
		46.810226, 36.522854, 36.114853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788246, 35.849918, 36.483475>,  <46.880116, 36.576008, 36.809322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788246, 35.849918, 36.483475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972088, 36.088192, 36.219986>,  <47.082394, 36.231155, 36.061893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972088, 36.088192, 36.219986>,  <46.788246, 35.849918, 36.483475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972088, 36.088192, 36.219986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831962, -0.548343, 0.084610,
		-0.310804, -0.586920, -0.747613,
		0.459608, 0.595689, -0.658722,
		47.109970, 36.266899, 36.022369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249432, 35.412422, 36.074551>,  <46.788246, 35.849918, 36.483475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249432, 35.412422, 36.074551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400200, 35.777878, 36.013630>,  <47.490662, 35.997150, 35.977077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400200, 35.777878, 36.013630>,  <47.249432, 35.412422, 36.074551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400200, 35.777878, 36.013630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925304, -0.363990, 0.106416,
		0.041790, -0.181035, -0.982589,
		0.376917, 0.913640, -0.152301,
		47.513275, 36.051971, 35.967941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.927494, 35.383480, 35.764565>,  <47.249432, 35.412422, 36.074551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.927494, 35.383480, 35.764565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949806, 35.758694, 35.901375>,  <47.963196, 35.983822, 35.983463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949806, 35.758694, 35.901375>,  <47.927494, 35.383480, 35.764565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949806, 35.758694, 35.901375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998212, -0.059766, 0.001109,
		0.021482, 0.341356, -0.939689,
		0.055783, 0.938032, 0.342029,
		47.966541, 36.040104, 36.003983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.952171, 35.134541, 35.043564>,  <47.927494, 35.383480, 35.764565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.952171, 35.134541, 35.043564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632896, 34.982857, 34.856335>,  <47.441330, 34.891846, 34.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632896, 34.982857, 34.856335>,  <47.952171, 35.134541, 35.043564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632896, 34.982857, 34.856335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213461, -0.548547, 0.808412,
		-0.563315, 0.745183, 0.356900,
		-0.798192, -0.379206, -0.468073,
		47.393440, 34.869095, 34.715912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.218254, 29.450907, 29.218344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847359, 29.590036, 29.162855>,  <36.624821, 29.673513, 29.129562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847359, 29.590036, 29.162855>,  <37.218254, 29.450907, 29.218344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847359, 29.590036, 29.162855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085718, 0.163470, 0.982817,
		0.364523, 0.923199, -0.121762,
		-0.927241, 0.347822, -0.138724,
		36.569187, 29.694384, 29.121239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243179, 30.113365, 29.370527>,  <37.218254, 29.450907, 29.218344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243179, 30.113365, 29.370527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858337, 30.009741, 29.404552>,  <36.627430, 29.947567, 29.424967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858337, 30.009741, 29.404552>,  <37.243179, 30.113365, 29.370527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858337, 30.009741, 29.404552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059446, 0.503744, 0.861805,
		-0.266110, 0.824093, -0.500057,
		-0.962108, -0.259061, 0.085062,
		36.569706, 29.932022, 29.430071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963200, 30.674414, 29.666977>,  <37.243179, 30.113365, 29.370527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963200, 30.674414, 29.666977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644588, 30.445574, 29.745209>,  <36.453423, 30.308270, 29.792147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644588, 30.445574, 29.745209>,  <36.963200, 30.674414, 29.666977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644588, 30.445574, 29.745209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036329, 0.368182, 0.929044,
		-0.603515, 0.732900, -0.314050,
		-0.796524, -0.572101, 0.195577,
		36.405632, 30.273943, 29.803883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400200, 31.147898, 30.005577>,  <36.963200, 30.674414, 29.666977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400200, 31.147898, 30.005577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321800, 30.769329, 30.108240>,  <36.274761, 30.542189, 30.169838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321800, 30.769329, 30.108240>,  <36.400200, 31.147898, 30.005577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321800, 30.769329, 30.108240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194978, 0.294122, 0.935669,
		-0.961024, 0.133352, -0.242180,
		-0.196004, -0.946419, 0.256657,
		36.263000, 30.485403, 30.185238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685417, 31.132523, 30.241663>,  <36.400200, 31.147898, 30.005577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685417, 31.132523, 30.241663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859577, 30.809738, 30.401285>,  <35.964073, 30.616068, 30.497059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859577, 30.809738, 30.401285>,  <35.685417, 31.132523, 30.241663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859577, 30.809738, 30.401285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112797, 0.390883, 0.913503,
		-0.893145, -0.442747, 0.079166,
		0.435395, -0.806960, 0.399056,
		35.990196, 30.567650, 30.521002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340332, 31.141499, 30.916731>,  <35.685417, 31.132523, 30.241663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340332, 31.141499, 30.916731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638527, 30.878378, 30.959717>,  <35.817444, 30.720507, 30.985508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638527, 30.878378, 30.959717>,  <35.340332, 31.141499, 30.916731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638527, 30.878378, 30.959717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014320, 0.177006, 0.984106,
		-0.666367, -0.732099, 0.141375,
		0.745487, -0.657800, 0.107467,
		35.862171, 30.681038, 30.991957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190159, 30.698284, 31.541838>,  <35.340332, 31.141499, 30.916731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190159, 30.698284, 31.541838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581356, 30.650690, 31.473274>,  <35.816074, 30.622133, 31.432137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581356, 30.650690, 31.473274>,  <35.190159, 30.698284, 31.541838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581356, 30.650690, 31.473274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193323, 0.207593, 0.958922,
		-0.078514, -0.970952, 0.226026,
		0.977988, -0.118985, -0.171409,
		35.874752, 30.614994, 31.421852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433662, 30.254807, 32.049454>,  <35.190159, 30.698284, 31.541838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433662, 30.254807, 32.049454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758499, 30.458889, 31.936174>,  <35.953400, 30.581339, 31.868208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758499, 30.458889, 31.936174>,  <35.433662, 30.254807, 32.049454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758499, 30.458889, 31.936174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120669, 0.327996, 0.936941,
		0.570922, -0.795052, 0.204795,
		0.812088, 0.510208, -0.283198,
		36.002125, 30.611952, 31.851215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951946, 30.104761, 32.547192>,  <35.433662, 30.254807, 32.049454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951946, 30.104761, 32.547192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040321, 30.452423, 32.370213>,  <36.093346, 30.661020, 32.264027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040321, 30.452423, 32.370213>,  <35.951946, 30.104761, 32.547192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040321, 30.452423, 32.370213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281258, 0.377600, 0.882220,
		0.933853, -0.319355, -0.161031,
		0.220936, 0.869155, -0.442444,
		36.106602, 30.713169, 32.237480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613556, 30.257423, 32.792042>,  <35.951946, 30.104761, 32.547192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613556, 30.257423, 32.792042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439861, 30.600288, 32.681255>,  <36.335644, 30.806007, 32.614784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439861, 30.600288, 32.681255>,  <36.613556, 30.257423, 32.792042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439861, 30.600288, 32.681255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185813, 0.386092, 0.903552,
		0.881427, 0.340890, -0.326927,
		-0.434236, 0.857162, -0.276970,
		36.309589, 30.857437, 32.598164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148254, 30.706404, 32.998585>,  <36.613556, 30.257423, 32.792042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148254, 30.706404, 32.998585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827927, 30.934246, 32.924568>,  <36.635731, 31.070951, 32.880157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827927, 30.934246, 32.924568>,  <37.148254, 30.706404, 32.998585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827927, 30.934246, 32.924568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248016, 0.596627, 0.763233,
		0.545142, 0.565318, -0.619061,
		-0.800818, 0.569607, -0.185038,
		36.587681, 31.105127, 32.869057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373634, 31.433048, 32.880146>,  <37.148254, 30.706404, 32.998585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373634, 31.433048, 32.880146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988907, 31.449116, 32.988430>,  <36.758068, 31.458757, 33.053402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988907, 31.449116, 32.988430>,  <37.373634, 31.433048, 32.880146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988907, 31.449116, 32.988430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220094, 0.701444, 0.677890,
		-0.162660, 0.711591, -0.683506,
		-0.961821, 0.040170, 0.270714,
		36.700359, 31.461166, 33.069645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190453, 32.161423, 32.974510>,  <37.373634, 31.433048, 32.880146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190453, 32.161423, 32.974510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912457, 31.962143, 33.181889>,  <36.745659, 31.842575, 33.306316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912457, 31.962143, 33.181889>,  <37.190453, 32.161423, 32.974510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912457, 31.962143, 33.181889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015533, 0.710476, 0.703550,
		-0.718850, 0.497014, -0.486037,
		-0.694992, -0.498197, 0.518446,
		36.703960, 31.812683, 33.337421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678623, 32.653011, 33.321930>,  <37.190453, 32.161423, 32.974510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678623, 32.653011, 33.321930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618084, 32.323757, 33.540852>,  <36.581760, 32.126205, 33.672207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618084, 32.323757, 33.540852>,  <36.678623, 32.653011, 33.321930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618084, 32.323757, 33.540852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056265, 0.559961, 0.826607,
		-0.986878, 0.094311, -0.131062,
		-0.151347, -0.823134, 0.547306,
		36.572681, 32.076817, 33.705044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267952, 32.975502, 33.689342>,  <36.678623, 32.653011, 33.321930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267952, 32.975502, 33.689342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376373, 32.629341, 33.857918>,  <36.441425, 32.421642, 33.959061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376373, 32.629341, 33.857918>,  <36.267952, 32.975502, 33.689342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376373, 32.629341, 33.857918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040480, 0.427188, 0.903256,
		-0.961713, -0.261888, 0.080758,
		0.271051, -0.865404, 0.421434,
		36.457687, 32.369720, 33.984348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765373, 32.814159, 34.168232>,  <36.267952, 32.975502, 33.689342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765373, 32.814159, 34.168232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101597, 32.652885, 34.312954>,  <36.303329, 32.556122, 34.399788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101597, 32.652885, 34.312954>,  <35.765373, 32.814159, 34.168232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101597, 32.652885, 34.312954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185917, 0.412608, 0.891734,
		-0.508818, -0.816820, 0.271862,
		0.840559, -0.403187, 0.361803,
		36.353764, 32.531929, 34.421494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623116, 32.747036, 34.833126>,  <35.765373, 32.814159, 34.168232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623116, 32.747036, 34.833126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013195, 32.658623, 34.828724>,  <36.247242, 32.605576, 34.826084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013195, 32.658623, 34.828724>,  <35.623116, 32.747036, 34.833126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013195, 32.658623, 34.828724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102518, 0.407125, 0.907601,
		-0.196135, -0.886223, 0.419690,
		0.975203, -0.221038, -0.011003,
		36.305756, 32.592312, 34.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777565, 32.564007, 35.513203>,  <35.623116, 32.747036, 34.833126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777565, 32.564007, 35.513203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124168, 32.666946, 35.342117>,  <36.332130, 32.728710, 35.239468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124168, 32.666946, 35.342117>,  <35.777565, 32.564007, 35.513203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124168, 32.666946, 35.342117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326954, 0.354851, 0.875889,
		0.377192, -0.898803, 0.223335,
		0.866503, 0.257358, -0.427714,
		36.384121, 32.744152, 35.213802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335224, 32.268871, 35.918915>,  <35.777565, 32.564007, 35.513203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335224, 32.268871, 35.918915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486622, 32.582882, 35.722763>,  <36.577461, 32.771290, 35.605072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486622, 32.582882, 35.722763>,  <36.335224, 32.268871, 35.918915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486622, 32.582882, 35.722763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228948, 0.433930, 0.871371,
		0.896843, -0.442078, -0.015492,
		0.378492, 0.785030, -0.490380,
		36.600170, 32.818390, 35.575649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836369, 32.401207, 36.361614>,  <36.335224, 32.268871, 35.918915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836369, 32.401207, 36.361614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825233, 32.729874, 36.133896>,  <36.818554, 32.927074, 35.997265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825233, 32.729874, 36.133896>,  <36.836369, 32.401207, 36.361614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825233, 32.729874, 36.133896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381108, 0.535221, 0.753854,
		0.924112, -0.195977, -0.328041,
		-0.027836, 0.821664, -0.569292,
		36.816883, 32.976372, 35.963108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457478, 32.717594, 36.509037>,  <36.836369, 32.401207, 36.361614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457478, 32.717594, 36.509037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217705, 33.006817, 36.371712>,  <37.073841, 33.180351, 36.289318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217705, 33.006817, 36.371712>,  <37.457478, 32.717594, 36.509037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217705, 33.006817, 36.371712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179622, 0.539488, 0.822611,
		0.780010, 0.431434, -0.453265,
		-0.599433, 0.723061, -0.343312,
		37.037876, 33.223736, 36.268719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856121, 33.347683, 36.600410>,  <37.457478, 32.717594, 36.509037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856121, 33.347683, 36.600410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460171, 33.397434, 36.573036>,  <37.222603, 33.427284, 36.556614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460171, 33.397434, 36.573036>,  <37.856121, 33.347683, 36.600410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460171, 33.397434, 36.573036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015377, 0.385281, 0.922671,
		0.141122, 0.914379, -0.379466,
		-0.989873, 0.124375, -0.068432,
		37.163208, 33.434746, 36.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576591, 33.519665, 36.300457>,  <37.856121, 33.347683, 36.600410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576591, 33.519665, 36.300457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962994, 33.621014, 36.320999>,  <39.194836, 33.681824, 36.333324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962994, 33.621014, 36.320999>,  <38.576591, 33.519665, 36.300457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962994, 33.621014, 36.320999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098881, -0.178586, -0.978943,
		-0.238867, 0.950741, -0.197568,
		0.966005, 0.253373, 0.051352,
		39.252796, 33.697025, 36.336403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604511, 33.872208, 35.795910>,  <38.576591, 33.519665, 36.300457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604511, 33.872208, 35.795910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998611, 33.852432, 35.861435>,  <39.235073, 33.840569, 35.900749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998611, 33.852432, 35.861435>,  <38.604511, 33.872208, 35.795910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998611, 33.852432, 35.861435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165154, 0.024327, -0.985968,
		0.044757, 0.998481, 0.032133,
		0.985252, -0.049435, 0.163815,
		39.294186, 33.837601, 35.910580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958645, 34.277260, 35.279484>,  <38.604511, 33.872208, 35.795910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958645, 34.277260, 35.279484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.212784, 33.998192, 35.411900>,  <39.365265, 33.830750, 35.491348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.212784, 33.998192, 35.411900>,  <38.958645, 34.277260, 35.279484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212784, 33.998192, 35.411900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308372, -0.163806, -0.937056,
		0.707986, 0.697438, 0.111069,
		0.635345, -0.697673, 0.331043,
		39.403389, 33.788891, 35.511211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455040, 34.333267, 34.907219>,  <38.958645, 34.277260, 35.279484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455040, 34.333267, 34.907219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536980, 33.967075, 35.045750>,  <39.586143, 33.747360, 35.128868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536980, 33.967075, 35.045750>,  <39.455040, 34.333267, 34.907219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536980, 33.967075, 35.045750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284707, -0.282798, -0.915952,
		0.936472, 0.286232, 0.202712,
		0.204848, -0.915476, 0.346324,
		39.598434, 33.692432, 35.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118141, 34.153294, 34.606319>,  <39.455040, 34.333267, 34.907219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118141, 34.153294, 34.606319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941811, 33.811707, 34.716888>,  <39.836014, 33.606754, 34.783230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941811, 33.811707, 34.716888>,  <40.118141, 34.153294, 34.606319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941811, 33.811707, 34.716888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300584, -0.430627, -0.851005,
		0.845769, -0.292054, 0.446519,
		-0.440822, -0.853970, 0.276424,
		39.809563, 33.555515, 34.799816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593136, 33.666988, 34.367393>,  <40.118141, 34.153294, 34.606319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593136, 33.666988, 34.367393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258385, 33.453598, 34.416451>,  <40.057533, 33.325565, 34.445885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258385, 33.453598, 34.416451>,  <40.593136, 33.666988, 34.367393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258385, 33.453598, 34.416451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221846, -0.535371, -0.814961,
		0.500417, -0.654817, 0.566390,
		-0.836879, -0.533472, 0.122641,
		40.007320, 33.293556, 34.453243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702839, 32.927822, 34.284275>,  <40.593136, 33.666988, 34.367393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702839, 32.927822, 34.284275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315166, 32.984749, 34.203846>,  <40.082561, 33.018906, 34.155586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315166, 32.984749, 34.203846>,  <40.702839, 32.927822, 34.284275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315166, 32.984749, 34.203846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080536, -0.588338, -0.804595,
		-0.232808, -0.795993, 0.558745,
		-0.969182, 0.142317, -0.201076,
		40.024410, 33.027443, 34.143524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408188, 32.265289, 34.178150>,  <40.702839, 32.927822, 34.284275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408188, 32.265289, 34.178150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159775, 32.518330, 33.993057>,  <40.010727, 32.670155, 33.882000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159775, 32.518330, 33.993057>,  <40.408188, 32.265289, 34.178150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159775, 32.518330, 33.993057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011991, -0.597990, -0.801414,
		-0.783689, -0.492159, 0.378960,
		-0.621038, 0.632603, -0.462737,
		39.973465, 32.708111, 33.854237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975758, 31.804134, 33.797165>,  <40.408188, 32.265289, 34.178150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975758, 31.804134, 33.797165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901096, 32.157085, 33.624390>,  <39.856300, 32.368855, 33.520725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901096, 32.157085, 33.624390>,  <39.975758, 31.804134, 33.797165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901096, 32.157085, 33.624390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128151, -0.457775, -0.879783,
		-0.974031, -0.108863, 0.198524,
		-0.186655, 0.882378, -0.431937,
		39.845100, 32.421799, 33.494808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377728, 31.724323, 33.422100>,  <39.975758, 31.804134, 33.797165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377728, 31.724323, 33.422100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529068, 32.051258, 33.248291>,  <39.619873, 32.247417, 33.144005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529068, 32.051258, 33.248291>,  <39.377728, 31.724323, 33.422100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529068, 32.051258, 33.248291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202707, -0.384870, -0.900436,
		-0.903196, 0.428758, 0.020066,
		0.378347, 0.817338, -0.434525,
		39.642570, 32.296459, 33.117935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867298, 31.982603, 32.985527>,  <39.377728, 31.724323, 33.422100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867298, 31.982603, 32.985527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217648, 32.121815, 32.851826>,  <39.427856, 32.205341, 32.771606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217648, 32.121815, 32.851826>,  <38.867298, 31.982603, 32.985527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217648, 32.121815, 32.851826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186764, -0.394206, -0.899845,
		-0.444938, 0.850574, -0.280274,
		0.875871, 0.348030, -0.334254,
		39.480408, 32.226223, 32.751549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696350, 32.396240, 32.421211>,  <38.867298, 31.982603, 32.985527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696350, 32.396240, 32.421211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070507, 32.255634, 32.405815>,  <39.295002, 32.171272, 32.396576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070507, 32.255634, 32.405815>,  <38.696350, 32.396240, 32.421211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070507, 32.255634, 32.405815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188333, -0.403090, -0.895572,
		0.299289, 0.844960, -0.443249,
		0.935391, -0.351513, -0.038494,
		39.351124, 32.150181, 32.394268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083084, 32.541336, 31.730059>,  <38.696350, 32.396240, 32.421211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083084, 32.541336, 31.730059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202927, 32.202873, 31.906357>,  <39.274834, 31.999796, 32.012135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202927, 32.202873, 31.906357>,  <39.083084, 32.541336, 31.730059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202927, 32.202873, 31.906357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083923, -0.436800, -0.895635,
		0.950364, 0.305329, -0.059858,
		0.299610, -0.846156, 0.440743,
		39.292809, 31.949026, 32.038578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728722, 32.296478, 31.425898>,  <39.083084, 32.541336, 31.730059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728722, 32.296478, 31.425898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552509, 31.980494, 31.596497>,  <39.446781, 31.790903, 31.698856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552509, 31.980494, 31.596497>,  <39.728722, 32.296478, 31.425898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552509, 31.980494, 31.596497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167020, -0.538904, -0.825643,
		0.882064, -0.292488, 0.369343,
		-0.440531, -0.789958, 0.426496,
		39.420349, 31.743505, 31.724445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184887, 31.855103, 31.302715>,  <39.728722, 32.296478, 31.425898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184887, 31.855103, 31.302715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842991, 31.656605, 31.363583>,  <39.637852, 31.537506, 31.400103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842991, 31.656605, 31.363583>,  <40.184887, 31.855103, 31.302715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842991, 31.656605, 31.363583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144778, -0.509466, -0.848224,
		0.498452, -0.702983, 0.507308,
		-0.854743, -0.496246, 0.152168,
		39.586567, 31.507730, 31.409233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333012, 31.133350, 31.101135>,  <40.184887, 31.855103, 31.302715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333012, 31.133350, 31.101135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.936810, 31.105862, 31.148750>,  <39.699089, 31.089369, 31.177320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.936810, 31.105862, 31.148750>,  <40.333012, 31.133350, 31.101135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936810, 31.105862, 31.148750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069334, -0.497980, -0.864412,
		0.118684, -0.864461, 0.488489,
		-0.990508, -0.068723, 0.119039,
		39.639656, 31.085245, 31.184462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190514, 30.503639, 30.804241>,  <40.333012, 31.133350, 31.101135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190514, 30.503639, 30.804241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853996, 30.717978, 30.775705>,  <39.652084, 30.846581, 30.758583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853996, 30.717978, 30.775705>,  <40.190514, 30.503639, 30.804241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853996, 30.717978, 30.775705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224885, -0.466941, -0.855215,
		-0.491584, -0.703440, 0.513339,
		-0.841291, 0.535852, -0.071348,
		39.601608, 30.878731, 30.754303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752697, 30.020157, 30.529549>,  <40.190514, 30.503639, 30.804241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752697, 30.020157, 30.529549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.583847, 30.378561, 30.474443>,  <39.482536, 30.593603, 30.441380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.583847, 30.378561, 30.474443>,  <39.752697, 30.020157, 30.529549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583847, 30.378561, 30.474443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296192, -0.279943, -0.913183,
		-0.856787, -0.344669, 0.383561,
		-0.422121, 0.896011, -0.137763,
		39.457211, 30.647364, 30.433115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.138985, 29.846066, 30.139339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222191, 30.231600, 30.072702>,  <39.272114, 30.462921, 30.032721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222191, 30.231600, 30.072702>,  <39.138985, 29.846066, 30.139339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222191, 30.231600, 30.072702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241647, -0.114398, -0.963597,
		-0.947807, 0.240695, 0.209112,
		0.208012, 0.963836, -0.166591,
		39.284595, 30.520750, 30.022726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621071, 30.030451, 29.670286>,  <39.138985, 29.846066, 30.139339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621071, 30.030451, 29.670286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.892879, 30.320169, 29.623568>,  <39.055965, 30.494001, 29.595537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.892879, 30.320169, 29.623568>,  <38.621071, 30.030451, 29.670286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892879, 30.320169, 29.623568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246772, 0.075730, -0.966110,
		-0.690906, 0.685317, 0.230197,
		0.679524, 0.724297, -0.116795,
		39.096737, 30.537458, 29.588530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318672, 30.505713, 29.217049>,  <38.621071, 30.030451, 29.670286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318672, 30.505713, 29.217049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708649, 30.587517, 29.182047>,  <38.942635, 30.636599, 29.161045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708649, 30.587517, 29.182047>,  <38.318672, 30.505713, 29.217049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708649, 30.587517, 29.182047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100124, 0.052177, -0.993606,
		-0.198638, 0.977473, 0.071346,
		0.974945, 0.204511, -0.087504,
		39.001133, 30.648870, 29.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364807, 30.863733, 28.562651>,  <38.318672, 30.505713, 29.217049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364807, 30.863733, 28.562651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735340, 30.739569, 28.648024>,  <38.957661, 30.665070, 28.699247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735340, 30.739569, 28.648024>,  <38.364807, 30.863733, 28.562651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735340, 30.739569, 28.648024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147378, -0.222780, -0.963664,
		0.346681, 0.924128, -0.160621,
		0.926332, -0.310412, 0.213430,
		39.013241, 30.646444, 28.712053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770920, 31.177809, 28.003004>,  <38.364807, 30.863733, 28.562651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770920, 31.177809, 28.003004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975670, 30.862471, 28.139528>,  <39.098518, 30.673267, 28.221443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975670, 30.862471, 28.139528>,  <38.770920, 31.177809, 28.003004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975670, 30.862471, 28.139528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026791, -0.382463, -0.923582,
		0.858642, 0.481903, -0.174653,
		0.511876, -0.788347, 0.341310,
		39.129234, 30.625967, 28.241920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448921, 31.119104, 27.586845>,  <38.770920, 31.177809, 28.003004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448921, 31.119104, 27.586845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335007, 30.773188, 27.752272>,  <39.266659, 30.565638, 27.851526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335007, 30.773188, 27.752272>,  <39.448921, 31.119104, 27.586845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335007, 30.773188, 27.752272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021318, -0.425609, -0.904656,
		0.958354, -0.266449, 0.102771,
		-0.284785, -0.864790, 0.413564,
		39.249573, 30.513750, 27.876341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734051, 30.727058, 27.116121>,  <39.448921, 31.119104, 27.586845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734051, 30.727058, 27.116121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510609, 30.459528, 27.312338>,  <39.376541, 30.299009, 27.430067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510609, 30.459528, 27.312338>,  <39.734051, 30.727058, 27.116121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510609, 30.459528, 27.312338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144522, -0.503885, -0.851595,
		0.816744, -0.546602, 0.184814,
		-0.558608, -0.668825, 0.490541,
		39.343025, 30.258881, 27.459499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004768, 30.049965, 26.994862>,  <39.734051, 30.727058, 27.116121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004768, 30.049965, 26.994862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629673, 29.977434, 27.113359>,  <39.404613, 29.933916, 27.184458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629673, 29.977434, 27.113359>,  <40.004768, 30.049965, 26.994862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629673, 29.977434, 27.113359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175970, -0.487332, -0.855302,
		0.299459, -0.854183, 0.425083,
		-0.937741, -0.181326, 0.296247,
		39.348351, 29.923037, 27.202234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961411, 29.348581, 26.918566>,  <40.004768, 30.049965, 26.994862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961411, 29.348581, 26.918566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582283, 29.476007, 26.923649>,  <39.354809, 29.552464, 26.926699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582283, 29.476007, 26.923649>,  <39.961411, 29.348581, 26.918566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582283, 29.476007, 26.923649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247881, -0.711284, -0.657746,
		-0.200496, -0.626572, 0.753133,
		-0.947817, 0.318563, 0.012706,
		39.297939, 29.571577, 26.927460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537224, 28.717579, 26.873343>,  <39.961411, 29.348581, 26.918566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537224, 28.717579, 26.873343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291965, 29.015291, 26.767435>,  <39.144810, 29.193918, 26.703892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291965, 29.015291, 26.767435>,  <39.537224, 28.717579, 26.873343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291965, 29.015291, 26.767435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311787, -0.535949, -0.784568,
		-0.725842, -0.398501, 0.560670,
		-0.613142, 0.744282, -0.264767,
		39.108025, 29.238575, 26.688005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858803, 28.295261, 26.702745>,  <39.537224, 28.717579, 26.873343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858803, 28.295261, 26.702745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882706, 28.643398, 26.507223>,  <38.897045, 28.852282, 26.389910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882706, 28.643398, 26.507223>,  <38.858803, 28.295261, 26.702745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882706, 28.643398, 26.507223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226839, -0.465030, -0.855740,
		-0.972098, 0.162014, 0.169641,
		0.059754, 0.870344, -0.488806,
		38.900631, 28.904501, 26.360582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460320, 28.134596, 26.204855>,  <38.858803, 28.295261, 26.702745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460320, 28.134596, 26.204855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657398, 28.458811, 26.078190>,  <38.775646, 28.653339, 26.002190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657398, 28.458811, 26.078190>,  <38.460320, 28.134596, 26.204855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657398, 28.458811, 26.078190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174625, -0.264404, -0.948471,
		-0.852500, 0.522607, 0.011270,
		0.492697, 0.810539, -0.316664,
		38.805206, 28.701973, 25.983191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117836, 28.271908, 25.593615>,  <38.460320, 28.134596, 26.204855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117836, 28.271908, 25.593615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479774, 28.442196, 25.594822>,  <38.696938, 28.544369, 25.595547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479774, 28.442196, 25.594822>,  <38.117836, 28.271908, 25.593615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479774, 28.442196, 25.594822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045737, -0.090153, -0.994877,
		-0.423267, 0.900353, -0.101046,
		0.904850, 0.425720, 0.003021,
		38.751228, 28.569912, 25.595728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184479, 28.660627, 24.979710>,  <38.117836, 28.271908, 25.593615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184479, 28.660627, 24.979710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570484, 28.631659, 25.080513>,  <38.802086, 28.614277, 25.140995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570484, 28.631659, 25.080513>,  <38.184479, 28.660627, 24.979710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570484, 28.631659, 25.080513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250772, -0.025851, -0.967701,
		0.076598, 0.997039, -0.006785,
		0.965011, -0.072423, 0.252010,
		38.859989, 28.609932, 25.156116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556366, 29.301992, 24.636921>,  <38.184479, 28.660627, 24.979710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556366, 29.301992, 24.636921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793430, 28.992853, 24.727657>,  <38.935669, 28.807369, 24.782099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793430, 28.992853, 24.727657>,  <38.556366, 29.301992, 24.636921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793430, 28.992853, 24.727657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334279, -0.020220, -0.942257,
		0.732809, 0.634268, 0.246364,
		0.592662, -0.772849, 0.226840,
		38.971230, 28.760998, 24.795710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163383, 29.428833, 24.224903>,  <38.556366, 29.301992, 24.636921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163383, 29.428833, 24.224903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183006, 29.037214, 24.303957>,  <39.194778, 28.802242, 24.351389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183006, 29.037214, 24.303957>,  <39.163383, 29.428833, 24.224903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183006, 29.037214, 24.303957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378176, -0.164935, -0.910922,
		0.924433, 0.119424, 0.362162,
		0.049053, -0.979048, 0.197635,
		39.197723, 28.743500, 24.363247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731003, 29.306852, 24.005482>,  <39.163383, 29.428833, 24.224903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731003, 29.306852, 24.005482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561382, 28.945585, 24.032232>,  <39.459610, 28.728825, 24.048283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561382, 28.945585, 24.032232>,  <39.731003, 29.306852, 24.005482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561382, 28.945585, 24.032232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437368, -0.268890, -0.858142,
		0.793028, -0.334643, 0.509038,
		-0.424047, -0.903168, 0.066875,
		39.434170, 28.674635, 24.052296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310093, 28.736320, 23.743919>,  <39.731003, 29.306852, 24.005482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310093, 28.736320, 23.743919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.952774, 28.564501, 23.690996>,  <39.738380, 28.461409, 23.659243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.952774, 28.564501, 23.690996>,  <40.310093, 28.736320, 23.743919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952774, 28.564501, 23.690996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287711, -0.320329, -0.902558,
		0.345311, -0.844320, 0.409735,
		-0.893299, -0.429549, -0.132307,
		39.684784, 28.435637, 23.651304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444897, 28.226234, 23.337524>,  <40.310093, 28.736320, 23.743919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444897, 28.226234, 23.337524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048996, 28.265745, 23.296280>,  <39.811455, 28.289452, 23.271534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048996, 28.265745, 23.296280>,  <40.444897, 28.226234, 23.337524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048996, 28.265745, 23.296280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063162, -0.344761, -0.936563,
		-0.128056, -0.933479, 0.334990,
		-0.989754, 0.098774, -0.103109,
		39.752071, 28.295378, 23.265347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263447, 27.617575, 22.889660>,  <40.444897, 28.226234, 23.337524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263447, 27.617575, 22.889660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966202, 27.882290, 22.850037>,  <39.787853, 28.041119, 22.826263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966202, 27.882290, 22.850037>,  <40.263447, 27.617575, 22.889660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966202, 27.882290, 22.850037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040659, -0.192413, -0.980471,
		-0.667926, -0.724576, 0.169893,
		-0.743116, 0.661790, -0.099057,
		39.743267, 28.080828, 22.820320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761127, 27.351662, 22.513468>,  <40.263447, 27.617575, 22.889660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761127, 27.351662, 22.513468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629993, 27.729042, 22.493780>,  <39.551311, 27.955471, 22.481968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629993, 27.729042, 22.493780>,  <39.761127, 27.351662, 22.513468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629993, 27.729042, 22.493780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161146, -0.107178, -0.981094,
		-0.930889, -0.313709, 0.187171,
		-0.327839, 0.943451, -0.049218,
		39.531643, 28.012077, 22.479015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056065, 27.324612, 22.158808>,  <39.761127, 27.351662, 22.513468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056065, 27.324612, 22.158808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220509, 27.688595, 22.137033>,  <39.319176, 27.906984, 22.123968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220509, 27.688595, 22.137033>,  <39.056065, 27.324612, 22.158808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220509, 27.688595, 22.137033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299057, 0.078218, -0.951024,
		-0.861133, 0.407258, 0.304286,
		0.411113, 0.909957, -0.054438,
		39.343842, 27.961582, 22.120703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615112, 27.791391, 22.068846>,  <39.056065, 27.324612, 22.158808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615112, 27.791391, 22.068846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954861, 27.917549, 21.899569>,  <39.158710, 27.993244, 21.798002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954861, 27.917549, 21.899569>,  <38.615112, 27.791391, 22.068846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954861, 27.917549, 21.899569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469342, 0.084597, -0.878955,
		-0.241415, 0.945183, 0.219881,
		0.849375, 0.315392, -0.423191,
		39.209675, 28.012167, 21.772612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614624, 28.437950, 21.810255>,  <38.615112, 27.791391, 22.068846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614624, 28.437950, 21.810255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853649, 28.192318, 21.604023>,  <38.997063, 28.044939, 21.480284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853649, 28.192318, 21.604023>,  <38.614624, 28.437950, 21.810255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853649, 28.192318, 21.604023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589818, 0.098947, -0.801451,
		0.543172, 0.783015, -0.303070,
		0.597561, -0.614082, -0.515582,
		39.032917, 28.008093, 21.449348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223373, 28.557255, 21.283016>,  <38.614624, 28.437950, 21.810255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223373, 28.557255, 21.283016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846504, 28.656483, 21.192884>,  <37.620384, 28.716021, 21.138805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846504, 28.656483, 21.192884>,  <38.223373, 28.557255, 21.283016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846504, 28.656483, 21.192884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113085, 0.397591, 0.910567,
		0.315474, 0.883392, -0.346546,
		-0.942172, 0.248072, -0.225328,
		37.563854, 28.730904, 21.125286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230320, 29.251545, 21.419947>,  <38.223373, 28.557255, 21.283016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230320, 29.251545, 21.419947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863205, 29.092897, 21.427464>,  <37.642937, 28.997709, 21.431973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863205, 29.092897, 21.427464>,  <38.230320, 29.251545, 21.419947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863205, 29.092897, 21.427464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247515, 0.608479, 0.753983,
		-0.310477, 0.687348, -0.656625,
		-0.917791, -0.396618, 0.018790,
		37.587868, 28.973911, 21.433100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820599, 29.735861, 21.594156>,  <38.230320, 29.251545, 21.419947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820599, 29.735861, 21.594156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600651, 29.420628, 21.704838>,  <37.468681, 29.231487, 21.771246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600651, 29.420628, 21.704838>,  <37.820599, 29.735861, 21.594156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600651, 29.420628, 21.704838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235843, 0.464297, 0.853702,
		-0.801261, 0.404168, -0.441168,
		-0.549872, -0.788084, 0.276702,
		37.435688, 29.184202, 21.787849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100609, 30.053080, 21.847429>,  <37.820599, 29.735861, 21.594156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100609, 30.053080, 21.847429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134373, 29.684557, 21.999254>,  <37.154629, 29.463444, 22.090349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134373, 29.684557, 21.999254>,  <37.100609, 30.053080, 21.847429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134373, 29.684557, 21.999254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371481, 0.324365, 0.869937,
		-0.924596, -0.214427, -0.314870,
		0.084405, -0.921308, 0.379562,
		37.159695, 29.408165, 22.113123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515438, 29.960346, 22.212847>,  <37.100609, 30.053080, 21.847429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515438, 29.960346, 22.212847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757103, 29.685173, 22.373711>,  <36.902103, 29.520069, 22.470228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757103, 29.685173, 22.373711>,  <36.515438, 29.960346, 22.212847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757103, 29.685173, 22.373711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407363, 0.167115, 0.897847,
		-0.684866, -0.706271, -0.179274,
		0.604164, -0.687935, 0.402160,
		36.938351, 29.478792, 22.494358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109116, 29.646204, 22.770170>,  <36.515438, 29.960346, 22.212847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109116, 29.646204, 22.770170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486504, 29.538683, 22.847742>,  <36.712936, 29.474171, 22.894285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486504, 29.538683, 22.847742>,  <36.109116, 29.646204, 22.770170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486504, 29.538683, 22.847742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195350, 0.021716, 0.980493,
		-0.267771, -0.962950, -0.032022,
		0.943471, -0.268803, 0.193928,
		36.769547, 29.458042, 22.905920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024200, 29.121395, 23.180801>,  <36.109116, 29.646204, 22.770170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024200, 29.121395, 23.180801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380825, 29.288498, 23.250761>,  <36.594799, 29.388760, 23.292736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380825, 29.288498, 23.250761>,  <36.024200, 29.121395, 23.180801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380825, 29.288498, 23.250761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256751, 0.148103, 0.955063,
		0.373081, -0.896406, 0.239303,
		0.891566, 0.417757, 0.174899,
		36.648296, 29.413824, 23.303230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372410, 28.755772, 23.745365>,  <36.024200, 29.121395, 23.180801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372410, 28.755772, 23.745365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537079, 29.120241, 23.738586>,  <36.635880, 29.338923, 23.734518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537079, 29.120241, 23.738586>,  <36.372410, 28.755772, 23.745365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537079, 29.120241, 23.738586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005337, 0.021008, 0.999765,
		0.911315, -0.411489, 0.013511,
		0.411676, 0.911173, -0.016949,
		36.660583, 29.393593, 23.733501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771950, 28.768066, 24.334206>,  <36.372410, 28.755772, 23.745365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771950, 28.768066, 24.334206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770561, 29.159828, 24.253456>,  <36.769730, 29.394886, 24.205006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770561, 29.159828, 24.253456>,  <36.771950, 28.768066, 24.334206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770561, 29.159828, 24.253456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195749, 0.198637, 0.960326,
		0.980648, -0.036182, -0.192408,
		-0.003473, 0.979405, -0.201876,
		36.769520, 29.453650, 24.192894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324455, 29.061823, 24.693331>,  <36.771950, 28.768066, 24.334206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324455, 29.061823, 24.693331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078259, 29.373920, 24.648796>,  <36.930542, 29.561178, 24.622076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078259, 29.373920, 24.648796>,  <37.324455, 29.061823, 24.693331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078259, 29.373920, 24.648796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181128, 0.277511, 0.943494,
		0.767051, 0.560543, -0.312128,
		-0.615488, 0.780243, -0.111335,
		36.893612, 29.607994, 24.615396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714230, 29.584398, 25.029306>,  <37.324455, 29.061823, 24.693331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714230, 29.584398, 25.029306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328358, 29.688747, 25.014717>,  <37.096832, 29.751356, 25.005962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328358, 29.688747, 25.014717>,  <37.714230, 29.584398, 25.029306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328358, 29.688747, 25.014717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023591, 0.223482, 0.974423,
		0.262351, 0.939149, -0.221744,
		-0.964684, 0.260872, -0.036475,
		37.038952, 29.767010, 25.003775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679520, 30.122513, 25.478445>,  <37.714230, 29.584398, 25.029306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679520, 30.122513, 25.478445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299229, 30.001596, 25.450941>,  <37.071053, 29.929047, 25.434439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299229, 30.001596, 25.450941>,  <37.679520, 30.122513, 25.478445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299229, 30.001596, 25.450941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143943, 0.234000, 0.961522,
		-0.274570, 0.924047, -0.265984,
		-0.950732, -0.302292, -0.068761,
		37.014008, 29.910910, 25.430313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243221, 30.578535, 25.888006>,  <37.679520, 30.122513, 25.478445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243221, 30.578535, 25.888006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013489, 30.251144, 25.881760>,  <36.875648, 30.054710, 25.878012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013489, 30.251144, 25.881760>,  <37.243221, 30.578535, 25.888006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013489, 30.251144, 25.881760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120035, 0.065328, 0.990618,
		-0.809776, 0.570816, -0.135766,
		-0.574330, -0.818475, -0.015617,
		36.841190, 30.005602, 25.877075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628765, 30.797607, 26.260281>,  <37.243221, 30.578535, 25.888006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628765, 30.797607, 26.260281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681396, 30.401499, 26.278387>,  <36.712975, 30.163834, 26.289251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681396, 30.401499, 26.278387>,  <36.628765, 30.797607, 26.260281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681396, 30.401499, 26.278387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123058, 0.028995, 0.991976,
		-0.983638, -0.136095, -0.118046,
		0.131580, -0.990272, 0.045268,
		36.720871, 30.104418, 26.291967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938877, 30.518751, 26.579416>,  <36.628765, 30.797607, 26.260281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938877, 30.518751, 26.579416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.192471, 30.212955, 26.626095>,  <36.344627, 30.029478, 26.654102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.192471, 30.212955, 26.626095>,  <35.938877, 30.518751, 26.579416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192471, 30.212955, 26.626095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230620, -0.042862, 0.972099,
		-0.738160, -0.643207, -0.203481,
		0.633983, -0.764491, 0.116697,
		36.382664, 29.983608, 26.661104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573574, 29.892109, 26.946152>,  <35.938877, 30.518751, 26.579416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573574, 29.892109, 26.946152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964958, 29.842962, 27.012497>,  <36.199791, 29.813475, 27.052303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964958, 29.842962, 27.012497>,  <35.573574, 29.892109, 26.946152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964958, 29.842962, 27.012497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190633, -0.229756, 0.954396,
		-0.079156, -0.965461, -0.248231,
		0.978465, -0.122868, 0.165862,
		36.258499, 29.806103, 27.062256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562805, 29.370914, 27.358479>,  <35.573574, 29.892109, 26.946152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562805, 29.370914, 27.358479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927853, 29.527258, 27.406420>,  <36.146881, 29.621063, 27.435184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927853, 29.527258, 27.406420>,  <35.562805, 29.370914, 27.358479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927853, 29.527258, 27.406420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004726, -0.283061, 0.959090,
		0.408795, -0.875846, -0.256478,
		0.912614, 0.390860, 0.119853,
		36.201637, 29.644516, 27.442375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837467, 28.888060, 27.741577>,  <35.562805, 29.370914, 27.358479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837467, 28.888060, 27.741577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054897, 29.219967, 27.792198>,  <36.185356, 29.419111, 27.822571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054897, 29.219967, 27.792198>,  <35.837467, 28.888060, 27.741577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054897, 29.219967, 27.792198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056496, -0.186599, 0.980810,
		0.837458, -0.525993, -0.148309,
		0.543574, 0.829766, 0.126552,
		36.217968, 29.468897, 27.830164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336872, 28.717604, 28.261566>,  <35.837467, 28.888060, 27.741577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336872, 28.717604, 28.261566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343716, 29.117302, 28.247610>,  <36.347820, 29.357121, 28.239237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343716, 29.117302, 28.247610>,  <36.336872, 28.717604, 28.261566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343716, 29.117302, 28.247610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006619, 0.034784, 0.999373,
		0.999832, -0.017328, -0.006019,
		0.017108, 0.999245, -0.034892,
		36.348846, 29.417076, 28.237143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825443, 28.885479, 28.743910>,  <36.336872, 28.717604, 28.261566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825443, 28.885479, 28.743910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602268, 29.212257, 28.685522>,  <36.468365, 29.408323, 28.650490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602268, 29.212257, 28.685522>,  <36.825443, 28.885479, 28.743910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602268, 29.212257, 28.685522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110349, 0.101296, 0.988717,
		0.822514, 0.567750, 0.033633,
		-0.557937, 0.816945, -0.145968,
		36.434887, 29.457340, 28.641731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.612572, 32.073997, 32.324951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214005, 32.046543, 32.344715>,  <39.974865, 32.030071, 32.356575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214005, 32.046543, 32.344715>,  <40.612572, 32.073997, 32.324951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214005, 32.046543, 32.344715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024206, 0.328317, 0.944257,
		-0.081033, 0.942071, -0.325479,
		-0.996417, -0.068638, 0.049408,
		39.915081, 32.025951, 32.359539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549744, 32.775776, 32.277897>,  <40.612572, 32.073997, 32.324951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549744, 32.775776, 32.277897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232182, 32.592587, 32.437881>,  <40.041645, 32.482674, 32.533875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232182, 32.592587, 32.437881>,  <40.549744, 32.775776, 32.277897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232182, 32.592587, 32.437881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023812, 0.680709, 0.732167,
		-0.607572, 0.571748, -0.551325,
		-0.793907, -0.457972, 0.399966,
		39.994011, 32.455196, 32.557873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262302, 33.355278, 32.618599>,  <40.549744, 32.775776, 32.277897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262302, 33.355278, 32.618599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066765, 33.041698, 32.771675>,  <39.949444, 32.853550, 32.863522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066765, 33.041698, 32.771675>,  <40.262302, 33.355278, 32.618599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066765, 33.041698, 32.771675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083243, 0.478594, 0.874082,
		-0.868393, 0.395430, -0.299214,
		-0.488840, -0.783953, 0.382691,
		39.920113, 32.806511, 32.886482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618034, 33.641560, 32.991611>,  <40.262302, 33.355278, 32.618599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618034, 33.641560, 32.991611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.655121, 33.267956, 33.129612>,  <39.677372, 33.043793, 33.212410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.655121, 33.267956, 33.129612>,  <39.618034, 33.641560, 32.991611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655121, 33.267956, 33.129612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125364, 0.332782, 0.934634,
		-0.987769, -0.129906, -0.086238,
		0.092716, -0.934013, 0.344997,
		39.682934, 32.987751, 33.233112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024948, 33.403965, 33.400864>,  <39.618034, 33.641560, 32.991611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024948, 33.403965, 33.400864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342171, 33.200569, 33.535030>,  <39.532505, 33.078533, 33.615532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342171, 33.200569, 33.535030>,  <39.024948, 33.403965, 33.400864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342171, 33.200569, 33.535030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221747, 0.271865, 0.936439,
		-0.567357, -0.817024, 0.102847,
		0.793054, -0.508489, 0.335417,
		39.580086, 33.048023, 33.635654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776470, 33.056381, 33.954388>,  <39.024948, 33.403965, 33.400864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776470, 33.056381, 33.954388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.170574, 33.048111, 34.022305>,  <39.407036, 33.043148, 34.063053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.170574, 33.048111, 34.022305>,  <38.776470, 33.056381, 33.954388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170574, 33.048111, 34.022305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165388, 0.138081, 0.976515,
		-0.043635, -0.990205, 0.132626,
		0.985263, -0.020676, 0.169793,
		39.466152, 33.041908, 34.073242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015175, 32.522766, 34.400242>,  <38.776470, 33.056381, 33.954388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015175, 32.522766, 34.400242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.324642, 32.773346, 34.438168>,  <39.510323, 32.923695, 34.460922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.324642, 32.773346, 34.438168>,  <39.015175, 32.522766, 34.400242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324642, 32.773346, 34.438168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266250, 0.185663, 0.945854,
		0.574929, -0.757025, 0.310435,
		0.773672, 0.626452, 0.094815,
		39.556744, 32.961281, 34.466614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351364, 32.365746, 35.059250>,  <39.015175, 32.522766, 34.400242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351364, 32.365746, 35.059250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500233, 32.728523, 34.980305>,  <39.589554, 32.946190, 34.932938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500233, 32.728523, 34.980305>,  <39.351364, 32.365746, 35.059250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500233, 32.728523, 34.980305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189286, 0.282331, 0.940457,
		0.908659, -0.312650, 0.276746,
		0.372167, 0.906939, -0.197362,
		39.611881, 33.000607, 34.921097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819607, 32.531639, 35.694622>,  <39.351364, 32.365746, 35.059250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819607, 32.531639, 35.694622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754208, 32.874542, 35.499329>,  <39.714970, 33.080284, 35.382153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754208, 32.874542, 35.499329>,  <39.819607, 32.531639, 35.694622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754208, 32.874542, 35.499329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038288, 0.489007, 0.871439,
		0.985800, 0.161173, -0.047130,
		-0.163499, 0.857260, -0.488235,
		39.705158, 33.131721, 35.352859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211292, 32.950062, 36.020782>,  <39.819607, 32.531639, 35.694622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211292, 32.950062, 36.020782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973366, 33.218987, 35.844513>,  <39.830612, 33.380341, 35.738750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973366, 33.218987, 35.844513>,  <40.211292, 32.950062, 36.020782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973366, 33.218987, 35.844513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045314, 0.519274, 0.853405,
		0.802586, 0.527585, -0.278406,
		-0.594813, 0.672315, -0.440669,
		39.794922, 33.420681, 35.712311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528233, 33.598316, 36.216122>,  <40.211292, 32.950062, 36.020782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528233, 33.598316, 36.216122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159943, 33.699627, 36.097385>,  <39.938969, 33.760414, 36.026142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159943, 33.699627, 36.097385>,  <40.528233, 33.598316, 36.216122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159943, 33.699627, 36.097385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200075, 0.346692, 0.916392,
		0.335011, 0.903138, -0.268534,
		-0.920727, 0.253274, -0.296841,
		39.883724, 33.775608, 36.008331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368328, 34.327808, 36.337856>,  <40.528233, 33.598316, 36.216122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368328, 34.327808, 36.337856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.036762, 34.105202, 36.360443>,  <39.837822, 33.971638, 36.373993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.036762, 34.105202, 36.360443>,  <40.368328, 34.327808, 36.337856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036762, 34.105202, 36.360443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274494, 0.492635, 0.825811,
		-0.487394, 0.669028, -0.561113,
		-0.828915, -0.556518, 0.056463,
		39.788086, 33.938248, 36.377380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877296, 34.744251, 36.600445>,  <40.368328, 34.327808, 36.337856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877296, 34.744251, 36.600445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732880, 34.379238, 36.677315>,  <39.646229, 34.160229, 36.723438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732880, 34.379238, 36.677315>,  <39.877296, 34.744251, 36.600445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732880, 34.379238, 36.677315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182070, 0.271089, 0.945178,
		-0.914603, 0.306260, -0.264020,
		-0.361043, -0.912533, 0.192178,
		39.624565, 34.105480, 36.734970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237164, 34.797604, 36.900082>,  <39.877296, 34.744251, 36.600445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237164, 34.797604, 36.900082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456116, 34.484798, 37.019299>,  <39.587486, 34.297115, 37.090828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456116, 34.484798, 37.019299>,  <39.237164, 34.797604, 36.900082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456116, 34.484798, 37.019299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139725, 0.265731, 0.953868,
		-0.825137, -0.563772, 0.036189,
		0.547381, -0.782015, 0.298038,
		39.620331, 34.250195, 37.108711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167778, 35.517021, 36.599995>,  <39.237164, 34.797604, 36.900082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167778, 35.517021, 36.599995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152889, 35.913956, 36.552879>,  <39.143955, 36.152119, 36.524609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152889, 35.913956, 36.552879>,  <39.167778, 35.517021, 36.599995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152889, 35.913956, 36.552879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257477, -0.123415, -0.958371,
		-0.965567, -0.005343, 0.260099,
		-0.037221, 0.992341, -0.117790,
		39.141724, 36.211658, 36.517544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517441, 35.669338, 36.248810>,  <39.167778, 35.517021, 36.599995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517441, 35.669338, 36.248810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720024, 36.009804, 36.193638>,  <38.841576, 36.214081, 36.160534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720024, 36.009804, 36.193638>,  <38.517441, 35.669338, 36.248810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720024, 36.009804, 36.193638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133988, -0.080338, -0.987721,
		-0.851790, 0.518723, 0.073357,
		0.506460, 0.851159, -0.137934,
		38.871964, 36.265152, 36.152256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134186, 36.126797, 35.798038>,  <38.517441, 35.669338, 36.248810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134186, 36.126797, 35.798038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493824, 36.301891, 35.799110>,  <38.709610, 36.406948, 35.799751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493824, 36.301891, 35.799110>,  <38.134186, 36.126797, 35.798038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493824, 36.301891, 35.799110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018615, 0.044345, -0.998843,
		-0.437347, 0.898010, 0.048019,
		0.899100, 0.437735, 0.002678,
		38.763554, 36.433212, 35.799915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170502, 36.659252, 35.364048>,  <38.134186, 36.126797, 35.798038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170502, 36.659252, 35.364048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555878, 36.553688, 35.382530>,  <38.787102, 36.490349, 35.393620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555878, 36.553688, 35.382530>,  <38.170502, 36.659252, 35.364048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555878, 36.553688, 35.382530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110175, 0.233035, -0.966207,
		0.244227, 0.935973, 0.253592,
		0.963439, -0.263913, 0.046208,
		38.844910, 36.474514, 35.396393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541122, 37.069279, 34.877277>,  <38.170502, 36.659252, 35.364048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541122, 37.069279, 34.877277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.808750, 36.782955, 34.957241>,  <38.969326, 36.611160, 35.005219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.808750, 36.782955, 34.957241>,  <38.541122, 37.069279, 34.877277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808750, 36.782955, 34.957241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250637, -0.035907, -0.967415,
		0.699658, 0.697377, 0.155382,
		0.669074, -0.715805, 0.199911,
		39.009472, 36.568214, 35.017216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109692, 37.301861, 34.553905>,  <38.541122, 37.069279, 34.877277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109692, 37.301861, 34.553905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.113155, 36.904026, 34.595325>,  <39.115234, 36.665325, 34.620178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.113155, 36.904026, 34.595325>,  <39.109692, 37.301861, 34.553905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113155, 36.904026, 34.595325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113583, -0.101908, -0.988288,
		0.993491, 0.020316, 0.112086,
		0.008655, -0.994586, 0.103552,
		39.115753, 36.605652, 34.626392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557083, 37.073715, 34.056587>,  <39.109692, 37.301861, 34.553905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557083, 37.073715, 34.056587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387249, 36.721252, 34.139812>,  <39.285351, 36.509773, 34.189747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387249, 36.721252, 34.139812>,  <39.557083, 37.073715, 34.056587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387249, 36.721252, 34.139812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292165, -0.350852, -0.889686,
		0.856953, -0.316958, 0.406410,
		-0.424583, -0.881158, 0.208060,
		39.259872, 36.456905, 34.202232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100006, 36.604580, 34.148212>,  <39.557083, 37.073715, 34.056587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100006, 36.604580, 34.148212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786957, 36.368328, 34.069561>,  <39.599129, 36.226578, 34.022369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786957, 36.368328, 34.069561>,  <40.100006, 36.604580, 34.148212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786957, 36.368328, 34.069561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484235, -0.379127, -0.788530,
		0.391183, -0.712332, 0.582716,
		-0.782619, -0.590631, -0.196628,
		39.552170, 36.191139, 34.010574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387798, 36.073620, 33.707676>,  <40.100006, 36.604580, 34.148212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387798, 36.073620, 33.707676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.994583, 36.012856, 33.666561>,  <39.758656, 35.976395, 33.641891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.994583, 36.012856, 33.666561>,  <40.387798, 36.073620, 33.707676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994583, 36.012856, 33.666561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143145, -0.285031, -0.947769,
		0.114683, -0.946403, 0.301942,
		-0.983035, -0.151914, -0.102785,
		39.699673, 35.967281, 33.635727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302502, 35.410057, 33.354683>,  <40.387798, 36.073620, 33.707676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302502, 35.410057, 33.354683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964287, 35.610176, 33.280087>,  <39.761360, 35.730247, 33.235329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964287, 35.610176, 33.280087>,  <40.302502, 35.410057, 33.354683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964287, 35.610176, 33.280087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070544, -0.241538, -0.967824,
		-0.529242, -0.831483, 0.168936,
		-0.845533, 0.500295, -0.186488,
		39.710629, 35.760265, 33.224140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873505, 34.974041, 32.909702>,  <40.302502, 35.410057, 33.354683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873505, 34.974041, 32.909702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730171, 35.345810, 32.874439>,  <39.644173, 35.568871, 32.853283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730171, 35.345810, 32.874439>,  <39.873505, 34.974041, 32.909702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730171, 35.345810, 32.874439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022245, -0.085900, -0.996056,
		-0.933329, -0.358879, 0.010106,
		-0.358332, 0.929423, -0.088156,
		39.622673, 35.624638, 32.847992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326801, 34.935760, 32.520939>,  <39.873505, 34.974041, 32.909702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326801, 34.935760, 32.520939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379646, 35.330215, 32.480778>,  <39.411354, 35.566887, 32.456680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379646, 35.330215, 32.480778>,  <39.326801, 34.935760, 32.520939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379646, 35.330215, 32.480778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047766, -0.094841, -0.994346,
		-0.990083, 0.136165, 0.034574,
		0.132116, 0.986136, -0.100404,
		39.419281, 35.626057, 32.450657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800606, 35.173157, 32.051521>,  <39.326801, 34.935760, 32.520939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800606, 35.173157, 32.051521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.086597, 35.450829, 32.018242>,  <39.258194, 35.617432, 31.998276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.086597, 35.450829, 32.018242>,  <38.800606, 35.173157, 32.051521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086597, 35.450829, 32.018242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098680, -0.017604, -0.994964,
		-0.692144, 0.719590, 0.055915,
		0.714982, 0.694176, -0.083194,
		39.301090, 35.659081, 31.993284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610699, 35.575634, 31.497841>,  <38.800606, 35.173157, 32.051521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610699, 35.575634, 31.497841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.002377, 35.648510, 31.533600>,  <39.237381, 35.692238, 31.555056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.002377, 35.648510, 31.533600>,  <38.610699, 35.575634, 31.497841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002377, 35.648510, 31.533600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085188, 0.030807, -0.995889,
		-0.184199, 0.982780, 0.014645,
		0.979191, 0.182194, 0.089396,
		39.296135, 35.703167, 31.560419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069656, 36.158092, 31.402325>,  <38.610699, 35.575634, 31.497841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069656, 36.158092, 31.402325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673000, 36.117519, 31.370422>,  <37.435005, 36.093174, 31.351280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673000, 36.117519, 31.370422>,  <38.069656, 36.158092, 31.402325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673000, 36.117519, 31.370422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108353, 0.318943, 0.941560,
		-0.070072, 0.942330, -0.327268,
		-0.991640, -0.101437, -0.079756,
		37.375507, 36.087090, 31.346497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843830, 36.715565, 31.682016>,  <38.069656, 36.158092, 31.402325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843830, 36.715565, 31.682016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.521446, 36.478817, 31.686440>,  <37.328018, 36.336769, 31.689093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.521446, 36.478817, 31.686440>,  <37.843830, 36.715565, 31.682016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521446, 36.478817, 31.686440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156484, 0.231027, 0.960281,
		-0.570917, 0.772214, -0.278816,
		-0.805957, -0.591871, 0.011058,
		37.279659, 36.301254, 31.689756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451504, 37.015148, 32.140377>,  <37.843830, 36.715565, 31.682016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451504, 37.015148, 32.140377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.246067, 36.673168, 32.111298>,  <37.122807, 36.467979, 32.093849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.246067, 36.673168, 32.111298>,  <37.451504, 37.015148, 32.140377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246067, 36.673168, 32.111298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213404, 0.045214, 0.975917,
		-0.831074, 0.516736, -0.205671,
		-0.513591, -0.854950, -0.072697,
		37.091991, 36.416683, 32.089489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899837, 37.134434, 32.423908>,  <37.451504, 37.015148, 32.140377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899837, 37.134434, 32.423908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.924862, 36.736023, 32.449249>,  <36.939877, 36.496975, 32.464455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.924862, 36.736023, 32.449249>,  <36.899837, 37.134434, 32.423908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924862, 36.736023, 32.449249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342860, 0.038168, 0.938611,
		-0.937301, -0.080440, -0.339111,
		0.062559, -0.996028, 0.063354,
		36.943630, 36.437214, 32.468254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240986, 36.964470, 32.652763>,  <36.899837, 37.134434, 32.423908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240986, 36.964470, 32.652763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.492859, 36.666012, 32.739265>,  <36.643982, 36.486938, 32.791168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.492859, 36.666012, 32.739265>,  <36.240986, 36.964470, 32.652763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492859, 36.666012, 32.739265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297601, 0.025450, 0.954351,
		-0.717589, -0.665295, -0.206028,
		0.629682, -0.746147, 0.216255,
		36.681763, 36.442169, 32.804142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827351, 36.531654, 33.168011>,  <36.240986, 36.964470, 32.652763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827351, 36.531654, 33.168011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.204170, 36.397633, 33.174625>,  <36.430264, 36.317219, 33.178593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.204170, 36.397633, 33.174625>,  <35.827351, 36.531654, 33.168011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204170, 36.397633, 33.174625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126971, -0.310506, 0.942053,
		-0.310506, -0.889564, -0.335055,
		-0.942053, 0.335055, -0.016535,
		36.486786, 36.297115, 33.179585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723335, 35.791454, 33.337200>,  <35.827351, 36.531654, 33.168011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723335, 35.791454, 33.337200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.075695, 35.949272, 33.441784>,  <36.287109, 36.043964, 33.504532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.075695, 35.949272, 33.441784>,  <35.723335, 35.791454, 33.337200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075695, 35.949272, 33.441784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188844, -0.213553, 0.958505,
		0.434008, -0.893717, -0.113610,
		0.880894, 0.394544, 0.261457,
		36.339962, 36.067635, 33.520222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212189, 35.310883, 33.770046>,  <35.723335, 35.791454, 33.337200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212189, 35.310883, 33.770046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.297291, 35.695946, 33.837013>,  <36.348351, 35.926983, 33.877193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.297291, 35.695946, 33.837013>,  <36.212189, 35.310883, 33.770046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297291, 35.695946, 33.837013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276727, -0.104959, 0.955199,
		0.937101, -0.249548, 0.244063,
		0.212752, 0.962658, 0.167414,
		36.361115, 35.984741, 33.887238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243458, 35.283844, 34.474308>,  <36.212189, 35.310883, 33.770046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243458, 35.283844, 34.474308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.220024, 35.679817, 34.422760>,  <36.205963, 35.917400, 34.391830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.220024, 35.679817, 34.422760>,  <36.243458, 35.283844, 34.474308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220024, 35.679817, 34.422760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336895, 0.101913, 0.936011,
		0.939718, 0.098249, 0.327532,
		-0.058583, 0.989930, -0.128869,
		36.202450, 35.976795, 34.384098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379147, 35.487312, 35.116493>,  <36.243458, 35.283844, 34.474308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379147, 35.487312, 35.116493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234631, 35.820339, 34.948536>,  <36.147923, 36.020153, 34.847763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234631, 35.820339, 34.948536>,  <36.379147, 35.487312, 35.116493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234631, 35.820339, 34.948536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360175, 0.290752, 0.886418,
		0.860084, 0.471487, 0.194823,
		-0.361289, 0.832564, -0.419889,
		36.126244, 36.070110, 34.822571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449635, 35.964169, 35.730087>,  <36.379147, 35.487312, 35.116493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449635, 35.964169, 35.730087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.186344, 36.126129, 35.476223>,  <36.028370, 36.223305, 35.323902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.186344, 36.126129, 35.476223>,  <36.449635, 35.964169, 35.730087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186344, 36.126129, 35.476223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471532, 0.435446, 0.766840,
		0.586856, 0.804016, -0.095696,
		-0.658222, 0.404901, -0.634664,
		35.988876, 36.247601, 35.285824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384609, 36.740536, 35.866219>,  <36.449635, 35.964169, 35.730087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384609, 36.740536, 35.866219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055889, 36.646030, 35.658821>,  <35.858658, 36.589329, 35.534382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055889, 36.646030, 35.658821>,  <36.384609, 36.740536, 35.866219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055889, 36.646030, 35.658821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567696, 0.417274, 0.709650,
		0.048690, 0.877533, -0.477038,
		-0.821797, -0.236259, -0.518489,
		35.809349, 36.575153, 35.503273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.715633, 36.525864, 27.282927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484024, 36.217594, 27.389357>,  <37.345058, 36.032631, 27.453215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484024, 36.217594, 27.389357>,  <37.715633, 36.525864, 27.282927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484024, 36.217594, 27.389357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009380, 0.332624, 0.943013,
		-0.815260, 0.543526, -0.199824,
		-0.579019, -0.770675, 0.266077,
		37.310318, 35.986393, 27.469179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434376, 36.812893, 27.911753>,  <37.715633, 36.525864, 27.282927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434376, 36.812893, 27.911753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321720, 36.429192, 27.920876>,  <37.254128, 36.198971, 27.926350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321720, 36.429192, 27.920876>,  <37.434376, 36.812893, 27.911753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321720, 36.429192, 27.920876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061343, 0.041723, 0.997244,
		-0.957557, 0.279464, -0.070594,
		-0.281639, -0.959249, 0.022809,
		37.237228, 36.141418, 27.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984390, 36.786221, 28.421082>,  <37.434376, 36.812893, 27.911753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984390, 36.786221, 28.421082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031918, 36.390526, 28.386915>,  <37.060432, 36.153111, 28.366415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031918, 36.390526, 28.386915>,  <36.984390, 36.786221, 28.421082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031918, 36.390526, 28.386915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144720, -0.102360, 0.984164,
		-0.982313, -0.104571, -0.155324,
		0.118814, -0.989236, -0.085416,
		37.067562, 36.093754, 28.361290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330971, 36.446983, 28.610073>,  <36.984390, 36.786221, 28.421082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330971, 36.446983, 28.610073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649422, 36.214512, 28.677504>,  <36.840492, 36.075031, 28.717962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649422, 36.214512, 28.677504>,  <36.330971, 36.446983, 28.610073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649422, 36.214512, 28.677504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139359, 0.095005, 0.985674,
		-0.588866, -0.808213, -0.005357,
		0.796125, -0.581177, 0.168577,
		36.888260, 36.040157, 28.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146179, 35.908432, 29.180944>,  <36.330971, 36.446983, 28.610073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146179, 35.908432, 29.180944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544220, 35.888283, 29.214973>,  <36.783043, 35.876194, 29.235390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544220, 35.888283, 29.214973>,  <36.146179, 35.908432, 29.180944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544220, 35.888283, 29.214973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080395, 0.088517, 0.992825,
		-0.057547, -0.994800, 0.084033,
		0.995101, -0.050378, 0.085071,
		36.842751, 35.873169, 29.240496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328957, 35.419083, 29.671326>,  <36.146179, 35.908432, 29.180944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328957, 35.419083, 29.671326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622021, 35.690170, 29.646315>,  <36.797859, 35.852821, 29.631308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622021, 35.690170, 29.646315>,  <36.328957, 35.419083, 29.671326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622021, 35.690170, 29.646315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041104, 0.135768, 0.989888,
		0.679355, -0.722679, 0.127328,
		0.732657, 0.677719, -0.062530,
		36.841820, 35.893486, 29.627556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712959, 35.310307, 30.260990>,  <36.328957, 35.419083, 29.671326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712959, 35.310307, 30.260990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860767, 35.667809, 30.159279>,  <36.949451, 35.882309, 30.098251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860767, 35.667809, 30.159279>,  <36.712959, 35.310307, 30.260990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860767, 35.667809, 30.159279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087479, 0.238974, 0.967077,
		0.925095, -0.379601, 0.010122,
		0.369523, 0.893753, -0.254281,
		36.971622, 35.935936, 30.082994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554737, 35.314896, 30.414856>,  <36.712959, 35.310307, 30.260990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554737, 35.314896, 30.414856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386890, 35.677967, 30.417671>,  <37.286182, 35.895809, 30.419361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386890, 35.677967, 30.417671>,  <37.554737, 35.314896, 30.414856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386890, 35.677967, 30.417671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291018, 0.127184, 0.948226,
		0.859785, 0.399941, -0.317518,
		-0.419617, 0.907674, 0.007039,
		37.261005, 35.950268, 30.419783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068951, 35.730675, 30.823862>,  <37.554737, 35.314896, 30.414856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068951, 35.730675, 30.823862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713802, 35.914021, 30.839798>,  <37.500713, 36.024029, 30.849360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713802, 35.914021, 30.839798>,  <38.068951, 35.730675, 30.823862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713802, 35.914021, 30.839798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065794, 0.040794, 0.996999,
		0.455362, 0.887829, -0.066378,
		-0.887872, 0.458363, 0.039838,
		37.447441, 36.051529, 30.851749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741741, 36.156464, 31.077372>,  <38.068951, 35.730675, 30.823862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741741, 36.156464, 31.077372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118874, 36.027046, 31.109322>,  <39.345154, 35.949394, 31.128492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118874, 36.027046, 31.109322>,  <38.741741, 36.156464, 31.077372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118874, 36.027046, 31.109322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105824, 0.063390, -0.992362,
		0.316010, 0.944087, 0.094005,
		0.942836, -0.323545, 0.079875,
		39.401726, 35.929981, 31.133284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206470, 36.571491, 30.595188>,  <38.741741, 36.156464, 31.077372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206470, 36.571491, 30.595188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399551, 36.228485, 30.666361>,  <39.515400, 36.022682, 30.709064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399551, 36.228485, 30.666361>,  <39.206470, 36.571491, 30.595188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399551, 36.228485, 30.666361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235601, -0.068530, -0.969430,
		0.843498, 0.509869, 0.168953,
		0.482704, -0.857518, 0.177931,
		39.544361, 35.971230, 30.719740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827034, 36.557446, 30.196505>,  <39.206470, 36.571491, 30.595188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827034, 36.557446, 30.196505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766888, 36.167000, 30.259233>,  <39.730801, 35.932732, 30.296871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766888, 36.167000, 30.259233>,  <39.827034, 36.557446, 30.196505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766888, 36.167000, 30.259233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005060, -0.159384, -0.987204,
		0.988618, -0.147647, 0.028905,
		-0.150365, -0.976113, 0.156822,
		39.721779, 35.874165, 30.306280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374390, 36.173962, 29.828526>,  <39.827034, 36.557446, 30.196505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374390, 36.173962, 29.828526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066010, 35.924465, 29.880033>,  <39.880981, 35.774765, 29.910938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066010, 35.924465, 29.880033>,  <40.374390, 36.173962, 29.828526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066010, 35.924465, 29.880033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023497, -0.229900, -0.972931,
		0.636466, -0.747052, 0.191897,
		-0.770947, -0.623746, 0.128770,
		39.834724, 35.737343, 29.918665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652935, 35.488274, 29.567568>,  <40.374390, 36.173962, 29.828526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652935, 35.488274, 29.567568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258114, 35.432274, 29.598902>,  <40.021221, 35.398674, 29.617702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258114, 35.432274, 29.598902>,  <40.652935, 35.488274, 29.567568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258114, 35.432274, 29.598902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007220, -0.449054, -0.893475,
		0.160262, -0.882469, 0.442228,
		-0.987048, -0.139997, 0.078337,
		39.961998, 35.390274, 29.622402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447983, 34.735443, 29.354330>,  <40.652935, 35.488274, 29.567568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447983, 34.735443, 29.354330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097046, 34.918514, 29.296631>,  <39.886482, 35.028355, 29.262011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097046, 34.918514, 29.296631>,  <40.447983, 34.735443, 29.354330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097046, 34.918514, 29.296631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097871, -0.464943, -0.879914,
		-0.469821, -0.757846, 0.452700,
		-0.877319, 0.457709, -0.144269,
		39.833843, 35.055817, 29.253357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982063, 34.228443, 29.098293>,  <40.447983, 34.735443, 29.354330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982063, 34.228443, 29.098293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800529, 34.574276, 29.012005>,  <39.691608, 34.781776, 28.960232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800529, 34.574276, 29.012005>,  <39.982063, 34.228443, 29.098293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800529, 34.574276, 29.012005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284084, -0.369836, -0.884600,
		-0.844590, -0.340178, 0.413457,
		-0.453833, 0.864581, -0.215721,
		39.664379, 34.833649, 28.947289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378185, 34.022247, 28.793434>,  <39.982063, 34.228443, 29.098293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378185, 34.022247, 28.793434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438488, 34.397598, 28.669041>,  <39.474670, 34.622810, 28.594404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438488, 34.397598, 28.669041>,  <39.378185, 34.022247, 28.793434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438488, 34.397598, 28.669041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017551, -0.311988, -0.949924,
		-0.988415, 0.148669, -0.030566,
		0.150760, 0.938382, -0.310983,
		39.483715, 34.679111, 28.575747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883083, 34.129829, 28.296240>,  <39.378185, 34.022247, 28.793434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883083, 34.129829, 28.296240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161785, 34.408554, 28.228134>,  <39.329006, 34.575787, 28.187271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161785, 34.408554, 28.228134>,  <38.883083, 34.129829, 28.296240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161785, 34.408554, 28.228134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069891, -0.170287, -0.982913,
		-0.713895, 0.696751, -0.069948,
		0.696756, 0.696807, -0.170264,
		39.370811, 34.617596, 28.177055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685642, 34.576935, 27.724081>,  <38.883083, 34.129829, 28.296240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685642, 34.576935, 27.724081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082272, 34.622677, 27.748434>,  <39.320248, 34.650124, 27.763046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082272, 34.622677, 27.748434>,  <38.685642, 34.576935, 27.724081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082272, 34.622677, 27.748434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077200, -0.144150, -0.986540,
		-0.104041, 0.982926, -0.151764,
		0.991572, 0.114357, 0.060885,
		39.379742, 34.656982, 27.766699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914551, 34.966957, 27.109892>,  <38.685642, 34.576935, 27.724081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914551, 34.966957, 27.109892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263115, 34.809620, 27.227142>,  <39.472256, 34.715218, 27.297493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263115, 34.809620, 27.227142>,  <38.914551, 34.966957, 27.109892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263115, 34.809620, 27.227142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233047, -0.193856, -0.952948,
		0.431659, 0.898722, -0.077261,
		0.871412, -0.393343, 0.293124,
		39.524540, 34.691616, 27.315079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413147, 35.217236, 26.649204>,  <38.914551, 34.966957, 27.109892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413147, 35.217236, 26.649204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550156, 34.872383, 26.798553>,  <39.632362, 34.665470, 26.888163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550156, 34.872383, 26.798553>,  <39.413147, 35.217236, 26.649204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550156, 34.872383, 26.798553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335115, -0.259157, -0.905834,
		0.877711, 0.435391, 0.200147,
		0.342523, -0.862132, 0.373371,
		39.652912, 34.613743, 26.910564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025982, 35.112190, 26.287689>,  <39.413147, 35.217236, 26.649204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025982, 35.112190, 26.287689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912994, 34.756229, 26.430958>,  <39.845203, 34.542652, 26.516918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912994, 34.756229, 26.430958>,  <40.025982, 35.112190, 26.287689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912994, 34.756229, 26.430958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207802, -0.421276, -0.882805,
		0.936498, -0.174937, 0.303921,
		-0.282470, -0.889901, 0.358172,
		39.828255, 34.489258, 26.538410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488506, 34.683022, 25.940060>,  <40.025982, 35.112190, 26.287689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488506, 34.683022, 25.940060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225300, 34.414425, 26.076366>,  <40.067375, 34.253269, 26.158152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225300, 34.414425, 26.076366>,  <40.488506, 34.683022, 25.940060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225300, 34.414425, 26.076366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098534, -0.525434, -0.845110,
		0.746533, -0.522515, 0.411906,
		-0.658012, -0.671489, 0.340768,
		40.027897, 34.212978, 26.178596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.632999, 30.873936, 26.800648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.840534, 31.212095, 26.749876>,  <33.965054, 31.414991, 26.719414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.840534, 31.212095, 26.749876>,  <33.632999, 30.873936, 26.800648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840534, 31.212095, 26.749876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108058, 0.082430, 0.990721,
		0.848018, -0.527736, -0.048585,
		0.518834, 0.845399, -0.126929,
		33.996185, 31.465715, 26.711798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094334, 30.793234, 27.354879>,  <33.632999, 30.873936, 26.800648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094334, 30.793234, 27.354879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.182499, 31.174553, 27.272276>,  <34.235397, 31.403343, 27.222713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.182499, 31.174553, 27.272276>,  <34.094334, 30.793234, 27.354879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182499, 31.174553, 27.272276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161472, 0.173132, 0.971572,
		0.961949, -0.247489, -0.115771,
		0.220410, 0.953297, -0.206507,
		34.248623, 31.460543, 27.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822262, 30.945723, 27.606131>,  <34.094334, 30.793234, 27.354879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822262, 30.945723, 27.606131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.592495, 31.273071, 27.599075>,  <34.454636, 31.469481, 27.594841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.592495, 31.273071, 27.599075>,  <34.822262, 30.945723, 27.606131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592495, 31.273071, 27.599075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111680, 0.099700, 0.988730,
		0.810910, 0.565972, -0.148665,
		-0.574416, 0.818374, -0.017640,
		34.420170, 31.518583, 27.593782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169666, 31.367918, 28.089989>,  <34.822262, 30.945723, 27.606131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169666, 31.367918, 28.089989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815426, 31.548496, 28.046350>,  <34.602882, 31.656843, 28.020166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815426, 31.548496, 28.046350>,  <35.169666, 31.367918, 28.089989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815426, 31.548496, 28.046350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029769, 0.179243, 0.983354,
		0.463487, 0.874110, -0.145299,
		-0.885603, 0.451447, -0.109098,
		34.549744, 31.683929, 28.013620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268559, 32.058441, 28.220091>,  <35.169666, 31.367918, 28.089989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268559, 32.058441, 28.220091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.882153, 31.996113, 28.302584>,  <34.650307, 31.958715, 28.352079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.882153, 31.996113, 28.302584>,  <35.268559, 32.058441, 28.220091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882153, 31.996113, 28.302584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137741, 0.364805, 0.920839,
		-0.218721, 0.917953, -0.330945,
		-0.966017, -0.155822, 0.206230,
		34.592346, 31.949366, 28.364452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959118, 32.695621, 28.600599>,  <35.268559, 32.058441, 28.220091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959118, 32.695621, 28.600599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.705315, 32.398476, 28.685976>,  <34.553032, 32.220188, 28.737202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.705315, 32.398476, 28.685976>,  <34.959118, 32.695621, 28.600599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705315, 32.398476, 28.685976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103487, 0.355314, 0.929001,
		-0.765960, 0.567367, -0.302325,
		-0.634505, -0.742864, 0.213442,
		34.514965, 32.175617, 28.750008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556973, 33.034309, 28.987230>,  <34.959118, 32.695621, 28.600599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556973, 33.034309, 28.987230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515388, 32.648548, 29.084488>,  <34.490440, 32.417091, 29.142843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515388, 32.648548, 29.084488>,  <34.556973, 33.034309, 28.987230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515388, 32.648548, 29.084488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067289, 0.237088, 0.969155,
		-0.992303, 0.117111, 0.040247,
		-0.103956, -0.964403, 0.243144,
		34.484203, 32.359226, 29.157431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988529, 33.045639, 29.397676>,  <34.556973, 33.034309, 28.987230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988529, 33.045639, 29.397676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.169296, 32.697834, 29.477392>,  <34.277756, 32.489151, 29.525221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.169296, 32.697834, 29.477392>,  <33.988529, 33.045639, 29.397676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169296, 32.697834, 29.477392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174622, 0.132852, 0.975632,
		-0.874804, -0.475701, -0.091799,
		0.451914, -0.869516, 0.199288,
		34.304871, 32.436977, 29.537178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488995, 32.697662, 29.825386>,  <33.988529, 33.045639, 29.397676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488995, 32.697662, 29.825386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829823, 32.505016, 29.907389>,  <34.034321, 32.389431, 29.956591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829823, 32.505016, 29.907389>,  <33.488995, 32.697662, 29.825386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829823, 32.505016, 29.907389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245691, -0.022169, 0.969095,
		-0.462183, -0.876104, -0.137217,
		0.852070, -0.481612, 0.205005,
		34.085445, 32.360535, 29.968889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343433, 32.204239, 30.322090>,  <33.488995, 32.697662, 29.825386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343433, 32.204239, 30.322090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737637, 32.268536, 30.343752>,  <33.974159, 32.307114, 30.356749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737637, 32.268536, 30.343752>,  <33.343433, 32.204239, 30.322090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737637, 32.268536, 30.343752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064151, 0.057650, 0.996274,
		0.157021, -0.985311, 0.067127,
		0.985510, 0.160742, 0.054157,
		34.033291, 32.316757, 30.359999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496971, 31.956526, 30.908573>,  <33.343433, 32.204239, 30.322090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496971, 31.956526, 30.908573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843056, 32.143524, 30.836071>,  <34.050705, 32.255722, 30.792570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843056, 32.143524, 30.836071>,  <33.496971, 31.956526, 30.908573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843056, 32.143524, 30.836071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127459, 0.144553, 0.981254,
		0.484935, -0.872095, 0.065482,
		0.865212, 0.467498, -0.181255,
		34.102619, 32.283772, 30.781694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033173, 31.550375, 31.217897>,  <33.496971, 31.956526, 30.908573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033173, 31.550375, 31.217897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119682, 31.939085, 31.180214>,  <34.171589, 32.172310, 31.157604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119682, 31.939085, 31.180214>,  <34.033173, 31.550375, 31.217897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119682, 31.939085, 31.180214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144943, 0.063466, 0.987403,
		0.965514, -0.227204, -0.127126,
		0.216274, 0.971777, -0.094209,
		34.184563, 32.230618, 31.151951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544746, 31.587179, 31.663136>,  <34.033173, 31.550375, 31.217897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544746, 31.587179, 31.663136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428593, 31.965473, 31.604803>,  <34.358902, 32.192448, 31.569803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428593, 31.965473, 31.604803>,  <34.544746, 31.587179, 31.663136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428593, 31.965473, 31.604803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266233, 0.226228, 0.936985,
		0.919128, 0.233261, -0.317479,
		-0.290384, 0.945733, -0.145831,
		34.341476, 32.249191, 31.561054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120338, 31.872379, 31.910656>,  <34.544746, 31.587179, 31.663136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120338, 31.872379, 31.910656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821724, 32.138130, 31.924952>,  <34.642555, 32.297581, 31.933529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821724, 32.138130, 31.924952>,  <35.120338, 31.872379, 31.910656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821724, 32.138130, 31.924952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207368, 0.181298, 0.961317,
		0.632199, 0.725074, -0.273117,
		-0.746541, 0.664379, 0.035741,
		34.597763, 32.337444, 31.935675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904301, 31.939241, 31.984959>,  <35.120338, 31.872379, 31.910656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904301, 31.939241, 31.984959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999638, 31.608658, 32.188980>,  <36.056839, 31.410307, 32.311394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999638, 31.608658, 32.188980>,  <35.904301, 31.939241, 31.984959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999638, 31.608658, 32.188980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201051, -0.471823, -0.858465,
		0.950143, 0.307156, 0.053705,
		0.238344, -0.826461, 0.510053,
		36.071140, 31.360720, 32.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588070, 31.796757, 31.706511>,  <35.904301, 31.939241, 31.984959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588070, 31.796757, 31.706511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436787, 31.467958, 31.876818>,  <36.346016, 31.270679, 31.979002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436787, 31.467958, 31.876818>,  <36.588070, 31.796757, 31.706511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436787, 31.467958, 31.876818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200645, -0.521789, -0.829143,
		0.903713, -0.228164, 0.362276,
		-0.378213, -0.821996, 0.425768,
		36.323322, 31.221359, 32.004547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040001, 31.311399, 31.501698>,  <36.588070, 31.796757, 31.706511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040001, 31.311399, 31.501698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715992, 31.107674, 31.617947>,  <36.521587, 30.985437, 31.687696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715992, 31.107674, 31.617947>,  <37.040001, 31.311399, 31.501698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715992, 31.107674, 31.617947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048709, -0.552332, -0.832200,
		0.584370, -0.659946, 0.472210,
		-0.810024, -0.509314, 0.290621,
		36.472984, 30.954880, 31.705133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149174, 30.692228, 31.196136>,  <37.040001, 31.311399, 31.501698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149174, 30.692228, 31.196136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755474, 30.676962, 31.265182>,  <36.519253, 30.667803, 31.306610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755474, 30.676962, 31.265182>,  <37.149174, 30.692228, 31.196136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755474, 30.676962, 31.265182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121734, -0.561713, -0.818327,
		0.128192, -0.826452, 0.548219,
		-0.984250, -0.038166, 0.172614,
		36.460197, 30.665512, 31.316967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946980, 29.953735, 31.264215>,  <37.149174, 30.692228, 31.196136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946980, 29.953735, 31.264215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611477, 30.152617, 31.175419>,  <36.410175, 30.271946, 31.122141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611477, 30.152617, 31.175419>,  <36.946980, 29.953735, 31.264215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611477, 30.152617, 31.175419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201949, -0.662665, -0.721174,
		-0.505679, -0.560055, 0.656222,
		-0.838753, 0.497205, -0.221993,
		36.359852, 30.301779, 31.108820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590454, 29.446423, 30.921116>,  <36.946980, 29.953735, 31.264215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590454, 29.446423, 30.921116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379311, 29.769201, 30.815128>,  <36.252625, 29.962868, 30.751535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379311, 29.769201, 30.815128>,  <36.590454, 29.446423, 30.921116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379311, 29.769201, 30.815128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166291, -0.404122, -0.899462,
		-0.832897, -0.430723, 0.347505,
		-0.527854, 0.806946, -0.264967,
		36.220955, 30.011286, 30.735638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971794, 29.294796, 30.593992>,  <36.590454, 29.446423, 30.921116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971794, 29.294796, 30.593992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051201, 29.661465, 30.455252>,  <36.098846, 29.881466, 30.372007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051201, 29.661465, 30.455252>,  <35.971794, 29.294796, 30.593992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051201, 29.661465, 30.455252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177533, -0.314407, -0.932540,
		-0.963884, 0.246703, 0.100324,
		0.198518, 0.916671, -0.346850,
		36.110756, 29.936466, 30.351196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471951, 29.444807, 30.081884>,  <35.971794, 29.294796, 30.593992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471951, 29.444807, 30.081884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760677, 29.707340, 29.994062>,  <35.933914, 29.864861, 29.941368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760677, 29.707340, 29.994062>,  <35.471951, 29.444807, 30.081884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760677, 29.707340, 29.994062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159136, -0.151340, -0.975588,
		-0.673538, 0.739137, -0.004794,
		0.721819, 0.656333, -0.219556,
		35.977222, 29.904240, 29.928196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320778, 29.652290, 29.490679>,  <35.471951, 29.444807, 30.081884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320778, 29.652290, 29.490679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709042, 29.747744, 29.478811>,  <35.941998, 29.805016, 29.471691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709042, 29.747744, 29.478811>,  <35.320778, 29.652290, 29.490679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709042, 29.747744, 29.478811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030705, -0.245360, -0.968946,
		-0.238503, 0.939602, -0.245488,
		0.970656, 0.238634, -0.029668,
		36.000240, 29.819334, 29.469912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319248, 30.049131, 28.951765>,  <35.320778, 29.652290, 29.490679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319248, 30.049131, 28.951765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.703068, 29.948378, 29.002069>,  <35.933361, 29.887924, 29.032251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.703068, 29.948378, 29.002069>,  <35.319248, 30.049131, 28.951765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703068, 29.948378, 29.002069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139262, 0.036434, -0.989585,
		0.244680, 0.967071, 0.070038,
		0.959551, -0.251886, 0.125761,
		35.990932, 29.872812, 29.039799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694237, 30.530544, 28.490143>,  <35.319248, 30.049131, 28.951765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694237, 30.530544, 28.490143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923653, 30.211594, 28.565228>,  <36.061302, 30.020224, 28.610279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923653, 30.211594, 28.565228>,  <35.694237, 30.530544, 28.490143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923653, 30.211594, 28.565228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404330, 0.076266, -0.911428,
		0.712437, 0.598641, 0.366146,
		0.573542, -0.797379, 0.187713,
		36.095715, 29.972380, 28.621542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311874, 30.736973, 28.191164>,  <35.694237, 30.530544, 28.490143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311874, 30.736973, 28.191164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331589, 30.338385, 28.218334>,  <36.343418, 30.099232, 28.234636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331589, 30.338385, 28.218334>,  <36.311874, 30.736973, 28.191164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331589, 30.338385, 28.218334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264656, -0.052546, -0.962910,
		0.963083, 0.065434, 0.261132,
		0.049286, -0.996472, 0.067924,
		36.346375, 30.039442, 28.238712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984234, 30.494675, 27.991306>,  <36.311874, 30.736973, 28.191164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984234, 30.494675, 27.991306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751957, 30.172369, 27.944754>,  <36.612591, 29.978985, 27.916822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751957, 30.172369, 27.944754>,  <36.984234, 30.494675, 27.991306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751957, 30.172369, 27.944754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298846, -0.077996, -0.951108,
		0.757291, -0.587079, 0.286091,
		-0.580690, -0.805764, -0.116381,
		36.577751, 29.930639, 27.909840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408703, 29.967825, 27.739309>,  <36.984234, 30.494675, 27.991306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408703, 29.967825, 27.739309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029713, 29.895138, 27.634039>,  <36.802319, 29.851526, 27.570877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029713, 29.895138, 27.634039>,  <37.408703, 29.967825, 27.739309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029713, 29.895138, 27.634039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289026, -0.134227, -0.947864,
		0.136919, -0.974146, 0.179699,
		-0.947479, -0.181719, -0.263175,
		36.745468, 29.840622, 27.555086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118282, 29.833822, 27.625879>,  <37.408703, 29.967825, 27.739309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118282, 29.833822, 27.625879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498981, 29.836679, 27.503157>,  <38.727402, 29.838394, 27.429523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498981, 29.836679, 27.503157>,  <38.118282, 29.833822, 27.625879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498981, 29.836679, 27.503157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297298, 0.226558, 0.927516,
		0.076134, -0.973972, 0.213502,
		0.951745, 0.007141, -0.306809,
		38.784504, 29.838821, 27.411114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610870, 29.397335, 28.079302>,  <38.118282, 29.833822, 27.625879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610870, 29.397335, 28.079302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.822433, 29.684645, 27.898485>,  <38.949371, 29.857031, 27.789995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.822433, 29.684645, 27.898485>,  <38.610870, 29.397335, 28.079302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822433, 29.684645, 27.898485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369863, 0.284311, 0.884516,
		0.763847, -0.635017, -0.115290,
		0.528904, 0.718276, -0.452039,
		38.981106, 29.900127, 27.762873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207794, 29.370121, 28.449429>,  <38.610870, 29.397335, 28.079302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207794, 29.370121, 28.449429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202934, 29.720558, 28.256634>,  <39.200016, 29.930820, 28.140957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202934, 29.720558, 28.256634>,  <39.207794, 29.370121, 28.449429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202934, 29.720558, 28.256634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262617, 0.467900, 0.843862,
		0.964824, -0.116322, -0.235764,
		-0.012154, 0.876093, -0.481989,
		39.199287, 29.983387, 28.112038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874241, 29.677811, 28.532825>,  <39.207794, 29.370121, 28.449429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874241, 29.677811, 28.532825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.649952, 30.000954, 28.460215>,  <39.515377, 30.194839, 28.416649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.649952, 30.000954, 28.460215>,  <39.874241, 29.677811, 28.532825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649952, 30.000954, 28.460215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329340, 0.418750, 0.846276,
		0.759687, 0.414742, -0.500864,
		-0.560723, 0.807860, -0.181528,
		39.481735, 30.243311, 28.405756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243351, 30.265663, 28.834581>,  <39.874241, 29.677811, 28.532825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243351, 30.265663, 28.834581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865623, 30.393465, 28.803148>,  <39.638985, 30.470146, 28.784288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865623, 30.393465, 28.803148>,  <40.243351, 30.265663, 28.834581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865623, 30.393465, 28.803148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054918, 0.388533, 0.919797,
		0.324411, 0.864268, -0.384447,
		-0.944321, 0.319505, -0.078580,
		39.582329, 30.489317, 28.779573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258503, 30.852863, 29.058874>,  <40.243351, 30.265663, 28.834581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258503, 30.852863, 29.058874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871941, 30.764534, 29.111490>,  <39.640003, 30.711536, 29.143059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871941, 30.764534, 29.111490>,  <40.258503, 30.852863, 29.058874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871941, 30.764534, 29.111490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013483, 0.467504, 0.883888,
		-0.256679, 0.855965, -0.448820,
		-0.966403, -0.220824, 0.131539,
		39.582020, 30.698286, 29.150951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979275, 31.456556, 29.413599>,  <40.258503, 30.852863, 29.058874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979275, 31.456556, 29.413599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.683144, 31.196604, 29.482380>,  <39.505463, 31.040632, 29.523649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.683144, 31.196604, 29.482380>,  <39.979275, 31.456556, 29.413599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683144, 31.196604, 29.482380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110248, 0.369703, 0.922586,
		-0.663142, 0.664060, -0.345351,
		-0.740330, -0.649880, 0.171954,
		39.461044, 31.001640, 29.533966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439552, 31.769592, 29.785715>,  <39.979275, 31.456556, 29.413599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439552, 31.769592, 29.785715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415104, 31.376942, 29.858013>,  <39.400433, 31.141350, 29.901392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415104, 31.376942, 29.858013>,  <39.439552, 31.769592, 29.785715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415104, 31.376942, 29.858013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071891, 0.184943, 0.980116,
		-0.995538, 0.046915, -0.081875,
		-0.061124, -0.981629, 0.180745,
		39.396767, 31.082453, 29.912237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804646, 31.797125, 30.138924>,  <39.439552, 31.769592, 29.785715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804646, 31.797125, 30.138924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010139, 31.465406, 30.226873>,  <39.133434, 31.266375, 30.279644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010139, 31.465406, 30.226873>,  <38.804646, 31.797125, 30.138924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010139, 31.465406, 30.226873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071658, 0.213909, 0.974222,
		-0.854953, -0.516244, 0.050466,
		0.513731, -0.829298, 0.219875,
		39.164257, 31.216618, 30.292835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498672, 31.582632, 30.658579>,  <38.804646, 31.797125, 30.138924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498672, 31.582632, 30.658579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835583, 31.371109, 30.700397>,  <39.037731, 31.244196, 30.725489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835583, 31.371109, 30.700397>,  <38.498672, 31.582632, 30.658579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835583, 31.371109, 30.700397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049746, 0.269372, 0.961751,
		-0.536741, -0.804862, 0.253192,
		0.842279, -0.528806, 0.104544,
		39.088268, 31.212467, 30.731760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381355, 31.061729, 31.161924>,  <38.498672, 31.582632, 30.658579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381355, 31.061729, 31.161924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780159, 31.092453, 31.158455>,  <39.019440, 31.110888, 31.156374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780159, 31.092453, 31.158455>,  <38.381355, 31.061729, 31.161924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780159, 31.092453, 31.158455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018527, 0.346392, 0.937907,
		0.075044, -0.934940, 0.346779,
		0.997008, 0.076809, -0.008674,
		39.079262, 31.115496, 31.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519165, 30.709103, 31.719219>,  <38.381355, 31.061729, 31.161924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519165, 30.709103, 31.719219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835430, 30.938578, 31.633682>,  <39.025188, 31.076263, 31.582359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835430, 30.938578, 31.633682>,  <38.519165, 30.709103, 31.719219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835430, 30.938578, 31.633682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061613, 0.272943, 0.960055,
		0.609140, -0.772258, 0.180460,
		0.790666, 0.573689, -0.213842,
		39.072632, 31.110683, 31.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033932, 30.624990, 32.282677>,  <38.519165, 30.709103, 31.719219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033932, 30.624990, 32.282677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143559, 30.966852, 32.106285>,  <39.209335, 31.171968, 32.000450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143559, 30.966852, 32.106285>,  <39.033932, 30.624990, 32.282677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143559, 30.966852, 32.106285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159438, 0.411808, 0.897214,
		0.948404, -0.316201, -0.023403,
		0.274063, 0.854653, -0.440975,
		39.225777, 31.223248, 31.973993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607296, 30.762220, 32.573284>,  <39.033932, 30.624990, 32.282677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607296, 30.762220, 32.573284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505768, 31.121113, 32.428757>,  <39.444851, 31.336449, 32.342041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505768, 31.121113, 32.428757>,  <39.607296, 30.762220, 32.573284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505768, 31.121113, 32.428757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169957, 0.409108, 0.896519,
		0.952203, 0.166146, -0.256331,
		-0.253820, 0.897233, -0.361316,
		39.429623, 31.390282, 32.320362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.818489, 33.805618, 25.957163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.420403, 33.771816, 25.976784>,  <40.181549, 33.751537, 25.988556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.420403, 33.771816, 25.976784>,  <40.818489, 33.805618, 25.957163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420403, 33.771816, 25.976784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026064, -0.713456, -0.700215,
		0.094166, -0.695586, 0.712245,
		-0.995216, -0.084501, 0.049053,
		40.121838, 33.746468, 25.991499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695576, 33.069923, 26.043697>,  <40.818489, 33.805618, 25.957163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695576, 33.069923, 26.043697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.350533, 33.221230, 25.909344>,  <40.143505, 33.312012, 25.828732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.350533, 33.221230, 25.909344>,  <40.695576, 33.069923, 26.043697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350533, 33.221230, 25.909344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062866, -0.738985, -0.670782,
		-0.501946, -0.557509, 0.661236,
		-0.862611, 0.378266, -0.335883,
		40.091751, 33.334709, 25.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195621, 32.490887, 25.876991>,  <40.695576, 33.069923, 26.043697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195621, 32.490887, 25.876991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.048843, 32.785435, 25.649620>,  <39.960777, 32.962162, 25.513197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.048843, 32.785435, 25.649620>,  <40.195621, 32.490887, 25.876991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048843, 32.785435, 25.649620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199941, -0.659205, -0.724895,
		-0.908501, -0.152345, 0.389123,
		-0.366946, 0.736369, -0.568428,
		39.938759, 33.006344, 25.479092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778492, 32.070461, 25.539057>,  <40.195621, 32.490887, 25.876991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778492, 32.070461, 25.539057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809616, 32.415237, 25.338654>,  <39.828289, 32.622101, 25.218412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809616, 32.415237, 25.338654>,  <39.778492, 32.070461, 25.539057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809616, 32.415237, 25.338654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114555, -0.491473, -0.863326,
		-0.990365, 0.124568, 0.060497,
		0.077810, 0.861938, -0.501008,
		39.832958, 32.673820, 25.188351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192169, 32.175877, 25.055916>,  <39.778492, 32.070461, 25.539057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192169, 32.175877, 25.055916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.489845, 32.398579, 24.908291>,  <39.668449, 32.532200, 24.819715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.489845, 32.398579, 24.908291>,  <39.192169, 32.175877, 25.055916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489845, 32.398579, 24.908291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009165, -0.560975, -0.827782,
		-0.667904, 0.612645, -0.422575,
		0.744191, 0.556752, -0.369063,
		39.713104, 32.565605, 24.797571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983974, 32.454624, 24.404129>,  <39.192169, 32.175877, 25.055916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983974, 32.454624, 24.404129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383373, 32.474033, 24.393869>,  <39.623013, 32.485680, 24.387712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383373, 32.474033, 24.393869>,  <38.983974, 32.454624, 24.404129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383373, 32.474033, 24.393869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005397, -0.378294, -0.925670,
		-0.054616, 0.924413, -0.377462,
		0.998493, 0.048519, -0.025650,
		39.682922, 32.488590, 24.386175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072174, 32.550797, 23.696320>,  <38.983974, 32.454624, 24.404129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072174, 32.550797, 23.696320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444027, 32.485512, 23.828465>,  <39.667141, 32.446342, 23.907751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444027, 32.485512, 23.828465>,  <39.072174, 32.550797, 23.696320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444027, 32.485512, 23.828465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247227, -0.388534, -0.887649,
		0.273231, 0.906865, -0.320846,
		0.929636, -0.163212, 0.330361,
		39.722919, 32.436550, 23.927572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520641, 32.718895, 23.100676>,  <39.072174, 32.550797, 23.696320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520641, 32.718895, 23.100676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757801, 32.479702, 23.316410>,  <39.900097, 32.336185, 23.445850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757801, 32.479702, 23.316410>,  <39.520641, 32.718895, 23.100676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757801, 32.479702, 23.316410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146701, -0.578340, -0.802497,
		0.791801, 0.554922, -0.255173,
		0.592900, -0.597984, 0.539338,
		39.935673, 32.300308, 23.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192661, 32.707737, 22.763796>,  <39.520641, 32.718895, 23.100676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192661, 32.707737, 22.763796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145382, 32.382935, 22.992416>,  <40.117016, 32.188053, 23.129589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145382, 32.382935, 22.992416>,  <40.192661, 32.707737, 22.763796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145382, 32.382935, 22.992416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191268, -0.583426, -0.789323,
		0.974395, 0.016024, 0.224270,
		-0.118197, -0.812009, 0.571552,
		40.109924, 32.139332, 23.163881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706085, 32.216690, 22.464695>,  <40.192661, 32.707737, 22.763796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706085, 32.216690, 22.464695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463234, 31.976723, 22.673115>,  <40.317524, 31.832743, 22.798166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463234, 31.976723, 22.673115>,  <40.706085, 32.216690, 22.464695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463234, 31.976723, 22.673115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139281, -0.725933, -0.673515,
		0.782299, -0.336340, 0.524293,
		-0.607132, -0.599914, 0.521051,
		40.281094, 31.796749, 22.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040607, 31.582523, 22.581202>,  <40.706085, 32.216690, 22.464695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040607, 31.582523, 22.581202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.649837, 31.500263, 22.604263>,  <40.415375, 31.450907, 22.618101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.649837, 31.500263, 22.604263>,  <41.040607, 31.582523, 22.581202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649837, 31.500263, 22.604263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137710, -0.812853, -0.565956,
		0.163256, -0.544957, 0.822417,
		-0.976926, -0.205650, 0.057657,
		40.356758, 31.438568, 22.621561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158764, 30.822556, 22.692266>,  <41.040607, 31.582523, 22.581202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158764, 30.822556, 22.692266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781090, 30.905647, 22.589996>,  <40.554485, 30.955502, 22.528633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781090, 30.905647, 22.589996>,  <41.158764, 30.822556, 22.692266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781090, 30.905647, 22.589996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020534, -0.737508, -0.675026,
		-0.328784, -0.642598, 0.692076,
		-0.944182, 0.207727, -0.255676,
		40.497837, 30.967966, 22.513294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724640, 30.187630, 22.638149>,  <41.158764, 30.822556, 22.692266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724640, 30.187630, 22.638149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.492500, 30.431021, 22.421650>,  <40.353218, 30.577055, 22.291750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.492500, 30.431021, 22.421650>,  <40.724640, 30.187630, 22.638149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492500, 30.431021, 22.421650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003610, -0.666539, -0.745461,
		-0.814362, -0.430671, 0.389020,
		-0.580346, 0.608479, -0.541250,
		40.318398, 30.613564, 22.259275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084904, 29.817682, 22.414875>,  <40.724640, 30.187630, 22.638149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084904, 29.817682, 22.414875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175903, 30.114241, 22.162342>,  <40.230503, 30.292175, 22.010822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175903, 30.114241, 22.162342>,  <40.084904, 29.817682, 22.414875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175903, 30.114241, 22.162342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094351, -0.662064, -0.743485,
		-0.969197, 0.109575, -0.220569,
		0.227498, 0.741394, -0.631332,
		40.244152, 30.336658, 21.972942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821095, 29.177923, 22.051584>,  <40.084904, 29.817682, 22.414875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821095, 29.177923, 22.051584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.627888, 28.827681, 22.050074>,  <39.511963, 28.617535, 22.049168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.627888, 28.827681, 22.050074>,  <39.821095, 29.177923, 22.051584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627888, 28.827681, 22.050074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115531, 0.059457, 0.991523,
		-0.867958, 0.479355, -0.129878,
		-0.483013, -0.875605, -0.003774,
		39.482983, 28.564999, 22.048941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217266, 29.225319, 22.230206>,  <39.821095, 29.177923, 22.051584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217266, 29.225319, 22.230206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.321724, 28.851286, 22.326057>,  <39.384399, 28.626865, 22.383568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.321724, 28.851286, 22.326057>,  <39.217266, 29.225319, 22.230206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321724, 28.851286, 22.326057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110580, 0.217631, 0.969747,
		-0.958946, -0.279739, -0.046569,
		0.261141, -0.935084, 0.239630,
		39.400066, 28.570761, 22.397947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683319, 28.878384, 22.690372>,  <39.217266, 29.225319, 22.230206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683319, 28.878384, 22.690372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.000454, 28.640934, 22.745523>,  <39.190735, 28.498465, 22.778614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.000454, 28.640934, 22.745523>,  <38.683319, 28.878384, 22.690372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000454, 28.640934, 22.745523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063356, 0.144731, 0.987441,
		-0.606125, -0.791620, 0.077139,
		0.792842, -0.593626, 0.137880,
		39.238308, 28.462847, 22.786888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462490, 28.460939, 23.202868>,  <38.683319, 28.878384, 22.690372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462490, 28.460939, 23.202868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856747, 28.394318, 23.213953>,  <39.093300, 28.354345, 23.220604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856747, 28.394318, 23.213953>,  <38.462490, 28.460939, 23.202868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856747, 28.394318, 23.213953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032027, -0.023281, 0.999216,
		-0.165780, -0.985757, -0.028281,
		0.985643, -0.166555, 0.027712,
		39.152439, 28.344351, 23.222267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506382, 27.909573, 23.701115>,  <38.462490, 28.460939, 23.202868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506382, 27.909573, 23.701115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875355, 28.063482, 23.688093>,  <39.096741, 28.155828, 23.680281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875355, 28.063482, 23.688093>,  <38.506382, 27.909573, 23.701115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875355, 28.063482, 23.688093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003791, 0.093323, 0.995629,
		0.386130, -0.918281, 0.087544,
		0.922437, 0.384774, -0.032554,
		39.152084, 28.178915, 23.678328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889034, 27.504808, 24.156837>,  <38.506382, 27.909573, 23.701115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889034, 27.504808, 24.156837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.084198, 27.852818, 24.128536>,  <39.201294, 28.061623, 24.111555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.084198, 27.852818, 24.128536>,  <38.889034, 27.504808, 24.156837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084198, 27.852818, 24.128536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053745, 0.110846, 0.992383,
		0.871240, -0.480387, 0.100842,
		0.487906, 0.870024, -0.070755,
		39.230572, 28.113825, 24.107309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268715, 27.437489, 24.680906>,  <38.889034, 27.504808, 24.156837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268715, 27.437489, 24.680906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.295223, 27.826717, 24.592602>,  <39.311127, 28.060255, 24.539619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.295223, 27.826717, 24.592602>,  <39.268715, 27.437489, 24.680906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295223, 27.826717, 24.592602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002907, 0.221433, 0.975171,
		0.997798, -0.063983, 0.017503,
		0.066270, 0.973074, -0.220759,
		39.315105, 28.118639, 24.526375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703522, 27.708885, 25.172403>,  <39.268715, 27.437489, 24.680906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703522, 27.708885, 25.172403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509518, 28.032141, 25.038736>,  <39.393116, 28.226095, 24.958536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509518, 28.032141, 25.038736>,  <39.703522, 27.708885, 25.172403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509518, 28.032141, 25.038736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005956, 0.385167, 0.922828,
		0.874486, 0.445595, -0.191625,
		-0.485015, 0.808141, -0.334169,
		39.364014, 28.274584, 24.938486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066833, 28.316143, 25.382902>,  <39.703522, 27.708885, 25.172403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066833, 28.316143, 25.382902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.681099, 28.404152, 25.324062>,  <39.449657, 28.456957, 25.288757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.681099, 28.404152, 25.324062>,  <40.066833, 28.316143, 25.382902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681099, 28.404152, 25.324062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062642, 0.350262, 0.934555,
		0.257147, 0.910443, -0.323989,
		-0.964340, 0.220023, -0.147101,
		39.391796, 28.470160, 25.279932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997089, 28.983545, 25.578682>,  <40.066833, 28.316143, 25.382902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997089, 28.983545, 25.578682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619492, 28.852468, 25.594147>,  <39.392933, 28.773823, 25.603426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619492, 28.852468, 25.594147>,  <39.997089, 28.983545, 25.578682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619492, 28.852468, 25.594147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133393, 0.486165, 0.863626,
		-0.301800, 0.810100, -0.502648,
		-0.943993, -0.327692, 0.038664,
		39.336292, 28.754160, 25.605745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611416, 29.610271, 25.618416>,  <39.997089, 28.983545, 25.578682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611416, 29.610271, 25.618416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.364120, 29.320997, 25.741562>,  <39.215744, 29.147432, 25.815449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.364120, 29.320997, 25.741562>,  <39.611416, 29.610271, 25.618416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364120, 29.320997, 25.741562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182477, 0.513052, 0.838737,
		-0.764514, 0.462362, -0.449154,
		-0.618240, -0.723187, 0.307865,
		39.178650, 29.104042, 25.833921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016308, 30.064781, 25.828152>,  <39.611416, 29.610271, 25.618416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016308, 30.064781, 25.828152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976257, 29.711868, 26.012131>,  <38.952229, 29.500120, 26.122519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976257, 29.711868, 26.012131>,  <39.016308, 30.064781, 25.828152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976257, 29.711868, 26.012131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147208, 0.470321, 0.870131,
		-0.984025, 0.019413, -0.176969,
		-0.100124, -0.882282, 0.459950,
		38.946220, 29.447184, 26.150116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361687, 30.136129, 26.276419>,  <39.016308, 30.064781, 25.828152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361687, 30.136129, 26.276419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576759, 29.829157, 26.416101>,  <38.705803, 29.644974, 26.499912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576759, 29.829157, 26.416101>,  <38.361687, 30.136129, 26.276419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576759, 29.829157, 26.416101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017404, 0.403982, 0.914601,
		-0.842969, -0.497841, 0.203857,
		0.537681, -0.767433, 0.349209,
		38.738064, 29.598927, 26.520864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135628, 29.998491, 26.899126>,  <38.361687, 30.136129, 26.276419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135628, 29.998491, 26.899126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492867, 29.819807, 26.920397>,  <38.707211, 29.712597, 26.933159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492867, 29.819807, 26.920397>,  <38.135628, 29.998491, 26.899126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492867, 29.819807, 26.920397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093899, 0.300708, 0.949083,
		-0.439955, -0.842630, 0.310507,
		0.893097, -0.446710, 0.053176,
		38.760796, 29.685795, 26.936350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511826, 29.540552, 27.171852>,  <38.135628, 29.998491, 26.899126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511826, 29.540552, 27.171852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125725, 29.629944, 27.117670>,  <36.894066, 29.683578, 27.085161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125725, 29.629944, 27.117670>,  <37.511826, 29.540552, 27.171852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125725, 29.629944, 27.117670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097459, -0.173104, -0.980070,
		-0.242477, -0.959213, 0.145308,
		-0.965250, 0.223483, -0.135458,
		36.836151, 29.696987, 27.077032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251881, 28.951857, 26.814455>,  <37.511826, 29.540552, 27.171852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251881, 28.951857, 26.814455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.006954, 29.263426, 26.760284>,  <36.859997, 29.450367, 26.727781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.006954, 29.263426, 26.760284>,  <37.251881, 28.951857, 26.814455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006954, 29.263426, 26.760284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041432, -0.139444, -0.989363,
		-0.789524, -0.611418, 0.053112,
		-0.612320, 0.778925, -0.135427,
		36.823257, 29.497103, 26.719656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792755, 28.759928, 26.309301>,  <37.251881, 28.951857, 26.814455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792755, 28.759928, 26.309301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768188, 29.158991, 26.321325>,  <36.753448, 29.398430, 26.328541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768188, 29.158991, 26.321325>,  <36.792755, 28.759928, 26.309301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768188, 29.158991, 26.321325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146277, 0.020797, -0.989025,
		-0.987336, -0.065136, 0.144657,
		-0.061413, 0.997660, 0.030062,
		36.749763, 29.458288, 26.330343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227222, 28.932487, 25.798592>,  <36.792755, 28.759928, 26.309301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227222, 28.932487, 25.798592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.398361, 29.293306, 25.821400>,  <36.501045, 29.509798, 25.835085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.398361, 29.293306, 25.821400>,  <36.227222, 28.932487, 25.798592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398361, 29.293306, 25.821400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025693, 0.075196, -0.996837,
		-0.903484, 0.425033, 0.055349,
		0.427851, 0.902049, 0.057018,
		36.526718, 29.563921, 25.838505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828304, 29.442650, 25.376083>,  <36.227222, 28.932487, 25.798592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828304, 29.442650, 25.376083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.195736, 29.599937, 25.392012>,  <36.416195, 29.694309, 25.401569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.195736, 29.599937, 25.392012>,  <35.828304, 29.442650, 25.376083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195736, 29.599937, 25.392012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071391, 0.264180, -0.961828,
		-0.388728, 0.880675, 0.270743,
		0.918582, 0.393218, 0.039822,
		36.471310, 29.717903, 25.403957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781277, 30.194778, 24.981077>,  <35.828304, 29.442650, 25.376083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781277, 30.194778, 24.981077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.160069, 30.067404, 24.998203>,  <36.387344, 29.990978, 25.008478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.160069, 30.067404, 24.998203>,  <35.781277, 30.194778, 24.981077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160069, 30.067404, 24.998203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042827, -0.006968, -0.999058,
		0.318436, 0.947918, 0.007039,
		0.946976, -0.318438, 0.042816,
		36.444160, 29.971872, 25.011047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121010, 30.592716, 24.500505>,  <35.781277, 30.194778, 24.981077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121010, 30.592716, 24.500505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359936, 30.273075, 24.527792>,  <36.503292, 30.081291, 24.544165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359936, 30.273075, 24.527792>,  <36.121010, 30.592716, 24.500505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359936, 30.273075, 24.527792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108592, -0.164856, -0.980321,
		0.794624, 0.578149, -0.185247,
		0.597311, -0.799103, 0.068216,
		36.539127, 30.033344, 24.548256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146637, 31.227930, 24.186121>,  <36.121010, 30.592716, 24.500505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146637, 31.227930, 24.186121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749187, 31.264120, 24.159235>,  <35.510715, 31.285835, 24.143103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749187, 31.264120, 24.159235>,  <36.146637, 31.227930, 24.186121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749187, 31.264120, 24.159235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051280, 0.168154, 0.984426,
		0.100370, 0.981600, -0.162442,
		-0.993628, 0.090477, -0.067214,
		35.451099, 31.291264, 24.139071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980087, 31.704861, 24.700676>,  <36.146637, 31.227930, 24.186121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980087, 31.704861, 24.700676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633602, 31.534349, 24.596394>,  <35.425713, 31.432043, 24.533825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633602, 31.534349, 24.596394>,  <35.980087, 31.704861, 24.700676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633602, 31.534349, 24.596394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326237, 0.087268, 0.941251,
		-0.378484, 0.900373, -0.214660,
		-0.866210, -0.426278, -0.260705,
		35.373737, 31.406466, 24.518183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399128, 32.200062, 24.774721>,  <35.980087, 31.704861, 24.700676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399128, 32.200062, 24.774721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237373, 31.834410, 24.786274>,  <35.140320, 31.615019, 24.793205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237373, 31.834410, 24.786274>,  <35.399128, 32.200062, 24.774721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237373, 31.834410, 24.786274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486940, 0.241929, 0.839262,
		-0.774182, 0.325326, -0.542960,
		-0.404391, -0.914130, 0.028883,
		35.116055, 31.560171, 24.794939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751888, 32.238949, 24.968231>,  <35.399128, 32.200062, 24.774721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751888, 32.238949, 24.968231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.850594, 31.861267, 25.055481>,  <34.909817, 31.634657, 25.107832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.850594, 31.861267, 25.055481>,  <34.751888, 32.238949, 24.968231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850594, 31.861267, 25.055481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485893, 0.074198, 0.870863,
		-0.838461, -0.320881, -0.440475,
		0.246761, -0.944208, 0.218126,
		34.924622, 31.578005, 25.120918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075264, 32.048500, 25.204353>,  <34.751888, 32.238949, 24.968231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075264, 32.048500, 25.204353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317307, 31.754030, 25.325603>,  <34.462532, 31.577349, 25.398354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317307, 31.754030, 25.325603>,  <34.075264, 32.048500, 25.204353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317307, 31.754030, 25.325603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507670, -0.063501, 0.859208,
		-0.613281, -0.673803, -0.412160,
		0.605110, -0.736177, 0.303126,
		34.498840, 31.533176, 25.416542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673721, 31.536673, 25.451138>,  <34.075264, 32.048500, 25.204353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673721, 31.536673, 25.451138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029087, 31.504393, 25.631895>,  <34.242306, 31.485023, 25.740351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029087, 31.504393, 25.631895>,  <33.673721, 31.536673, 25.451138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029087, 31.504393, 25.631895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457581, -0.077143, 0.885815,
		-0.036620, -0.993749, -0.105459,
		0.888413, -0.080695, 0.451895,
		34.295612, 31.480183, 25.767464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356750, 31.295425, 26.140848>,  <33.673721, 31.536673, 25.451138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356750, 31.295425, 26.140848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746128, 31.377075, 26.182297>,  <33.979755, 31.426065, 26.207165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746128, 31.377075, 26.182297>,  <33.356750, 31.295425, 26.140848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746128, 31.377075, 26.182297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102678, -0.015228, 0.994598,
		0.204599, -0.978827, 0.006135,
		0.973445, 0.204124, 0.103620,
		34.038162, 31.438313, 26.213383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.455742, 32.343697, 21.428558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.784748, 32.232998, 21.627308>,  <37.982151, 32.166580, 21.746557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.784748, 32.232998, 21.627308>,  <37.455742, 32.343697, 21.428558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784748, 32.232998, 21.627308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116177, 0.773456, 0.623112,
		-0.556751, -0.570244, 0.604028,
		0.822515, -0.276745, 0.496872,
		38.031502, 32.149975, 21.776369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329025, 32.348980, 22.168657>,  <37.455742, 32.343697, 21.428558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329025, 32.348980, 22.168657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.725895, 32.369808, 22.214067>,  <37.964016, 32.382305, 22.241314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.725895, 32.369808, 22.214067>,  <37.329025, 32.348980, 22.168657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725895, 32.369808, 22.214067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120306, 0.642646, 0.756659,
		-0.033559, -0.764392, 0.643878,
		0.992170, 0.052070, 0.113528,
		38.023544, 32.385429, 22.248125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442795, 32.185940, 22.814724>,  <37.329025, 32.348980, 22.168657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442795, 32.185940, 22.814724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774120, 32.383972, 22.709814>,  <37.972916, 32.502792, 22.646868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774120, 32.383972, 22.709814>,  <37.442795, 32.185940, 22.814724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774120, 32.383972, 22.709814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048888, 0.530217, 0.846452,
		0.558134, -0.688301, 0.463387,
		0.828309, 0.495087, -0.262282,
		38.022614, 32.532497, 22.631130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821747, 32.239254, 23.407938>,  <37.442795, 32.185940, 22.814724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821747, 32.239254, 23.407938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.960575, 32.541889, 23.186268>,  <38.043873, 32.723473, 23.053265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.960575, 32.541889, 23.186268>,  <37.821747, 32.239254, 23.407938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960575, 32.541889, 23.186268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105698, 0.618700, 0.778484,
		0.931863, -0.211615, 0.294704,
		0.347073, 0.756590, -0.554176,
		38.064697, 32.768867, 23.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215588, 32.517513, 23.841547>,  <37.821747, 32.239254, 23.407938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215588, 32.517513, 23.841547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176182, 32.802238, 23.563375>,  <38.152538, 32.973072, 23.396473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176182, 32.802238, 23.563375>,  <38.215588, 32.517513, 23.841547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176182, 32.802238, 23.563375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083373, 0.690468, 0.718542,
		0.991637, 0.128764, -0.008673,
		-0.098511, 0.711810, -0.695429,
		38.146629, 33.015781, 23.354746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579746, 33.139149, 24.101362>,  <38.215588, 32.517513, 23.841547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579746, 33.139149, 24.101362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318924, 33.260033, 23.823227>,  <38.162430, 33.332561, 23.656345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318924, 33.260033, 23.823227>,  <38.579746, 33.139149, 24.101362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318924, 33.260033, 23.823227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239000, 0.788433, 0.566792,
		0.719519, 0.535764, -0.441871,
		-0.652052, 0.302210, -0.695340,
		38.123310, 33.350697, 23.614626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802181, 33.853794, 23.976429>,  <38.579746, 33.139149, 24.101362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802181, 33.853794, 23.976429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.420963, 33.795345, 23.870335>,  <38.192230, 33.760277, 23.806677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.420963, 33.795345, 23.870335>,  <38.802181, 33.853794, 23.976429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420963, 33.795345, 23.870335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272325, 0.796627, 0.539652,
		0.132441, 0.586544, -0.799015,
		-0.953047, -0.146120, -0.265237,
		38.135048, 33.751511, 23.790764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545116, 34.480042, 23.851313>,  <38.802181, 33.853794, 23.976429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545116, 34.480042, 23.851313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.220650, 34.258389, 23.926092>,  <38.025970, 34.125397, 23.970961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.220650, 34.258389, 23.926092>,  <38.545116, 34.480042, 23.851313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220650, 34.258389, 23.926092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364717, 0.729222, 0.578979,
		-0.457158, 0.401464, -0.793620,
		-0.811164, -0.554132, 0.186949,
		37.977299, 34.092148, 23.982178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908745, 34.930748, 23.814837>,  <38.545116, 34.480042, 23.851313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908745, 34.930748, 23.814837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792561, 34.615341, 24.031677>,  <37.722851, 34.426098, 24.161781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792561, 34.615341, 24.031677>,  <37.908745, 34.930748, 23.814837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792561, 34.615341, 24.031677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514308, 0.606386, 0.606451,
		-0.806919, -0.102654, -0.581674,
		-0.290464, -0.788516, 0.542100,
		37.705421, 34.378788, 24.194307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183952, 35.145687, 24.013779>,  <37.908745, 34.930748, 23.814837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183952, 35.145687, 24.013779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282207, 34.849983, 24.264589>,  <37.341160, 34.672562, 24.415075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282207, 34.849983, 24.264589>,  <37.183952, 35.145687, 24.013779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282207, 34.849983, 24.264589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498291, 0.458547, 0.735827,
		-0.831486, -0.493186, -0.255730,
		0.245635, -0.739258, 0.627026,
		37.355900, 34.628204, 24.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569668, 35.011925, 24.426220>,  <37.183952, 35.145687, 24.013779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569668, 35.011925, 24.426220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874313, 34.890327, 24.655138>,  <37.057102, 34.817368, 24.792490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874313, 34.890327, 24.655138>,  <36.569668, 35.011925, 24.426220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874313, 34.890327, 24.655138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372827, 0.516784, 0.770671,
		-0.530036, -0.800325, 0.280254,
		0.761618, -0.303997, 0.572297,
		37.102798, 34.799129, 24.826828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318813, 34.764679, 25.060745>,  <36.569668, 35.011925, 24.426220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318813, 34.764679, 25.060745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.699432, 34.860500, 25.137873>,  <36.927803, 34.917992, 25.184149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.699432, 34.860500, 25.137873>,  <36.318813, 34.764679, 25.060745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699432, 34.860500, 25.137873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293966, 0.524526, 0.799034,
		0.090270, -0.816999, 0.569530,
		0.951544, 0.239552, 0.192821,
		36.984894, 34.932365, 25.195719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085018, 34.032120, 25.244139>,  <36.318813, 34.764679, 25.060745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085018, 34.032120, 25.244139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735764, 34.190376, 25.130228>,  <35.526211, 34.285332, 25.061882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735764, 34.190376, 25.130228>,  <36.085018, 34.032120, 25.244139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735764, 34.190376, 25.130228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281397, -0.067955, -0.957182,
		-0.398054, -0.915887, -0.051999,
		-0.873137, 0.395643, -0.284778,
		35.473824, 34.309071, 25.044794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895832, 33.607132, 24.690538>,  <36.085018, 34.032120, 25.244139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895832, 33.607132, 24.690538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.693630, 33.950668, 24.657391>,  <35.572311, 34.156788, 24.637501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.693630, 33.950668, 24.657391>,  <35.895832, 33.607132, 24.690538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693630, 33.950668, 24.657391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103021, -0.035280, -0.994053,
		-0.856653, -0.511033, -0.070644,
		-0.505502, 0.858837, -0.082870,
		35.541981, 34.208321, 24.632530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283195, 33.418667, 24.352592>,  <35.895832, 33.607132, 24.690538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283195, 33.418667, 24.352592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.325237, 33.812435, 24.296215>,  <35.350460, 34.048698, 24.262388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.325237, 33.812435, 24.296215>,  <35.283195, 33.418667, 24.352592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325237, 33.812435, 24.296215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166060, -0.122367, -0.978494,
		-0.980499, 0.126247, 0.150612,
		0.105102, 0.984423, -0.140945,
		35.356770, 34.107761, 24.253931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796463, 33.640064, 23.704538>,  <35.283195, 33.418667, 24.352592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796463, 33.640064, 23.704538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.035789, 33.956398, 23.756065>,  <35.179386, 34.146198, 23.786982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.035789, 33.956398, 23.756065>,  <34.796463, 33.640064, 23.704538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035789, 33.956398, 23.756065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037959, 0.188567, -0.981326,
		-0.800358, 0.582256, 0.142843,
		0.598319, 0.790835, 0.128820,
		35.215286, 34.193649, 23.794712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480671, 34.063549, 23.276360>,  <34.796463, 33.640064, 23.704538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480671, 34.063549, 23.276360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.849194, 34.208401, 23.333006>,  <35.070309, 34.295311, 23.366993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.849194, 34.208401, 23.333006>,  <34.480671, 34.063549, 23.276360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849194, 34.208401, 23.333006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035006, 0.285473, -0.957747,
		-0.387257, 0.887337, 0.250332,
		0.921307, 0.362131, 0.141614,
		35.125587, 34.317039, 23.375490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522999, 34.649559, 22.838926>,  <34.480671, 34.063549, 23.276360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522999, 34.649559, 22.838926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897228, 34.540138, 22.928255>,  <35.121765, 34.474487, 22.981853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897228, 34.540138, 22.928255>,  <34.522999, 34.649559, 22.838926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897228, 34.540138, 22.928255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282226, 0.199097, -0.938461,
		0.212252, 0.941027, 0.263473,
		0.935573, -0.273549, 0.223324,
		35.177898, 34.458073, 22.995253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873329, 35.159481, 22.581875>,  <34.522999, 34.649559, 22.838926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873329, 35.159481, 22.581875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.128891, 34.853477, 22.614271>,  <35.282230, 34.669876, 22.633709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.128891, 34.853477, 22.614271>,  <34.873329, 35.159481, 22.581875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128891, 34.853477, 22.614271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139800, 0.011937, -0.990108,
		0.756473, 0.643911, 0.114575,
		0.638909, -0.765008, 0.080989,
		35.320564, 34.623974, 22.638567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533432, 35.362358, 22.171997>,  <34.873329, 35.159481, 22.581875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533432, 35.362358, 22.171997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.550774, 34.962742, 22.174562>,  <35.561180, 34.722973, 22.176102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.550774, 34.962742, 22.174562>,  <35.533432, 35.362358, 22.171997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550774, 34.962742, 22.174562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144093, -0.000101, -0.989564,
		0.988614, 0.043826, 0.143950,
		0.043354, -0.999039, 0.006415,
		35.563778, 34.663029, 22.176487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087902, 35.151897, 21.824759>,  <35.533432, 35.362358, 22.171997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087902, 35.151897, 21.824759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.875900, 34.813416, 21.802757>,  <35.748699, 34.610325, 21.789557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.875900, 34.813416, 21.802757>,  <36.087902, 35.151897, 21.824759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875900, 34.813416, 21.802757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300683, -0.126890, -0.945245,
		0.792894, -0.517526, 0.321693,
		-0.530009, -0.846207, -0.055002,
		35.716896, 34.559555, 21.786257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454319, 34.770638, 21.413626>,  <36.087902, 35.151897, 21.824759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454319, 34.770638, 21.413626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108845, 34.569023, 21.413729>,  <35.901562, 34.448055, 21.413790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108845, 34.569023, 21.413729>,  <36.454319, 34.770638, 21.413626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108845, 34.569023, 21.413729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289849, -0.497086, -0.817859,
		0.412355, -0.706297, 0.575419,
		-0.863684, -0.504033, 0.000257,
		35.849739, 34.417812, 21.413805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627171, 33.996471, 21.483509>,  <36.454319, 34.770638, 21.413626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627171, 33.996471, 21.483509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279926, 34.063480, 21.296608>,  <36.071579, 34.103683, 21.184467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279926, 34.063480, 21.296608>,  <36.627171, 33.996471, 21.483509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279926, 34.063480, 21.296608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335936, -0.494715, -0.801501,
		-0.365423, -0.852757, 0.373191,
		-0.868109, 0.167518, -0.467252,
		36.019493, 34.113735, 21.156433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403820, 33.383995, 21.194941>,  <36.627171, 33.996471, 21.483509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403820, 33.383995, 21.194941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203514, 33.652821, 20.976740>,  <36.083332, 33.814114, 20.845819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203514, 33.652821, 20.976740>,  <36.403820, 33.383995, 21.194941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203514, 33.652821, 20.976740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205061, -0.520162, -0.829085,
		-0.840945, -0.527034, 0.122663,
		-0.500760, 0.672061, -0.545502,
		36.053288, 33.854439, 20.813089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048412, 32.991257, 20.741198>,  <36.403820, 33.383995, 21.194941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048412, 32.991257, 20.741198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021736, 33.353115, 20.572834>,  <36.005730, 33.570229, 20.471815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021736, 33.353115, 20.572834>,  <36.048412, 32.991257, 20.741198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021736, 33.353115, 20.572834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115696, -0.411994, -0.903812,
		-0.991044, -0.108970, -0.077190,
		-0.066687, 0.904647, -0.420911,
		36.001728, 33.624508, 20.446560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641808, 32.771946, 21.293882>,  <36.048412, 32.991257, 20.741198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641808, 32.771946, 21.293882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560635, 32.422264, 21.117437>,  <35.511932, 32.212456, 21.011570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560635, 32.422264, 21.117437>,  <35.641808, 32.771946, 21.293882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560635, 32.422264, 21.117437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021552, -0.446389, 0.894579,
		-0.978955, 0.191047, 0.071747,
		-0.202934, -0.874207, -0.441112,
		35.499756, 32.160004, 20.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041935, 32.562222, 21.559490>,  <35.641808, 32.771946, 21.293882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041935, 32.562222, 21.559490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.257999, 32.245449, 21.445602>,  <35.387638, 32.055386, 21.377270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.257999, 32.245449, 21.445602>,  <35.041935, 32.562222, 21.559490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257999, 32.245449, 21.445602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146594, -0.421695, 0.894809,
		-0.828696, -0.441602, -0.343876,
		0.540160, -0.791935, -0.284721,
		35.420048, 32.007870, 21.360186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609844, 32.080032, 21.689072>,  <35.041935, 32.562222, 21.559490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609844, 32.080032, 21.689072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.947422, 31.865562, 21.682354>,  <35.149967, 31.736881, 21.678324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.947422, 31.865562, 21.682354>,  <34.609844, 32.080032, 21.689072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947422, 31.865562, 21.682354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268380, -0.449126, 0.852208,
		-0.464486, -0.714698, -0.522934,
		0.843934, -0.536183, -0.016802,
		35.200603, 31.704710, 21.677315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447697, 31.476534, 21.893492>,  <34.609844, 32.080032, 21.689072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447697, 31.476534, 21.893492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840626, 31.485741, 21.967808>,  <35.076382, 31.491264, 22.012398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840626, 31.485741, 21.967808>,  <34.447697, 31.476534, 21.893492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840626, 31.485741, 21.967808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169274, -0.314708, 0.933973,
		0.079966, -0.948909, -0.305248,
		0.982320, 0.023015, 0.185792,
		35.135323, 31.492645, 22.023546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658131, 30.852287, 22.199711>,  <34.447697, 31.476534, 21.893492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658131, 30.852287, 22.199711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972782, 31.074850, 22.306768>,  <35.161572, 31.208387, 22.371002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972782, 31.074850, 22.306768>,  <34.658131, 30.852287, 22.199711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972782, 31.074850, 22.306768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072388, -0.347381, 0.934926,
		0.613172, -0.754811, -0.232982,
		0.786626, 0.556405, 0.267643,
		35.208771, 31.241772, 22.387062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077988, 30.431955, 22.651453>,  <34.658131, 30.852287, 22.199711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077988, 30.431955, 22.651453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.184788, 30.805561, 22.746384>,  <35.248867, 31.029724, 22.803343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.184788, 30.805561, 22.746384>,  <35.077988, 30.431955, 22.651453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184788, 30.805561, 22.746384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002749, -0.245528, 0.969386,
		0.963692, -0.259481, -0.062989,
		0.267003, 0.934016, 0.237326,
		35.264889, 31.085766, 22.817581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594505, 30.370331, 23.228527>,  <35.077988, 30.431955, 22.651453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594505, 30.370331, 23.228527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450981, 30.743496, 23.240705>,  <35.364868, 30.967396, 23.248013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450981, 30.743496, 23.240705>,  <35.594505, 30.370331, 23.228527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450981, 30.743496, 23.240705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061738, -0.056266, 0.996505,
		0.931368, 0.355674, 0.077785,
		-0.358807, 0.932915, 0.030445,
		35.343338, 31.023371, 23.249840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964108, 30.638845, 23.805096>,  <35.594505, 30.370331, 23.228527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964108, 30.638845, 23.805096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.668976, 30.905891, 23.765312>,  <35.491898, 31.066118, 23.741442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.668976, 30.905891, 23.765312>,  <35.964108, 30.638845, 23.805096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668976, 30.905891, 23.765312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054611, 0.087822, 0.994638,
		0.672770, 0.739309, -0.028339,
		-0.737833, 0.667615, -0.099459,
		35.447624, 31.106176, 23.735476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708199, 30.680737, 23.810827>,  <35.964108, 30.638845, 23.805096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708199, 30.680737, 23.810827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766701, 30.305147, 23.935366>,  <36.801800, 30.079794, 24.010088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766701, 30.305147, 23.935366>,  <36.708199, 30.680737, 23.810827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766701, 30.305147, 23.935366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264681, -0.266114, -0.926891,
		0.953181, 0.217968, 0.209608,
		0.146253, -0.938974, 0.311347,
		36.810577, 30.023455, 24.028770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360077, 30.484842, 23.595106>,  <36.708199, 30.680737, 23.810827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360077, 30.484842, 23.595106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141132, 30.154936, 23.651903>,  <37.009766, 29.956993, 23.685982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141132, 30.154936, 23.651903>,  <37.360077, 30.484842, 23.595106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141132, 30.154936, 23.651903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299935, -0.351719, -0.886754,
		0.781305, -0.442785, 0.439892,
		-0.547360, -0.824764, 0.141993,
		36.976925, 29.907507, 23.694502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841640, 29.889307, 23.528021>,  <37.360077, 30.484842, 23.595106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841640, 29.889307, 23.528021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.475773, 29.748058, 23.449343>,  <37.256252, 29.663309, 23.402136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.475773, 29.748058, 23.449343>,  <37.841640, 29.889307, 23.528021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475773, 29.748058, 23.449343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278728, -0.198590, -0.939613,
		0.292739, -0.914257, 0.280069,
		-0.914666, -0.353124, -0.196694,
		37.201374, 29.642120, 23.390335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956562, 29.246613, 23.180811>,  <37.841640, 29.889307, 23.528021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956562, 29.246613, 23.180811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.567963, 29.311264, 23.111460>,  <37.334801, 29.350056, 23.069849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.567963, 29.311264, 23.111460>,  <37.956562, 29.246613, 23.180811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567963, 29.311264, 23.111460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091576, -0.418717, -0.903488,
		-0.218626, -0.893618, 0.391983,
		-0.971502, 0.161629, -0.173377,
		37.276512, 29.359753, 23.059446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742363, 28.600145, 23.038834>,  <37.956562, 29.246613, 23.180811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742363, 28.600145, 23.038834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503899, 28.871250, 22.866682>,  <37.360821, 29.033913, 22.763391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503899, 28.871250, 22.866682>,  <37.742363, 28.600145, 23.038834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503899, 28.871250, 22.866682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073083, -0.488017, -0.869769,
		-0.799529, -0.549979, 0.241405,
		-0.596165, 0.677763, -0.430378,
		37.325050, 29.074579, 22.737568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284790, 28.231134, 22.627216>,  <37.742363, 28.600145, 23.038834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284790, 28.231134, 22.627216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276489, 28.603935, 22.482473>,  <37.271507, 28.827616, 22.395628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276489, 28.603935, 22.482473>,  <37.284790, 28.231134, 22.627216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276489, 28.603935, 22.482473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137612, -0.355827, -0.924365,
		-0.990269, -0.068978, -0.120871,
		-0.020751, 0.932003, -0.361857,
		37.270264, 28.883535, 22.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803539, 28.096098, 22.098871>,  <37.284790, 28.231134, 22.627216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803539, 28.096098, 22.098871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976074, 28.442888, 21.999031>,  <37.079594, 28.650963, 21.939127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976074, 28.442888, 21.999031>,  <36.803539, 28.096098, 22.098871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976074, 28.442888, 21.999031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130920, -0.333883, -0.933478,
		-0.892642, 0.369965, -0.257520,
		0.431336, 0.866976, -0.249602,
		37.105476, 28.702982, 21.924150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486572, 28.384159, 21.403122>,  <36.803539, 28.096098, 22.098871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486572, 28.384159, 21.403122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864700, 28.494204, 21.473198>,  <37.091576, 28.560230, 21.515244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864700, 28.494204, 21.473198>,  <36.486572, 28.384159, 21.403122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864700, 28.494204, 21.473198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306274, -0.564086, -0.766813,
		-0.112138, 0.778536, -0.617499,
		0.945315, 0.275113, 0.175190,
		37.148296, 28.576738, 21.525755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809124, 28.403753, 20.778587>,  <36.486572, 28.384159, 21.403122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809124, 28.403753, 20.778587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.123035, 28.382109, 21.025553>,  <37.311382, 28.369122, 21.173731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.123035, 28.382109, 21.025553>,  <36.809124, 28.403753, 20.778587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123035, 28.382109, 21.025553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441093, -0.651046, -0.617719,
		0.435388, 0.757107, -0.487059,
		0.784777, -0.054109, 0.617412,
		37.358467, 28.365875, 21.210777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.032108, 33.642540, 36.486286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429543, 33.687439, 36.491867>,  <36.668003, 33.714378, 36.495216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429543, 33.687439, 36.491867>,  <36.032108, 33.642540, 36.486286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429543, 33.687439, 36.491867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067179, -0.486376, -0.871163,
		-0.091001, 0.866510, -0.490796,
		0.993582, 0.112248, 0.013950,
		36.727615, 33.721115, 36.496052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266636, 34.173840, 35.914669>,  <36.032108, 33.642540, 36.486286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266636, 34.173840, 35.914669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514214, 33.879509, 36.024555>,  <36.662762, 33.702911, 36.090488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514214, 33.879509, 36.024555>,  <36.266636, 34.173840, 35.914669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514214, 33.879509, 36.024555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054937, -0.389468, -0.919400,
		0.783511, 0.553965, -0.281483,
		0.618944, -0.735824, 0.274719,
		36.699898, 33.658760, 36.106972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756283, 34.167393, 35.361343>,  <36.266636, 34.173840, 35.914669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756283, 34.167393, 35.361343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772678, 33.805420, 35.530777>,  <36.782516, 33.588238, 35.632435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772678, 33.805420, 35.530777>,  <36.756283, 34.167393, 35.361343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772678, 33.805420, 35.530777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032627, -0.424924, -0.904641,
		0.998627, 0.023258, -0.046941,
		0.040986, -0.904931, 0.423581,
		36.784973, 33.533939, 35.657852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103222, 33.794693, 34.832905>,  <36.756283, 34.167393, 35.361343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103222, 33.794693, 34.832905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954395, 33.512177, 35.073807>,  <36.865097, 33.342667, 35.218349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954395, 33.512177, 35.073807>,  <37.103222, 33.794693, 34.832905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954395, 33.512177, 35.073807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014111, -0.644463, -0.764505,
		0.928097, -0.292948, 0.229819,
		-0.372070, -0.706292, 0.602258,
		36.842773, 33.300289, 35.254486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537132, 33.186527, 34.776978>,  <37.103222, 33.794693, 34.832905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537132, 33.186527, 34.776978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183338, 33.040154, 34.892750>,  <36.971062, 32.952328, 34.962215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183338, 33.040154, 34.892750>,  <37.537132, 33.186527, 34.776978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183338, 33.040154, 34.892750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020094, -0.589898, -0.807228,
		0.466132, -0.719798, 0.514404,
		-0.884487, -0.365938, 0.289434,
		36.917992, 32.930370, 34.979580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609467, 32.438126, 34.594997>,  <37.537132, 33.186527, 34.776978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609467, 32.438126, 34.594997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220882, 32.465527, 34.685837>,  <36.987732, 32.481968, 34.740341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220882, 32.465527, 34.685837>,  <37.609467, 32.438126, 34.594997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220882, 32.465527, 34.685837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211327, -0.684811, -0.697406,
		0.107747, -0.725493, 0.679743,
		-0.971458, 0.068505, 0.227102,
		36.929443, 32.486076, 34.753967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343658, 31.776310, 34.717995>,  <37.609467, 32.438126, 34.594997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343658, 31.776310, 34.717995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030895, 32.007881, 34.625504>,  <36.843239, 32.146824, 34.570011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030895, 32.007881, 34.625504>,  <37.343658, 31.776310, 34.717995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030895, 32.007881, 34.625504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183445, -0.568164, -0.802208,
		-0.595795, -0.584834, 0.550452,
		-0.781906, 0.578929, -0.231224,
		36.796322, 32.181561, 34.556137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854141, 31.371283, 34.786007>,  <37.343658, 31.776310, 34.717995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854141, 31.371283, 34.786007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742344, 31.655174, 34.527344>,  <36.675266, 31.825508, 34.372147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742344, 31.655174, 34.527344>,  <36.854141, 31.371283, 34.786007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742344, 31.655174, 34.527344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146490, -0.697138, -0.701812,
		-0.948906, -0.101425, 0.298815,
		-0.279496, 0.709727, -0.646660,
		36.658497, 31.868092, 34.333347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375008, 31.024176, 34.356415>,  <36.854141, 31.371283, 34.786007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375008, 31.024176, 34.356415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467091, 31.369074, 34.175957>,  <36.522343, 31.576014, 34.067680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467091, 31.369074, 34.175957>,  <36.375008, 31.024176, 34.356415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467091, 31.369074, 34.175957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372104, -0.350375, -0.859521,
		-0.899189, 0.365746, 0.240184,
		0.230212, 0.862245, -0.451149,
		36.536156, 31.627747, 34.040611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762665, 31.080584, 33.921009>,  <36.375008, 31.024176, 34.356415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762665, 31.080584, 33.921009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046700, 31.309378, 33.756763>,  <36.217121, 31.446655, 33.658215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046700, 31.309378, 33.756763>,  <35.762665, 31.080584, 33.921009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046700, 31.309378, 33.756763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218598, -0.375270, -0.900770,
		-0.669322, 0.729385, -0.141439,
		0.710087, 0.571987, -0.410618,
		36.259724, 31.480974, 33.633579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408195, 31.375542, 33.356628>,  <35.762665, 31.080584, 33.921009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408195, 31.375542, 33.356628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801785, 31.381704, 33.285572>,  <36.037937, 31.385401, 33.242939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801785, 31.381704, 33.285572>,  <35.408195, 31.375542, 33.356628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801785, 31.381704, 33.285572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149865, -0.468331, -0.870751,
		-0.096607, 0.883419, -0.458518,
		0.983975, 0.015405, -0.177637,
		36.096977, 31.386326, 33.232281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407921, 31.668203, 32.714569>,  <35.408195, 31.375542, 33.356628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407921, 31.668203, 32.714569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768021, 31.501635, 32.765381>,  <35.984081, 31.401693, 32.795868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768021, 31.501635, 32.765381>,  <35.407921, 31.668203, 32.714569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768021, 31.501635, 32.765381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117408, -0.513171, -0.850218,
		0.419238, 0.750497, -0.510875,
		0.900253, -0.416424, 0.127026,
		36.038097, 31.376707, 32.803490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402084, 32.360023, 32.399521>,  <35.407921, 31.668203, 32.714569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402084, 32.360023, 32.399521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019424, 32.474915, 32.380253>,  <34.789829, 32.543850, 32.368690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019424, 32.474915, 32.380253>,  <35.402084, 32.360023, 32.399521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019424, 32.474915, 32.380253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056644, 0.345730, 0.936623,
		0.285682, 0.893291, -0.347012,
		-0.956649, 0.287232, -0.048169,
		34.732430, 32.561085, 32.365803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256516, 32.928696, 32.856960>,  <35.402084, 32.360023, 32.399521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256516, 32.928696, 32.856960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890179, 32.770397, 32.829781>,  <34.670376, 32.675419, 32.813473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890179, 32.770397, 32.829781>,  <35.256516, 32.928696, 32.856960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890179, 32.770397, 32.829781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182884, 0.260463, 0.948004,
		-0.357467, 0.880652, -0.310918,
		-0.915844, -0.395742, -0.067951,
		34.615425, 32.651676, 32.809395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951786, 33.400654, 33.156425>,  <35.256516, 32.928696, 32.856960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951786, 33.400654, 33.156425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698837, 33.090797, 33.153786>,  <34.547070, 32.904884, 33.152203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698837, 33.090797, 33.153786>,  <34.951786, 33.400654, 33.156425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698837, 33.090797, 33.153786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335244, 0.265976, 0.903808,
		-0.698368, 0.573755, -0.427888,
		-0.632372, -0.774637, -0.006599,
		34.509125, 32.858406, 33.151806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250111, 33.636890, 33.399178>,  <34.951786, 33.400654, 33.156425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250111, 33.636890, 33.399178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255131, 33.240067, 33.449226>,  <34.258141, 33.001972, 33.479256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255131, 33.240067, 33.449226>,  <34.250111, 33.636890, 33.399178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255131, 33.240067, 33.449226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518175, 0.100571, 0.849341,
		-0.855182, -0.075495, -0.512800,
		0.012549, -0.992062, 0.125126,
		34.258896, 32.942448, 33.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540443, 33.431099, 33.466118>,  <34.250111, 33.636890, 33.399178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540443, 33.431099, 33.466118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782902, 33.178070, 33.658966>,  <33.928375, 33.026253, 33.774673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782902, 33.178070, 33.658966>,  <33.540443, 33.431099, 33.466118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782902, 33.178070, 33.658966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497799, 0.171031, 0.850261,
		-0.620310, -0.755380, -0.211225,
		0.606144, -0.632573, 0.482120,
		33.964745, 32.988297, 33.803600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132324, 33.117954, 33.907845>,  <33.540443, 33.431099, 33.466118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132324, 33.117954, 33.907845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480804, 33.005676, 34.068954>,  <33.689892, 32.938309, 34.165619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480804, 33.005676, 34.068954>,  <33.132324, 33.117954, 33.907845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480804, 33.005676, 34.068954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352482, 0.213435, 0.911154,
		-0.341719, -0.935766, 0.087005,
		0.871197, -0.280691, 0.402775,
		33.742165, 32.921471, 34.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985100, 32.628418, 34.476639>,  <33.132324, 33.117954, 33.907845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985100, 32.628418, 34.476639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354721, 32.772343, 34.528263>,  <33.576496, 32.858700, 34.559238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354721, 32.772343, 34.528263>,  <32.985100, 32.628418, 34.476639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354721, 32.772343, 34.528263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210172, 0.196215, 0.957772,
		0.319299, -0.912158, 0.256937,
		0.924054, 0.359816, 0.129059,
		33.631939, 32.880287, 34.566982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119530, 32.494492, 35.185261>,  <32.985100, 32.628418, 34.476639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119530, 32.494492, 35.185261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369301, 32.784698, 35.069523>,  <33.519165, 32.958820, 35.000080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369301, 32.784698, 35.069523>,  <33.119530, 32.494492, 35.185261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369301, 32.784698, 35.069523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175709, 0.491424, 0.853011,
		0.761064, -0.481801, 0.434337,
		0.624426, 0.725513, -0.289349,
		33.556629, 33.002354, 34.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454872, 32.585659, 35.706932>,  <33.119530, 32.494492, 35.185261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454872, 32.585659, 35.706932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555752, 32.928619, 35.527485>,  <33.616280, 33.134396, 35.419819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555752, 32.928619, 35.527485>,  <33.454872, 32.585659, 35.706932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555752, 32.928619, 35.527485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089033, 0.482193, 0.871529,
		0.963571, -0.179855, 0.197945,
		0.252196, 0.857404, -0.448615,
		33.631413, 33.185841, 35.392902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799931, 32.874584, 36.198917>,  <33.454872, 32.585659, 35.706932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799931, 32.874584, 36.198917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728050, 33.174839, 35.944592>,  <33.684921, 33.354992, 35.791996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728050, 33.174839, 35.944592>,  <33.799931, 32.874584, 36.198917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728050, 33.174839, 35.944592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197888, 0.605536, 0.770821,
		0.963613, 0.264333, 0.039729,
		-0.179696, 0.750636, -0.635811,
		33.674141, 33.400028, 35.753849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109207, 33.579010, 36.559849>,  <33.799931, 32.874584, 36.198917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109207, 33.579010, 36.559849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832855, 33.670002, 36.285347>,  <33.667046, 33.724598, 36.120647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832855, 33.670002, 36.285347>,  <34.109207, 33.579010, 36.559849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832855, 33.670002, 36.285347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408511, 0.660326, 0.630150,
		0.596497, 0.715697, -0.363275,
		-0.690876, 0.227480, -0.686253,
		33.625591, 33.738247, 36.079472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198597, 34.306446, 36.379356>,  <34.109207, 33.579010, 36.559849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198597, 34.306446, 36.379356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815376, 34.214489, 36.310909>,  <33.585445, 34.159313, 36.269840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815376, 34.214489, 36.310909>,  <34.198597, 34.306446, 36.379356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815376, 34.214489, 36.310909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286589, 0.770971, 0.568745,
		0.001178, 0.593929, -0.804516,
		-0.958053, -0.229895, -0.171122,
		33.527962, 34.145519, 36.259571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812809, 34.952782, 36.437763>,  <34.198597, 34.306446, 36.379356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812809, 34.952782, 36.437763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523079, 34.679951, 36.477993>,  <33.349239, 34.516251, 36.502132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523079, 34.679951, 36.477993>,  <33.812809, 34.952782, 36.437763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523079, 34.679951, 36.477993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460911, 0.587530, 0.665109,
		-0.512747, 0.435402, -0.739943,
		-0.724328, -0.682080, 0.100573,
		33.305782, 34.475327, 36.508163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224564, 35.403099, 36.447968>,  <33.812809, 34.952782, 36.437763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224564, 35.403099, 36.447968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099339, 35.053532, 36.596703>,  <33.024204, 34.843792, 36.685944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099339, 35.053532, 36.596703>,  <33.224564, 35.403099, 36.447968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099339, 35.053532, 36.596703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439784, 0.480406, 0.758815,
		-0.841774, 0.074027, -0.534731,
		-0.313061, -0.873917, 0.371837,
		33.005421, 34.791355, 36.708252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186302, 35.632469, 35.683075>,  <33.224564, 35.403099, 36.447968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186302, 35.632469, 35.683075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900646, 35.369820, 35.780106>,  <32.729252, 35.212231, 35.838326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900646, 35.369820, 35.780106>,  <33.186302, 35.632469, 35.683075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900646, 35.369820, 35.780106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614360, 0.754027, 0.232389,
		-0.335504, 0.016928, -0.941887,
		-0.714142, -0.656625, 0.242579,
		32.686405, 35.172832, 35.852879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657314, 35.849651, 35.326439>,  <33.186302, 35.632469, 35.683075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657314, 35.849651, 35.326439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584606, 35.657509, 35.669651>,  <32.540981, 35.542221, 35.875580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584606, 35.657509, 35.669651>,  <32.657314, 35.849651, 35.326439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584606, 35.657509, 35.669651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416180, 0.828145, 0.375460,
		-0.890928, -0.288846, -0.350450,
		-0.181773, -0.480358, 0.858030,
		32.530075, 35.513401, 35.927059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019150, 35.855453, 34.674263>,  <32.657314, 35.849651, 35.326439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019150, 35.855453, 34.674263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412163, 35.812813, 34.735271>,  <33.647972, 35.787228, 34.771877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412163, 35.812813, 34.735271>,  <33.019150, 35.855453, 34.674263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412163, 35.812813, 34.735271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151638, -0.016383, -0.988300,
		0.107849, 0.994167, 0.000067,
		0.982535, -0.106598, 0.152521,
		33.706924, 35.780834, 34.781029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328079, 36.355877, 34.281647>,  <33.019150, 35.855453, 34.674263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328079, 36.355877, 34.281647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631222, 36.107708, 34.362381>,  <33.813107, 35.958809, 34.410824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631222, 36.107708, 34.362381>,  <33.328079, 36.355877, 34.281647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631222, 36.107708, 34.362381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269335, 0.015735, -0.962918,
		0.594236, 0.784113, 0.179025,
		0.757853, -0.620419, 0.201838,
		33.858578, 35.921581, 34.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871719, 36.656403, 34.076344>,  <33.328079, 36.355877, 34.281647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871719, 36.656403, 34.076344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951736, 36.265251, 34.051868>,  <33.999748, 36.030560, 34.037182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951736, 36.265251, 34.051868>,  <33.871719, 36.656403, 34.076344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951736, 36.265251, 34.051868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210374, 0.103867, -0.972088,
		0.956935, 0.181588, 0.226497,
		0.200045, -0.977874, -0.061192,
		34.011749, 35.971889, 34.033512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464291, 36.606735, 33.624374>,  <33.871719, 36.656403, 34.076344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464291, 36.606735, 33.624374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271553, 36.256290, 33.630653>,  <34.155910, 36.046024, 33.634422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271553, 36.256290, 33.630653>,  <34.464291, 36.606735, 33.624374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271553, 36.256290, 33.630653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130409, -0.089416, -0.987420,
		0.866499, -0.473735, 0.157338,
		-0.481844, -0.876117, 0.015700,
		34.126999, 35.993454, 33.635365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876163, 36.095093, 33.250317>,  <34.464291, 36.606735, 33.624374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876163, 36.095093, 33.250317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498451, 35.963455, 33.252720>,  <34.271824, 35.884472, 33.254162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498451, 35.963455, 33.252720>,  <34.876163, 36.095093, 33.250317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498451, 35.963455, 33.252720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006619, 0.000747, -0.999978,
		0.329085, -0.944296, -0.002884,
		-0.944277, -0.329097, 0.006005,
		34.215168, 35.864727, 33.254520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848221, 35.544071, 32.729603>,  <34.876163, 36.095093, 33.250317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848221, 35.544071, 32.729603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471542, 35.665936, 32.786720>,  <34.245537, 35.739056, 32.820992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471542, 35.665936, 32.786720>,  <34.848221, 35.544071, 32.729603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471542, 35.665936, 32.786720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162169, -0.039128, -0.985987,
		-0.294806, -0.951656, 0.086254,
		-0.941696, 0.304663, 0.142794,
		34.189034, 35.757336, 32.829559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382092, 35.029186, 32.342434>,  <34.848221, 35.544071, 32.729603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382092, 35.029186, 32.342434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180290, 35.370724, 32.393715>,  <34.059212, 35.575645, 32.424484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180290, 35.370724, 32.393715>,  <34.382092, 35.029186, 32.342434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180290, 35.370724, 32.393715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263477, -0.010846, -0.964605,
		-0.822229, -0.520420, 0.230439,
		-0.504499, 0.853841, 0.128201,
		34.028942, 35.626877, 32.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791504, 34.828442, 31.994879>,  <34.382092, 35.029186, 32.342434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791504, 34.828442, 31.994879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812393, 35.224064, 32.050072>,  <33.824928, 35.461437, 32.083187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812393, 35.224064, 32.050072>,  <33.791504, 34.828442, 31.994879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812393, 35.224064, 32.050072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, 0.143589, -0.981594,
		-0.990665, 0.033891, 0.132039,
		0.052227, 0.989057, 0.137981,
		33.828060, 35.520782, 32.091465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317593, 35.001564, 31.555359>,  <33.791504, 34.828442, 31.994879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317593, 35.001564, 31.555359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501163, 35.352444, 31.611790>,  <33.611305, 35.562973, 31.645649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501163, 35.352444, 31.611790>,  <33.317593, 35.001564, 31.555359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501163, 35.352444, 31.611790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056455, 0.129676, -0.989948,
		-0.886680, 0.462277, 0.009989,
		0.458925, 0.877203, 0.141079,
		33.638840, 35.615604, 31.654114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966999, 35.508545, 31.165533>,  <33.317593, 35.001564, 31.555359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966999, 35.508545, 31.165533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331680, 35.662594, 31.222776>,  <33.550488, 35.755024, 31.257122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331680, 35.662594, 31.222776>,  <32.966999, 35.508545, 31.165533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331680, 35.662594, 31.222776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055335, 0.230045, -0.971605,
		-0.407105, 0.893735, 0.188423,
		0.911704, 0.385119, 0.143107,
		33.605190, 35.778130, 31.265709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880909, 36.120071, 30.866190>,  <32.966999, 35.508545, 31.165533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880909, 36.120071, 30.866190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274033, 36.046272, 30.863495>,  <33.509907, 36.001991, 30.861877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274033, 36.046272, 30.863495>,  <32.880909, 36.120071, 30.866190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274033, 36.046272, 30.863495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025821, 0.173490, -0.984497,
		0.182807, 0.967399, 0.175272,
		0.982810, -0.184498, -0.006736,
		33.568874, 35.990921, 30.861473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215694, 36.660721, 30.464212>,  <32.880909, 36.120071, 30.866190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215694, 36.660721, 30.464212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503555, 36.383175, 30.474455>,  <33.676273, 36.216648, 30.480600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503555, 36.383175, 30.474455>,  <33.215694, 36.660721, 30.464212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503555, 36.383175, 30.474455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116954, 0.084786, -0.989512,
		0.684412, 0.715101, 0.142166,
		0.719654, -0.693861, 0.025605,
		33.719452, 36.175018, 30.482136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678238, 36.965725, 29.973658>,  <33.215694, 36.660721, 30.464212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678238, 36.965725, 29.973658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764141, 36.578899, 30.028309>,  <33.815685, 36.346806, 30.061100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764141, 36.578899, 30.028309>,  <33.678238, 36.965725, 29.973658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764141, 36.578899, 30.028309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068374, -0.154435, -0.985634,
		0.974271, 0.202333, -0.099289,
		0.214760, -0.967063, 0.136627,
		33.828568, 36.288780, 30.069298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108490, 36.762413, 29.274237>,  <33.678238, 36.965725, 29.973658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108490, 36.762413, 29.274237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992680, 36.423450, 29.452261>,  <33.923191, 36.220074, 29.559076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992680, 36.423450, 29.452261>,  <34.108490, 36.762413, 29.274237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992680, 36.423450, 29.452261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149633, -0.499330, -0.853393,
		0.945401, -0.180486, 0.271369,
		-0.289528, -0.847405, 0.445061,
		33.905823, 36.169228, 29.585779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715496, 36.302963, 29.166071>,  <34.108490, 36.762413, 29.274237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715496, 36.302963, 29.166071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374729, 36.094948, 29.190718>,  <34.170269, 35.970139, 29.205505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374729, 36.094948, 29.190718>,  <34.715496, 36.302963, 29.166071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374729, 36.094948, 29.190718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132170, -0.327374, -0.935605,
		0.506722, -0.788915, 0.347629,
		-0.851918, -0.520038, 0.061617,
		34.119152, 35.938938, 29.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971603, 35.625736, 29.031174>,  <34.715496, 36.302963, 29.166071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971603, 35.625736, 29.031174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579128, 35.651505, 28.958385>,  <34.343643, 35.666965, 28.914713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579128, 35.651505, 28.958385>,  <34.971603, 35.625736, 29.031174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579128, 35.651505, 28.958385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125291, -0.504596, -0.854216,
		-0.146855, -0.860948, 0.487034,
		-0.981191, 0.064425, -0.181971,
		34.284771, 35.670834, 28.903793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817352, 35.048271, 28.727915>,  <34.971603, 35.625736, 29.031174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817352, 35.048271, 28.727915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482475, 35.248093, 28.638878>,  <34.281548, 35.367985, 28.585455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482475, 35.248093, 28.638878>,  <34.817352, 35.048271, 28.727915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482475, 35.248093, 28.638878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005309, -0.399562, -0.916691,
		-0.546881, -0.768630, 0.331858,
		-0.837194, 0.499559, -0.222593,
		34.231316, 35.397961, 28.572100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416111, 34.590424, 28.456591>,  <34.817352, 35.048271, 28.727915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416111, 34.590424, 28.456591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282677, 34.944168, 28.325972>,  <34.202614, 35.156414, 28.247601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282677, 34.944168, 28.325972>,  <34.416111, 34.590424, 28.456591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282677, 34.944168, 28.325972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128404, -0.300535, -0.945088,
		-0.933933, -0.357200, -0.013300,
		-0.333589, 0.884357, -0.326545,
		34.182602, 35.209476, 28.228008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842365, 34.479755, 28.011696>,  <34.416111, 34.590424, 28.456591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842365, 34.479755, 28.011696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964237, 34.843712, 27.899078>,  <34.037361, 35.062088, 27.831509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964237, 34.843712, 27.899078>,  <33.842365, 34.479755, 28.011696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964237, 34.843712, 27.899078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170103, -0.342826, -0.923870,
		-0.937143, 0.233590, -0.259227,
		0.304676, 0.909894, -0.281542,
		34.055641, 35.116680, 27.814615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468746, 34.664494, 27.394325>,  <33.842365, 34.479755, 28.011696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468746, 34.664494, 27.394325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802864, 34.884205, 27.403872>,  <34.003334, 35.016033, 27.409599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.802864, 34.884205, 27.403872>,  <33.468746, 34.664494, 27.394325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802864, 34.884205, 27.403872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189112, -0.246289, -0.950567,
		-0.516247, 0.798521, -0.309600,
		0.835300, 0.549277, 0.023864,
		34.053455, 35.048988, 27.411030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570705, 34.819080, 26.714792>,  <33.468746, 34.664494, 27.394325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570705, 34.819080, 26.714792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919949, 34.935379, 26.871325>,  <34.129494, 35.005157, 26.965244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919949, 34.935379, 26.871325>,  <33.570705, 34.819080, 26.714792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919949, 34.935379, 26.871325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463089, -0.243697, -0.852151,
		-0.152394, 0.925245, -0.347416,
		0.873112, 0.290747, 0.391333,
		34.181881, 35.022602, 26.988724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821072, 35.456791, 26.347548>,  <33.570705, 34.819080, 26.714792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821072, 35.456791, 26.347548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113522, 35.233978, 26.505116>,  <34.288990, 35.100288, 26.599655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113522, 35.233978, 26.505116>,  <33.821072, 35.456791, 26.347548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113522, 35.233978, 26.505116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440654, -0.055239, -0.895976,
		0.520851, 0.828649, 0.205073,
		0.731122, -0.557036, 0.393919,
		34.332859, 35.066868, 26.623291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321453, 35.600094, 25.935068>,  <33.821072, 35.456791, 26.347548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321453, 35.600094, 25.935068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482662, 35.287251, 26.125172>,  <34.579388, 35.099545, 26.239235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482662, 35.287251, 26.125172>,  <34.321453, 35.600094, 25.935068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482662, 35.287251, 26.125172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510310, -0.239029, -0.826105,
		0.759708, 0.575469, 0.302786,
		0.403023, -0.782113, 0.475260,
		34.603569, 35.052616, 26.267750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033321, 35.591396, 25.821064>,  <34.321453, 35.600094, 25.935068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033321, 35.591396, 25.821064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958584, 35.216846, 25.939924>,  <34.913742, 34.992119, 26.011240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958584, 35.216846, 25.939924>,  <35.033321, 35.591396, 25.821064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958584, 35.216846, 25.939924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530063, -0.350761, -0.772010,
		0.827116, 0.013260, 0.561874,
		-0.186847, -0.936371, 0.297149,
		34.902531, 34.935936, 26.029068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572399, 35.310371, 25.667738>,  <35.033321, 35.591396, 25.821064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572399, 35.310371, 25.667738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319721, 35.002174, 25.701918>,  <35.168114, 34.817257, 25.722425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319721, 35.002174, 25.701918>,  <35.572399, 35.310371, 25.667738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319721, 35.002174, 25.701918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382345, -0.405542, -0.830270,
		0.674374, -0.491802, 0.550773,
		-0.631690, -0.770497, 0.085449,
		35.130215, 34.771027, 25.727552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959366, 34.661240, 25.682327>,  <35.572399, 35.310371, 25.667738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959366, 34.661240, 25.682327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592197, 34.605427, 25.533758>,  <35.371895, 34.571938, 25.444616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592197, 34.605427, 25.533758>,  <35.959366, 34.661240, 25.682327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592197, 34.605427, 25.533758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391285, -0.473421, -0.789157,
		-0.065724, -0.869714, 0.489160,
		-0.917919, -0.139534, -0.371422,
		35.316822, 34.563568, 25.422331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510033, 34.333538, 25.833565>,  <35.959366, 34.661240, 25.682327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510033, 34.333538, 25.833565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784691, 34.617485, 25.770824>,  <36.949486, 34.787853, 25.733179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784691, 34.617485, 25.770824>,  <36.510033, 34.333538, 25.833565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784691, 34.617485, 25.770824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091034, 0.298016, 0.950210,
		0.721267, -0.638182, 0.269254,
		0.686649, 0.709867, -0.156853,
		36.990685, 34.830444, 25.723768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013855, 34.216320, 26.368212>,  <36.510033, 34.333538, 25.833565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013855, 34.216320, 26.368212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063576, 34.591633, 26.239101>,  <37.093407, 34.816818, 26.161634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063576, 34.591633, 26.239101>,  <37.013855, 34.216320, 26.368212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063576, 34.591633, 26.239101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071679, 0.332940, 0.940220,
		0.989652, -0.093732, 0.108639,
		0.124299, 0.938278, -0.322776,
		37.100864, 34.873116, 26.142269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576786, 34.601009, 26.661455>,  <37.013855, 34.216320, 26.368212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576786, 34.601009, 26.661455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368671, 34.922577, 26.546206>,  <37.243805, 35.115517, 26.477055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368671, 34.922577, 26.546206>,  <37.576786, 34.601009, 26.661455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368671, 34.922577, 26.546206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272443, 0.476006, 0.836178,
		0.809371, 0.356551, -0.466680,
		-0.520282, 0.803922, -0.288126,
		37.212585, 35.163754, 26.459768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952080, 35.176601, 26.916853>,  <37.576786, 34.601009, 26.661455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952080, 35.176601, 26.916853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589031, 35.334358, 26.859331>,  <37.371201, 35.429012, 26.824818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589031, 35.334358, 26.859331>,  <37.952080, 35.176601, 26.916853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589031, 35.334358, 26.859331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033354, 0.409229, 0.911822,
		0.418464, 0.822792, -0.384579,
		-0.907621, 0.394392, -0.143804,
		37.316746, 35.452675, 26.816191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073219, 35.794975, 27.195011>,  <37.952080, 35.176601, 26.916853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073219, 35.794975, 27.195011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677933, 35.733959, 27.200108>,  <37.440762, 35.697350, 27.203165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677933, 35.733959, 27.200108>,  <38.073219, 35.794975, 27.195011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677933, 35.733959, 27.200108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048810, 0.392905, 0.918283,
		-0.145083, 0.906839, -0.395720,
		-0.988215, -0.152542, 0.012741,
		37.381470, 35.688198, 27.203930>
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
