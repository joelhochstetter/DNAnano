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
	<24.196636, 35.519943, 35.029503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334303, 35.156696, 35.124893>,  <24.416903, 34.938747, 35.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334303, 35.156696, 35.124893>,  <24.196636, 35.519943, 35.029503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334303, 35.156696, 35.124893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648177, 0.046044, -0.760096,
		0.679276, 0.416177, 0.604467,
		0.344166, -0.908117, 0.238480,
		24.437553, 34.884262, 35.196438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932362, 35.423843, 35.225979>,  <24.196636, 35.519943, 35.029503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932362, 35.423843, 35.225979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841272, 35.062492, 35.080624>,  <24.786619, 34.845680, 34.993412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841272, 35.062492, 35.080624>,  <24.932362, 35.423843, 35.225979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841272, 35.062492, 35.080624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662620, 0.129688, -0.737642,
		0.713497, -0.408766, 0.569063,
		-0.227723, -0.903378, -0.363388,
		24.772955, 34.791477, 34.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616249, 35.156475, 35.194870>,  <24.932362, 35.423843, 35.225979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616249, 35.156475, 35.194870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363867, 35.010960, 34.920773>,  <25.212439, 34.923653, 34.756313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363867, 35.010960, 34.920773>,  <25.616249, 35.156475, 35.194870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363867, 35.010960, 34.920773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730953, 0.017267, -0.682209,
		0.260010, -0.931323, 0.255016,
		-0.630953, -0.363786, -0.685243,
		25.174582, 34.901825, 34.715199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285103, 34.785633, 35.415096>,  <25.616249, 35.156475, 35.194870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285103, 34.785633, 35.415096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529789, 34.469204, 35.414387>,  <26.676601, 34.279346, 35.413960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529789, 34.469204, 35.414387>,  <26.285103, 34.785633, 35.415096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529789, 34.469204, 35.414387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425738, -0.327314, -0.843571,
		0.666748, 0.516782, -0.537014,
		0.611714, -0.791076, -0.001778,
		26.713303, 34.231880, 35.413853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648890, 34.760471, 34.761459>,  <26.285103, 34.785633, 35.415096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648890, 34.760471, 34.761459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730738, 34.401657, 34.918152>,  <26.779846, 34.186367, 35.012165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730738, 34.401657, 34.918152>,  <26.648890, 34.760471, 34.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730738, 34.401657, 34.918152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083468, -0.414729, -0.906109,
		0.975277, 0.152710, -0.159736,
		0.204618, -0.897039, 0.391729,
		26.792124, 34.132545, 35.035671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064779, 34.415279, 34.299328>,  <26.648890, 34.760471, 34.761459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064779, 34.415279, 34.299328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884964, 34.110806, 34.486309>,  <26.777075, 33.928120, 34.598499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884964, 34.110806, 34.486309>,  <27.064779, 34.415279, 34.299328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884964, 34.110806, 34.486309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206662, -0.597741, -0.774594,
		0.869027, -0.251604, 0.426014,
		-0.449537, -0.761184, 0.467456,
		26.750103, 33.882450, 34.626545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496325, 33.826981, 34.058994>,  <27.064779, 34.415279, 34.299328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496325, 33.826981, 34.058994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133320, 33.698898, 34.167725>,  <26.915518, 33.622047, 34.232964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133320, 33.698898, 34.167725>,  <27.496325, 33.826981, 34.058994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133320, 33.698898, 34.167725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027625, -0.691258, -0.722080,
		0.419117, -0.647787, 0.636170,
		-0.907512, -0.320210, 0.271823,
		26.861067, 33.602837, 34.249271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617233, 33.118259, 34.123615>,  <27.496325, 33.826981, 34.058994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617233, 33.118259, 34.123615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219469, 33.150829, 34.096741>,  <26.980810, 33.170372, 34.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219469, 33.150829, 34.096741>,  <27.617233, 33.118259, 34.123615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219469, 33.150829, 34.096741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046071, -0.907383, -0.417772,
		-0.094980, -0.412342, 0.906064,
		-0.994413, 0.081424, -0.067186,
		26.921144, 33.175255, 34.076584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414938, 32.460003, 34.048477>,  <27.617233, 33.118259, 34.123615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414938, 32.460003, 34.048477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087879, 32.655975, 33.927536>,  <26.891644, 32.773560, 33.854973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087879, 32.655975, 33.927536>,  <27.414938, 32.460003, 34.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087879, 32.655975, 33.927536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281462, -0.798310, -0.532428,
		-0.502224, -0.350239, 0.790635,
		-0.817649, 0.489932, -0.302351,
		26.842585, 32.802956, 33.836830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046003, 31.933325, 33.799740>,  <27.414938, 32.460003, 34.048477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046003, 31.933325, 33.799740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844370, 32.257034, 33.679096>,  <26.723389, 32.451260, 33.606709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844370, 32.257034, 33.679096>,  <27.046003, 31.933325, 33.799740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844370, 32.257034, 33.679096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470570, -0.550201, -0.689814,
		-0.724198, -0.205793, 0.658169,
		-0.504084, 0.809276, -0.301614,
		26.693144, 32.499817, 33.588612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285625, 31.810520, 33.902317>,  <27.046003, 31.933325, 33.799740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285625, 31.810520, 33.902317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347729, 32.048553, 33.586906>,  <26.384991, 32.191376, 33.397659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347729, 32.048553, 33.586906>,  <26.285625, 31.810520, 33.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347729, 32.048553, 33.586906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293123, -0.734503, -0.612033,
		-0.943384, 0.326157, 0.060396,
		0.155258, 0.595086, -0.788523,
		26.394306, 32.227077, 33.350349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737818, 31.753729, 33.510796>,  <26.285625, 31.810520, 33.902317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737818, 31.753729, 33.510796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996904, 31.912476, 33.250652>,  <26.152355, 32.007725, 33.094566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996904, 31.912476, 33.250652>,  <25.737818, 31.753729, 33.510796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996904, 31.912476, 33.250652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286516, -0.664074, -0.690589,
		-0.705956, 0.633643, -0.316423,
		0.647715, 0.396865, -0.650356,
		26.191219, 32.031536, 33.055546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404285, 31.800766, 32.835964>,  <25.737818, 31.753729, 33.510796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404285, 31.800766, 32.835964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799761, 31.803253, 32.776028>,  <26.037046, 31.804745, 32.740067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799761, 31.803253, 32.776028>,  <25.404285, 31.800766, 32.835964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799761, 31.803253, 32.776028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107494, -0.667349, -0.736947,
		-0.104582, 0.744719, -0.659133,
		0.988690, 0.006218, -0.149845,
		26.096367, 31.805119, 32.731075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310955, 31.681875, 32.114918>,  <25.404285, 31.800766, 32.835964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310955, 31.681875, 32.114918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693689, 31.622757, 32.215012>,  <25.923330, 31.587286, 32.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693689, 31.622757, 32.215012>,  <25.310955, 31.681875, 32.114918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693689, 31.622757, 32.215012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073615, -0.709700, -0.700647,
		0.281144, 0.688827, -0.668188,
		0.956838, -0.147794, 0.250237,
		25.980742, 31.578419, 32.290081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691313, 31.722343, 31.494555>,  <25.310955, 31.681875, 32.114918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691313, 31.722343, 31.494555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916830, 31.518000, 31.754141>,  <26.052141, 31.395393, 31.909893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916830, 31.518000, 31.754141>,  <25.691313, 31.722343, 31.494555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916830, 31.518000, 31.754141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129073, -0.721601, -0.680171,
		0.815767, 0.467241, -0.340897,
		0.563795, -0.510860, 0.648966,
		26.085968, 31.364742, 31.948832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332775, 31.582928, 31.143423>,  <25.691313, 31.722343, 31.494555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332775, 31.582928, 31.143423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302195, 31.302422, 31.426939>,  <26.283846, 31.134117, 31.597048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302195, 31.302422, 31.426939>,  <26.332775, 31.582928, 31.143423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302195, 31.302422, 31.426939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387712, -0.675832, -0.626842,
		0.918605, 0.226883, 0.323557,
		-0.076450, -0.701267, 0.708788,
		26.279259, 31.092041, 31.639576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981136, 31.195805, 31.200619>,  <26.332775, 31.582928, 31.143423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981136, 31.195805, 31.200619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686035, 30.955420, 31.323626>,  <26.508974, 30.811188, 31.397430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686035, 30.955420, 31.323626>,  <26.981136, 31.195805, 31.200619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686035, 30.955420, 31.323626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286308, -0.691076, -0.663658,
		0.611350, -0.401570, 0.681903,
		-0.737752, -0.600962, 0.307517,
		26.464710, 30.775131, 31.415880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223957, 30.659822, 30.970394>,  <26.981136, 31.195805, 31.200619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223957, 30.659822, 30.970394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873411, 30.506014, 31.086416>,  <26.663084, 30.413729, 31.156031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873411, 30.506014, 31.086416>,  <27.223957, 30.659822, 30.970394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873411, 30.506014, 31.086416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165465, -0.805911, -0.568445,
		0.452338, -0.450170, 0.769894,
		-0.876363, -0.384520, 0.290057,
		26.610502, 30.390657, 31.173433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295156, 29.899155, 31.127119>,  <27.223957, 30.659822, 30.970394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295156, 29.899155, 31.127119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899517, 29.936808, 31.081831>,  <26.662132, 29.959400, 31.054659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899517, 29.936808, 31.081831>,  <27.295156, 29.899155, 31.127119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899517, 29.936808, 31.081831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016028, -0.833213, -0.552720,
		-0.146365, -0.544881, 0.825640,
		-0.989101, 0.094132, -0.113220,
		26.602787, 29.965048, 31.047865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057575, 29.180628, 31.151693>,  <27.295156, 29.899155, 31.127119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057575, 29.180628, 31.151693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791403, 29.409128, 30.959497>,  <26.631699, 29.546228, 30.844179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791403, 29.409128, 30.959497>,  <27.057575, 29.180628, 31.151693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791403, 29.409128, 30.959497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176733, -0.745964, -0.642109,
		-0.725228, -0.342366, 0.597352,
		-0.665439, 0.571247, -0.480486,
		26.591772, 29.580503, 30.815350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528797, 28.749073, 31.061907>,  <27.057575, 29.180628, 31.151693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528797, 28.749073, 31.061907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450779, 29.044428, 30.803684>,  <26.403969, 29.221642, 30.648750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450779, 29.044428, 30.803684>,  <26.528797, 28.749073, 31.061907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450779, 29.044428, 30.803684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102452, -0.669935, -0.735317,
		-0.975429, -0.077282, 0.206317,
		-0.195046, 0.738387, -0.645556,
		26.392265, 29.265944, 30.610018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978733, 28.415098, 30.643614>,  <26.528797, 28.749073, 31.061907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978733, 28.415098, 30.643614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137947, 28.726427, 30.449383>,  <26.233477, 28.913223, 30.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137947, 28.726427, 30.449383>,  <25.978733, 28.415098, 30.643614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137947, 28.726427, 30.449383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266328, -0.604557, -0.750719,
		-0.877859, 0.169491, -0.447925,
		0.398036, 0.778321, -0.485576,
		26.257359, 28.959923, 30.303711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683790, 28.386349, 29.979849>,  <25.978733, 28.415098, 30.643614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683790, 28.386349, 29.979849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006361, 28.619089, 29.937653>,  <26.199903, 28.758734, 29.912334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006361, 28.619089, 29.937653>,  <25.683790, 28.386349, 29.979849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006361, 28.619089, 29.937653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332635, -0.593844, -0.732600,
		-0.488908, 0.555698, -0.672435,
		0.806426, 0.581850, -0.105491,
		26.248289, 28.793644, 29.906006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815098, 28.528946, 29.257278>,  <25.683790, 28.386349, 29.979849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815098, 28.528946, 29.257278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173941, 28.573471, 29.428303>,  <26.389246, 28.600185, 29.530918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173941, 28.573471, 29.428303>,  <25.815098, 28.528946, 29.257278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173941, 28.573471, 29.428303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399360, -0.618224, -0.676987,
		0.188973, 0.778081, -0.599066,
		0.897107, 0.111311, 0.427562,
		26.443073, 28.606865, 29.556572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250059, 28.670507, 28.720261>,  <25.815098, 28.528946, 29.257278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250059, 28.670507, 28.720261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472351, 28.506552, 29.009579>,  <26.605726, 28.408178, 29.183170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472351, 28.506552, 29.009579>,  <26.250059, 28.670507, 28.720261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472351, 28.506552, 29.009579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504594, -0.525134, -0.685287,
		0.660718, 0.745806, -0.085006,
		0.555731, -0.409888, 0.723295,
		26.639071, 28.383585, 29.226566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923120, 28.709805, 28.479757>,  <26.250059, 28.670507, 28.720261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923120, 28.709805, 28.479757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982012, 28.432205, 28.761663>,  <27.017345, 28.265646, 28.930807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982012, 28.432205, 28.761663>,  <26.923120, 28.709805, 28.479757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982012, 28.432205, 28.761663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523785, -0.549716, -0.650739,
		0.839031, 0.464951, 0.282573,
		0.147227, -0.693998, 0.704764,
		27.026180, 28.224007, 28.973093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585423, 28.666048, 28.749041>,  <26.923120, 28.709805, 28.479757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585423, 28.666048, 28.749041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416046, 28.303680, 28.748024>,  <27.314421, 28.086260, 28.747414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416046, 28.303680, 28.748024>,  <27.585423, 28.666048, 28.749041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416046, 28.303680, 28.748024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672495, -0.312454, -0.670912,
		0.606998, -0.285802, 0.741532,
		-0.423443, -0.905919, -0.002541,
		27.289013, 28.031904, 28.747261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666920, 27.983955, 29.154194>,  <27.585423, 28.666048, 28.749041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666920, 27.983955, 29.154194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988297, 27.745985, 29.144857>,  <28.181122, 27.603203, 29.139256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988297, 27.745985, 29.144857>,  <27.666920, 27.983955, 29.154194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988297, 27.745985, 29.144857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549485, -0.725843, -0.413785,
		0.229229, 0.345279, -0.910075,
		0.803443, -0.594924, -0.023341,
		28.229330, 27.567507, 29.137856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949501, 27.894098, 28.492363>,  <27.666920, 27.983955, 29.154194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949501, 27.894098, 28.492363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994785, 27.573854, 28.727722>,  <28.021955, 27.381708, 28.868937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994785, 27.573854, 28.727722>,  <27.949501, 27.894098, 28.492363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994785, 27.573854, 28.727722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520793, -0.552147, -0.651082,
		0.846143, -0.232722, -0.479460,
		0.113211, -0.800608, 0.588395,
		28.028749, 27.333672, 28.904242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160017, 27.339752, 27.955748>,  <27.949501, 27.894098, 28.492363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160017, 27.339752, 27.955748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989965, 27.243254, 28.304705>,  <27.887936, 27.185354, 28.514078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989965, 27.243254, 28.304705>,  <28.160017, 27.339752, 27.955748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989965, 27.243254, 28.304705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751491, -0.443146, -0.488756,
		0.504508, -0.863378, 0.007097,
		-0.425126, -0.241248, 0.872392,
		27.862427, 27.170879, 28.566422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215767, 26.627600, 28.216492>,  <28.160017, 27.339752, 27.955748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215767, 26.627600, 28.216492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879875, 26.817450, 28.322012>,  <27.678341, 26.931358, 28.385324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879875, 26.817450, 28.322012>,  <28.215767, 26.627600, 28.216492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879875, 26.817450, 28.322012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507646, -0.513726, -0.691651,
		-0.192751, -0.714716, 0.672330,
		-0.839728, 0.474622, 0.263801,
		27.627956, 26.959837, 28.401152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687250, 26.914906, 28.778078>,  <28.215767, 26.627600, 28.216492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687250, 26.914906, 28.778078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796713, 27.218605, 28.541891>,  <28.862391, 27.400826, 28.400179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796713, 27.218605, 28.541891>,  <28.687250, 26.914906, 28.778078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796713, 27.218605, 28.541891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231999, 0.543668, 0.806599,
		0.933428, -0.357720, -0.027367,
		0.273658, 0.759251, -0.590466,
		28.878811, 27.446381, 28.364752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402336, 27.122572, 28.739298>,  <28.687250, 26.914906, 28.778078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402336, 27.122572, 28.739298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206158, 27.470461, 28.717236>,  <29.088451, 27.679195, 28.703999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206158, 27.470461, 28.717236>,  <29.402336, 27.122572, 28.739298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206158, 27.470461, 28.717236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562376, 0.364208, 0.742351,
		0.665730, 0.333064, -0.667737,
		-0.490446, 0.869725, -0.055157,
		29.059025, 27.731379, 28.700689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747871, 27.456051, 29.328714>,  <29.402336, 27.122572, 28.739298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747871, 27.456051, 29.328714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450169, 27.698231, 29.215919>,  <29.271547, 27.843538, 29.148243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450169, 27.698231, 29.215919>,  <29.747871, 27.456051, 29.328714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450169, 27.698231, 29.215919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132463, 0.547620, 0.826176,
		0.654628, 0.577532, -0.487768,
		-0.744255, 0.605449, -0.281986,
		29.226892, 27.879866, 29.131325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929075, 28.165791, 29.429945>,  <29.747871, 27.456051, 29.328714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929075, 28.165791, 29.429945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529966, 28.151619, 29.452572>,  <29.290501, 28.143116, 29.466148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529966, 28.151619, 29.452572>,  <29.929075, 28.165791, 29.429945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529966, 28.151619, 29.452572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025211, 0.584677, 0.810874,
		-0.061802, 0.810492, -0.582480,
		-0.997770, -0.035429, 0.056567,
		29.230635, 28.140991, 29.469542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441284, 28.858746, 29.305674>,  <29.929075, 28.165791, 29.429945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441284, 28.858746, 29.305674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313271, 28.589638, 29.572495>,  <29.236464, 28.428173, 29.732586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313271, 28.589638, 29.572495>,  <29.441284, 28.858746, 29.305674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313271, 28.589638, 29.572495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120554, 0.669440, 0.733019,
		-0.939705, 0.315006, -0.133137,
		-0.320032, -0.672772, 0.667051,
		29.217260, 28.387806, 29.772610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858978, 29.127008, 29.651196>,  <29.441284, 28.858746, 29.305674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858978, 29.127008, 29.651196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046867, 28.855637, 29.877148>,  <29.159601, 28.692814, 30.012718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046867, 28.855637, 29.877148>,  <28.858978, 29.127008, 29.651196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046867, 28.855637, 29.877148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080328, 0.670056, 0.737952,
		-0.879151, -0.301259, 0.369239,
		0.469725, -0.678431, 0.564880,
		29.187784, 28.652107, 30.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572525, 29.226954, 30.336708>,  <28.858978, 29.127008, 29.651196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572525, 29.226954, 30.336708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909071, 29.016928, 30.387955>,  <29.110998, 28.890913, 30.418703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909071, 29.016928, 30.387955>,  <28.572525, 29.226954, 30.336708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909071, 29.016928, 30.387955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083556, 0.360567, 0.928983,
		-0.533969, -0.770909, 0.347241,
		0.841365, -0.525063, 0.128118,
		29.161480, 28.859409, 30.426390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408766, 28.943579, 30.886929>,  <28.572525, 29.226954, 30.336708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408766, 28.943579, 30.886929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807674, 28.914574, 30.892483>,  <29.047020, 28.897171, 30.895815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807674, 28.914574, 30.892483>,  <28.408766, 28.943579, 30.886929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807674, 28.914574, 30.892483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025104, 0.509906, 0.859864,
		-0.069431, -0.857168, 0.510335,
		0.997271, -0.072512, 0.013885,
		29.106855, 28.892820, 30.896648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562967, 28.899103, 31.617819>,  <28.408766, 28.943579, 30.886929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562967, 28.899103, 31.617819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923985, 28.988491, 31.470592>,  <29.140594, 29.042124, 31.382256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923985, 28.988491, 31.470592>,  <28.562967, 28.899103, 31.617819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923985, 28.988491, 31.470592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172122, 0.596296, 0.784095,
		0.394696, -0.771035, 0.499721,
		0.902546, 0.223467, -0.368068,
		29.194748, 29.055531, 31.360172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114344, 28.768190, 32.112568>,  <28.562967, 28.899103, 31.617819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114344, 28.768190, 32.112568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271196, 29.045298, 31.870476>,  <29.365309, 29.211561, 31.725220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271196, 29.045298, 31.870476>,  <29.114344, 28.768190, 32.112568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271196, 29.045298, 31.870476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312002, 0.518768, 0.795949,
		0.865383, -0.500950, -0.012719,
		0.392132, 0.692769, -0.605231,
		29.388836, 29.253128, 31.688906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731825, 28.923752, 32.451305>,  <29.114344, 28.768190, 32.112568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731825, 28.923752, 32.451305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652878, 29.230780, 32.207378>,  <29.605509, 29.414997, 32.061020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652878, 29.230780, 32.207378>,  <29.731825, 28.923752, 32.451305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652878, 29.230780, 32.207378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124332, 0.636633, 0.761078,
		0.972413, 0.074393, -0.221085,
		-0.197368, 0.767570, -0.609821,
		29.593668, 29.461050, 32.024433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176441, 29.472773, 32.630157>,  <29.731825, 28.923752, 32.451305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176441, 29.472773, 32.630157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902246, 29.660965, 32.407894>,  <29.737730, 29.773880, 32.274536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902246, 29.660965, 32.407894>,  <30.176441, 29.472773, 32.630157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902246, 29.660965, 32.407894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004158, 0.760636, 0.649166,
		0.728075, 0.447303, -0.519448,
		-0.685484, 0.470482, -0.555660,
		29.696602, 29.802109, 32.241196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430222, 30.168402, 32.660084>,  <30.176441, 29.472773, 32.630157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430222, 30.168402, 32.660084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061563, 30.221085, 32.514088>,  <29.840368, 30.252693, 32.426491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061563, 30.221085, 32.514088>,  <30.430222, 30.168402, 32.660084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061563, 30.221085, 32.514088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143609, 0.758066, 0.636170,
		0.360476, 0.638741, -0.679755,
		-0.921647, 0.131705, -0.364994,
		29.785069, 30.260595, 32.404591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265123, 30.897463, 32.492393>,  <30.430222, 30.168402, 32.660084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265123, 30.897463, 32.492393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915279, 30.714022, 32.555309>,  <29.705372, 30.603958, 32.593060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915279, 30.714022, 32.555309>,  <30.265123, 30.897463, 32.492393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915279, 30.714022, 32.555309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308705, 0.776932, 0.548705,
		-0.373841, 0.431347, -0.821086,
		-0.874611, -0.458602, 0.157290,
		29.652897, 30.576441, 32.602497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709867, 31.381523, 32.443611>,  <30.265123, 30.897463, 32.492393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709867, 31.381523, 32.443611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548120, 31.079008, 32.649338>,  <29.451073, 30.897499, 32.772774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548120, 31.079008, 32.649338>,  <29.709867, 31.381523, 32.443611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548120, 31.079008, 32.649338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403033, 0.652143, 0.642086,
		-0.821006, 0.052355, -0.568514,
		-0.404369, -0.756286, 0.514313,
		29.426809, 30.852123, 32.803631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952692, 31.554205, 32.417419>,  <29.709867, 31.381523, 32.443611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952692, 31.554205, 32.417419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072309, 31.324072, 32.721935>,  <29.144079, 31.185991, 32.904644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072309, 31.324072, 32.721935>,  <28.952692, 31.554205, 32.417419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072309, 31.324072, 32.721935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320484, 0.690904, 0.648029,
		-0.898812, -0.437771, 0.022226,
		0.299044, -0.575333, 0.761291,
		29.162024, 31.151472, 32.950321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562777, 31.705721, 32.960434>,  <28.952692, 31.554205, 32.417419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562777, 31.705721, 32.960434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860588, 31.523712, 33.155834>,  <29.039274, 31.414507, 33.273075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860588, 31.523712, 33.155834>,  <28.562777, 31.705721, 32.960434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860588, 31.523712, 33.155834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148592, 0.600435, 0.785747,
		-0.650846, -0.657598, 0.379428,
		0.744527, -0.455020, 0.488505,
		29.083946, 31.387207, 33.302387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293051, 31.574799, 33.662289>,  <28.562777, 31.705721, 32.960434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293051, 31.574799, 33.662289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687643, 31.549679, 33.722839>,  <28.924398, 31.534607, 33.759171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687643, 31.549679, 33.722839>,  <28.293051, 31.574799, 33.662289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687643, 31.549679, 33.722839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085298, 0.591937, 0.801458,
		-0.139934, -0.803533, 0.578578,
		0.986480, -0.062800, 0.151372,
		28.983587, 31.530838, 33.768250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348850, 31.464455, 34.372379>,  <28.293051, 31.574799, 33.662289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348850, 31.464455, 34.372379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697004, 31.618250, 34.249352>,  <28.905897, 31.710527, 34.175533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697004, 31.618250, 34.249352>,  <28.348850, 31.464455, 34.372379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697004, 31.618250, 34.249352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005075, 0.617630, 0.786453,
		0.492344, -0.686078, 0.535625,
		0.870386, 0.384487, -0.307568,
		28.958120, 31.733597, 34.157082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619865, 31.600595, 35.002098>,  <28.348850, 31.464455, 34.372379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619865, 31.600595, 35.002098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849430, 31.810968, 34.751015>,  <28.987169, 31.937193, 34.600365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849430, 31.810968, 34.751015>,  <28.619865, 31.600595, 35.002098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849430, 31.810968, 34.751015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213529, 0.643889, 0.734719,
		0.790590, -0.555697, 0.257232,
		0.573911, 0.525935, -0.627710,
		29.021603, 31.968748, 34.562702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202095, 31.776617, 35.376316>,  <28.619865, 31.600595, 35.002098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202095, 31.776617, 35.376316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210749, 32.032082, 35.068642>,  <29.215940, 32.185360, 34.884037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210749, 32.032082, 35.068642>,  <29.202095, 31.776617, 35.376316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210749, 32.032082, 35.068642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377859, 0.707075, 0.597718,
		0.925610, -0.303576, -0.226026,
		0.021636, 0.638660, -0.769185,
		29.217239, 32.223679, 34.837887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782806, 32.170464, 35.427368>,  <29.202095, 31.776617, 35.376316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782806, 32.170464, 35.427368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597059, 32.417877, 35.173828>,  <29.485611, 32.566326, 35.021702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597059, 32.417877, 35.173828>,  <29.782806, 32.170464, 35.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597059, 32.417877, 35.173828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249185, 0.778038, 0.576683,
		0.849864, 0.109847, -0.515427,
		-0.464369, 0.618538, -0.633854,
		29.457748, 32.603439, 34.983673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163668, 32.771351, 35.355831>,  <29.782806, 32.170464, 35.427368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163668, 32.771351, 35.355831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784554, 32.868248, 35.272869>,  <29.557085, 32.926384, 35.223091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784554, 32.868248, 35.272869>,  <30.163668, 32.771351, 35.355831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784554, 32.868248, 35.272869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079303, 0.808986, 0.582454,
		0.308886, 0.535594, -0.785957,
		-0.947787, 0.242241, -0.207410,
		29.500217, 32.940922, 35.210648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220503, 33.334568, 35.032417>,  <30.163668, 32.771351, 35.355831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220503, 33.334568, 35.032417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856110, 33.306179, 35.194935>,  <29.637474, 33.289146, 35.292446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856110, 33.306179, 35.194935>,  <30.220503, 33.334568, 35.032417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856110, 33.306179, 35.194935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189486, 0.802952, 0.565122,
		-0.366341, 0.591803, -0.718027,
		-0.910983, -0.070972, 0.406292,
		29.582815, 33.284889, 35.316822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972013, 33.982552, 35.058792>,  <30.220503, 33.334568, 35.032417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972013, 33.982552, 35.058792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759193, 33.770035, 35.322506>,  <29.631500, 33.642525, 35.480732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759193, 33.770035, 35.322506>,  <29.972013, 33.982552, 35.058792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759193, 33.770035, 35.322506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120875, 0.723003, 0.680188,
		-0.838040, 0.441586, -0.320456,
		-0.532052, -0.531289, 0.659282,
		29.599579, 33.610649, 35.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443966, 34.380772, 35.396225>,  <29.972013, 33.982552, 35.058792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443966, 34.380772, 35.396225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545727, 34.081738, 35.641628>,  <29.606783, 33.902317, 35.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545727, 34.081738, 35.641628>,  <29.443966, 34.380772, 35.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545727, 34.081738, 35.641628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117984, 0.653632, 0.747560,
		-0.959875, -0.117796, 0.254489,
		0.254402, -0.747589, 0.613506,
		29.622047, 33.857460, 35.825680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033152, 34.391178, 36.046024>,  <29.443966, 34.380772, 35.396225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033152, 34.391178, 36.046024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387270, 34.214314, 36.103634>,  <29.599741, 34.108192, 36.138199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387270, 34.214314, 36.103634>,  <29.033152, 34.391178, 36.046024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387270, 34.214314, 36.103634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161722, 0.583123, 0.796124,
		-0.436003, -0.681512, 0.587744,
		0.885295, -0.442163, 0.144028,
		29.652859, 34.081665, 36.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116405, 34.293816, 36.712311>,  <29.033152, 34.391178, 36.046024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116405, 34.293816, 36.712311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498201, 34.283615, 36.593449>,  <29.727278, 34.277496, 36.522133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498201, 34.283615, 36.593449>,  <29.116405, 34.293816, 36.712311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498201, 34.283615, 36.593449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244674, 0.636694, 0.731269,
		0.170548, -0.770694, 0.613957,
		0.954488, -0.025503, -0.297156,
		29.784548, 34.275963, 36.504303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530516, 33.865963, 37.305756>,  <29.116405, 34.293816, 36.712311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530516, 33.865963, 37.305756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732279, 34.177212, 37.156036>,  <29.853336, 34.363960, 37.066204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732279, 34.177212, 37.156036>,  <29.530516, 33.865963, 37.305756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732279, 34.177212, 37.156036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246702, 0.285542, 0.926069,
		0.827472, -0.559456, -0.047934,
		0.504408, 0.778122, -0.374297,
		29.883602, 34.410648, 37.043747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223133, 33.969723, 37.441174>,  <29.530516, 33.865963, 37.305756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223133, 33.969723, 37.441174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035938, 34.320473, 37.397228>,  <29.923622, 34.530922, 37.370861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035938, 34.320473, 37.397228>,  <30.223133, 33.969723, 37.441174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035938, 34.320473, 37.397228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058496, 0.154781, 0.986216,
		0.881797, 0.455110, -0.123730,
		-0.467988, 0.876879, -0.109863,
		29.895542, 34.583538, 37.364269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562893, 34.560028, 37.713894>,  <30.223133, 33.969723, 37.441174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562893, 34.560028, 37.713894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169296, 34.631264, 37.711197>,  <29.933138, 34.674004, 37.709579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169296, 34.631264, 37.711197>,  <30.562893, 34.560028, 37.713894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169296, 34.631264, 37.711197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038140, 0.247396, 0.968163,
		0.174089, 0.952407, -0.250228,
		-0.983991, 0.178090, -0.006744,
		29.874100, 34.684692, 37.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280134, 35.298374, 37.734257>,  <30.562893, 34.560028, 37.713894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280134, 35.298374, 37.734257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017649, 35.054386, 37.911938>,  <29.860157, 34.907993, 38.018547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017649, 35.054386, 37.911938>,  <30.280134, 35.298374, 37.734257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017649, 35.054386, 37.911938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117132, 0.499204, 0.858531,
		-0.745427, 0.615412, -0.256138,
		-0.656215, -0.609970, 0.444204,
		29.820784, 34.871395, 38.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737083, 35.683075, 38.042450>,  <30.280134, 35.298374, 37.734257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737083, 35.683075, 38.042450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848484, 35.345390, 38.225636>,  <29.915325, 35.142776, 38.335548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848484, 35.345390, 38.225636>,  <29.737083, 35.683075, 38.042450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848484, 35.345390, 38.225636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186719, 0.515328, 0.836405,
		-0.942110, -0.147430, 0.301152,
		0.278503, -0.844216, 0.457968,
		29.932035, 35.092125, 38.363026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443865, 35.628910, 38.806553>,  <29.737083, 35.683075, 38.042450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443865, 35.628910, 38.806553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794924, 35.440479, 38.841946>,  <30.005558, 35.327423, 38.863182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794924, 35.440479, 38.841946>,  <29.443865, 35.628910, 38.806553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794924, 35.440479, 38.841946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183782, 0.501230, 0.845572,
		-0.442677, -0.725850, 0.526477,
		0.877645, -0.471073, 0.088485,
		30.058218, 35.299156, 38.868492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573797, 35.194336, 39.447407>,  <29.443865, 35.628910, 38.806553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573797, 35.194336, 39.447407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945227, 35.282848, 39.328220>,  <30.168085, 35.335957, 39.256710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945227, 35.282848, 39.328220>,  <29.573797, 35.194336, 39.447407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945227, 35.282848, 39.328220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159849, 0.486113, 0.859152,
		0.334955, -0.845418, 0.416022,
		0.928576, 0.221277, -0.297965,
		30.223799, 35.349232, 39.238831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925173, 35.224037, 40.104553>,  <29.573797, 35.194336, 39.447407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925173, 35.224037, 40.104553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195955, 35.380814, 39.855358>,  <30.358425, 35.474880, 39.705841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195955, 35.380814, 39.855358>,  <29.925173, 35.224037, 40.104553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195955, 35.380814, 39.855358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466283, 0.426526, 0.775020,
		0.569484, -0.815142, 0.105983,
		0.676956, 0.391943, -0.622986,
		30.399042, 35.498398, 39.668461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647501, 35.016109, 40.319210>,  <29.925173, 35.224037, 40.104553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647501, 35.016109, 40.319210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682709, 35.355282, 40.110111>,  <30.703833, 35.558784, 39.984653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682709, 35.355282, 40.110111>,  <30.647501, 35.016109, 40.319210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682709, 35.355282, 40.110111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418898, 0.444614, 0.791734,
		0.903757, -0.288662, -0.316065,
		0.088017, 0.847934, -0.522743,
		30.709114, 35.609661, 39.953289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242455, 35.261387, 40.428387>,  <30.647501, 35.016109, 40.319210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242455, 35.261387, 40.428387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080450, 35.597824, 40.284985>,  <30.983248, 35.799686, 40.198944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080450, 35.597824, 40.284985>,  <31.242455, 35.261387, 40.428387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080450, 35.597824, 40.284985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431899, 0.521600, 0.735797,
		0.805872, 0.143166, -0.574521,
		-0.405011, 0.841093, -0.358509,
		30.958946, 35.850151, 40.177433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831205, 35.803005, 40.421917>,  <31.242455, 35.261387, 40.428387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831205, 35.803005, 40.421917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478834, 35.990776, 40.445908>,  <31.267410, 36.103439, 40.460304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478834, 35.990776, 40.445908>,  <31.831205, 35.803005, 40.421917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478834, 35.990776, 40.445908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376475, 0.618344, 0.689868,
		0.286757, 0.630306, -0.721446,
		-0.880930, 0.469431, 0.059980,
		31.214556, 36.131607, 40.463902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000084, 36.420952, 40.470177>,  <31.831205, 35.803005, 40.421917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000084, 36.420952, 40.470177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625738, 36.452087, 40.607635>,  <31.401129, 36.470768, 40.690109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625738, 36.452087, 40.607635>,  <32.000084, 36.420952, 40.470177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625738, 36.452087, 40.607635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332591, 0.517153, 0.788629,
		-0.116331, 0.852346, -0.509876,
		-0.935869, 0.077838, 0.343644,
		31.344978, 36.475437, 40.710728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995424, 37.126633, 40.669758>,  <32.000084, 36.420952, 40.470177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995424, 37.126633, 40.669758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682768, 36.955532, 40.851337>,  <31.495174, 36.852871, 40.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682768, 36.955532, 40.851337>,  <31.995424, 37.126633, 40.669758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682768, 36.955532, 40.851337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155893, 0.570725, 0.806208,
		-0.603934, 0.700931, -0.379418,
		-0.781640, -0.427748, 0.453950,
		31.448277, 36.827209, 40.987522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659897, 37.672192, 40.990349>,  <31.995424, 37.126633, 40.669758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659897, 37.672192, 40.990349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542955, 37.339119, 41.178463>,  <31.472790, 37.139275, 41.291332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542955, 37.339119, 41.178463>,  <31.659897, 37.672192, 40.990349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542955, 37.339119, 41.178463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112699, 0.458346, 0.881599,
		-0.949646, 0.310740, -0.040157,
		-0.292354, -0.832682, 0.470287,
		31.455250, 37.089314, 41.319550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114912, 37.929874, 41.483250>,  <31.659897, 37.672192, 40.990349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114912, 37.929874, 41.483250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257000, 37.575214, 41.601685>,  <31.342253, 37.362419, 41.672745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257000, 37.575214, 41.601685>,  <31.114912, 37.929874, 41.483250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257000, 37.575214, 41.601685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163028, 0.253132, 0.953596,
		-0.920457, -0.387008, -0.054631,
		0.355220, -0.886650, 0.296090,
		31.363565, 37.309219, 41.690514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709507, 37.695210, 42.126144>,  <31.114912, 37.929874, 41.483250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709507, 37.695210, 42.126144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038994, 37.468430, 42.123055>,  <31.236687, 37.332363, 42.121201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038994, 37.468430, 42.123055>,  <30.709507, 37.695210, 42.126144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038994, 37.468430, 42.123055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122735, 0.164986, 0.978630,
		-0.553556, -0.807063, 0.205486,
		0.823718, -0.566947, -0.007726,
		31.286110, 37.298344, 42.120735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609289, 37.232998, 42.669067>,  <30.709507, 37.695210, 42.126144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609289, 37.232998, 42.669067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000940, 37.208511, 42.591545>,  <31.235931, 37.193817, 42.545033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000940, 37.208511, 42.591545>,  <30.609289, 37.232998, 42.669067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000940, 37.208511, 42.591545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190853, -0.050958, 0.980295,
		-0.069902, -0.996822, -0.038208,
		0.979127, -0.061232, -0.193809,
		31.294678, 37.190147, 42.533401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922758, 36.727657, 43.118286>,  <30.609289, 37.232998, 42.669067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922758, 36.727657, 43.118286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210258, 36.982704, 43.007404>,  <31.382759, 37.135731, 42.940876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210258, 36.982704, 43.007404>,  <30.922758, 36.727657, 43.118286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210258, 36.982704, 43.007404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391062, -0.041088, 0.919447,
		0.574866, -0.769257, -0.278880,
		0.718749, 0.637618, -0.277207,
		31.425882, 37.173988, 42.924244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517653, 36.344261, 43.262234>,  <30.922758, 36.727657, 43.118286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517653, 36.344261, 43.262234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606318, 36.734127, 43.274204>,  <31.659515, 36.968048, 43.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606318, 36.734127, 43.274204>,  <31.517653, 36.344261, 43.262234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606318, 36.734127, 43.274204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133545, -0.060742, 0.989180,
		0.965936, -0.215266, -0.143625,
		0.221661, 0.974665, 0.029926,
		31.672815, 37.026527, 43.283180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982138, 36.382690, 43.827137>,  <31.517653, 36.344261, 43.262234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982138, 36.382690, 43.827137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870335, 36.761456, 43.763596>,  <31.803253, 36.988716, 43.725471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870335, 36.761456, 43.763596>,  <31.982138, 36.382690, 43.827137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870335, 36.761456, 43.763596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111666, 0.196383, 0.974148,
		0.953628, 0.254545, -0.160628,
		-0.279509, 0.946911, -0.158852,
		31.786482, 37.045528, 43.715939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464306, 36.780998, 44.060051>,  <31.982138, 36.382690, 43.827137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464306, 36.780998, 44.060051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145149, 37.021618, 44.075611>,  <31.953655, 37.165989, 44.084946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145149, 37.021618, 44.075611>,  <32.464306, 36.780998, 44.060051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145149, 37.021618, 44.075611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153169, 0.139901, 0.978247,
		0.583019, 0.786491, -0.203764,
		-0.797890, 0.601547, 0.038901,
		31.905783, 37.202084, 44.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697849, 37.290382, 44.508488>,  <32.464306, 36.780998, 44.060051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697849, 37.290382, 44.508488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299828, 37.323009, 44.485840>,  <32.061012, 37.342587, 44.472252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299828, 37.323009, 44.485840>,  <32.697849, 37.290382, 44.508488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299828, 37.323009, 44.485840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024029, 0.355420, 0.934398,
		0.096341, 0.931141, -0.351704,
		-0.995058, 0.081570, -0.056616,
		32.001308, 37.347481, 44.468857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588078, 37.868488, 44.878159>,  <32.697849, 37.290382, 44.508488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588078, 37.868488, 44.878159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225533, 37.700115, 44.863594>,  <32.008007, 37.599091, 44.854855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225533, 37.700115, 44.863594>,  <32.588078, 37.868488, 44.878159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225533, 37.700115, 44.863594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183022, 0.313477, 0.931791,
		-0.380808, 0.851203, -0.361164,
		-0.906360, -0.420934, -0.036414,
		31.953625, 37.573833, 44.852669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173431, 38.408451, 45.052132>,  <32.588078, 37.868488, 44.878159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173431, 38.408451, 45.052132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963181, 38.073776, 45.113667>,  <31.837030, 37.872971, 45.150589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963181, 38.073776, 45.113667>,  <32.173431, 38.408451, 45.052132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963181, 38.073776, 45.113667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427578, 0.416163, 0.802487,
		-0.735454, 0.356032, -0.576497,
		-0.525628, -0.836689, 0.153837,
		31.805492, 37.822769, 45.159817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469366, 38.620407, 45.142307>,  <32.173431, 38.408451, 45.052132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469366, 38.620407, 45.142307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562525, 38.275909, 45.322979>,  <31.618420, 38.069210, 45.431381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562525, 38.275909, 45.322979>,  <31.469366, 38.620407, 45.142307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562525, 38.275909, 45.322979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400380, 0.338351, 0.851595,
		-0.886260, -0.379176, -0.266025,
		0.232895, -0.861246, 0.451682,
		31.632393, 38.017536, 45.458485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220018, 38.799904, 45.709305>,  <31.469366, 38.620407, 45.142307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220018, 38.799904, 45.709305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343363, 38.430088, 45.798866>,  <31.417370, 38.208199, 45.852604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343363, 38.430088, 45.798866>,  <31.220018, 38.799904, 45.709305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343363, 38.430088, 45.798866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265306, 0.142451, 0.953583,
		-0.913524, -0.353453, -0.201360,
		0.308362, -0.924543, 0.223906,
		31.435871, 38.152725, 45.866039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655525, 38.470093, 46.096756>,  <31.220018, 38.799904, 45.709305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655525, 38.470093, 46.096756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994881, 38.277885, 46.185608>,  <31.198494, 38.162563, 46.238918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994881, 38.277885, 46.185608>,  <30.655525, 38.470093, 46.096756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994881, 38.277885, 46.185608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201700, 0.094546, 0.974873,
		-0.489443, -0.871875, -0.016709,
		0.848388, -0.480515, 0.222132,
		31.249397, 38.133732, 46.252247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551506, 37.918514, 46.602695>,  <30.655525, 38.470093, 46.096756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551506, 37.918514, 46.602695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938375, 38.008514, 46.649948>,  <31.170496, 38.062515, 46.678299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938375, 38.008514, 46.649948>,  <30.551506, 37.918514, 46.602695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938375, 38.008514, 46.649948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162497, 0.190172, 0.968209,
		0.195414, -0.955613, 0.220495,
		0.967165, 0.225032, 0.118122,
		31.228527, 38.076015, 46.685387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659187, 37.631115, 47.251701>,  <30.551506, 37.918514, 46.602695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659187, 37.631115, 47.251701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967764, 37.875961, 47.182194>,  <31.152910, 38.022869, 47.140488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967764, 37.875961, 47.182194>,  <30.659187, 37.631115, 47.251701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967764, 37.875961, 47.182194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053445, 0.209797, 0.976283,
		0.634052, -0.762432, 0.129132,
		0.771442, 0.612113, -0.173771,
		31.199196, 38.059593, 47.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125692, 37.336845, 47.718864>,  <30.659187, 37.631115, 47.251701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125692, 37.336845, 47.718864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254189, 37.707943, 47.642868>,  <31.331287, 37.930603, 47.597271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254189, 37.707943, 47.642868>,  <31.125692, 37.336845, 47.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254189, 37.707943, 47.642868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085684, 0.171329, 0.981481,
		0.943113, -0.331572, -0.024455,
		0.321241, 0.927743, -0.189994,
		31.350561, 37.986267, 47.585869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605524, 37.587002, 48.233521>,  <31.125692, 37.336845, 47.718864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605524, 37.587002, 48.233521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494040, 37.948055, 48.102325>,  <31.427149, 38.164688, 48.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494040, 37.948055, 48.102325>,  <31.605524, 37.587002, 48.233521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494040, 37.948055, 48.102325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007936, 0.343676, 0.939055,
		0.960342, 0.259122, -0.102950,
		-0.278712, 0.902631, -0.327990,
		31.410425, 38.218845, 48.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916388, 38.114826, 48.597313>,  <31.605524, 37.587002, 48.233521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916388, 38.114826, 48.597313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600193, 38.310635, 48.450069>,  <31.410477, 38.428120, 48.361725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600193, 38.310635, 48.450069>,  <31.916388, 38.114826, 48.597313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600193, 38.310635, 48.450069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108280, 0.479850, 0.870643,
		0.602832, 0.728091, -0.326310,
		-0.790487, 0.489519, -0.368106,
		31.363047, 38.457489, 48.339638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033352, 38.803913, 48.653084>,  <31.916388, 38.114826, 48.597313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033352, 38.803913, 48.653084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636145, 38.763443, 48.628830>,  <31.397820, 38.739162, 48.614277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636145, 38.763443, 48.628830>,  <32.033352, 38.803913, 48.653084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636145, 38.763443, 48.628830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100937, 0.462848, 0.880672,
		-0.061037, 0.880645, -0.469829,
		-0.993019, -0.101177, -0.060639,
		31.338240, 38.733089, 48.610638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821093, 39.400726, 48.918083>,  <32.033352, 38.803913, 48.653084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821093, 39.400726, 48.918083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487139, 39.180752, 48.908779>,  <31.286766, 39.048767, 48.903198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487139, 39.180752, 48.908779>,  <31.821093, 39.400726, 48.918083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487139, 39.180752, 48.908779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221743, 0.297358, 0.928660,
		-0.503786, 0.780480, -0.370204,
		-0.834883, -0.549936, -0.023261,
		31.236673, 39.015770, 48.901802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411003, 39.825665, 49.264233>,  <31.821093, 39.400726, 48.918083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411003, 39.825665, 49.264233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267662, 39.454056, 49.301125>,  <31.181658, 39.231091, 49.323261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267662, 39.454056, 49.301125>,  <31.411003, 39.825665, 49.264233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267662, 39.454056, 49.301125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064338, 0.123133, 0.990302,
		-0.931367, 0.348944, -0.103897,
		-0.358353, -0.929019, 0.092231,
		31.160156, 39.175350, 49.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704477, 39.850693, 49.496239>,  <31.411003, 39.825665, 49.264233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704477, 39.850693, 49.496239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894646, 39.514637, 49.600655>,  <31.008747, 39.313004, 49.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894646, 39.514637, 49.600655>,  <30.704477, 39.850693, 49.496239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894646, 39.514637, 49.600655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152601, 0.213467, 0.964958,
		-0.866421, -0.498598, -0.026719,
		0.475423, -0.840138, 0.261039,
		31.037273, 39.262596, 49.678967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404367, 39.709106, 50.098759>,  <30.704477, 39.850693, 49.496239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404367, 39.709106, 50.098759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689838, 39.433052, 50.146717>,  <30.861122, 39.267418, 50.175491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689838, 39.433052, 50.146717>,  <30.404367, 39.709106, 50.098759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689838, 39.433052, 50.146717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125556, 0.042359, 0.991182,
		-0.689128, -0.722440, -0.056419,
		0.713680, -0.690135, 0.119897,
		30.903942, 39.226013, 50.182686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144081, 39.228928, 50.374073>,  <30.404367, 39.709106, 50.098759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144081, 39.228928, 50.374073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525478, 39.152828, 50.467587>,  <30.754316, 39.107166, 50.523693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525478, 39.152828, 50.467587>,  <30.144081, 39.228928, 50.374073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525478, 39.152828, 50.467587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222581, 0.078562, 0.971744,
		-0.203242, -0.978587, 0.032561,
		0.953494, -0.190252, 0.233782,
		30.811527, 39.095753, 50.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150511, 38.716564, 50.871460>,  <30.144081, 39.228928, 50.374073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150511, 38.716564, 50.871460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507498, 38.889511, 50.922939>,  <30.721689, 38.993279, 50.953827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507498, 38.889511, 50.922939>,  <30.150511, 38.716564, 50.871460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507498, 38.889511, 50.922939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157292, 0.030869, 0.987069,
		0.422803, -0.901169, 0.095557,
		0.892467, 0.432366, 0.128696,
		30.775238, 39.019222, 50.961548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460793, 38.493835, 51.541962>,  <30.150511, 38.716564, 50.871460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460793, 38.493835, 51.541962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689892, 38.814842, 51.475124>,  <30.827351, 39.007446, 51.435020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689892, 38.814842, 51.475124>,  <30.460793, 38.493835, 51.541962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689892, 38.814842, 51.475124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017074, 0.215479, 0.976359,
		0.819554, -0.556354, 0.137117,
		0.572747, 0.802521, -0.167097,
		30.861715, 39.055599, 51.424995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917677, 38.442978, 52.117817>,  <30.460793, 38.493835, 51.541962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917677, 38.442978, 52.117817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889231, 38.812313, 51.966881>,  <30.872164, 39.033916, 51.876320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889231, 38.812313, 51.966881>,  <30.917677, 38.442978, 52.117817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889231, 38.812313, 51.966881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012449, 0.379088, 0.925277,
		0.997390, 0.061104, -0.038454,
		-0.071116, 0.923341, -0.377338,
		30.867895, 39.089314, 51.853680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437777, 38.783337, 52.678276>,  <30.917677, 38.442978, 52.117817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437777, 38.783337, 52.678276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197733, 39.039875, 52.487049>,  <31.053707, 39.193798, 52.372314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197733, 39.039875, 52.487049>,  <31.437777, 38.783337, 52.678276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197733, 39.039875, 52.487049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189465, 0.466673, 0.863897,
		0.777156, 0.609010, -0.158543,
		-0.600110, 0.641345, -0.478064,
		31.017700, 39.232277, 52.343632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612633, 39.403996, 52.915386>,  <31.437777, 38.783337, 52.678276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612633, 39.403996, 52.915386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249365, 39.469452, 52.761272>,  <31.031404, 39.508728, 52.668804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249365, 39.469452, 52.761272>,  <31.612633, 39.403996, 52.915386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249365, 39.469452, 52.761272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274672, 0.461597, 0.843495,
		0.315880, 0.871865, -0.374260,
		-0.908171, 0.163644, -0.385286,
		30.976913, 39.518543, 52.645687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361025, 40.052166, 53.229309>,  <31.612633, 39.403996, 52.915386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361025, 40.052166, 53.229309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025761, 39.865795, 53.115887>,  <30.824602, 39.753971, 53.047832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025761, 39.865795, 53.115887>,  <31.361025, 40.052166, 53.229309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025761, 39.865795, 53.115887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419689, 0.218903, 0.880876,
		-0.348353, 0.857318, -0.379020,
		-0.838159, -0.465926, -0.283552,
		30.774313, 39.726017, 53.030823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702377, 40.520111, 53.264389>,  <31.361025, 40.052166, 53.229309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702377, 40.520111, 53.264389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576193, 40.142426, 53.302231>,  <30.500483, 39.915813, 53.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576193, 40.142426, 53.302231>,  <30.702377, 40.520111, 53.264389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576193, 40.142426, 53.302231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497665, 0.249500, 0.830710,
		-0.807970, 0.214974, -0.548608,
		-0.315459, -0.944212, 0.094604,
		30.481556, 39.859161, 53.330612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955236, 40.435776, 53.201321>,  <30.702377, 40.520111, 53.264389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955236, 40.435776, 53.201321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132282, 40.184502, 53.457283>,  <30.238510, 40.033737, 53.610859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132282, 40.184502, 53.457283>,  <29.955236, 40.435776, 53.201321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132282, 40.184502, 53.457283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487613, 0.430273, 0.759670,
		-0.752547, -0.648265, -0.115868,
		0.442612, -0.628186, 0.639904,
		30.265066, 39.996044, 53.649254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654985, 40.488411, 53.864285>,  <29.955236, 40.435776, 53.201321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654985, 40.488411, 53.864285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320271, 40.297970, 53.756126>,  <29.119442, 40.183704, 53.691231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320271, 40.297970, 53.756126>,  <29.654985, 40.488411, 53.864285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320271, 40.297970, 53.756126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226094, -0.750240, 0.621307,
		-0.498671, 0.458765, 0.735434,
		-0.836785, -0.476104, -0.270399,
		29.069235, 40.155140, 53.675007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250561, 40.303047, 54.539093>,  <29.654985, 40.488411, 53.864285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250561, 40.303047, 54.539093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260126, 40.048794, 54.230446>,  <29.265865, 39.896240, 54.045258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260126, 40.048794, 54.230446>,  <29.250561, 40.303047, 54.539093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260126, 40.048794, 54.230446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486041, -0.667087, 0.564587,
		-0.873609, -0.388539, 0.292993,
		0.023912, -0.635635, -0.771619,
		29.267300, 39.858105, 53.998959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053373, 39.737408, 54.848713>,  <29.250561, 40.303047, 54.539093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053373, 39.737408, 54.848713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972084, 39.381241, 55.011612>,  <28.923309, 39.167542, 55.109352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972084, 39.381241, 55.011612>,  <29.053373, 39.737408, 54.848713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972084, 39.381241, 55.011612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352713, 0.454577, 0.817896,
		-0.913397, 0.022575, -0.406444,
		-0.203224, -0.890421, 0.407246,
		28.911118, 39.114113, 55.133785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067305, 39.450459, 55.518578>,  <29.053373, 39.737408, 54.848713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067305, 39.450459, 55.518578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251932, 39.100147, 55.462051>,  <29.362709, 38.889961, 55.428135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251932, 39.100147, 55.462051>,  <29.067305, 39.450459, 55.518578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251932, 39.100147, 55.462051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698543, 0.260624, 0.666418,
		-0.546802, -0.406315, 0.732063,
		0.461569, -0.875776, -0.141319,
		29.390404, 38.837414, 55.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827642, 39.721233, 55.591270>,  <29.067305, 39.450459, 55.518578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827642, 39.721233, 55.591270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908283, 39.531269, 55.248619>,  <29.956667, 39.417290, 55.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908283, 39.531269, 55.248619>,  <29.827642, 39.721233, 55.591270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908283, 39.531269, 55.248619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979076, 0.122427, 0.162546,
		0.027680, -0.871477, 0.489655,
		0.201602, -0.474911, -0.856631,
		29.968763, 39.388798, 54.991631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385012, 39.168018, 55.731964>,  <29.827642, 39.721233, 55.591270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385012, 39.168018, 55.731964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371166, 39.326042, 55.364761>,  <30.362858, 39.420856, 55.144440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371166, 39.326042, 55.364761>,  <30.385012, 39.168018, 55.731964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371166, 39.326042, 55.364761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969220, 0.237302, 0.065574,
		0.243750, -0.887479, -0.391110,
		-0.034616, 0.395055, -0.918005,
		30.360781, 39.444557, 55.089359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779337, 38.803513, 55.188213>,  <30.385012, 39.168018, 55.731964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779337, 38.803513, 55.188213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775524, 39.193050, 55.097404>,  <30.773237, 39.426773, 55.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775524, 39.193050, 55.097404>,  <30.779337, 38.803513, 55.188213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775524, 39.193050, 55.097404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991979, -0.019410, -0.124903,
		-0.126042, -0.226388, -0.965848,
		-0.009530, 0.973844, -0.227019,
		30.772665, 39.485203, 55.029301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914991, 38.177746, 55.563980>,  <30.779337, 38.803513, 55.188213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914991, 38.177746, 55.563980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101049, 37.825176, 55.596786>,  <31.212685, 37.613632, 55.616470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101049, 37.825176, 55.596786>,  <30.914991, 38.177746, 55.563980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101049, 37.825176, 55.596786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272766, -0.230852, -0.933973,
		0.842163, 0.412061, -0.347803,
		0.465145, -0.881427, 0.082019,
		31.240593, 37.560749, 55.621391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379648, 38.124245, 55.011253>,  <30.914991, 38.177746, 55.563980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379648, 38.124245, 55.011253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323174, 37.749500, 55.139233>,  <31.289288, 37.524654, 55.216019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323174, 37.749500, 55.139233>,  <31.379648, 38.124245, 55.011253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323174, 37.749500, 55.139233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012196, -0.321512, -0.946827,
		0.989907, -0.137583, 0.033968,
		-0.141189, -0.936857, 0.319945,
		31.280817, 37.468445, 55.235218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818007, 37.617031, 54.736309>,  <31.379648, 38.124245, 55.011253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818007, 37.617031, 54.736309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442373, 37.505249, 54.816341>,  <31.216993, 37.438179, 54.864361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442373, 37.505249, 54.816341>,  <31.818007, 37.617031, 54.736309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442373, 37.505249, 54.816341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082446, -0.381993, -0.920480,
		0.333661, -0.880902, 0.335683,
		-0.939081, -0.279453, 0.200083,
		31.160648, 37.421413, 54.876366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687111, 36.807560, 54.842384>,  <31.818007, 37.617031, 54.736309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687111, 36.807560, 54.842384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395203, 37.040535, 54.699165>,  <31.220057, 37.180321, 54.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395203, 37.040535, 54.699165>,  <31.687111, 36.807560, 54.842384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395203, 37.040535, 54.699165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169903, -0.352774, -0.920154,
		-0.662243, -0.732336, 0.158487,
		-0.729772, 0.582438, -0.358049,
		31.176271, 37.215267, 54.591751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151632, 36.401344, 54.601330>,  <31.687111, 36.807560, 54.842384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151632, 36.401344, 54.601330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123762, 36.752811, 54.412403>,  <31.107040, 36.963692, 54.299046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123762, 36.752811, 54.412403>,  <31.151632, 36.401344, 54.601330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123762, 36.752811, 54.412403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200044, -0.451543, -0.869535,
		-0.977306, -0.155071, -0.144311,
		-0.069677, 0.878670, -0.472317,
		31.102859, 37.016411, 54.270706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575495, 36.424332, 54.090038>,  <31.151632, 36.401344, 54.601330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575495, 36.424332, 54.090038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859037, 36.679703, 53.970089>,  <31.029163, 36.832928, 53.898117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859037, 36.679703, 53.970089>,  <30.575495, 36.424332, 54.090038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859037, 36.679703, 53.970089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091416, -0.504712, -0.858434,
		-0.699403, 0.581094, -0.416131,
		0.708858, 0.638432, -0.299875,
		31.071695, 36.871231, 53.880127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369165, 36.720352, 53.462681>,  <30.575495, 36.424332, 54.090038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369165, 36.720352, 53.462681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763723, 36.782295, 53.484756>,  <31.000458, 36.819462, 53.498001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763723, 36.782295, 53.484756>,  <30.369165, 36.720352, 53.462681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763723, 36.782295, 53.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090300, -0.229862, -0.969025,
		-0.137376, 0.960824, -0.240718,
		0.986394, 0.154858, 0.055184,
		31.059641, 36.828754, 53.501312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517076, 37.194897, 52.914898>,  <30.369165, 36.720352, 53.462681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517076, 37.194897, 52.914898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855648, 37.007332, 53.015839>,  <31.058790, 36.894794, 53.076401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855648, 37.007332, 53.015839>,  <30.517076, 37.194897, 52.914898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855648, 37.007332, 53.015839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163354, -0.222392, -0.961175,
		0.506826, 0.854789, -0.111640,
		0.846430, -0.468911, 0.252347,
		31.109577, 36.866657, 53.091541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029081, 37.401531, 52.395264>,  <30.517076, 37.194897, 52.914898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029081, 37.401531, 52.395264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185612, 37.064461, 52.543186>,  <31.279530, 36.862217, 52.631939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185612, 37.064461, 52.543186>,  <31.029081, 37.401531, 52.395264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185612, 37.064461, 52.543186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170840, -0.328341, -0.928981,
		0.904256, 0.426710, 0.015475,
		0.391324, -0.842681, 0.369804,
		31.303009, 36.811657, 52.654129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596493, 37.276485, 51.932999>,  <31.029081, 37.401531, 52.395264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596493, 37.276485, 51.932999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553385, 36.923046, 52.115269>,  <31.527519, 36.710983, 52.224632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553385, 36.923046, 52.115269>,  <31.596493, 37.276485, 51.932999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553385, 36.923046, 52.115269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293133, -0.466211, -0.834698,
		0.949978, 0.043617, 0.309256,
		-0.107771, -0.883598, 0.455676,
		31.521053, 36.657967, 52.251972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250263, 36.945248, 51.865814>,  <31.596493, 37.276485, 51.932999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250263, 36.945248, 51.865814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966438, 36.668835, 51.920944>,  <31.796144, 36.502987, 51.954021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966438, 36.668835, 51.920944>,  <32.250263, 36.945248, 51.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966438, 36.668835, 51.920944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379130, -0.539271, -0.751962,
		0.593958, -0.481307, 0.644637,
		-0.709559, -0.691035, 0.137827,
		31.753571, 36.461525, 51.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624241, 36.410015, 51.786198>,  <32.250263, 36.945248, 51.865814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624241, 36.410015, 51.786198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243336, 36.306419, 51.721546>,  <32.014793, 36.244263, 51.682755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243336, 36.306419, 51.721546>,  <32.624241, 36.410015, 51.786198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243336, 36.306419, 51.721546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293314, -0.629378, -0.719618,
		0.084645, -0.732673, 0.675297,
		-0.952262, -0.258986, -0.161630,
		31.957657, 36.228725, 51.673058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794159, 35.807552, 51.455620>,  <32.624241, 36.410015, 51.786198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794159, 35.807552, 51.455620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410000, 35.875477, 51.367252>,  <32.179504, 35.916233, 51.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410000, 35.875477, 51.367252>,  <32.794159, 35.807552, 51.455620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410000, 35.875477, 51.367252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123932, -0.449774, -0.884502,
		-0.249561, -0.876851, 0.410916,
		-0.960396, 0.169811, -0.220916,
		32.121880, 35.926422, 51.300976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398426, 35.119873, 51.373219>,  <32.794159, 35.807552, 51.455620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398426, 35.119873, 51.373219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227962, 35.417938, 51.168034>,  <32.125687, 35.596775, 51.044922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227962, 35.417938, 51.168034>,  <32.398426, 35.119873, 51.373219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227962, 35.417938, 51.168034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109128, -0.520540, -0.846835,
		-0.898043, -0.416863, 0.140513,
		-0.426157, 0.745161, -0.512958,
		32.100117, 35.641487, 51.014145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923691, 34.797340, 50.897747>,  <32.398426, 35.119873, 51.373219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923691, 34.797340, 50.897747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987635, 35.159519, 50.740467>,  <32.026001, 35.376827, 50.646099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987635, 35.159519, 50.740467>,  <31.923691, 34.797340, 50.897747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987635, 35.159519, 50.740467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068867, -0.407582, -0.910568,
		-0.984734, 0.118487, -0.127512,
		0.159862, 0.905449, -0.393200,
		32.035595, 35.431152, 50.622505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618383, 34.589664, 50.235897>,  <31.923691, 34.797340, 50.897747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618383, 34.589664, 50.235897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831074, 34.925766, 50.193493>,  <31.958689, 35.127426, 50.168053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831074, 34.925766, 50.193493>,  <31.618383, 34.589664, 50.235897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831074, 34.925766, 50.193493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343079, -0.328143, -0.880124,
		-0.774314, 0.431617, -0.462757,
		0.531727, 0.840255, -0.106007,
		31.990591, 35.177841, 50.161690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643158, 34.722542, 49.550880>,  <31.618383, 34.589664, 50.235897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643158, 34.722542, 49.550880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944353, 34.967297, 49.647709>,  <32.125072, 35.114151, 49.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944353, 34.967297, 49.647709>,  <31.643158, 34.722542, 49.550880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944353, 34.967297, 49.647709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455379, -0.218994, -0.862943,
		-0.475012, 0.760023, -0.443541,
		0.752990, 0.611888, 0.242074,
		32.170250, 35.150864, 49.720333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725840, 35.121826, 49.009872>,  <31.643158, 34.722542, 49.550880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725840, 35.121826, 49.009872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071651, 35.118683, 49.210880>,  <32.279140, 35.116795, 49.331486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071651, 35.118683, 49.210880>,  <31.725840, 35.121826, 49.009872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071651, 35.118683, 49.210880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479855, -0.284354, -0.829989,
		0.149419, 0.958687, -0.242060,
		0.864531, -0.007862, 0.502518,
		32.331009, 35.116325, 49.361637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118305, 35.601818, 48.707939>,  <31.725840, 35.121826, 49.009872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118305, 35.601818, 48.707939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350029, 35.336319, 48.897186>,  <32.489063, 35.177021, 49.010735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350029, 35.336319, 48.897186>,  <32.118305, 35.601818, 48.707939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350029, 35.336319, 48.897186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522262, -0.143387, -0.840644,
		0.625812, 0.734086, 0.263583,
		0.579311, -0.663745, 0.473118,
		32.523823, 35.137196, 49.039124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790974, 35.664043, 48.454769>,  <32.118305, 35.601818, 48.707939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790974, 35.664043, 48.454769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795620, 35.294941, 48.608849>,  <32.798409, 35.073479, 48.701298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795620, 35.294941, 48.608849>,  <32.790974, 35.664043, 48.454769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795620, 35.294941, 48.608849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299581, -0.364319, -0.881772,
		0.954000, 0.125639, 0.272211,
		0.011614, -0.922760, 0.385200,
		32.799103, 35.018112, 48.724407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456436, 35.412815, 48.332359>,  <32.790974, 35.664043, 48.454769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456436, 35.412815, 48.332359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226925, 35.091408, 48.395782>,  <33.089218, 34.898563, 48.433834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226925, 35.091408, 48.395782>,  <33.456436, 35.412815, 48.332359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226925, 35.091408, 48.395782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348740, -0.414860, -0.840400,
		0.741055, -0.426906, 0.518255,
		-0.573775, -0.803519, 0.158555,
		33.054790, 34.850353, 48.443348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769192, 34.962776, 47.943157>,  <33.456436, 35.412815, 48.332359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769192, 34.962776, 47.943157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444687, 34.742798, 48.022572>,  <33.249985, 34.610813, 48.070221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444687, 34.742798, 48.022572>,  <33.769192, 34.962776, 47.943157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444687, 34.742798, 48.022572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200635, -0.580786, -0.788944,
		0.549180, -0.600209, 0.581508,
		-0.811263, -0.549943, 0.198533,
		33.201309, 34.577816, 48.082130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980980, 34.174164, 48.003555>,  <33.769192, 34.962776, 47.943157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980980, 34.174164, 48.003555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602081, 34.247227, 47.898209>,  <33.374744, 34.291065, 47.834999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602081, 34.247227, 47.898209>,  <33.980980, 34.174164, 48.003555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602081, 34.247227, 47.898209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161512, -0.437721, -0.884485,
		-0.276840, -0.880362, 0.385127,
		-0.947245, 0.182658, -0.263368,
		33.317909, 34.302025, 47.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701511, 33.568832, 47.630882>,  <33.980980, 34.174164, 48.003555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701511, 33.568832, 47.630882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416485, 33.823143, 47.512203>,  <33.245468, 33.975731, 47.440994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416485, 33.823143, 47.512203>,  <33.701511, 33.568832, 47.630882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416485, 33.823143, 47.512203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015643, -0.408388, -0.912674,
		-0.701430, -0.654982, 0.281058,
		-0.712566, 0.635781, -0.296701,
		33.202713, 34.013878, 47.423191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294933, 33.239716, 47.183937>,  <33.701511, 33.568832, 47.630882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294933, 33.239716, 47.183937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189220, 33.611168, 47.079792>,  <33.125793, 33.834042, 47.017303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189220, 33.611168, 47.079792>,  <33.294933, 33.239716, 47.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189220, 33.611168, 47.079792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017930, -0.265187, -0.964030,
		-0.964279, -0.259445, 0.053434,
		-0.264283, 0.928636, -0.260366,
		33.109936, 33.889759, 47.001682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707272, 33.088470, 46.712471>,  <33.294933, 33.239716, 47.183937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707272, 33.088470, 46.712471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832306, 33.463058, 46.648815>,  <32.907326, 33.687809, 46.610622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832306, 33.463058, 46.648815>,  <32.707272, 33.088470, 46.712471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832306, 33.463058, 46.648815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176391, -0.107394, -0.978444,
		-0.933369, 0.333915, 0.131614,
		0.312583, 0.936465, -0.159137,
		32.926083, 33.743999, 46.601074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211357, 33.426891, 46.343502>,  <32.707272, 33.088470, 46.712471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211357, 33.426891, 46.343502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531380, 33.653629, 46.264915>,  <32.723392, 33.789673, 46.217762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531380, 33.653629, 46.264915>,  <32.211357, 33.426891, 46.343502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531380, 33.653629, 46.264915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198031, -0.059602, -0.978382,
		-0.566301, 0.821666, 0.064568,
		0.800054, 0.566845, -0.196468,
		32.771397, 33.823685, 46.205975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002861, 33.963467, 45.908531>,  <32.211357, 33.426891, 46.343502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002861, 33.963467, 45.908531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395580, 33.917160, 45.848293>,  <32.631210, 33.889378, 45.812153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395580, 33.917160, 45.848293>,  <32.002861, 33.963467, 45.908531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395580, 33.917160, 45.848293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152413, -0.006995, -0.988292,
		0.113355, 0.993252, -0.024512,
		0.981795, -0.115763, -0.150592,
		32.690117, 33.882431, 45.803116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162014, 34.455467, 45.431828>,  <32.002861, 33.963467, 45.908531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162014, 34.455467, 45.431828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446774, 34.174679, 45.423450>,  <32.617630, 34.006207, 45.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446774, 34.174679, 45.423450>,  <32.162014, 34.455467, 45.431828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446774, 34.174679, 45.423450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112516, -0.084564, -0.990045,
		0.693214, 0.707165, -0.139184,
		0.711895, -0.701973, -0.020947,
		32.660343, 33.964088, 45.417168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676044, 34.582901, 44.897015>,  <32.162014, 34.455467, 45.431828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676044, 34.582901, 44.897015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737354, 34.190281, 44.942730>,  <32.774139, 33.954708, 44.970158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737354, 34.190281, 44.942730>,  <32.676044, 34.582901, 44.897015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737354, 34.190281, 44.942730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079867, -0.127582, -0.988607,
		0.984951, 0.142399, -0.097948,
		0.153273, -0.981553, 0.114289,
		32.783337, 33.895817, 44.977016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281254, 34.370525, 44.438988>,  <32.676044, 34.582901, 44.897015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281254, 34.370525, 44.438988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055103, 34.049652, 44.515770>,  <32.919411, 33.857128, 44.561840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055103, 34.049652, 44.515770>,  <33.281254, 34.370525, 44.438988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055103, 34.049652, 44.515770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007248, -0.237541, -0.971350,
		0.824799, -0.547790, 0.140116,
		-0.565379, -0.802185, 0.191953,
		32.885490, 33.808998, 44.573357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543827, 33.881039, 43.982834>,  <33.281254, 34.370525, 44.438988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543827, 33.881039, 43.982834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186993, 33.751850, 44.109245>,  <32.972893, 33.674335, 44.185093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186993, 33.751850, 44.109245>,  <33.543827, 33.881039, 43.982834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186993, 33.751850, 44.109245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282273, -0.147822, -0.947877,
		0.352858, -0.934791, 0.040702,
		-0.892084, -0.322977, 0.316027,
		32.919369, 33.654957, 44.204052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648144, 33.205219, 43.793098>,  <33.543827, 33.881039, 43.982834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648144, 33.205219, 43.793098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259254, 33.294193, 43.822220>,  <33.025921, 33.347576, 43.839695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259254, 33.294193, 43.822220>,  <33.648144, 33.205219, 43.793098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259254, 33.294193, 43.822220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112488, -0.171297, -0.978777,
		-0.205237, -0.959783, 0.191560,
		-0.972226, 0.222429, 0.072808,
		32.967587, 33.360924, 43.844063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287315, 32.562943, 43.572945>,  <33.648144, 33.205219, 43.793098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287315, 32.562943, 43.572945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024784, 32.859077, 43.514790>,  <32.867268, 33.036758, 43.479897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024784, 32.859077, 43.514790>,  <33.287315, 32.562943, 43.572945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024784, 32.859077, 43.514790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105906, -0.281194, -0.953789,
		-0.747009, -0.610598, 0.262961,
		-0.656325, 0.740338, -0.145388,
		32.827888, 33.081181, 43.471172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673721, 32.359314, 43.107441>,  <33.287315, 32.562943, 43.572945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673721, 32.359314, 43.107441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692089, 32.758850, 43.101585>,  <32.703110, 32.998569, 43.098072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692089, 32.758850, 43.101585>,  <32.673721, 32.359314, 43.107441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692089, 32.758850, 43.101585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152703, -0.007461, -0.988244,
		-0.987205, 0.047615, 0.152183,
		0.045919, 0.998838, -0.014637,
		32.705864, 33.058502, 43.097195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085838, 32.544701, 42.708206>,  <32.673721, 32.359314, 43.107441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085838, 32.544701, 42.708206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329517, 32.858555, 42.662209>,  <32.475723, 33.046867, 42.634609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329517, 32.858555, 42.662209>,  <32.085838, 32.544701, 42.708206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329517, 32.858555, 42.662209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247481, 0.050340, -0.967584,
		-0.753414, 0.617908, 0.224850,
		0.609197, 0.784637, -0.114994,
		32.512276, 33.093945, 42.627712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794460, 32.912697, 42.156433>,  <32.085838, 32.544701, 42.708206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794460, 32.912697, 42.156433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160088, 33.072346, 42.185226>,  <32.379463, 33.168133, 42.202503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160088, 33.072346, 42.185226>,  <31.794460, 32.912697, 42.156433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160088, 33.072346, 42.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020752, 0.131221, -0.991136,
		-0.405028, 0.907460, 0.111663,
		0.914069, 0.399120, 0.071980,
		32.434307, 33.192081, 42.206821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813696, 33.541504, 41.778671>,  <31.794460, 32.912697, 42.156433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813696, 33.541504, 41.778671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190350, 33.407608, 41.792953>,  <32.416344, 33.327271, 41.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190350, 33.407608, 41.792953>,  <31.813696, 33.541504, 41.778671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190350, 33.407608, 41.792953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096939, 0.168064, -0.980998,
		0.322376, 0.927203, 0.190705,
		0.941635, -0.334737, 0.035702,
		32.472839, 33.307186, 41.803665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301552, 34.041618, 41.368076>,  <31.813696, 33.541504, 41.778671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301552, 34.041618, 41.368076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483036, 33.685291, 41.377754>,  <32.591927, 33.471493, 41.383560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483036, 33.685291, 41.377754>,  <32.301552, 34.041618, 41.368076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483036, 33.685291, 41.377754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273170, 0.113179, -0.955284,
		0.848250, 0.440030, 0.294696,
		0.453708, -0.890822, 0.024199,
		32.619148, 33.418045, 41.385014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881718, 34.055092, 40.924702>,  <32.301552, 34.041618, 41.368076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881718, 34.055092, 40.924702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922779, 33.662678, 40.990479>,  <32.947414, 33.427231, 41.029945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922779, 33.662678, 40.990479>,  <32.881718, 34.055092, 40.924702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922779, 33.662678, 40.990479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301003, -0.126929, -0.945138,
		0.948082, 0.146516, 0.282264,
		0.102651, -0.981031, 0.164441,
		32.953575, 33.368370, 41.039810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616814, 33.849003, 40.719154>,  <32.881718, 34.055092, 40.924702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616814, 33.849003, 40.719154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375286, 33.530209, 40.713272>,  <33.230370, 33.338932, 40.709743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375286, 33.530209, 40.713272>,  <33.616814, 33.849003, 40.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375286, 33.530209, 40.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312334, -0.219577, -0.924247,
		0.733380, -0.562675, 0.381511,
		-0.603822, -0.796983, -0.014709,
		33.194138, 33.291115, 40.708858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905178, 33.053356, 40.597916>,  <33.616814, 33.849003, 40.719154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905178, 33.053356, 40.597916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538914, 33.079388, 40.439255>,  <33.319157, 33.095009, 40.344059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538914, 33.079388, 40.439255>,  <33.905178, 33.053356, 40.597916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538914, 33.079388, 40.439255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360914, -0.301300, -0.882587,
		-0.176952, -0.951306, 0.252399,
		-0.915658, 0.065082, -0.396656,
		33.264217, 33.098911, 40.320259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945232, 32.459412, 41.082119>,  <33.905178, 33.053356, 40.597916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945232, 32.459412, 41.082119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317013, 32.313148, 41.062443>,  <34.540081, 32.225391, 41.050636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317013, 32.313148, 41.062443>,  <33.945232, 32.459412, 41.082119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317013, 32.313148, 41.062443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208048, 0.409317, 0.888356,
		-0.304702, -0.835914, 0.456514,
		0.929448, -0.365661, -0.049191,
		34.595848, 32.203449, 41.047684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106453, 32.091927, 41.779728>,  <33.945232, 32.459412, 41.082119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106453, 32.091927, 41.779728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453976, 32.213497, 41.623371>,  <34.662491, 32.286438, 41.529556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453976, 32.213497, 41.623371>,  <34.106453, 32.091927, 41.779728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453976, 32.213497, 41.623371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331004, 0.230618, 0.915015,
		0.368245, -0.924361, 0.099761,
		0.868811, 0.303928, -0.390891,
		34.714619, 32.304676, 41.506104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474285, 31.918715, 42.246593>,  <34.106453, 32.091927, 41.779728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474285, 31.918715, 42.246593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705284, 32.177887, 42.047924>,  <34.843884, 32.333389, 41.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705284, 32.177887, 42.047924>,  <34.474285, 31.918715, 42.246593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705284, 32.177887, 42.047924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328498, 0.372533, 0.867933,
		0.747388, -0.664384, 0.002292,
		0.577494, 0.647930, -0.496676,
		34.878532, 32.372265, 41.898922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098057, 31.905107, 42.572247>,  <34.474285, 31.918715, 42.246593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098057, 31.905107, 42.572247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105782, 32.246426, 42.363819>,  <35.110416, 32.451218, 42.238762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105782, 32.246426, 42.363819>,  <35.098057, 31.905107, 42.572247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105782, 32.246426, 42.363819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583417, 0.413620, 0.698958,
		0.811943, -0.317500, -0.489839,
		0.019312, 0.853295, -0.521071,
		35.111576, 32.502415, 42.207497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823143, 32.039574, 42.609341>,  <35.098057, 31.905107, 42.572247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823143, 32.039574, 42.609341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618969, 32.373840, 42.528233>,  <35.496464, 32.574402, 42.479568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618969, 32.373840, 42.528233>,  <35.823143, 32.039574, 42.609341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618969, 32.373840, 42.528233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387766, 0.434143, 0.813116,
		0.767526, 0.336415, -0.545645,
		-0.510432, 0.835670, -0.202766,
		35.465839, 32.624542, 42.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280472, 32.591423, 42.582672>,  <35.823143, 32.039574, 42.609341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280472, 32.591423, 42.582672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928543, 32.763138, 42.664276>,  <35.717384, 32.866169, 42.713238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928543, 32.763138, 42.664276>,  <36.280472, 32.591423, 42.582672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928543, 32.763138, 42.664276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447909, 0.605259, 0.658057,
		0.159017, 0.670353, -0.724804,
		-0.879824, 0.429289, 0.204011,
		35.664597, 32.891926, 42.725479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532387, 33.217319, 42.845036>,  <36.280472, 32.591423, 42.582672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532387, 33.217319, 42.845036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147221, 33.198406, 42.951286>,  <35.916122, 33.187057, 43.015038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147221, 33.198406, 42.951286>,  <36.532387, 33.217319, 42.845036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147221, 33.198406, 42.951286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248756, 0.225622, 0.941921,
		-0.104472, 0.973067, -0.205492,
		-0.962915, -0.047287, 0.265627,
		35.858345, 33.184219, 43.030975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469433, 33.765312, 43.304119>,  <36.532387, 33.217319, 42.845036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469433, 33.765312, 43.304119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132252, 33.561104, 43.372005>,  <35.929943, 33.438580, 43.412739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132252, 33.561104, 43.372005>,  <36.469433, 33.765312, 43.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132252, 33.561104, 43.372005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020957, 0.284063, 0.958576,
		-0.537582, 0.811590, -0.228752,
		-0.842951, -0.510519, 0.169716,
		35.879368, 33.407948, 43.422920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065422, 34.170013, 43.693405>,  <36.469433, 33.765312, 43.304119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065422, 34.170013, 43.693405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981289, 33.784618, 43.759674>,  <35.930809, 33.553383, 43.799435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981289, 33.784618, 43.759674>,  <36.065422, 34.170013, 43.693405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981289, 33.784618, 43.759674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069875, 0.154218, 0.985563,
		-0.975129, 0.218877, 0.034886,
		-0.210337, -0.963488, 0.165676,
		35.918186, 33.495571, 43.809376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668831, 34.112919, 44.389515>,  <36.065422, 34.170013, 43.693405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668831, 34.112919, 44.389515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723743, 33.719543, 44.342194>,  <35.756691, 33.483517, 44.313801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723743, 33.719543, 44.342194>,  <35.668831, 34.112919, 44.389515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723743, 33.719543, 44.342194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027275, -0.123139, 0.992015,
		-0.990157, -0.132958, -0.043728,
		0.137280, -0.983442, -0.118300,
		35.764927, 33.424511, 44.306705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146591, 33.766926, 44.706367>,  <35.668831, 34.112919, 44.389515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146591, 33.766926, 44.706367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439579, 33.494648, 44.711079>,  <35.615372, 33.331280, 44.713905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439579, 33.494648, 44.711079>,  <35.146591, 33.766926, 44.706367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439579, 33.494648, 44.711079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115964, -0.107700, 0.987397,
		-0.670848, -0.724607, -0.157823,
		0.732472, -0.680695, 0.011778,
		35.659321, 33.290440, 44.714611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844845, 33.245667, 45.136642>,  <35.146591, 33.766926, 44.706367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844845, 33.245667, 45.136642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242706, 33.209072, 45.117493>,  <35.481422, 33.187115, 45.106003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242706, 33.209072, 45.117493>,  <34.844845, 33.245667, 45.136642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242706, 33.209072, 45.117493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035780, -0.129520, 0.990931,
		-0.096856, -0.987348, -0.125554,
		0.994656, -0.091485, -0.047872,
		35.541103, 33.181625, 45.103130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905727, 32.761005, 45.570713>,  <34.844845, 33.245667, 45.136642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905727, 32.761005, 45.570713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264217, 32.938175, 45.560898>,  <35.479313, 33.044476, 45.555008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264217, 32.938175, 45.560898>,  <34.905727, 32.761005, 45.570713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264217, 32.938175, 45.560898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031320, -0.008008, 0.999477,
		0.442495, -0.896524, -0.021049,
		0.896224, 0.442922, -0.024536,
		35.533085, 33.071053, 45.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190086, 32.457840, 46.103580>,  <34.905727, 32.761005, 45.570713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190086, 32.457840, 46.103580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402443, 32.788738, 46.030033>,  <35.529858, 32.987278, 45.985905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402443, 32.788738, 46.030033>,  <35.190086, 32.457840, 46.103580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402443, 32.788738, 46.030033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200801, 0.087991, 0.975672,
		0.823304, -0.554901, -0.119399,
		0.530895, 0.827250, -0.183868,
		35.561710, 33.036915, 45.974873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778782, 32.358486, 46.582737>,  <35.190086, 32.457840, 46.103580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778782, 32.358486, 46.582737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821251, 32.741535, 46.475639>,  <35.846733, 32.971363, 46.411381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821251, 32.741535, 46.475639>,  <35.778782, 32.358486, 46.582737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821251, 32.741535, 46.475639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240422, 0.236557, 0.941402,
		0.964844, -0.164323, -0.205118,
		0.106172, 0.957621, -0.267748,
		35.853104, 33.028820, 46.395313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220867, 32.594887, 46.998207>,  <35.778782, 32.358486, 46.582737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220867, 32.594887, 46.998207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067039, 32.950134, 46.897522>,  <35.974743, 33.163280, 46.837112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067039, 32.950134, 46.897522>,  <36.220867, 32.594887, 46.998207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067039, 32.950134, 46.897522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148082, 0.328506, 0.932821,
		0.911142, 0.321459, -0.257847,
		-0.384568, 0.888115, -0.251713,
		35.951668, 33.216568, 46.822006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689877, 33.149254, 47.249722>,  <36.220867, 32.594887, 46.998207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689877, 33.149254, 47.249722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321068, 33.295116, 47.197720>,  <36.099781, 33.382633, 47.166519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321068, 33.295116, 47.197720>,  <36.689877, 33.149254, 47.249722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321068, 33.295116, 47.197720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013629, 0.305020, 0.952249,
		0.386900, 0.879765, -0.276265,
		-0.922021, 0.364660, -0.130003,
		36.044460, 33.404514, 47.158718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701065, 33.803211, 47.524929>,  <36.689877, 33.149254, 47.249722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701065, 33.803211, 47.524929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307194, 33.733501, 47.522243>,  <36.070873, 33.691677, 47.520634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307194, 33.733501, 47.522243>,  <36.701065, 33.803211, 47.524929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307194, 33.733501, 47.522243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107670, 0.577166, 0.809497,
		-0.137198, 0.797814, -0.587085,
		-0.984675, -0.174273, -0.006715,
		36.011791, 33.681221, 47.520229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263382, 34.466320, 47.564785>,  <36.701065, 33.803211, 47.524929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263382, 34.466320, 47.564785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041660, 34.165340, 47.707085>,  <35.908627, 33.984753, 47.792465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041660, 34.165340, 47.707085>,  <36.263382, 34.466320, 47.564785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041660, 34.165340, 47.707085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181897, 0.526612, 0.830418,
		-0.812192, 0.395598, -0.428774,
		-0.554309, -0.752451, 0.355752,
		35.875366, 33.939606, 47.813808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462551, 34.702259, 47.669716>,  <36.263382, 34.466320, 47.564785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462551, 34.702259, 47.669716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533878, 34.394943, 47.915623>,  <35.576675, 34.210552, 48.063168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533878, 34.394943, 47.915623>,  <35.462551, 34.702259, 47.669716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533878, 34.394943, 47.915623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322099, 0.544777, 0.774254,
		-0.929761, -0.336076, -0.150324,
		0.178316, -0.768291, 0.614762,
		35.587372, 34.164455, 48.100052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880974, 34.776665, 48.102436>,  <35.462551, 34.702259, 47.669716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880974, 34.776665, 48.102436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162910, 34.545704, 48.267265>,  <35.332073, 34.407127, 48.366161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162910, 34.545704, 48.267265>,  <34.880974, 34.776665, 48.102436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162910, 34.545704, 48.267265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169081, 0.427408, 0.888107,
		-0.688919, -0.695649, 0.203627,
		0.704842, -0.577404, 0.412070,
		35.374363, 34.372482, 48.390884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539173, 34.482891, 48.613838>,  <34.880974, 34.776665, 48.102436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539173, 34.482891, 48.613838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931309, 34.458626, 48.688950>,  <35.166588, 34.444065, 48.734016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931309, 34.458626, 48.688950>,  <34.539173, 34.482891, 48.613838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931309, 34.458626, 48.688950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143868, 0.431576, 0.890530,
		-0.135066, -0.900034, 0.414362,
		0.980337, -0.060667, 0.187777,
		35.225410, 34.440426, 48.745281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517036, 34.135559, 49.212723>,  <34.539173, 34.482891, 48.613838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517036, 34.135559, 49.212723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880959, 34.298916, 49.183132>,  <35.099312, 34.396931, 49.165379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880959, 34.298916, 49.183132>,  <34.517036, 34.135559, 49.212723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880959, 34.298916, 49.183132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014992, 0.210457, 0.977488,
		0.414766, -0.888214, 0.197597,
		0.909805, 0.408391, -0.073974,
		35.153900, 34.421432, 49.160938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730122, 34.051769, 49.803959>,  <34.517036, 34.135559, 49.212723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730122, 34.051769, 49.803959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971119, 34.341373, 49.669617>,  <35.115719, 34.515137, 49.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971119, 34.341373, 49.669617>,  <34.730122, 34.051769, 49.803959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971119, 34.341373, 49.669617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082189, 0.474857, 0.876217,
		0.793878, -0.500314, 0.345607,
		0.602497, 0.724014, -0.335858,
		35.151867, 34.558578, 49.568859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247627, 34.271248, 50.359283>,  <34.730122, 34.051769, 49.803959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247627, 34.271248, 50.359283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224735, 34.585556, 50.112938>,  <35.211002, 34.774139, 49.965130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224735, 34.585556, 50.112938>,  <35.247627, 34.271248, 50.359283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224735, 34.585556, 50.112938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102032, 0.609043, 0.786547,
		0.993134, 0.107848, 0.045321,
		-0.057225, 0.785770, -0.615866,
		35.207569, 34.821285, 49.928177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542274, 34.746967, 50.760208>,  <35.247627, 34.271248, 50.359283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542274, 34.746967, 50.760208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378735, 34.952187, 50.458313>,  <35.280613, 35.075317, 50.277176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378735, 34.952187, 50.458313>,  <35.542274, 34.746967, 50.760208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378735, 34.952187, 50.458313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301060, 0.704891, 0.642255,
		0.861514, 0.489805, -0.133734,
		-0.408848, 0.513050, -0.754734,
		35.256081, 35.106102, 50.231892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793137, 35.484055, 50.917236>,  <35.542274, 34.746967, 50.760208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793137, 35.484055, 50.917236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468407, 35.484421, 50.683678>,  <35.273567, 35.484638, 50.543541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468407, 35.484421, 50.683678>,  <35.793137, 35.484055, 50.917236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468407, 35.484421, 50.683678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378157, 0.761122, 0.526963,
		0.444898, 0.648608, -0.617554,
		-0.811826, 0.000912, -0.583898,
		35.224857, 35.484695, 50.508507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694031, 36.137951, 50.542297>,  <35.793137, 35.484055, 50.917236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694031, 36.137951, 50.542297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336102, 35.962093, 50.573269>,  <35.121342, 35.856579, 50.591854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336102, 35.962093, 50.573269>,  <35.694031, 36.137951, 50.542297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336102, 35.962093, 50.573269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347178, 0.794400, 0.498393,
		-0.280631, 0.419092, -0.863486,
		-0.894826, -0.439648, 0.077434,
		35.067654, 35.830200, 50.596500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188431, 36.706646, 50.604488>,  <35.694031, 36.137951, 50.542297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188431, 36.706646, 50.604488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942833, 36.416367, 50.728664>,  <34.795475, 36.242199, 50.803169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942833, 36.416367, 50.728664>,  <35.188431, 36.706646, 50.604488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942833, 36.416367, 50.728664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371689, 0.612797, 0.697371,
		-0.696315, 0.312798, -0.645989,
		-0.613997, -0.725697, 0.310437,
		34.758633, 36.198658, 50.821796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548862, 36.999630, 50.832077>,  <35.188431, 36.706646, 50.604488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548862, 36.999630, 50.832077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529320, 36.652100, 51.029156>,  <34.517593, 36.443581, 51.147404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529320, 36.652100, 51.029156>,  <34.548862, 36.999630, 50.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529320, 36.652100, 51.029156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349440, 0.476982, 0.806461,
		-0.935684, -0.132770, -0.326905,
		-0.048854, -0.868827, 0.492700,
		34.514664, 36.391453, 51.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990883, 37.124649, 51.260437>,  <34.548862, 36.999630, 50.832077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990883, 37.124649, 51.260437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170162, 36.804775, 51.420246>,  <34.277729, 36.612850, 51.516132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170162, 36.804775, 51.420246>,  <33.990883, 37.124649, 51.260437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170162, 36.804775, 51.420246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148246, 0.374246, 0.915403,
		-0.881556, -0.469510, 0.049186,
		0.448199, -0.799687, 0.399522,
		34.304623, 36.564869, 51.540104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579670, 36.956348, 51.883160>,  <33.990883, 37.124649, 51.260437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579670, 36.956348, 51.883160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935890, 36.784962, 51.944260>,  <34.149624, 36.682129, 51.980919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935890, 36.784962, 51.944260>,  <33.579670, 36.956348, 51.883160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935890, 36.784962, 51.944260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053517, 0.432155, 0.900210,
		-0.451725, -0.793508, 0.407787,
		0.890551, -0.428471, 0.152749,
		34.203056, 36.656422, 51.990086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519745, 36.659809, 52.525043>,  <33.579670, 36.956348, 51.883160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519745, 36.659809, 52.525043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916180, 36.644482, 52.474007>,  <34.154041, 36.635284, 52.443386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916180, 36.644482, 52.474007>,  <33.519745, 36.659809, 52.525043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916180, 36.644482, 52.474007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133010, 0.230863, 0.963852,
		-0.007474, -0.972232, 0.233902,
		0.991087, -0.038315, -0.127591,
		34.213505, 36.632988, 52.435730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815670, 36.139942, 53.073120>,  <33.519745, 36.659809, 52.525043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815670, 36.139942, 53.073120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075977, 36.421024, 52.958080>,  <34.232162, 36.589672, 52.889057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075977, 36.421024, 52.958080>,  <33.815670, 36.139942, 53.073120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075977, 36.421024, 52.958080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014146, 0.367490, 0.929920,
		0.759144, -0.609231, 0.229211,
		0.650768, 0.702701, -0.287596,
		34.271210, 36.631836, 52.871803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340637, 36.034817, 53.564327>,  <33.815670, 36.139942, 53.073120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340637, 36.034817, 53.564327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404644, 36.401234, 53.417217>,  <34.443047, 36.621082, 53.328949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404644, 36.401234, 53.417217>,  <34.340637, 36.034817, 53.564327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404644, 36.401234, 53.417217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076868, 0.359885, 0.929825,
		0.984117, -0.177059, -0.012826,
		0.160018, 0.916042, -0.367779,
		34.452648, 36.676044, 53.306885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970154, 36.286549, 53.955696>,  <34.340637, 36.034817, 53.564327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970154, 36.286549, 53.955696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799385, 36.620010, 53.815552>,  <34.696922, 36.820087, 53.731464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799385, 36.620010, 53.815552>,  <34.970154, 36.286549, 53.955696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799385, 36.620010, 53.815552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006537, 0.390284, 0.920672,
		0.904265, 0.390764, -0.172070,
		-0.426922, 0.833656, -0.350365,
		34.671310, 36.870106, 53.710442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358418, 36.876263, 54.259045>,  <34.970154, 36.286549, 53.955696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358418, 36.876263, 54.259045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023819, 37.047688, 54.122456>,  <34.823059, 37.150543, 54.040501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023819, 37.047688, 54.122456>,  <35.358418, 36.876263, 54.259045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023819, 37.047688, 54.122456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080504, 0.520281, 0.850192,
		0.542025, 0.738673, -0.400713,
		-0.836497, 0.428567, -0.341472,
		34.772869, 37.176258, 54.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459221, 37.556488, 54.331009>,  <35.358418, 36.876263, 54.259045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459221, 37.556488, 54.331009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060593, 37.523602, 54.327324>,  <34.821415, 37.503868, 54.325115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060593, 37.523602, 54.327324>,  <35.459221, 37.556488, 54.331009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060593, 37.523602, 54.327324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063032, 0.682434, 0.728224,
		-0.053589, 0.726308, -0.685277,
		-0.996572, -0.082220, -0.009210,
		34.761620, 37.498936, 54.324562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299072, 38.221741, 54.508858>,  <35.459221, 37.556488, 54.331009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299072, 38.221741, 54.508858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974995, 37.994076, 54.564907>,  <34.780548, 37.857475, 54.598537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974995, 37.994076, 54.564907>,  <35.299072, 38.221741, 54.508858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974995, 37.994076, 54.564907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319334, 0.629061, 0.708737,
		-0.491535, 0.529469, -0.691416,
		-0.810197, -0.569162, 0.140128,
		34.731937, 37.823326, 54.606945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826080, 38.643284, 54.012161>,  <35.299072, 38.221741, 54.508858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826080, 38.643284, 54.012161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004242, 38.999413, 53.974339>,  <35.111141, 39.213089, 53.951645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004242, 38.999413, 53.974339>,  <34.826080, 38.643284, 54.012161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004242, 38.999413, 53.974339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191088, -0.197712, -0.961455,
		-0.874698, 0.410170, -0.258192,
		0.445408, 0.890320, -0.094560,
		35.137863, 39.266510, 53.945972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608398, 38.927368, 53.376751>,  <34.826080, 38.643284, 54.012161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608398, 38.927368, 53.376751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934219, 39.137714, 53.474709>,  <35.129711, 39.263924, 53.533482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934219, 39.137714, 53.474709>,  <34.608398, 38.927368, 53.376751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934219, 39.137714, 53.474709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382548, -0.169593, -0.908238,
		-0.436081, 0.833488, -0.339311,
		0.814550, 0.525868, 0.244893,
		35.178585, 39.295475, 53.548176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799179, 39.505608, 52.909729>,  <34.608398, 38.927368, 53.376751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799179, 39.505608, 52.909729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154800, 39.414070, 53.068336>,  <35.368172, 39.359150, 53.163502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154800, 39.414070, 53.068336>,  <34.799179, 39.505608, 52.909729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154800, 39.414070, 53.068336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401711, -0.025488, -0.915412,
		0.219590, 0.973130, 0.069268,
		0.889049, -0.228840, 0.396514,
		35.421516, 39.345417, 53.187290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334991, 39.927902, 52.590149>,  <34.799179, 39.505608, 52.909729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334991, 39.927902, 52.590149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521961, 39.606773, 52.738197>,  <35.634144, 39.414097, 52.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521961, 39.606773, 52.738197>,  <35.334991, 39.927902, 52.590149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521961, 39.606773, 52.738197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519712, -0.089136, -0.849679,
		0.715132, 0.589517, 0.375573,
		0.467423, -0.802823, 0.370123,
		35.662189, 39.365925, 52.849236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829456, 39.916092, 52.198975>,  <35.334991, 39.927902, 52.590149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829456, 39.916092, 52.198975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919018, 39.563763, 52.365837>,  <35.972755, 39.352367, 52.465954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919018, 39.563763, 52.365837>,  <35.829456, 39.916092, 52.198975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919018, 39.563763, 52.365837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574978, -0.226226, -0.786271,
		0.786937, 0.415904, 0.455801,
		0.223899, -0.880821, 0.417161,
		35.986187, 39.299515, 52.490986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595882, 39.832150, 52.211456>,  <35.829456, 39.916092, 52.198975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595882, 39.832150, 52.211456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432339, 39.468159, 52.239109>,  <36.334213, 39.249763, 52.255699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432339, 39.468159, 52.239109>,  <36.595882, 39.832150, 52.211456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432339, 39.468159, 52.239109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712138, -0.365504, -0.599389,
		0.570695, -0.195837, 0.797468,
		-0.408860, -0.909975, 0.069128,
		36.309681, 39.195168, 52.259846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174332, 39.383369, 52.176983>,  <36.595882, 39.832150, 52.211456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174332, 39.383369, 52.176983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878139, 39.130508, 52.085705>,  <36.700424, 38.978790, 52.030937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878139, 39.130508, 52.085705>,  <37.174332, 39.383369, 52.176983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878139, 39.130508, 52.085705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553866, -0.381652, -0.739983,
		0.380692, -0.674331, 0.632733,
		-0.740477, -0.632155, -0.228197,
		36.655994, 38.940861, 52.017246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475300, 38.753582, 52.078335>,  <37.174332, 39.383369, 52.176983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475300, 38.753582, 52.078335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129288, 38.736675, 51.878361>,  <36.921680, 38.726532, 51.758377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129288, 38.736675, 51.878361>,  <37.475300, 38.753582, 52.078335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129288, 38.736675, 51.878361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457478, -0.475549, -0.751376,
		-0.205987, -0.878673, 0.430700,
		-0.865033, -0.042262, -0.499931,
		36.869778, 38.723995, 51.728382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492832, 38.151855, 51.721809>,  <37.475300, 38.753582, 52.078335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492832, 38.151855, 51.721809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207069, 38.352135, 51.526295>,  <37.035610, 38.472301, 51.408985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207069, 38.352135, 51.526295>,  <37.492832, 38.151855, 51.721809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207069, 38.352135, 51.526295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313009, -0.396075, -0.863221,
		-0.625814, -0.769689, 0.126235,
		-0.714410, 0.500703, -0.488789,
		36.992744, 38.502346, 51.379658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147243, 37.647259, 51.310787>,  <37.492832, 38.151855, 51.721809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147243, 37.647259, 51.310787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027180, 37.988617, 51.140324>,  <36.955139, 38.193432, 51.038044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027180, 37.988617, 51.140324>,  <37.147243, 37.647259, 51.310787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027180, 37.988617, 51.140324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199622, -0.380672, -0.902906,
		-0.932767, -0.356089, -0.056094,
		-0.300162, 0.853399, -0.426161,
		36.937130, 38.244637, 51.012474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685448, 37.446362, 50.851246>,  <37.147243, 37.647259, 51.310787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685448, 37.446362, 50.851246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772549, 37.815140, 50.723118>,  <36.824810, 38.036407, 50.646240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772549, 37.815140, 50.723118>,  <36.685448, 37.446362, 50.851246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772549, 37.815140, 50.723118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117602, -0.350593, -0.929115,
		-0.968893, 0.164646, -0.184765,
		0.217752, 0.921942, -0.320324,
		36.837875, 38.091721, 50.627022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181381, 37.685207, 50.325111>,  <36.685448, 37.446362, 50.851246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181381, 37.685207, 50.325111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537949, 37.858604, 50.272243>,  <36.751888, 37.962643, 50.240524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537949, 37.858604, 50.272243>,  <36.181381, 37.685207, 50.325111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537949, 37.858604, 50.272243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082331, -0.441685, -0.893385,
		-0.445649, 0.785494, -0.429414,
		0.891414, 0.433490, -0.132165,
		36.805374, 37.988651, 50.232594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158054, 38.113594, 49.709282>,  <36.181381, 37.685207, 50.325111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158054, 38.113594, 49.709282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554214, 38.079517, 49.752823>,  <36.791912, 38.059071, 49.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554214, 38.079517, 49.752823>,  <36.158054, 38.113594, 49.709282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554214, 38.079517, 49.752823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046224, -0.538048, -0.841646,
		0.130269, 0.838598, -0.528945,
		0.990401, -0.085191, 0.108854,
		36.851334, 38.053959, 49.785480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441574, 38.315266, 49.040634>,  <36.158054, 38.113594, 49.709282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441574, 38.315266, 49.040634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723381, 38.109692, 49.236404>,  <36.892464, 37.986347, 49.353867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723381, 38.109692, 49.236404>,  <36.441574, 38.315266, 49.040634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723381, 38.109692, 49.236404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143580, -0.572150, -0.807483,
		0.695016, 0.639154, -0.329296,
		0.704513, -0.513933, 0.489423,
		36.934734, 37.955513, 49.383232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990761, 38.270760, 48.547825>,  <36.441574, 38.315266, 49.040634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990761, 38.270760, 48.547825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055511, 37.979671, 48.814426>,  <37.094364, 37.805019, 48.974388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055511, 37.979671, 48.814426>,  <36.990761, 38.270760, 48.547825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055511, 37.979671, 48.814426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070996, -0.665069, -0.743400,
		0.984253, 0.167661, -0.055997,
		0.161881, -0.727718, 0.666499,
		37.104076, 37.761356, 49.014378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627670, 37.889088, 48.284851>,  <36.990761, 38.270760, 48.547825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627670, 37.889088, 48.284851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402504, 37.667152, 48.529892>,  <37.267403, 37.533993, 48.676914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402504, 37.667152, 48.529892>,  <37.627670, 37.889088, 48.284851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402504, 37.667152, 48.529892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164804, -0.801651, -0.574626,
		0.809915, -0.222509, 0.542704,
		-0.562919, -0.554838, 0.612598,
		37.233627, 37.500702, 48.713673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122070, 37.338104, 48.329330>,  <37.627670, 37.889088, 48.284851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122070, 37.338104, 48.329330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769943, 37.187099, 48.444237>,  <37.558666, 37.096497, 48.513180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769943, 37.187099, 48.444237>,  <38.122070, 37.338104, 48.329330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769943, 37.187099, 48.444237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147615, -0.793483, -0.590419,
		0.450830, -0.477353, 0.754245,
		-0.880319, -0.377516, 0.287262,
		37.505848, 37.073845, 48.530415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250561, 36.721096, 48.369858>,  <38.122070, 37.338104, 48.329330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250561, 36.721096, 48.369858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850941, 36.730465, 48.355198>,  <37.611168, 36.736088, 48.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850941, 36.730465, 48.355198>,  <38.250561, 36.721096, 48.369858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850941, 36.730465, 48.355198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008377, -0.723229, -0.690558,
		-0.042682, -0.690211, 0.722348,
		-0.999054, 0.023423, -0.036651,
		37.551224, 36.737492, 48.344204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954506, 35.950714, 48.414612>,  <38.250561, 36.721096, 48.369858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954506, 35.950714, 48.414612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675179, 36.172867, 48.233990>,  <37.507580, 36.306160, 48.125618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675179, 36.172867, 48.233990>,  <37.954506, 35.950714, 48.414612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675179, 36.172867, 48.233990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198816, -0.756525, -0.623010,
		-0.687617, -0.345287, 0.638718,
		-0.698323, 0.555380, -0.451551,
		37.465683, 36.339481, 48.098526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416981, 35.397846, 48.173267>,  <37.954506, 35.950714, 48.414612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416981, 35.397846, 48.173267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348949, 35.749653, 47.995495>,  <37.308128, 35.960739, 47.888832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348949, 35.749653, 47.995495>,  <37.416981, 35.397846, 48.173267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348949, 35.749653, 47.995495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004292, -0.451658, -0.892181,
		-0.985421, -0.149835, 0.080593,
		-0.170080, 0.879520, -0.444430,
		37.297924, 36.013508, 47.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710674, 35.342449, 48.015934>,  <37.416981, 35.397846, 48.173267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710674, 35.342449, 48.015934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914810, 35.587921, 47.774952>,  <37.037292, 35.735207, 47.630363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914810, 35.587921, 47.774952>,  <36.710674, 35.342449, 48.015934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914810, 35.587921, 47.774952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045471, -0.680309, -0.731513,
		-0.858770, 0.400714, -0.319283,
		0.510339, 0.613684, -0.602450,
		37.067913, 35.772026, 47.594215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341415, 35.331074, 47.312336>,  <36.710674, 35.342449, 48.015934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341415, 35.331074, 47.312336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723717, 35.431812, 47.251526>,  <36.953098, 35.492256, 47.215042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723717, 35.431812, 47.251526>,  <36.341415, 35.331074, 47.312336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723717, 35.431812, 47.251526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035952, -0.612897, -0.789345,
		-0.291970, 0.748952, -0.594832,
		0.955752, 0.251850, -0.152021,
		37.010441, 35.507366, 47.205921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211231, 35.432625, 46.627628>,  <36.341415, 35.331074, 47.312336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211231, 35.432625, 46.627628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600700, 35.415768, 46.717236>,  <36.834381, 35.405651, 46.771000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600700, 35.415768, 46.717236>,  <36.211231, 35.432625, 46.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600700, 35.415768, 46.717236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183344, -0.439151, -0.879506,
		0.135446, 0.897424, -0.419862,
		0.973673, -0.042146, 0.224019,
		36.892803, 35.403122, 46.784443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496288, 35.570473, 45.941299>,  <36.211231, 35.432625, 46.627628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496288, 35.570473, 45.941299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801765, 35.415958, 46.148201>,  <36.985054, 35.323250, 46.272343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801765, 35.415958, 46.148201>,  <36.496288, 35.570473, 45.941299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801765, 35.415958, 46.148201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505247, -0.141113, -0.851359,
		0.401863, 0.911519, 0.087404,
		0.763696, -0.386290, 0.517250,
		37.030876, 35.300072, 46.303375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080204, 35.932026, 45.730579>,  <36.496288, 35.570473, 45.941299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080204, 35.932026, 45.730579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190273, 35.572639, 45.867428>,  <37.256313, 35.357010, 45.949535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190273, 35.572639, 45.867428>,  <37.080204, 35.932026, 45.730579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190273, 35.572639, 45.867428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365819, -0.231238, -0.901502,
		0.889077, 0.373220, 0.265045,
		0.275170, -0.898463, 0.342119,
		37.272823, 35.303101, 45.970062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828377, 35.833847, 45.510082>,  <37.080204, 35.932026, 45.730579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828377, 35.833847, 45.510082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678860, 35.477318, 45.612709>,  <37.589149, 35.263401, 45.674286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678860, 35.477318, 45.612709>,  <37.828377, 35.833847, 45.510082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678860, 35.477318, 45.612709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460371, -0.418432, -0.782926,
		0.805194, -0.174536, 0.566745,
		-0.373793, -0.891320, 0.256567,
		37.566723, 35.209923, 45.689678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339916, 35.363605, 45.451454>,  <37.828377, 35.833847, 45.510082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339916, 35.363605, 45.451454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998096, 35.159355, 45.413475>,  <37.793007, 35.036804, 45.390690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998096, 35.159355, 45.413475>,  <38.339916, 35.363605, 45.451454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998096, 35.159355, 45.413475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367275, -0.464851, -0.805619,
		0.367233, -0.723310, 0.584776,
		-0.854546, -0.510623, -0.094945,
		37.741734, 35.006168, 45.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608009, 34.829697, 45.136562>,  <38.339916, 35.363605, 45.451454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608009, 34.829697, 45.136562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222168, 34.756580, 45.060528>,  <37.990665, 34.712711, 45.014908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222168, 34.756580, 45.060528>,  <38.608009, 34.829697, 45.136562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222168, 34.756580, 45.060528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223188, -0.181893, -0.957654,
		0.140477, -0.966179, 0.216252,
		-0.964600, -0.182793, -0.190088,
		37.932789, 34.701744, 45.003502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587063, 34.248756, 44.712326>,  <38.608009, 34.829697, 45.136562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587063, 34.248756, 44.712326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247711, 34.452675, 44.655247>,  <38.044102, 34.575027, 44.620998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247711, 34.452675, 44.655247>,  <38.587063, 34.248756, 44.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247711, 34.452675, 44.655247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070448, -0.158441, -0.984852,
		-0.524685, -0.845578, 0.098504,
		-0.848377, 0.509798, -0.142701,
		37.993198, 34.605614, 44.612438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110344, 33.787987, 44.271900>,  <38.587063, 34.248756, 44.712326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110344, 33.787987, 44.271900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972404, 34.159088, 44.214828>,  <37.889641, 34.381748, 44.180584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972404, 34.159088, 44.214828>,  <38.110344, 33.787987, 44.271900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972404, 34.159088, 44.214828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086843, -0.119820, -0.988990,
		-0.934631, -0.353446, -0.039249,
		-0.344852, 0.927749, -0.142682,
		37.868950, 34.437412, 44.172024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688915, 33.745598, 43.652813>,  <38.110344, 33.787987, 44.271900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688915, 33.745598, 43.652813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758202, 34.137615, 43.691841>,  <37.799774, 34.372826, 43.715256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758202, 34.137615, 43.691841>,  <37.688915, 33.745598, 43.652813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758202, 34.137615, 43.691841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092890, 0.082366, -0.992264,
		-0.980493, 0.180942, -0.076768,
		0.173219, 0.980039, 0.097567,
		37.810169, 34.431625, 43.721111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315243, 33.946033, 43.118874>,  <37.688915, 33.745598, 43.652813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315243, 33.946033, 43.118874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589027, 34.228878, 43.189873>,  <37.753296, 34.398586, 43.232471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589027, 34.228878, 43.189873>,  <37.315243, 33.946033, 43.118874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589027, 34.228878, 43.189873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002395, 0.241279, -0.970453,
		-0.729047, 0.664660, 0.163453,
		0.684459, 0.707115, 0.177496,
		37.794365, 34.441013, 43.243122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040642, 34.537117, 42.718853>,  <37.315243, 33.946033, 43.118874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040642, 34.537117, 42.718853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430927, 34.591663, 42.787430>,  <37.665096, 34.624390, 42.828575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430927, 34.591663, 42.787430>,  <37.040642, 34.537117, 42.718853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430927, 34.591663, 42.787430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150241, 0.152970, -0.976744,
		-0.159417, 0.978777, 0.128767,
		0.975712, 0.136364, 0.171439,
		37.723640, 34.632572, 42.838860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178829, 35.196499, 42.355286>,  <37.040642, 34.537117, 42.718853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178829, 35.196499, 42.355286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540722, 35.032532, 42.401646>,  <37.757858, 34.934151, 42.429462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540722, 35.032532, 42.401646>,  <37.178829, 35.196499, 42.355286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540722, 35.032532, 42.401646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143948, 0.038134, -0.988850,
		0.400924, 0.911327, 0.093507,
		0.904732, -0.409914, 0.115895,
		37.812141, 34.909557, 42.436413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548115, 35.586655, 41.916847>,  <37.178829, 35.196499, 42.355286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548115, 35.586655, 41.916847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780361, 35.265442, 41.970554>,  <37.919708, 35.072716, 42.002781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780361, 35.265442, 41.970554>,  <37.548115, 35.586655, 41.916847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780361, 35.265442, 41.970554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137737, -0.065662, -0.988290,
		0.802444, 0.592309, 0.072483,
		0.580614, -0.803031, 0.134272,
		37.954544, 35.024532, 42.010838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285450, 35.749378, 41.678223>,  <37.548115, 35.586655, 41.916847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285450, 35.749378, 41.678223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240463, 35.352509, 41.656525>,  <38.213470, 35.114388, 41.643505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240463, 35.352509, 41.656525>,  <38.285450, 35.749378, 41.678223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240463, 35.352509, 41.656525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443068, -0.001214, -0.896487,
		0.889405, -0.124859, 0.439737,
		-0.112468, -0.992174, -0.054241,
		38.206722, 35.054855, 41.640251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894009, 35.559948, 41.441147>,  <38.285450, 35.749378, 41.678223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894009, 35.559948, 41.441147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675911, 35.228535, 41.390160>,  <38.545052, 35.029686, 41.359566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675911, 35.228535, 41.390160>,  <38.894009, 35.559948, 41.441147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675911, 35.228535, 41.390160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586256, -0.268197, -0.764444,
		0.599177, -0.491538, 0.631963,
		-0.545244, -0.828529, -0.127470,
		38.512337, 34.979977, 41.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300144, 34.929920, 41.550171>,  <38.894009, 35.559948, 41.441147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300144, 34.929920, 41.550171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991577, 34.860710, 41.305229>,  <38.806435, 34.819183, 41.158264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991577, 34.860710, 41.305229>,  <39.300144, 34.929920, 41.550171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991577, 34.860710, 41.305229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634238, -0.286952, -0.717914,
		-0.051498, -0.942190, 0.331099,
		-0.771421, -0.173024, -0.612350,
		38.760151, 34.808804, 41.121525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344967, 34.106430, 41.317616>,  <39.300144, 34.929920, 41.550171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344967, 34.106430, 41.317616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130619, 34.336136, 41.070045>,  <39.002010, 34.473961, 40.921505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130619, 34.336136, 41.070045>,  <39.344967, 34.106430, 41.317616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130619, 34.336136, 41.070045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545919, -0.323535, -0.772850,
		-0.644065, -0.752026, -0.140132,
		-0.535866, 0.574266, -0.618923,
		38.969860, 34.508415, 40.884369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292091, 33.748955, 40.753284>,  <39.344967, 34.106430, 41.317616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292091, 33.748955, 40.753284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197113, 34.102135, 40.591286>,  <39.140125, 34.314041, 40.494087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197113, 34.102135, 40.591286>,  <39.292091, 33.748955, 40.753284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197113, 34.102135, 40.591286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577017, -0.207192, -0.790014,
		-0.781453, -0.421278, -0.460278,
		-0.237449, 0.882947, -0.404996,
		39.125877, 34.367020, 40.469788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125744, 33.699627, 40.125137>,  <39.292091, 33.748955, 40.753284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125744, 33.699627, 40.125137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347042, 34.027523, 40.184391>,  <39.479820, 34.224262, 40.219944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347042, 34.027523, 40.184391>,  <39.125744, 33.699627, 40.125137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347042, 34.027523, 40.184391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590075, -0.260129, -0.764293,
		-0.587991, 0.510248, -0.627625,
		0.553243, 0.819744, 0.148131,
		39.513016, 34.273445, 40.228828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157955, 34.064037, 39.543621>,  <39.125744, 33.699627, 40.125137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157955, 34.064037, 39.543621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493366, 34.157871, 39.740334>,  <39.694611, 34.214172, 39.858360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493366, 34.157871, 39.740334>,  <39.157955, 34.064037, 39.543621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493366, 34.157871, 39.740334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534730, -0.181027, -0.825405,
		-0.104601, 0.955091, -0.277234,
		0.838524, 0.234583, 0.491780,
		39.744923, 34.228245, 39.887867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464111, 34.643780, 39.231422>,  <39.157955, 34.064037, 39.543621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464111, 34.643780, 39.231422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742256, 34.432240, 39.426067>,  <39.909145, 34.305317, 39.542854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742256, 34.432240, 39.426067>,  <39.464111, 34.643780, 39.231422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742256, 34.432240, 39.426067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485652, -0.153303, -0.860604,
		0.529727, 0.834757, 0.150234,
		0.695364, -0.528847, 0.486610,
		39.950867, 34.273586, 39.572052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164799, 34.844398, 38.890732>,  <39.464111, 34.643780, 39.231422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164799, 34.844398, 38.890732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138321, 34.477463, 39.047756>,  <40.122437, 34.257301, 39.141972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138321, 34.477463, 39.047756>,  <40.164799, 34.844398, 38.890732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138321, 34.477463, 39.047756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438452, -0.380149, -0.814399,
		0.896314, 0.118213, 0.427372,
		-0.066192, -0.917340, 0.392564,
		40.118462, 34.202259, 39.165524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836391, 34.331135, 38.970215>,  <40.164799, 34.844398, 38.890732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836391, 34.331135, 38.970215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499062, 34.128937, 38.897255>,  <40.296661, 34.007618, 38.853477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499062, 34.128937, 38.897255>,  <40.836391, 34.331135, 38.970215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499062, 34.128937, 38.897255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341635, -0.242294, -0.908063,
		0.414832, -0.828108, 0.377029,
		-0.843327, -0.505500, -0.182399,
		40.246063, 33.977287, 38.842537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054810, 33.724400, 38.541176>,  <40.836391, 34.331135, 38.970215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054810, 33.724400, 38.541176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679798, 33.850662, 38.482670>,  <40.454792, 33.926418, 38.447567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679798, 33.850662, 38.482670>,  <41.054810, 33.724400, 38.541176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679798, 33.850662, 38.482670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194210, 0.126043, -0.972829,
		-0.288645, -0.940464, -0.179473,
		-0.937532, 0.315657, -0.146265,
		40.398537, 33.945358, 38.438789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865238, 33.425205, 37.937477>,  <41.054810, 33.724400, 38.541176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865238, 33.425205, 37.937477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616009, 33.730488, 38.005936>,  <40.466469, 33.913658, 38.047012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616009, 33.730488, 38.005936>,  <40.865238, 33.425205, 37.937477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616009, 33.730488, 38.005936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035057, 0.245847, -0.968675,
		-0.781375, -0.597559, -0.179938,
		-0.623077, 0.763206, 0.171150,
		40.429085, 33.959450, 38.057281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520416, 33.185200, 37.746513>,  <40.865238, 33.425205, 37.937477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520416, 33.185200, 37.746513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919827, 33.194904, 37.765957>,  <42.159473, 33.200729, 37.777622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919827, 33.194904, 37.765957>,  <41.520416, 33.185200, 37.746513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919827, 33.194904, 37.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020917, 0.997450, -0.068241,
		-0.050145, 0.067123, 0.996484,
		0.998523, 0.024265, 0.048613,
		42.219383, 33.202183, 37.780540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688877, 33.760586, 38.134071>,  <41.520416, 33.185200, 37.746513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688877, 33.760586, 38.134071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030197, 33.710770, 37.931541>,  <42.234989, 33.680882, 37.810024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030197, 33.710770, 37.931541>,  <41.688877, 33.760586, 38.134071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030197, 33.710770, 37.931541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049144, 0.947523, -0.315887,
		0.519092, 0.294431, 0.802405,
		0.853304, -0.124541, -0.506322,
		42.286190, 33.673409, 37.779644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262711, 34.317051, 38.307919>,  <41.688877, 33.760586, 38.134071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262711, 34.317051, 38.307919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309448, 34.179680, 37.935165>,  <42.337490, 34.097256, 37.711514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309448, 34.179680, 37.935165>,  <42.262711, 34.317051, 38.307919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309448, 34.179680, 37.935165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163502, 0.918854, -0.359130,
		0.979599, 0.194327, 0.051210,
		0.116843, -0.343431, -0.931881,
		42.344501, 34.076649, 37.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757969, 34.782742, 37.891876>,  <42.262711, 34.317051, 38.307919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757969, 34.782742, 37.891876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546471, 34.588799, 37.613209>,  <42.419571, 34.472435, 37.446011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546471, 34.588799, 37.613209>,  <42.757969, 34.782742, 37.891876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546471, 34.588799, 37.613209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178594, 0.865962, -0.467134,
		0.829777, -0.122576, -0.544468,
		-0.528748, -0.484855, -0.696664,
		42.387848, 34.443340, 37.404209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894218, 35.068970, 37.280529>,  <42.757969, 34.782742, 37.891876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894218, 35.068970, 37.280529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554310, 34.880253, 37.186462>,  <42.350365, 34.767025, 37.130024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554310, 34.880253, 37.186462>,  <42.894218, 35.068970, 37.280529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554310, 34.880253, 37.186462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287654, 0.788836, -0.543132,
		0.441749, -0.393893, -0.806043,
		-0.849772, -0.471790, -0.235163,
		42.299377, 34.738716, 37.115913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763725, 35.245029, 36.595253>,  <42.894218, 35.068970, 37.280529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763725, 35.245029, 36.595253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408577, 35.114098, 36.724583>,  <42.195488, 35.035538, 36.802181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408577, 35.114098, 36.724583>,  <42.763725, 35.245029, 36.595253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408577, 35.114098, 36.724583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449012, 0.769754, -0.453726,
		-0.100360, -0.548026, -0.830419,
		-0.887872, -0.327332, 0.323322,
		42.142216, 35.015900, 36.821579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421257, 35.097916, 36.012505>,  <42.763725, 35.245029, 36.595253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421257, 35.097916, 36.012505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160553, 35.157360, 36.309994>,  <42.004131, 35.193027, 36.488487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160553, 35.157360, 36.309994>,  <42.421257, 35.097916, 36.012505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160553, 35.157360, 36.309994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443866, 0.720394, -0.532931,
		-0.614975, -0.677456, -0.403557,
		-0.651758, 0.148614, 0.743724,
		41.965027, 35.201942, 36.533112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773960, 35.298870, 35.708763>,  <42.421257, 35.097916, 36.012505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773960, 35.298870, 35.708763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766396, 35.438816, 36.083408>,  <41.761856, 35.522785, 36.308193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766396, 35.438816, 36.083408>,  <41.773960, 35.298870, 35.708763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766396, 35.438816, 36.083408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361632, 0.870959, -0.332644,
		-0.932129, -0.345000, 0.110048,
		-0.018915, 0.349864, 0.936610,
		41.760719, 35.543774, 36.364391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139141, 35.561878, 35.733025>,  <41.773960, 35.298870, 35.708763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139141, 35.561878, 35.733025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351364, 35.724205, 36.030701>,  <41.478699, 35.821602, 36.209305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351364, 35.724205, 36.030701>,  <41.139141, 35.561878, 35.733025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351364, 35.724205, 36.030701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526260, 0.845952, -0.086117,
		-0.664497, -0.345948, 0.662392,
		0.530560, 0.405815, 0.744191,
		41.510532, 35.845951, 36.253960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700668, 36.027287, 36.082325>,  <41.139141, 35.561878, 35.733025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700668, 36.027287, 36.082325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078705, 36.124092, 36.170174>,  <41.305527, 36.182175, 36.222881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078705, 36.124092, 36.170174>,  <40.700668, 36.027287, 36.082325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078705, 36.124092, 36.170174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207324, 0.963468, -0.169547,
		-0.252628, 0.114705, 0.960740,
		0.945091, 0.242016, 0.219617,
		41.362232, 36.196697, 36.236057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623528, 36.677811, 36.456341>,  <40.700668, 36.027287, 36.082325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623528, 36.677811, 36.456341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007301, 36.656700, 36.345562>,  <41.237564, 36.644035, 36.279095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007301, 36.656700, 36.345562>,  <40.623528, 36.677811, 36.456341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007301, 36.656700, 36.345562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022245, 0.965092, -0.260966,
		0.281054, 0.256540, 0.924768,
		0.959434, -0.052774, -0.276949,
		41.295132, 36.640869, 36.262478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809483, 37.336033, 36.689835>,  <40.623528, 36.677811, 36.456341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809483, 37.336033, 36.689835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085709, 37.214985, 36.427067>,  <41.251446, 37.142357, 36.269405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085709, 37.214985, 36.427067>,  <40.809483, 37.336033, 36.689835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085709, 37.214985, 36.427067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045645, 0.924686, -0.377984,
		0.721830, 0.231037, 0.652368,
		0.690564, -0.302618, -0.656920,
		41.292877, 37.124199, 36.229992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409542, 37.800537, 36.718403>,  <40.809483, 37.336033, 36.689835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409542, 37.800537, 36.718403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400204, 37.610161, 36.366737>,  <41.394600, 37.495934, 36.155739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400204, 37.610161, 36.366737>,  <41.409542, 37.800537, 36.718403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400204, 37.610161, 36.366737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032704, 0.879299, -0.475147,
		0.999192, 0.017657, -0.036097,
		-0.023350, -0.475944, -0.879166,
		41.393200, 37.467377, 36.102989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021118, 38.016369, 36.321648>,  <41.409542, 37.800537, 36.718403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021118, 38.016369, 36.321648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784657, 37.865849, 36.036289>,  <41.642780, 37.775536, 35.865074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784657, 37.865849, 36.036289>,  <42.021118, 38.016369, 36.321648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784657, 37.865849, 36.036289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075447, 0.854818, -0.513414,
		0.803019, -0.357332, -0.476942,
		-0.591158, -0.376297, -0.713395,
		41.607307, 37.752960, 35.822269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239948, 38.367813, 35.802944>,  <42.021118, 38.016369, 36.321648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239948, 38.367813, 35.802944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882195, 38.227531, 35.691891>,  <41.667542, 38.143364, 35.625259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882195, 38.227531, 35.691891>,  <42.239948, 38.367813, 35.802944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882195, 38.227531, 35.691891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162420, 0.832962, -0.528955,
		0.416760, -0.427999, -0.801953,
		-0.894389, -0.350700, -0.277630,
		41.613876, 38.122322, 35.608601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209034, 38.327187, 35.043583>,  <42.239948, 38.367813, 35.802944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209034, 38.327187, 35.043583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829033, 38.362370, 35.163422>,  <41.601032, 38.383480, 35.235325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829033, 38.362370, 35.163422>,  <42.209034, 38.327187, 35.043583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829033, 38.362370, 35.163422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154225, 0.702113, -0.695163,
		-0.271500, -0.706612, -0.653443,
		-0.950001, 0.087959, 0.299601,
		41.544033, 38.388756, 35.253304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755718, 38.253994, 34.454922>,  <42.209034, 38.327187, 35.043583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755718, 38.253994, 34.454922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582439, 38.471031, 34.742790>,  <41.478470, 38.601254, 34.915512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582439, 38.471031, 34.742790>,  <41.755718, 38.253994, 34.454922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582439, 38.471031, 34.742790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066954, 0.776904, -0.626048,
		-0.898807, -0.319389, -0.300226,
		-0.433200, 0.542596, 0.719672,
		41.452480, 38.633808, 34.958691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240639, 38.713707, 34.120972>,  <41.755718, 38.253994, 34.454922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240639, 38.713707, 34.120972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271160, 38.862827, 34.490879>,  <41.289474, 38.952297, 34.712826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271160, 38.862827, 34.490879>,  <41.240639, 38.713707, 34.120972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271160, 38.862827, 34.490879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184116, 0.916794, -0.354388,
		-0.979938, -0.143223, 0.138595,
		0.076307, 0.372796, 0.924770,
		41.294052, 38.974667, 34.768311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687119, 39.103287, 34.222698>,  <41.240639, 38.713707, 34.120972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687119, 39.103287, 34.222698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904560, 39.276066, 34.510563>,  <41.035027, 39.379734, 34.683281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904560, 39.276066, 34.510563>,  <40.687119, 39.103287, 34.222698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904560, 39.276066, 34.510563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334145, 0.897912, -0.286534,
		-0.769962, -0.084711, 0.632442,
		0.543604, 0.431947, 0.719664,
		41.067642, 39.405651, 34.726463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308189, 39.697021, 34.555656>,  <40.687119, 39.103287, 34.222698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308189, 39.697021, 34.555656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682739, 39.779633, 34.669178>,  <40.907471, 39.829201, 34.737293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682739, 39.779633, 34.669178>,  <40.308189, 39.697021, 34.555656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682739, 39.779633, 34.669178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150226, 0.966578, -0.207748,
		-0.317229, 0.151895, 0.936106,
		0.936375, 0.206531, 0.283808,
		40.963654, 39.841591, 34.754322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189159, 40.179485, 34.971859>,  <40.308189, 39.697021, 34.555656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189159, 40.179485, 34.971859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573570, 40.216419, 34.867630>,  <40.804218, 40.238579, 34.805092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573570, 40.216419, 34.867630>,  <40.189159, 40.179485, 34.971859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573570, 40.216419, 34.867630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146822, 0.969121, -0.198109,
		0.234233, 0.228646, 0.944910,
		0.961030, 0.092330, -0.260570,
		40.861877, 40.244118, 34.789459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497566, 40.835068, 35.197460>,  <40.189159, 40.179485, 34.971859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497566, 40.835068, 35.197460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716652, 40.739990, 34.876583>,  <40.848103, 40.682945, 34.684055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716652, 40.739990, 34.876583>,  <40.497566, 40.835068, 35.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716652, 40.739990, 34.876583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092239, 0.970106, -0.224469,
		0.831566, 0.048951, 0.553264,
		0.547713, -0.237694, -0.802192,
		40.880966, 40.668682, 34.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605968, 41.597267, 35.168114>,  <40.497566, 40.835068, 35.197460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605968, 41.597267, 35.168114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571510, 41.786091, 34.817177>,  <40.550835, 41.899387, 34.606613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571510, 41.786091, 34.817177>,  <40.605968, 41.597267, 35.168114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571510, 41.786091, 34.817177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151947, -0.864092, -0.479851,
		-0.984628, -0.174646, 0.002707,
		-0.086143, 0.472063, -0.877346,
		40.545666, 41.927711, 34.553974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762783, 42.225574, 35.403519>,  <40.605968, 41.597267, 35.168114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762783, 42.225574, 35.403519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996925, 42.326347, 35.711777>,  <41.137413, 42.386810, 35.896732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996925, 42.326347, 35.711777>,  <40.762783, 42.225574, 35.403519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996925, 42.326347, 35.711777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802403, -0.316241, -0.506104,
		0.116206, 0.914617, -0.387262,
		0.585359, 0.251928, 0.770641,
		41.172535, 42.401924, 35.942970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236084, 42.669239, 35.108334>,  <40.762783, 42.225574, 35.403519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236084, 42.669239, 35.108334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395962, 42.486317, 35.426105>,  <41.491890, 42.376564, 35.616768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395962, 42.486317, 35.426105>,  <41.236084, 42.669239, 35.108334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395962, 42.486317, 35.426105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916593, 0.189919, -0.351835,
		0.010019, 0.868795, 0.495071,
		0.399696, -0.457304, 0.794428,
		41.515869, 42.349125, 35.664433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791553, 43.027901, 35.531559>,  <41.236084, 42.669239, 35.108334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791553, 43.027901, 35.531559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844444, 42.631699, 35.516510>,  <41.876179, 42.393978, 35.507481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844444, 42.631699, 35.516510>,  <41.791553, 43.027901, 35.531559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844444, 42.631699, 35.516510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756351, 0.125355, -0.642044,
		0.640664, 0.056442, 0.765744,
		0.132227, -0.990505, -0.037620,
		41.884113, 42.334549, 35.505222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403919, 43.013733, 35.786026>,  <41.791553, 43.027901, 35.531559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403919, 43.013733, 35.786026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304638, 42.699432, 35.559402>,  <42.245068, 42.510853, 35.423428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304638, 42.699432, 35.559402>,  <42.403919, 43.013733, 35.786026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304638, 42.699432, 35.559402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733597, 0.229490, -0.639664,
		0.632637, -0.574391, 0.519466,
		-0.248205, -0.785754, -0.566556,
		42.230175, 42.463707, 35.389435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999325, 42.630184, 35.646091>,  <42.403919, 43.013733, 35.786026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999325, 42.630184, 35.646091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734512, 42.559975, 35.354637>,  <42.575626, 42.517849, 35.179764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734512, 42.559975, 35.354637>,  <42.999325, 42.630184, 35.646091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734512, 42.559975, 35.354637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656008, 0.334452, -0.676606,
		0.362454, -0.925923, -0.106271,
		-0.662028, -0.175524, -0.728637,
		42.535904, 42.507317, 35.136047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268974, 42.056389, 35.154293>,  <42.999325, 42.630184, 35.646091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268974, 42.056389, 35.154293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037334, 42.363529, 35.044720>,  <42.898350, 42.547813, 34.978977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037334, 42.363529, 35.044720>,  <43.268974, 42.056389, 35.154293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037334, 42.363529, 35.044720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608950, 0.184001, -0.771572,
		-0.542051, -0.613631, -0.574140,
		-0.579103, 0.767854, -0.273932,
		42.863602, 42.593887, 34.962540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811913, 42.199894, 35.593838>,  <43.268974, 42.056389, 35.154293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811913, 42.199894, 35.593838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172634, 42.203541, 35.421017>,  <44.389065, 42.205730, 35.317322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172634, 42.203541, 35.421017>,  <43.811913, 42.199894, 35.593838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172634, 42.203541, 35.421017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410811, -0.328380, 0.850529,
		-0.134122, -0.944502, -0.299880,
		0.901801, 0.009119, -0.432055,
		44.443176, 42.206276, 35.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619183, 42.123032, 36.356911>,  <43.811913, 42.199894, 35.593838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619183, 42.123032, 36.356911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753113, 42.132496, 36.733704>,  <43.833469, 42.138176, 36.959778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753113, 42.132496, 36.733704>,  <43.619183, 42.123032, 36.356911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753113, 42.132496, 36.733704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388830, -0.914073, -0.115246,
		0.858315, 0.404859, -0.315254,
		0.334824, 0.023663, 0.941984,
		43.853561, 42.139595, 37.016300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332691, 41.879978, 36.368973>,  <43.619183, 42.123032, 36.356911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332691, 41.879978, 36.368973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142925, 41.845669, 36.719418>,  <44.029064, 41.825081, 36.929684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142925, 41.845669, 36.719418>,  <44.332691, 41.879978, 36.368973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142925, 41.845669, 36.719418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452024, -0.877751, 0.158833,
		0.755383, 0.471376, 0.455193,
		-0.474416, -0.085778, 0.876112,
		44.000599, 41.819935, 36.982250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844341, 41.688698, 36.962559>,  <44.332691, 41.879978, 36.368973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844341, 41.688698, 36.962559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478004, 41.569580, 37.070293>,  <44.258202, 41.498108, 37.134933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478004, 41.569580, 37.070293>,  <44.844341, 41.688698, 36.962559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478004, 41.569580, 37.070293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369552, -0.887469, 0.275371,
		0.157025, 0.351733, 0.922837,
		-0.915846, -0.297796, 0.269339,
		44.203251, 41.480240, 37.151096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885281, 41.347046, 37.677402>,  <44.844341, 41.688698, 36.962559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885281, 41.347046, 37.677402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552017, 41.228237, 37.490803>,  <44.352058, 41.156952, 37.378841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552017, 41.228237, 37.490803>,  <44.885281, 41.347046, 37.677402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552017, 41.228237, 37.490803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227747, -0.952961, 0.199991,
		-0.503959, 0.060380, 0.861615,
		-0.833161, -0.297018, -0.466502,
		44.302071, 41.139133, 37.350853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643917, 40.732948, 37.961285>,  <44.885281, 41.347046, 37.677402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643917, 40.732948, 37.961285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433842, 40.709919, 37.621670>,  <44.307796, 40.696102, 37.417900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433842, 40.709919, 37.621670>,  <44.643917, 40.732948, 37.961285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433842, 40.709919, 37.621670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131463, -0.991221, -0.014109,
		-0.840769, -0.119027, 0.528148,
		-0.525191, -0.057569, -0.849035,
		44.276283, 40.692650, 37.366959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329548, 40.086163, 38.055222>,  <44.643917, 40.732948, 37.961285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329548, 40.086163, 38.055222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278576, 40.178555, 37.669392>,  <44.247993, 40.233990, 37.437893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278576, 40.178555, 37.669392>,  <44.329548, 40.086163, 38.055222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278576, 40.178555, 37.669392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086425, -0.966222, -0.242788,
		-0.988076, -0.114301, 0.103159,
		-0.127425, 0.230977, -0.964579,
		44.240349, 40.247849, 37.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685566, 39.856644, 37.786316>,  <44.329548, 40.086163, 38.055222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685566, 39.856644, 37.786316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949692, 39.872204, 37.486324>,  <44.108170, 39.881542, 37.306328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949692, 39.872204, 37.486324>,  <43.685566, 39.856644, 37.786316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949692, 39.872204, 37.486324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095646, -0.986168, -0.135367,
		-0.744872, 0.161118, -0.647462,
		0.660317, 0.038904, -0.749979,
		44.147785, 39.883877, 37.261330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419098, 39.361004, 37.258789>,  <43.685566, 39.856644, 37.786316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419098, 39.361004, 37.258789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785645, 39.456497, 37.130238>,  <44.005573, 39.513794, 37.053108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785645, 39.456497, 37.130238>,  <43.419098, 39.361004, 37.258789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785645, 39.456497, 37.130238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095170, -0.909637, -0.404355,
		-0.388873, 0.339950, -0.856278,
		0.916363, 0.238735, -0.321380,
		44.060555, 39.528118, 37.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465973, 38.932472, 36.559906>,  <43.419098, 39.361004, 37.258789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465973, 38.932472, 36.559906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840145, 39.008224, 36.679314>,  <44.064648, 39.053677, 36.750957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840145, 39.008224, 36.679314>,  <43.465973, 38.932472, 36.559906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840145, 39.008224, 36.679314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271458, -0.925717, -0.263360,
		0.226468, 0.327389, -0.917348,
		0.935426, 0.189379, 0.298518,
		44.120773, 39.065037, 36.768867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848175, 38.506317, 36.060364>,  <43.465973, 38.932472, 36.559906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848175, 38.506317, 36.060364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085964, 38.586433, 36.371872>,  <44.228638, 38.634502, 36.558777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085964, 38.586433, 36.371872>,  <43.848175, 38.506317, 36.060364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085964, 38.586433, 36.371872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600212, -0.755019, -0.263994,
		0.535112, 0.624365, -0.569054,
		0.594475, 0.200287, 0.778771,
		44.264305, 38.646519, 36.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479313, 38.449539, 35.838158>,  <43.848175, 38.506317, 36.060364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479313, 38.449539, 35.838158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527996, 38.417576, 36.233894>,  <44.557205, 38.398396, 36.471336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527996, 38.417576, 36.233894>,  <44.479313, 38.449539, 35.838158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527996, 38.417576, 36.233894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516707, -0.845942, -0.131894,
		0.847467, 0.527253, -0.061668,
		0.121709, -0.079912, 0.989344,
		44.564510, 38.393600, 36.530697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167316, 38.260948, 35.924728>,  <44.479313, 38.449539, 35.838158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167316, 38.260948, 35.924728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946968, 38.151558, 36.240135>,  <44.814758, 38.085922, 36.429379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946968, 38.151558, 36.240135>,  <45.167316, 38.260948, 35.924728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946968, 38.151558, 36.240135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522538, -0.849708, 0.070352,
		0.650768, 0.450784, 0.610979,
		-0.550868, -0.273477, 0.788515,
		44.781708, 38.069515, 36.476688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628963, 37.779472, 36.386745>,  <45.167316, 38.260948, 35.924728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628963, 37.779472, 36.386745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245876, 37.720688, 36.485680>,  <45.016022, 37.685417, 36.545040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245876, 37.720688, 36.485680>,  <45.628963, 37.779472, 36.386745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245876, 37.720688, 36.485680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123691, -0.986511, -0.107222,
		0.259756, -0.072096, 0.962979,
		-0.957720, -0.146964, 0.247334,
		44.958561, 37.676598, 36.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634640, 37.241570, 36.951843>,  <45.628963, 37.779472, 36.386745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634640, 37.241570, 36.951843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260292, 37.267597, 36.813335>,  <45.035683, 37.283215, 36.730228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260292, 37.267597, 36.813335>,  <45.634640, 37.241570, 36.951843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260292, 37.267597, 36.813335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039318, -0.995947, -0.080896,
		-0.350134, -0.062094, 0.934639,
		-0.935874, 0.065073, -0.346274,
		44.979530, 37.287121, 36.709454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362896, 36.755550, 37.225372>,  <45.634640, 37.241570, 36.951843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362896, 36.755550, 37.225372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084240, 36.807095, 36.943073>,  <44.917046, 36.838020, 36.773693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084240, 36.807095, 36.943073>,  <45.362896, 36.755550, 37.225372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084240, 36.807095, 36.943073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043693, -0.989530, -0.137551,
		-0.716085, -0.064988, 0.694981,
		-0.696644, 0.128864, -0.705749,
		44.875248, 36.845753, 36.731350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834057, 36.350998, 37.421818>,  <45.362896, 36.755550, 37.225372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834057, 36.350998, 37.421818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785458, 36.403427, 37.028259>,  <44.756298, 36.434883, 36.792122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785458, 36.403427, 37.028259>,  <44.834057, 36.350998, 37.421818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785458, 36.403427, 37.028259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077708, -0.989457, -0.122217,
		-0.989554, 0.061618, 0.130329,
		-0.121425, 0.131068, -0.983909,
		44.749008, 36.442749, 36.733089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154369, 36.060661, 37.333046>,  <44.834057, 36.350998, 37.421818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154369, 36.060661, 37.333046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320961, 36.065063, 36.969414>,  <44.420914, 36.067707, 36.751236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320961, 36.065063, 36.969414>,  <44.154369, 36.060661, 37.333046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320961, 36.065063, 36.969414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272690, -0.952375, -0.136459,
		-0.867287, 0.304729, -0.393640,
		0.416477, 0.011008, -0.909080,
		44.445904, 36.068367, 36.696690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671227, 35.834621, 36.813873>,  <44.154369, 36.060661, 37.333046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671227, 35.834621, 36.813873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027710, 35.754662, 36.651009>,  <44.241600, 35.706688, 36.553291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027710, 35.754662, 36.651009>,  <43.671227, 35.834621, 36.813873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027710, 35.754662, 36.651009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275198, -0.951855, -0.135049,
		-0.360564, 0.232408, -0.903317,
		0.891212, -0.199897, -0.407163,
		44.295074, 35.694691, 36.528858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513565, 35.479622, 36.268150>,  <43.671227, 35.834621, 36.813873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513565, 35.479622, 36.268150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890476, 35.381004, 36.358768>,  <44.116623, 35.321835, 36.413139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890476, 35.381004, 36.358768>,  <43.513565, 35.479622, 36.268150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890476, 35.381004, 36.358768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207322, -0.960920, -0.183441,
		0.262915, 0.125886, -0.956571,
		0.942281, -0.246548, 0.226541,
		44.173161, 35.307041, 36.426731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759769, 35.137993, 35.664597>,  <43.513565, 35.479622, 36.268150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759769, 35.137993, 35.664597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025051, 35.008629, 35.934578>,  <44.184219, 34.931011, 36.096569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025051, 35.008629, 35.934578>,  <43.759769, 35.137993, 35.664597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025051, 35.008629, 35.934578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081265, -0.927606, -0.364614,
		0.744012, 0.186964, -0.641476,
		0.663207, -0.323406, 0.674956,
		44.224014, 34.911606, 36.137066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255653, 34.683010, 35.270294>,  <43.759769, 35.137993, 35.664597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255653, 34.683010, 35.270294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258278, 34.603695, 35.662342>,  <44.259853, 34.556107, 35.897572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258278, 34.603695, 35.662342>,  <44.255653, 34.683010, 35.270294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258278, 34.603695, 35.662342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013878, -0.980067, -0.198180,
		0.999882, -0.012302, -0.009181,
		0.006559, -0.198284, 0.980123,
		44.260246, 34.544209, 35.956379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942493, 34.250690, 35.476074>,  <44.255653, 34.683010, 35.270294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942493, 34.250690, 35.476074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592560, 34.213829, 35.666306>,  <44.382599, 34.191711, 35.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592560, 34.213829, 35.666306>,  <44.942493, 34.250690, 35.476074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592560, 34.213829, 35.666306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023462, -0.972528, -0.231601,
		0.483860, -0.213770, 0.848635,
		-0.874831, -0.092152, 0.475583,
		44.330109, 34.186184, 35.808979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177101, 34.620350, 34.922440>,  <44.942493, 34.250690, 35.476074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177101, 34.620350, 34.922440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359310, 34.866207, 35.180035>,  <45.468636, 35.013721, 35.334591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359310, 34.866207, 35.180035>,  <45.177101, 34.620350, 34.922440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359310, 34.866207, 35.180035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778487, -0.625918, 0.046741,
		0.431810, 0.480042, -0.763609,
		0.455519, 0.614643, 0.643985,
		45.495964, 35.050598, 35.373230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906498, 34.941261, 34.762245>,  <45.177101, 34.620350, 34.922440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906498, 34.941261, 34.762245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809090, 34.817398, 35.129898>,  <45.750645, 34.743080, 35.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809090, 34.817398, 35.129898>,  <45.906498, 34.941261, 34.762245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809090, 34.817398, 35.129898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697836, -0.714089, -0.055689,
		0.673589, 0.627844, 0.389987,
		-0.243521, -0.309659, 0.919135,
		45.736034, 34.724499, 35.405640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541077, 34.886112, 35.209972>,  <45.906498, 34.941261, 34.762245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541077, 34.886112, 35.209972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271095, 34.601124, 35.286739>,  <46.109108, 34.430130, 35.332798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271095, 34.601124, 35.286739>,  <46.541077, 34.886112, 35.209972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271095, 34.601124, 35.286739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658259, -0.698921, -0.279649,
		0.333375, -0.062419, 0.940725,
		-0.674949, -0.712469, 0.191915,
		46.068611, 34.387383, 35.344315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255676, 34.823059, 35.438396>,  <46.541077, 34.886112, 35.209972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255676, 34.823059, 35.438396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608856, 34.838902, 35.251282>,  <47.820766, 34.848408, 35.139011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608856, 34.838902, 35.251282>,  <47.255676, 34.823059, 35.438396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.608856, 34.838902, 35.251282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458876, 0.137608, 0.877779,
		0.099136, -0.989695, 0.103328,
		0.882952, 0.039605, -0.467789,
		47.873741, 34.850784, 35.110947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.551277, 40.781166, 46.153168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.160839, 40.716446, 46.211220>,  <33.926575, 40.677616, 46.246052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.160839, 40.716446, 46.211220>,  <34.551277, 40.781166, 46.153168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160839, 40.716446, 46.211220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062184, -0.431936, -0.899758,
		0.208265, -0.887273, 0.411549,
		-0.976094, -0.161797, 0.145132,
		33.868011, 40.667908, 46.254761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456734, 40.097839, 45.876499>,  <34.551277, 40.781166, 46.153168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456734, 40.097839, 45.876499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.097500, 40.273613, 45.883766>,  <33.881958, 40.379078, 45.888126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.097500, 40.273613, 45.883766>,  <34.456734, 40.097839, 45.876499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097500, 40.273613, 45.883766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267635, -0.513255, -0.815439,
		-0.349009, -0.737200, 0.578558,
		-0.898090, 0.439438, 0.018170,
		33.828072, 40.405445, 45.889217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035858, 39.609489, 45.672741>,  <34.456734, 40.097839, 45.876499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035858, 39.609489, 45.672741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802120, 39.929573, 45.618759>,  <33.661877, 40.121624, 45.586369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802120, 39.929573, 45.618759>,  <34.035858, 39.609489, 45.672741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802120, 39.929573, 45.618759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364818, -0.407585, -0.837127,
		-0.724882, -0.439934, 0.530099,
		-0.584341, 0.800208, -0.134955,
		33.626820, 40.169636, 45.578274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337631, 39.373436, 45.549095>,  <34.035858, 39.609489, 45.672741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337631, 39.373436, 45.549095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.369892, 39.736286, 45.383869>,  <33.389248, 39.953995, 45.284733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.369892, 39.736286, 45.383869>,  <33.337631, 39.373436, 45.549095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369892, 39.736286, 45.383869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384619, -0.353993, -0.852501,
		-0.919545, 0.227630, 0.320346,
		0.080655, 0.907124, -0.413063,
		33.394089, 40.008423, 45.259949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659332, 39.364254, 45.146591>,  <33.337631, 39.373436, 45.549095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659332, 39.364254, 45.146591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908974, 39.647511, 45.014511>,  <33.058758, 39.817463, 44.935265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908974, 39.647511, 45.014511>,  <32.659332, 39.364254, 45.146591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908974, 39.647511, 45.014511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362712, -0.111734, -0.925178,
		-0.692048, 0.697178, 0.187116,
		0.624107, 0.708137, -0.330200,
		33.096207, 39.859951, 44.915451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347824, 39.690475, 44.627804>,  <32.659332, 39.364254, 45.146591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347824, 39.690475, 44.627804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.722214, 39.787457, 44.525688>,  <32.946846, 39.845646, 44.464417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.722214, 39.787457, 44.525688>,  <32.347824, 39.690475, 44.627804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722214, 39.787457, 44.525688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209708, -0.198539, -0.957395,
		-0.282807, 0.949631, -0.134983,
		0.935971, 0.242451, -0.255294,
		33.003006, 39.860191, 44.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266235, 40.052406, 43.920830>,  <32.347824, 39.690475, 44.627804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266235, 40.052406, 43.920830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.651039, 39.947815, 43.952259>,  <32.881920, 39.885059, 43.971119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.651039, 39.947815, 43.952259>,  <32.266235, 40.052406, 43.920830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651039, 39.947815, 43.952259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018682, -0.224072, -0.974393,
		0.272392, 0.938839, -0.210674,
		0.962005, -0.261481, 0.078575,
		32.939640, 39.869370, 43.975830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390789, 40.181484, 43.262722>,  <32.266235, 40.052406, 43.920830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390789, 40.181484, 43.262722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.715767, 40.000446, 43.409744>,  <32.910755, 39.891823, 43.497955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.715767, 40.000446, 43.409744>,  <32.390789, 40.181484, 43.262722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715767, 40.000446, 43.409744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268957, -0.268396, -0.925000,
		0.517296, 0.850368, -0.096330,
		0.812445, -0.452591, 0.367553,
		32.959499, 39.864670, 43.520012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064301, 40.317581, 42.804417>,  <32.390789, 40.181484, 43.262722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064301, 40.317581, 42.804417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132710, 39.975014, 42.999268>,  <33.173756, 39.769474, 43.116180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132710, 39.975014, 42.999268>,  <33.064301, 40.317581, 42.804417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132710, 39.975014, 42.999268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361178, -0.405500, -0.839714,
		0.916679, 0.319552, 0.239969,
		0.171025, -0.856420, 0.487129,
		33.184017, 39.718086, 43.145405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818012, 40.137440, 42.684566>,  <33.064301, 40.317581, 42.804417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818012, 40.137440, 42.684566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.617130, 39.800938, 42.764637>,  <33.496601, 39.599037, 42.812679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.617130, 39.800938, 42.764637>,  <33.818012, 40.137440, 42.684566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617130, 39.800938, 42.764637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397926, -0.430344, -0.810221,
		0.767751, -0.327243, 0.550881,
		-0.502208, -0.841258, 0.200179,
		33.466469, 39.548561, 42.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178593, 39.653214, 42.405022>,  <33.818012, 40.137440, 42.684566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178593, 39.653214, 42.405022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851974, 39.423763, 42.430939>,  <33.656002, 39.286091, 42.446487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851974, 39.423763, 42.430939>,  <34.178593, 39.653214, 42.405022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851974, 39.423763, 42.430939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337464, -0.565385, -0.752634,
		0.468366, -0.592697, 0.655244,
		-0.816548, -0.573629, 0.064793,
		33.607010, 39.251675, 42.450378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444588, 38.980900, 42.158733>,  <34.178593, 39.653214, 42.405022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444588, 38.980900, 42.158733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045971, 38.961472, 42.131794>,  <33.806801, 38.949814, 42.115631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045971, 38.961472, 42.131794>,  <34.444588, 38.980900, 42.158733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045971, 38.961472, 42.131794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082753, -0.647998, -0.757133,
		-0.006871, -0.760092, 0.649779,
		-0.996546, -0.048568, -0.067352,
		33.747005, 38.946899, 42.111588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300678, 38.222496, 42.042305>,  <34.444588, 38.980900, 42.158733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300678, 38.222496, 42.042305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.986305, 38.430809, 41.908978>,  <33.797684, 38.555798, 41.828979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.986305, 38.430809, 41.908978>,  <34.300678, 38.222496, 42.042305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986305, 38.430809, 41.908978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048154, -0.485885, -0.872695,
		-0.616440, -0.701927, 0.356793,
		-0.785928, 0.520783, -0.333319,
		33.750526, 38.587044, 41.808983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888805, 37.753170, 41.786858>,  <34.300678, 38.222496, 42.042305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888805, 37.753170, 41.786858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783588, 38.094711, 41.607189>,  <33.720459, 38.299637, 41.499390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783588, 38.094711, 41.607189>,  <33.888805, 37.753170, 41.786858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783588, 38.094711, 41.607189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183704, -0.412718, -0.892141,
		-0.947133, -0.317185, -0.048293,
		-0.263042, 0.853848, -0.449167,
		33.704674, 38.350864, 41.472439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448730, 37.510429, 41.247425>,  <33.888805, 37.753170, 41.786858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448730, 37.510429, 41.247425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630810, 37.854420, 41.155132>,  <33.740059, 38.060814, 41.099754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630810, 37.854420, 41.155132>,  <33.448730, 37.510429, 41.247425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630810, 37.854420, 41.155132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242488, -0.369077, -0.897208,
		-0.856733, 0.352459, -0.376537,
		0.455201, 0.859973, -0.230733,
		33.767368, 38.112411, 41.085911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358852, 37.583939, 40.548206>,  <33.448730, 37.510429, 41.247425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358852, 37.583939, 40.548206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.636963, 37.870235, 40.574478>,  <33.803829, 38.042011, 40.590240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.636963, 37.870235, 40.574478>,  <33.358852, 37.583939, 40.548206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636963, 37.870235, 40.574478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404886, -0.314517, -0.858572,
		-0.593856, 0.623535, -0.508467,
		0.695272, 0.715740, 0.065682,
		33.845543, 38.084957, 40.594181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327030, 37.845200, 39.901539>,  <33.358852, 37.583939, 40.548206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327030, 37.845200, 39.901539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672108, 37.943977, 40.078079>,  <33.879154, 38.003242, 40.184002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672108, 37.943977, 40.078079>,  <33.327030, 37.845200, 39.901539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672108, 37.943977, 40.078079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485224, -0.158144, -0.859970,
		-0.142565, 0.956039, -0.256251,
		0.862689, 0.246941, 0.441347,
		33.930916, 38.018059, 40.210484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699192, 38.368214, 39.421692>,  <33.327030, 37.845200, 39.901539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699192, 38.368214, 39.421692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987873, 38.237724, 39.665894>,  <34.161083, 38.159431, 39.812416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987873, 38.237724, 39.665894>,  <33.699192, 38.368214, 39.421692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987873, 38.237724, 39.665894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673550, 0.127602, -0.728044,
		0.159606, 0.936639, 0.311821,
		0.721704, -0.326227, 0.610508,
		34.204384, 38.139854, 39.849045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266853, 38.864677, 39.470936>,  <33.699192, 38.368214, 39.421692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266853, 38.864677, 39.470936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404259, 38.496029, 39.543182>,  <34.486702, 38.274841, 39.586529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404259, 38.496029, 39.543182>,  <34.266853, 38.864677, 39.470936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404259, 38.496029, 39.543182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567367, 0.050398, -0.821921,
		0.748395, 0.384812, 0.540208,
		0.343511, -0.921618, 0.180612,
		34.507313, 38.219543, 39.597366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017582, 39.058300, 39.473618>,  <34.266853, 38.864677, 39.470936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017582, 39.058300, 39.473618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024479, 38.659187, 39.447926>,  <35.028618, 38.419720, 39.432510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024479, 38.659187, 39.447926>,  <35.017582, 39.058300, 39.473618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024479, 38.659187, 39.447926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718227, 0.057050, -0.693466,
		0.695595, -0.034175, 0.717621,
		0.017241, -0.997786, -0.064229,
		35.029652, 38.359852, 39.428658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658249, 38.888100, 39.478458>,  <35.017582, 39.058300, 39.473618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658249, 38.888100, 39.478458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526958, 38.545647, 39.318810>,  <35.448185, 38.340176, 39.223019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526958, 38.545647, 39.318810>,  <35.658249, 38.888100, 39.478458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526958, 38.545647, 39.318810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741093, 0.028601, -0.670793,
		0.585704, -0.515961, 0.625088,
		-0.328225, -0.856134, -0.399127,
		35.428490, 38.288807, 39.199070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246407, 38.468906, 39.383934>,  <35.658249, 38.888100, 39.478458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246407, 38.468906, 39.383934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975525, 38.298992, 39.143620>,  <35.812996, 38.197044, 38.999432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975525, 38.298992, 39.143620>,  <36.246407, 38.468906, 39.383934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975525, 38.298992, 39.143620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692890, -0.093426, -0.714965,
		0.247581, -0.900458, 0.357601,
		-0.677205, -0.424791, -0.600788,
		35.772362, 38.171555, 38.963383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582069, 37.834568, 39.363033>,  <36.246407, 38.468906, 39.383934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582069, 37.834568, 39.363033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793888, 37.501698, 39.428841>,  <36.920979, 37.301975, 39.468323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793888, 37.501698, 39.428841>,  <36.582069, 37.834568, 39.363033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793888, 37.501698, 39.428841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372387, -0.053797, 0.926517,
		-0.762176, -0.551895, -0.338379,
		0.529544, -0.832177, 0.164516,
		36.952751, 37.252045, 39.478195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060856, 37.408123, 39.703049>,  <36.582069, 37.834568, 39.363033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060856, 37.408123, 39.703049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437565, 37.296333, 39.777828>,  <36.663589, 37.229259, 39.822697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437565, 37.296333, 39.777828>,  <36.060856, 37.408123, 39.703049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437565, 37.296333, 39.777828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173218, 0.073276, 0.982154,
		-0.288187, -0.957352, 0.020599,
		0.941777, -0.279476, 0.186948,
		36.720097, 37.212490, 39.833912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004875, 36.934196, 40.274330>,  <36.060856, 37.408123, 39.703049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004875, 36.934196, 40.274330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391132, 37.036369, 40.293476>,  <36.622887, 37.097675, 40.304966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391132, 37.036369, 40.293476>,  <36.004875, 36.934196, 40.274330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391132, 37.036369, 40.293476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072095, 0.086336, 0.993654,
		0.249684, -0.962963, 0.101785,
		0.965640, 0.255437, 0.047868,
		36.680824, 37.112999, 40.307838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255989, 36.514320, 40.810635>,  <36.004875, 36.934196, 40.274330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255989, 36.514320, 40.810635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506920, 36.821545, 40.759190>,  <36.657478, 37.005878, 40.728321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506920, 36.821545, 40.759190>,  <36.255989, 36.514320, 40.810635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506920, 36.821545, 40.759190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105891, 0.079490, 0.991195,
		0.771525, -0.635420, -0.031466,
		0.627324, 0.768064, -0.128614,
		36.695118, 37.051964, 40.720604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781876, 36.384102, 41.299309>,  <36.255989, 36.514320, 40.810635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781876, 36.384102, 41.299309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797115, 36.768337, 41.189171>,  <36.806259, 36.998878, 41.123089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797115, 36.768337, 41.189171>,  <36.781876, 36.384102, 41.299309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797115, 36.768337, 41.189171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072603, 0.272153, 0.959511,
		0.996633, -0.056549, -0.059373,
		0.038101, 0.960591, -0.275342,
		36.808544, 37.056515, 41.106567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421280, 36.708763, 41.579727>,  <36.781876, 36.384102, 41.299309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421280, 36.708763, 41.579727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152454, 37.000896, 41.530834>,  <36.991158, 37.176178, 41.501499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152454, 37.000896, 41.530834>,  <37.421280, 36.708763, 41.579727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152454, 37.000896, 41.530834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133806, 0.282129, 0.949999,
		0.728302, 0.622106, -0.287332,
		-0.672065, 0.730334, -0.122234,
		36.950836, 37.219997, 41.494164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767635, 37.198128, 41.911327>,  <37.421280, 36.708763, 41.579727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767635, 37.198128, 41.911327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402683, 37.344635, 41.838207>,  <37.183712, 37.432541, 41.794334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402683, 37.344635, 41.838207>,  <37.767635, 37.198128, 41.911327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402683, 37.344635, 41.838207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081645, 0.600408, 0.795515,
		0.401129, 0.710883, -0.577702,
		-0.912376, 0.366271, -0.182801,
		37.128971, 37.454517, 41.783367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846985, 37.921333, 42.009926>,  <37.767635, 37.198128, 41.911327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846985, 37.921333, 42.009926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460518, 37.835613, 42.067337>,  <37.228638, 37.784184, 42.101784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460518, 37.835613, 42.067337>,  <37.846985, 37.921333, 42.009926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460518, 37.835613, 42.067337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007346, 0.533381, 0.845843,
		-0.257814, 0.818280, -0.513761,
		-0.966167, -0.214296, 0.143524,
		37.170670, 37.771324, 42.110394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505489, 38.538685, 42.283661>,  <37.846985, 37.921333, 42.009926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505489, 38.538685, 42.283661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260574, 38.235554, 42.373817>,  <37.113625, 38.053677, 42.427910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260574, 38.235554, 42.373817>,  <37.505489, 38.538685, 42.283661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260574, 38.235554, 42.373817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173262, 0.406756, 0.896956,
		-0.771414, 0.510147, -0.380356,
		-0.612291, -0.757826, 0.225388,
		37.076885, 38.008205, 42.441433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839462, 38.838181, 42.471596>,  <37.505489, 38.538685, 42.283661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839462, 38.838181, 42.471596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853931, 38.475269, 42.639187>,  <36.862614, 38.257523, 42.739742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853931, 38.475269, 42.639187>,  <36.839462, 38.838181, 42.471596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853931, 38.475269, 42.639187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192858, 0.405033, 0.893730,
		-0.980559, -0.113136, -0.160323,
		0.036177, -0.907275, 0.418978,
		36.864784, 38.203087, 42.764881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161854, 38.711933, 42.876427>,  <36.839462, 38.838181, 42.471596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161854, 38.711933, 42.876427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441914, 38.474197, 43.034695>,  <36.609951, 38.331558, 43.129654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441914, 38.474197, 43.034695>,  <36.161854, 38.711933, 42.876427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441914, 38.474197, 43.034695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227340, 0.339744, 0.912628,
		-0.676834, -0.728929, 0.102755,
		0.700151, -0.594338, 0.395665,
		36.651958, 38.295895, 43.153393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860783, 38.507992, 43.495029>,  <36.161854, 38.711933, 42.876427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860783, 38.507992, 43.495029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250656, 38.426914, 43.532772>,  <36.484581, 38.378269, 43.555416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250656, 38.426914, 43.532772>,  <35.860783, 38.507992, 43.495029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250656, 38.426914, 43.532772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024906, 0.320960, 0.946765,
		-0.222185, -0.925149, 0.307787,
		0.974686, -0.202691, 0.094355,
		36.543060, 38.366108, 43.561077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901569, 38.159588, 44.068214>,  <35.860783, 38.507992, 43.495029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901569, 38.159588, 44.068214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280373, 38.281761, 44.028431>,  <36.507652, 38.355064, 44.004562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280373, 38.281761, 44.028431>,  <35.901569, 38.159588, 44.068214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280373, 38.281761, 44.028431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048228, 0.170919, 0.984104,
		0.317576, -0.936749, 0.147131,
		0.947005, 0.305432, -0.099457,
		36.564476, 38.373390, 43.998592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245667, 37.819443, 44.562634>,  <35.901569, 38.159588, 44.068214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245667, 37.819443, 44.562634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469849, 38.142612, 44.489799>,  <36.604359, 38.336514, 44.446098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469849, 38.142612, 44.489799>,  <36.245667, 37.819443, 44.562634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469849, 38.142612, 44.489799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251376, 0.043538, 0.966910,
		0.789117, -0.587677, -0.178691,
		0.560451, 0.807923, -0.182085,
		36.637985, 38.384991, 44.435173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893562, 37.695110, 44.972992>,  <36.245667, 37.819443, 44.562634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893562, 37.695110, 44.972992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837227, 38.082821, 44.892319>,  <36.803425, 38.315445, 44.843914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837227, 38.082821, 44.892319>,  <36.893562, 37.695110, 44.972992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837227, 38.082821, 44.892319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208315, 0.228163, 0.951077,
		0.967868, 0.091937, -0.234048,
		-0.140840, 0.969272, -0.201680,
		36.794975, 38.373604, 44.831814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364822, 38.005627, 45.462868>,  <36.893562, 37.695110, 44.972992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364822, 38.005627, 45.462868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102394, 38.278343, 45.333416>,  <36.944939, 38.441975, 45.255745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102394, 38.278343, 45.333416>,  <37.364822, 38.005627, 45.462868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102394, 38.278343, 45.333416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006922, 0.423363, 0.905933,
		0.754670, 0.596594, -0.273036,
		-0.656068, 0.681791, -0.323629,
		36.905575, 38.482880, 45.236328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578789, 38.611977, 45.785336>,  <37.364822, 38.005627, 45.462868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578789, 38.611977, 45.785336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204327, 38.674534, 45.659382>,  <36.979649, 38.712067, 45.583809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204327, 38.674534, 45.659382>,  <37.578789, 38.611977, 45.785336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204327, 38.674534, 45.659382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158122, 0.612642, 0.774382,
		0.314017, 0.774733, -0.548800,
		-0.936158, 0.156392, -0.314882,
		36.923481, 38.721451, 45.564919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432716, 39.317181, 45.932709>,  <37.578789, 38.611977, 45.785336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432716, 39.317181, 45.932709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091496, 39.108452, 45.932858>,  <36.886765, 38.983215, 45.932945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091496, 39.108452, 45.932858>,  <37.432716, 39.317181, 45.932709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091496, 39.108452, 45.932858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291258, 0.476725, 0.829399,
		-0.432980, 0.707412, -0.558657,
		-0.853052, -0.521826, 0.000373,
		36.835579, 38.951904, 45.932968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.013245, 39.908073, 45.754177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805687, 39.613338, 45.927528>,  <36.681152, 39.436497, 46.031540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805687, 39.613338, 45.927528>,  <37.013245, 39.908073, 45.754177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805687, 39.613338, 45.927528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451017, 0.666645, 0.593438,
		-0.726180, 0.112468, -0.678243,
		-0.518890, -0.736841, 0.433379,
		36.650021, 39.392284, 46.057541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362316, 40.210552, 45.993782>,  <37.013245, 39.908073, 45.754177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362316, 40.210552, 45.993782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347828, 39.866356, 46.197052>,  <36.339134, 39.659836, 46.319012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347828, 39.866356, 46.197052>,  <36.362316, 40.210552, 45.993782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347828, 39.866356, 46.197052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358495, 0.485848, 0.797141,
		-0.932829, -0.153305, -0.326080,
		-0.036219, -0.860494, 0.508173,
		36.336964, 39.608208, 46.349503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631489, 40.086765, 46.228874>,  <36.362316, 40.210552, 45.993782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631489, 40.086765, 46.228874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883133, 39.894478, 46.473213>,  <36.034119, 39.779106, 46.619816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883133, 39.894478, 46.473213>,  <35.631489, 40.086765, 46.228874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883133, 39.894478, 46.473213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477872, 0.380608, 0.791691,
		-0.613070, -0.789969, 0.009726,
		0.629114, -0.480714, 0.610844,
		36.071869, 39.750263, 46.656467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192314, 39.814335, 46.692142>,  <35.631489, 40.086765, 46.228874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192314, 39.814335, 46.692142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544285, 39.794777, 46.881180>,  <35.755466, 39.783043, 46.994602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544285, 39.794777, 46.881180>,  <35.192314, 39.814335, 46.692142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544285, 39.794777, 46.881180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457070, 0.184400, 0.870105,
		-0.129693, -0.981634, 0.139908,
		0.879924, -0.048899, 0.472591,
		35.808262, 39.780109, 47.022957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085583, 39.412949, 47.278133>,  <35.192314, 39.814335, 46.692142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085583, 39.412949, 47.278133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401176, 39.644020, 47.361839>,  <35.590530, 39.782665, 47.412064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401176, 39.644020, 47.361839>,  <35.085583, 39.412949, 47.278133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401176, 39.644020, 47.361839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273199, 0.024770, 0.961638,
		0.550336, -0.815887, 0.177365,
		0.788982, 0.577681, 0.209268,
		35.637871, 39.817326, 47.424622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216286, 39.238369, 47.970047>,  <35.085583, 39.412949, 47.278133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216286, 39.238369, 47.970047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433105, 39.573166, 47.940025>,  <35.563198, 39.774044, 47.922012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433105, 39.573166, 47.940025>,  <35.216286, 39.238369, 47.970047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433105, 39.573166, 47.940025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119070, 0.164913, 0.979095,
		0.831869, -0.521779, 0.189051,
		0.542048, 0.836989, -0.075058,
		35.595718, 39.824261, 47.917507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769997, 39.129314, 48.437748>,  <35.216286, 39.238369, 47.970047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769997, 39.129314, 48.437748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725552, 39.523083, 48.383244>,  <35.698883, 39.759346, 48.350540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725552, 39.523083, 48.383244>,  <35.769997, 39.129314, 48.437748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725552, 39.523083, 48.383244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151310, 0.152265, 0.976689,
		0.982222, 0.087904, -0.165871,
		-0.111111, 0.984423, -0.136257,
		35.692219, 39.818409, 48.342365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326347, 39.489063, 48.867043>,  <35.769997, 39.129314, 48.437748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326347, 39.489063, 48.867043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065567, 39.781128, 48.785240>,  <35.909100, 39.956367, 48.736156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065567, 39.781128, 48.785240>,  <36.326347, 39.489063, 48.867043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065567, 39.781128, 48.785240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106428, 0.355150, 0.928731,
		0.750759, 0.583717, -0.309249,
		-0.651946, 0.730166, -0.204508,
		35.869984, 40.000179, 48.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644497, 40.037361, 49.225376>,  <36.326347, 39.489063, 48.867043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644497, 40.037361, 49.225376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274696, 40.171665, 49.153187>,  <36.052818, 40.252247, 49.109875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274696, 40.171665, 49.153187>,  <36.644497, 40.037361, 49.225376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274696, 40.171665, 49.153187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043959, 0.564203, 0.824465,
		0.378643, 0.754283, -0.536364,
		-0.924498, 0.335756, -0.180474,
		35.997349, 40.272392, 49.099045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650105, 40.765060, 49.330830>,  <36.644497, 40.037361, 49.225376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650105, 40.765060, 49.330830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265217, 40.667896, 49.380028>,  <36.034283, 40.609600, 49.409546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265217, 40.667896, 49.380028>,  <36.650105, 40.765060, 49.330830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265217, 40.667896, 49.380028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060283, 0.630599, 0.773764,
		-0.265517, 0.737116, -0.621418,
		-0.962220, -0.242908, 0.123000,
		35.976551, 40.595024, 49.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401436, 41.385708, 49.449863>,  <36.650105, 40.765060, 49.330830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401436, 41.385708, 49.449863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111023, 41.136467, 49.566219>,  <35.936775, 40.986923, 49.636032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111023, 41.136467, 49.566219>,  <36.401436, 41.385708, 49.449863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111023, 41.136467, 49.566219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203042, 0.598402, 0.775041,
		-0.657001, 0.503642, -0.560976,
		-0.726033, -0.623105, 0.290890,
		35.893211, 40.949535, 49.653488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818394, 41.886841, 49.745640>,  <36.401436, 41.385708, 49.449863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818394, 41.886841, 49.745640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746006, 41.522747, 49.894627>,  <35.702576, 41.304291, 49.984016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746006, 41.522747, 49.894627>,  <35.818394, 41.886841, 49.745640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746006, 41.522747, 49.894627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272089, 0.410271, 0.870428,
		-0.945102, 0.056175, -0.321909,
		-0.180967, -0.910232, 0.372463,
		35.691715, 41.249676, 50.006367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106018, 41.951420, 50.152412>,  <35.818394, 41.886841, 49.745640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106018, 41.951420, 50.152412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299656, 41.629494, 50.289780>,  <35.415836, 41.436340, 50.372200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299656, 41.629494, 50.289780>,  <35.106018, 41.951420, 50.152412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299656, 41.629494, 50.289780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201875, 0.279159, 0.938785,
		-0.851413, -0.523784, -0.027333,
		0.484090, -0.804811, 0.343419,
		35.444881, 41.388050, 50.392807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670635, 41.790688, 50.658234>,  <35.106018, 41.951420, 50.152412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670635, 41.790688, 50.658234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021793, 41.615047, 50.734642>,  <35.232487, 41.509663, 50.780487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021793, 41.615047, 50.734642>,  <34.670635, 41.790688, 50.658234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021793, 41.615047, 50.734642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160052, 0.106905, 0.981303,
		-0.451311, -0.892055, 0.023573,
		0.877896, -0.439100, 0.191022,
		35.285164, 41.483318, 50.791950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514271, 41.266151, 51.081673>,  <34.670635, 41.790688, 50.658234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514271, 41.266151, 51.081673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891136, 41.383324, 51.146809>,  <35.117256, 41.453625, 51.185890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891136, 41.383324, 51.146809>,  <34.514271, 41.266151, 51.081673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891136, 41.383324, 51.146809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218429, 0.168189, 0.961250,
		0.254189, -0.941226, 0.222446,
		0.942166, 0.292928, 0.162840,
		35.173786, 41.471203, 51.195660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624920, 41.109329, 51.766785>,  <34.514271, 41.266151, 51.081673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624920, 41.109329, 51.766785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933144, 41.353813, 51.694504>,  <35.118080, 41.500504, 51.651134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933144, 41.353813, 51.694504>,  <34.624920, 41.109329, 51.766785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933144, 41.353813, 51.694504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023864, 0.255654, 0.966474,
		0.636917, -0.749042, 0.182412,
		0.770564, 0.611210, -0.180705,
		35.164314, 41.537174, 51.640293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240711, 40.875374, 52.316818>,  <34.624920, 41.109329, 51.766785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240711, 40.875374, 52.316818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264984, 41.247337, 52.171719>,  <35.279549, 41.470516, 52.084660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264984, 41.247337, 52.171719>,  <35.240711, 40.875374, 52.316818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264984, 41.247337, 52.171719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114838, 0.354499, 0.927978,
		0.991529, -0.097967, -0.085278,
		0.060680, 0.929910, -0.362746,
		35.283188, 41.526310, 52.062893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644066, 41.128475, 52.832760>,  <35.240711, 40.875374, 52.316818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644066, 41.128475, 52.832760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499474, 41.440319, 52.628193>,  <35.412720, 41.627426, 52.505455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499474, 41.440319, 52.628193>,  <35.644066, 41.128475, 52.832760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499474, 41.440319, 52.628193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076410, 0.521889, 0.849584,
		0.929243, 0.346185, -0.129083,
		-0.361480, 0.779607, -0.511414,
		35.391029, 41.674202, 52.474770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809566, 41.601494, 53.250534>,  <35.644066, 41.128475, 52.832760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809566, 41.601494, 53.250534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551785, 41.800831, 53.018555>,  <35.397118, 41.920433, 52.879368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551785, 41.800831, 53.018555>,  <35.809566, 41.601494, 53.250534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551785, 41.800831, 53.018555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171257, 0.645116, 0.744645,
		0.745221, 0.579207, -0.330402,
		-0.644451, 0.498342, -0.579947,
		35.358448, 41.950333, 52.844570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927029, 42.244328, 53.285892>,  <35.809566, 41.601494, 53.250534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927029, 42.244328, 53.285892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.557354, 42.262997, 53.134258>,  <35.335548, 42.274200, 53.043278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.557354, 42.262997, 53.134258>,  <35.927029, 42.244328, 53.285892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557354, 42.262997, 53.134258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273933, 0.610642, 0.743019,
		0.266165, 0.790530, -0.551560,
		-0.924185, 0.046675, -0.379083,
		35.280098, 42.277000, 53.020535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742317, 42.923199, 53.377689>,  <35.927029, 42.244328, 53.285892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742317, 42.923199, 53.377689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391285, 42.736710, 53.332989>,  <35.180664, 42.624817, 53.306168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391285, 42.736710, 53.332989>,  <35.742317, 42.923199, 53.377689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391285, 42.736710, 53.332989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375793, 0.524191, 0.764201,
		-0.297707, 0.712645, -0.635223,
		-0.877582, -0.466220, -0.111752,
		35.128010, 42.596844, 53.299461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074249, 43.389702, 53.424240>,  <35.742317, 42.923199, 53.377689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074249, 43.389702, 53.424240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013664, 43.024158, 53.574928>,  <34.977314, 42.804832, 53.665340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013664, 43.024158, 53.574928>,  <35.074249, 43.389702, 53.424240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013664, 43.024158, 53.574928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403296, 0.405085, 0.820523,
		-0.902447, -0.027647, -0.429914,
		-0.151467, -0.913861, 0.376718,
		34.968224, 42.750000, 53.687943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305332, 43.298969, 53.688717>,  <35.074249, 43.389702, 53.424240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305332, 43.298969, 53.688717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551659, 43.057747, 53.891537>,  <34.699455, 42.913013, 54.013229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551659, 43.057747, 53.891537>,  <34.305332, 43.298969, 53.688717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551659, 43.057747, 53.891537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382254, 0.334058, 0.861561,
		-0.688951, -0.724384, -0.024802,
		0.615816, -0.603054, 0.507048,
		34.736404, 42.876831, 54.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692993, 42.967518, 54.141266>,  <34.305332, 43.298969, 53.688717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692993, 42.967518, 54.141266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428135, 43.081425, 53.864002>,  <33.269222, 43.149769, 53.697643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428135, 43.081425, 53.864002>,  <33.692993, 42.967518, 54.141266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428135, 43.081425, 53.864002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054551, -0.940847, -0.334413,
		-0.747389, -0.183616, 0.638510,
		-0.662144, 0.284768, -0.693162,
		33.229492, 43.166855, 53.656055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445824, 42.436394, 53.939686>,  <33.692993, 42.967518, 54.141266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445824, 42.436394, 53.939686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064110, 42.552376, 53.968685>,  <32.835079, 42.621967, 53.986084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064110, 42.552376, 53.968685>,  <33.445824, 42.436394, 53.939686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064110, 42.552376, 53.968685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206858, -0.465646, -0.860455,
		-0.215734, -0.836121, 0.504341,
		-0.954290, 0.289957, 0.072503,
		32.777824, 42.639362, 53.990437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019836, 41.865139, 53.888844>,  <33.445824, 42.436394, 53.939686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019836, 41.865139, 53.888844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832455, 42.194542, 53.760857>,  <32.720024, 42.392185, 53.684063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832455, 42.194542, 53.760857>,  <33.019836, 41.865139, 53.888844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832455, 42.194542, 53.760857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149532, -0.430848, -0.889950,
		-0.870740, -0.369058, 0.324975,
		-0.468457, 0.823509, -0.319971,
		32.691917, 42.441593, 53.664864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499847, 41.524509, 53.494965>,  <33.019836, 41.865139, 53.888844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499847, 41.524509, 53.494965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494846, 41.911053, 53.392200>,  <32.491848, 42.142979, 53.330544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494846, 41.911053, 53.392200>,  <32.499847, 41.524509, 53.494965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494846, 41.911053, 53.392200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240286, -0.252301, -0.937340,
		-0.970621, 0.050016, 0.235355,
		-0.012498, 0.966355, -0.256907,
		32.491096, 42.200958, 53.315128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872786, 41.487682, 53.110119>,  <32.499847, 41.524509, 53.494965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872786, 41.487682, 53.110119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083145, 41.810654, 53.003170>,  <32.209362, 42.004436, 52.939003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083145, 41.810654, 53.003170>,  <31.872786, 41.487682, 53.110119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083145, 41.810654, 53.003170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238530, -0.161726, -0.957574,
		-0.816414, 0.567364, 0.107544,
		0.525900, 0.807430, -0.267369,
		32.240913, 42.052883, 52.922958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471012, 41.788307, 52.578156>,  <31.872786, 41.487682, 53.110119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471012, 41.788307, 52.578156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833092, 41.951717, 52.531303>,  <32.050339, 42.049763, 52.503193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833092, 41.951717, 52.531303>,  <31.471012, 41.788307, 52.578156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833092, 41.951717, 52.531303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052715, -0.165555, -0.984791,
		-0.421702, 0.897608, -0.128325,
		0.905201, 0.408523, -0.117132,
		32.104652, 42.074276, 52.496162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362167, 42.014515, 51.879601>,  <31.471012, 41.788307, 52.578156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362167, 42.014515, 51.879601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753132, 42.002522, 51.963284>,  <31.987711, 41.995323, 52.013493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753132, 42.002522, 51.963284>,  <31.362167, 42.014515, 51.879601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753132, 42.002522, 51.963284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192316, -0.284334, -0.939238,
		0.087650, 0.958256, -0.272144,
		0.977411, -0.029987, 0.209210,
		32.046356, 41.993526, 52.026047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708689, 42.274891, 51.339664>,  <31.362167, 42.014515, 51.879601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708689, 42.274891, 51.339664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982273, 42.042538, 51.516197>,  <32.146423, 41.903126, 51.622116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982273, 42.042538, 51.516197>,  <31.708689, 42.274891, 51.339664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982273, 42.042538, 51.516197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280850, -0.348671, -0.894177,
		0.673291, 0.735530, -0.075336,
		0.683961, -0.580883, 0.441330,
		32.187462, 41.868275, 51.648598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338066, 42.397552, 50.984425>,  <31.708689, 42.274891, 51.339664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338066, 42.397552, 50.984425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383923, 42.045925, 51.169510>,  <32.411434, 41.834949, 51.280560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383923, 42.045925, 51.169510>,  <32.338066, 42.397552, 50.984425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383923, 42.045925, 51.169510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249057, -0.425472, -0.870025,
		0.961680, 0.214981, 0.170162,
		0.114640, -0.879066, 0.462710,
		32.418316, 41.782204, 51.308323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927841, 42.115528, 50.644794>,  <32.338066, 42.397552, 50.984425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927841, 42.115528, 50.644794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796753, 41.789192, 50.835377>,  <32.718102, 41.593391, 50.949726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796753, 41.789192, 50.835377>,  <32.927841, 42.115528, 50.644794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796753, 41.789192, 50.835377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356463, -0.573803, -0.737350,
		0.874949, -0.071805, 0.478861,
		-0.327717, -0.815840, 0.476452,
		32.698437, 41.544441, 50.978313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543571, 41.748413, 50.740437>,  <32.927841, 42.115528, 50.644794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543571, 41.748413, 50.740437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249908, 41.478592, 50.771397>,  <33.073711, 41.316700, 50.789974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249908, 41.478592, 50.771397>,  <33.543571, 41.748413, 50.740437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249908, 41.478592, 50.771397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413505, -0.534615, -0.737022,
		0.538541, -0.509083, 0.671422,
		-0.734158, -0.674553, 0.077404,
		33.029659, 41.276226, 50.794617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901241, 41.090023, 50.782696>,  <33.543571, 41.748413, 50.740437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901241, 41.090023, 50.782696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531471, 41.028206, 50.643234>,  <33.309608, 40.991116, 50.559559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531471, 41.028206, 50.643234>,  <33.901241, 41.090023, 50.782696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531471, 41.028206, 50.643234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381227, -0.399204, -0.833848,
		-0.010316, -0.903744, 0.427950,
		-0.924424, -0.154544, -0.348650,
		33.254143, 40.981842, 50.538639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889427, 40.560627, 50.284779>,  <33.901241, 41.090023, 50.782696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889427, 40.560627, 50.284779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.546642, 40.739376, 50.182083>,  <33.340973, 40.846626, 50.120464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.546642, 40.739376, 50.182083>,  <33.889427, 40.560627, 50.284779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546642, 40.739376, 50.182083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110919, -0.326570, -0.938642,
		-0.503299, -0.832860, 0.230292,
		-0.856964, 0.446874, -0.256743,
		33.289555, 40.873440, 50.105061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546810, 40.060658, 49.768764>,  <33.889427, 40.560627, 50.284779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546810, 40.060658, 49.768764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368160, 40.415558, 49.722610>,  <33.260971, 40.628498, 49.694916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368160, 40.415558, 49.722610>,  <33.546810, 40.060658, 49.768764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368160, 40.415558, 49.722610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038612, -0.109733, -0.993211,
		-0.893885, -0.448053, 0.014751,
		-0.446630, 0.887247, -0.115389,
		33.234173, 40.681732, 49.687992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145245, 39.918072, 49.181179>,  <33.546810, 40.060658, 49.768764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145245, 39.918072, 49.181179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150539, 40.317314, 49.205223>,  <33.153717, 40.556858, 49.219650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150539, 40.317314, 49.205223>,  <33.145245, 39.918072, 49.181179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150539, 40.317314, 49.205223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176179, 0.056850, -0.982715,
		-0.984269, 0.023596, -0.175093,
		0.013234, 0.998104, 0.060113,
		33.154510, 40.616745, 49.223255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721626, 40.249523, 48.669888>,  <33.145245, 39.918072, 49.181179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721626, 40.249523, 48.669888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952282, 40.568016, 48.743103>,  <33.090675, 40.759113, 48.787033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952282, 40.568016, 48.743103>,  <32.721626, 40.249523, 48.669888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952282, 40.568016, 48.743103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212183, 0.070395, -0.974691,
		-0.788966, 0.600881, -0.128355,
		0.576638, 0.796232, 0.183037,
		33.125275, 40.806885, 48.798016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476177, 40.786240, 48.258186>,  <32.721626, 40.249523, 48.669888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476177, 40.786240, 48.258186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.859417, 40.882423, 48.320442>,  <33.089359, 40.940132, 48.357796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.859417, 40.882423, 48.320442>,  <32.476177, 40.786240, 48.258186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859417, 40.882423, 48.320442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104722, 0.211683, -0.971712,
		-0.266601, 0.947296, 0.177632,
		0.958101, 0.240458, 0.155638,
		33.146847, 40.954559, 48.367134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607430, 41.428432, 47.885780>,  <32.476177, 40.786240, 48.258186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607430, 41.428432, 47.885780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.948086, 41.224552, 47.934631>,  <33.152481, 41.102222, 47.963940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.948086, 41.224552, 47.934631>,  <32.607430, 41.428432, 47.885780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948086, 41.224552, 47.934631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181371, 0.067983, -0.981062,
		0.491745, 0.857662, 0.150342,
		0.851641, -0.509700, 0.122125,
		33.203579, 41.071644, 47.971268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011616, 41.751247, 47.445648>,  <32.607430, 41.428432, 47.885780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011616, 41.751247, 47.445648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219574, 41.415382, 47.508484>,  <33.344349, 41.213863, 47.546185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219574, 41.415382, 47.508484>,  <33.011616, 41.751247, 47.445648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219574, 41.415382, 47.508484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224725, -0.042985, -0.973474,
		0.824141, 0.541406, 0.166345,
		0.519894, -0.839662, 0.157093,
		33.375542, 41.163483, 47.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631268, 41.836720, 47.057358>,  <33.011616, 41.751247, 47.445648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631268, 41.836720, 47.057358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.612202, 41.438431, 47.089008>,  <33.600761, 41.199455, 47.107998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.612202, 41.438431, 47.089008>,  <33.631268, 41.836720, 47.057358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612202, 41.438431, 47.089008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249470, -0.088571, -0.964323,
		0.967209, -0.026227, 0.252626,
		-0.047667, -0.995724, 0.079124,
		33.597900, 41.139713, 47.112747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189739, 41.545090, 46.719852>,  <33.631268, 41.836720, 47.057358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189739, 41.545090, 46.719852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962612, 41.216457, 46.740158>,  <33.826336, 41.019276, 46.752342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962612, 41.216457, 46.740158>,  <34.189739, 41.545090, 46.719852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962612, 41.216457, 46.740158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224704, -0.214038, -0.950629,
		0.791889, -0.528379, 0.306149,
		-0.567820, -0.821586, 0.050765,
		33.792267, 40.969982, 46.755386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.114292, 40.399479, 34.416599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749180, 40.361652, 34.575542>,  <41.530113, 40.338955, 34.670910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749180, 40.361652, 34.575542>,  <42.114292, 40.399479, 34.416599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749180, 40.361652, 34.575542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189969, -0.959498, 0.208025,
		0.361592, 0.265366, 0.893774,
		-0.912778, -0.094569, 0.397358,
		41.475346, 40.333282, 34.694752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186954, 40.064426, 35.058140>,  <42.114292, 40.399479, 34.416599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186954, 40.064426, 35.058140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.800285, 40.005787, 34.974190>,  <41.568283, 39.970604, 34.923820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.800285, 40.005787, 34.974190>,  <42.186954, 40.064426, 35.058140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800285, 40.005787, 34.974190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067898, -0.937261, 0.341953,
		-0.246838, 0.316307, 0.915980,
		-0.966675, -0.146600, -0.209875,
		41.510284, 39.961807, 34.911228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842342, 39.890816, 35.626881>,  <42.186954, 40.064426, 35.058140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842342, 39.890816, 35.626881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.589592, 39.740547, 35.355705>,  <41.437943, 39.650387, 35.193001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.589592, 39.740547, 35.355705>,  <41.842342, 39.890816, 35.626881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589592, 39.740547, 35.355705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095547, -0.905765, 0.412868,
		-0.769157, 0.196106, 0.608227,
		-0.631877, -0.375675, -0.677938,
		41.400028, 39.627846, 35.152325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331406, 39.452950, 35.967747>,  <41.842342, 39.890816, 35.626881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331406, 39.452950, 35.967747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.305798, 39.319408, 35.591568>,  <41.290432, 39.239285, 35.365860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.305798, 39.319408, 35.591568>,  <41.331406, 39.452950, 35.967747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305798, 39.319408, 35.591568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122162, -0.932674, 0.339404,
		-0.990444, 0.136615, 0.018923,
		-0.064017, -0.333848, -0.940450,
		41.286594, 39.219254, 35.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673729, 39.119026, 35.879532>,  <41.331406, 39.452950, 35.967747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673729, 39.119026, 35.879532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936134, 38.969070, 35.617508>,  <41.093578, 38.879097, 35.460293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936134, 38.969070, 35.617508>,  <40.673729, 39.119026, 35.879532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936134, 38.969070, 35.617508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197478, -0.922939, 0.330433,
		-0.728459, -0.087407, -0.679491,
		0.656011, -0.374891, -0.655062,
		41.132938, 38.856602, 35.420990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411480, 38.383404, 35.780453>,  <40.673729, 39.119026, 35.879532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411480, 38.383404, 35.780453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777359, 38.405384, 35.620296>,  <40.996887, 38.418571, 35.524204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777359, 38.405384, 35.620296>,  <40.411480, 38.383404, 35.780453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777359, 38.405384, 35.620296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124428, -0.980879, 0.149646,
		-0.384510, -0.186700, -0.904044,
		0.914697, 0.054948, -0.400388,
		41.051769, 38.421867, 35.500179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363155, 37.730312, 35.344742>,  <40.411480, 38.383404, 35.780453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363155, 37.730312, 35.344742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736443, 37.852543, 35.420345>,  <40.960415, 37.925880, 35.465706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736443, 37.852543, 35.420345>,  <40.363155, 37.730312, 35.344742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736443, 37.852543, 35.420345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242519, -0.923834, 0.296168,
		0.265112, -0.230552, -0.936249,
		0.933220, 0.305576, 0.189006,
		41.016407, 37.944214, 35.477047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844578, 37.161190, 35.001968>,  <40.363155, 37.730312, 35.344742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844578, 37.161190, 35.001968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.056831, 37.370876, 35.268391>,  <41.184185, 37.496689, 35.428242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.056831, 37.370876, 35.268391>,  <40.844578, 37.161190, 35.001968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056831, 37.370876, 35.268391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302488, -0.851186, 0.428933,
		0.791787, -0.026134, -0.610237,
		0.530635, 0.524213, 0.666053,
		41.216022, 37.528141, 35.468208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604607, 36.812180, 34.979366>,  <40.844578, 37.161190, 35.001968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604607, 36.812180, 34.979366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514988, 37.005226, 35.318043>,  <41.461216, 37.121056, 35.521248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514988, 37.005226, 35.318043>,  <41.604607, 36.812180, 34.979366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514988, 37.005226, 35.318043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272405, -0.803136, 0.529875,
		0.935733, 0.349361, 0.048475,
		-0.224050, 0.482617, 0.846689,
		41.447773, 37.150013, 35.572048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185291, 36.665089, 35.359936>,  <41.604607, 36.812180, 34.979366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185291, 36.665089, 35.359936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934551, 36.809433, 35.636150>,  <41.784107, 36.896042, 35.801880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934551, 36.809433, 35.636150>,  <42.185291, 36.665089, 35.359936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934551, 36.809433, 35.636150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313570, -0.694488, 0.647580,
		0.713257, 0.622466, 0.322183,
		-0.626848, 0.360864, 0.690535,
		41.746498, 36.917690, 35.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590935, 36.701481, 35.976048>,  <42.185291, 36.665089, 35.359936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590935, 36.701481, 35.976048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199978, 36.674973, 36.056370>,  <41.965405, 36.659069, 36.104561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199978, 36.674973, 36.056370>,  <42.590935, 36.701481, 35.976048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199978, 36.674973, 36.056370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186212, -0.719706, 0.668841,
		0.100193, 0.691109, 0.715772,
		-0.977388, -0.066272, 0.200802,
		41.906761, 36.655090, 36.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588402, 36.403481, 36.613937>,  <42.590935, 36.701481, 35.976048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588402, 36.403481, 36.613937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.216526, 36.351791, 36.475960>,  <41.993401, 36.320778, 36.393173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.216526, 36.351791, 36.475960>,  <42.588402, 36.403481, 36.613937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216526, 36.351791, 36.475960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060278, -0.870457, 0.488540,
		-0.363389, 0.474981, 0.801462,
		-0.929685, -0.129220, -0.344945,
		41.937622, 36.313026, 36.372475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250546, 36.279888, 37.215092>,  <42.588402, 36.403481, 36.613937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250546, 36.279888, 37.215092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003616, 36.141331, 36.932556>,  <41.855457, 36.058197, 36.763035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003616, 36.141331, 36.932556>,  <42.250546, 36.279888, 37.215092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003616, 36.141331, 36.932556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024522, -0.905882, 0.422819,
		-0.786327, 0.243695, 0.567717,
		-0.617324, -0.346395, -0.706344,
		41.818420, 36.037411, 36.720654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504040, 35.966930, 37.563702>,  <42.250546, 36.279888, 37.215092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504040, 35.966930, 37.563702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602505, 35.837276, 37.198334>,  <41.661583, 35.759483, 36.979111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602505, 35.837276, 37.198334>,  <41.504040, 35.966930, 37.563702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602505, 35.837276, 37.198334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206546, -0.938316, 0.277311,
		-0.946965, 0.120400, -0.297928,
		0.246162, -0.324140, -0.913421,
		41.676353, 35.740036, 36.924309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074715, 35.331104, 37.526478>,  <41.504040, 35.966930, 37.563702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074715, 35.331104, 37.526478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.365448, 35.315544, 37.252193>,  <41.539886, 35.306210, 37.087624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.365448, 35.315544, 37.252193>,  <41.074715, 35.331104, 37.526478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365448, 35.315544, 37.252193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174110, -0.955347, 0.238742,
		-0.664380, -0.292915, -0.687605,
		0.726832, -0.038896, -0.685713,
		41.583496, 35.303875, 37.046478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971584, 34.659424, 37.329380>,  <41.074715, 35.331104, 37.526478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971584, 34.659424, 37.329380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321968, 34.767681, 37.169651>,  <41.532196, 34.832634, 37.073814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321968, 34.767681, 37.169651>,  <40.971584, 34.659424, 37.329380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321968, 34.767681, 37.169651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349131, -0.926910, 0.137642,
		-0.332882, -0.259983, -0.906421,
		0.875955, 0.270641, -0.399320,
		41.584755, 34.848873, 37.049854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192913, 34.090828, 36.812462>,  <40.971584, 34.659424, 37.329380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192913, 34.090828, 36.812462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532635, 34.290470, 36.881241>,  <41.736469, 34.410255, 36.922508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532635, 34.290470, 36.881241>,  <41.192913, 34.090828, 36.812462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532635, 34.290470, 36.881241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401841, -0.822478, 0.402559,
		0.342345, -0.272801, -0.899099,
		0.849308, 0.499109, 0.171948,
		41.787426, 34.440205, 36.932827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878105, 33.759506, 36.453724>,  <41.192913, 34.090828, 36.812462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878105, 33.759506, 36.453724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024437, 33.964687, 36.764351>,  <42.112236, 34.087795, 36.950726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024437, 33.964687, 36.764351>,  <41.878105, 33.759506, 36.453724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024437, 33.964687, 36.764351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444949, -0.829263, 0.338147,
		0.817427, 0.221827, -0.531606,
		0.365831, 0.512948, 0.776564,
		42.134186, 34.118572, 36.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520100, 33.552773, 36.511417>,  <41.878105, 33.759506, 36.453724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520100, 33.552773, 36.511417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452805, 33.706944, 36.874325>,  <42.412426, 33.799446, 37.092072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452805, 33.706944, 36.874325>,  <42.520100, 33.552773, 36.511417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452805, 33.706944, 36.874325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475073, -0.774747, 0.417221,
		0.863714, 0.501214, -0.052761,
		-0.168240, 0.385425, 0.907272,
		42.402332, 33.822571, 37.146507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188789, 33.489819, 36.919498>,  <42.520100, 33.552773, 36.511417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188789, 33.489819, 36.919498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890423, 33.526478, 37.183380>,  <42.711403, 33.548473, 37.341709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890423, 33.526478, 37.183380>,  <43.188789, 33.489819, 36.919498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890423, 33.526478, 37.183380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436744, -0.680514, 0.588350,
		0.502859, 0.726982, 0.467579,
		-0.745914, 0.091645, 0.659708,
		42.666649, 33.553970, 37.381294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458843, 33.456718, 37.555153>,  <43.188789, 33.489819, 36.919498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458843, 33.456718, 37.555153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084637, 33.335365, 37.627556>,  <42.860111, 33.262554, 37.670998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084637, 33.335365, 37.627556>,  <43.458843, 33.456718, 37.555153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084637, 33.335365, 37.627556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347787, -0.700925, 0.622695,
		-0.062044, 0.645494, 0.761241,
		-0.935519, -0.303384, 0.181006,
		42.803982, 33.244350, 37.681858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786098, 34.008194, 37.044041>,  <43.458843, 33.456718, 37.555153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786098, 34.008194, 37.044041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066467, 34.020397, 36.759007>,  <44.234688, 34.027718, 36.587986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066467, 34.020397, 36.759007>,  <43.786098, 34.008194, 37.044041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066467, 34.020397, 36.759007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019213, 0.997914, 0.061625,
		0.712977, -0.056886, 0.698876,
		0.700924, 0.030510, -0.712583,
		44.276745, 34.029549, 36.545231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438362, 34.240490, 37.284084>,  <43.786098, 34.008194, 37.044041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438362, 34.240490, 37.284084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383839, 34.345917, 36.902100>,  <44.351124, 34.409172, 36.672909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383839, 34.345917, 36.902100>,  <44.438362, 34.240490, 37.284084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383839, 34.345917, 36.902100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295650, 0.930854, 0.214712,
		0.945521, -0.253068, -0.204807,
		-0.136309, 0.263566, -0.954962,
		44.342945, 34.424988, 36.615612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096458, 34.521534, 36.991882>,  <44.438362, 34.240490, 37.284084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096458, 34.521534, 36.991882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811726, 34.659538, 36.747173>,  <44.640888, 34.742340, 36.600346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811726, 34.659538, 36.747173>,  <45.096458, 34.521534, 36.991882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811726, 34.659538, 36.747173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386703, 0.919643, 0.068682,
		0.586312, -0.187686, -0.788043,
		-0.711828, 0.345008, -0.611777,
		44.598179, 34.763042, 36.563641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475784, 34.999454, 36.515419>,  <45.096458, 34.521534, 36.991882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475784, 34.999454, 36.515419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089161, 35.094566, 36.476978>,  <44.857189, 35.151634, 36.453915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089161, 35.094566, 36.476978>,  <45.475784, 34.999454, 36.515419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089161, 35.094566, 36.476978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246109, 0.965351, -0.086763,
		0.072140, -0.107512, -0.991583,
		-0.966554, 0.237778, -0.096101,
		44.799194, 35.165901, 36.448147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405750, 35.566669, 35.930202>,  <45.475784, 34.999454, 36.515419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405750, 35.566669, 35.930202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057087, 35.607113, 36.122032>,  <44.847889, 35.631378, 36.237129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057087, 35.607113, 36.122032>,  <45.405750, 35.566669, 35.930202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057087, 35.607113, 36.122032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036065, 0.989070, -0.142964,
		-0.488790, -0.107319, -0.865775,
		-0.871655, 0.101104, 0.479578,
		44.795589, 35.637444, 36.265907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161861, 36.143051, 35.576157>,  <45.405750, 35.566669, 35.930202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161861, 36.143051, 35.576157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.925888, 36.115788, 35.897987>,  <44.784306, 36.099430, 36.091084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.925888, 36.115788, 35.897987>,  <45.161861, 36.143051, 35.576157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925888, 36.115788, 35.897987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010621, 0.997000, 0.076676,
		-0.807385, 0.036688, -0.588884,
		-0.589930, -0.068162, 0.804573,
		44.748909, 36.095341, 36.139359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587246, 36.635185, 35.468651>,  <45.161861, 36.143051, 35.576157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587246, 36.635185, 35.468651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624195, 36.571350, 35.861794>,  <44.646366, 36.533051, 36.097679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624195, 36.571350, 35.861794>,  <44.587246, 36.635185, 35.468651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624195, 36.571350, 35.861794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104372, 0.983187, 0.149833,
		-0.990239, 0.088742, 0.107477,
		0.092374, -0.159588, 0.982852,
		44.651909, 36.523476, 36.156651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053921, 37.025669, 35.782490>,  <44.587246, 36.635185, 35.468651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053921, 37.025669, 35.782490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317047, 36.960190, 36.076561>,  <44.474922, 36.920902, 36.253002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317047, 36.960190, 36.076561>,  <44.053921, 37.025669, 35.782490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317047, 36.960190, 36.076561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124620, 0.938987, 0.320583,
		-0.742797, -0.302502, 0.597281,
		0.657816, -0.163694, 0.735174,
		44.514393, 36.911083, 36.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720142, 37.212860, 36.325954>,  <44.053921, 37.025669, 35.782490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720142, 37.212860, 36.325954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.103672, 37.236324, 36.437099>,  <44.333790, 37.250404, 36.503788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.103672, 37.236324, 36.437099>,  <43.720142, 37.212860, 36.325954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103672, 37.236324, 36.437099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174723, 0.893192, 0.414343,
		-0.223879, -0.445833, 0.866667,
		0.958827, 0.058664, 0.277864,
		44.391319, 37.253925, 36.520458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723621, 37.511604, 36.995060>,  <43.720142, 37.212860, 36.325954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723621, 37.511604, 36.995060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100212, 37.563938, 36.870804>,  <44.326168, 37.595337, 36.796249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100212, 37.563938, 36.870804>,  <43.723621, 37.511604, 36.995060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100212, 37.563938, 36.870804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005041, 0.916028, 0.401082,
		0.337034, -0.379177, 0.861762,
		0.941479, 0.130834, -0.310644,
		44.382656, 37.603188, 36.777611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146698, 37.740444, 37.596470>,  <43.723621, 37.511604, 36.995060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146698, 37.740444, 37.596470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352669, 37.851952, 37.272213>,  <44.476250, 37.918858, 37.077660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352669, 37.851952, 37.272213>,  <44.146698, 37.740444, 37.596470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352669, 37.851952, 37.272213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063818, 0.955489, 0.288041,
		0.854856, -0.096587, 0.509797,
		0.514926, 0.278768, -0.810641,
		44.507145, 37.935581, 37.029022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628304, 38.280815, 37.815845>,  <44.146698, 37.740444, 37.596470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628304, 38.280815, 37.815845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604382, 38.295750, 37.416840>,  <44.590027, 38.304710, 37.177437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604382, 38.295750, 37.416840>,  <44.628304, 38.280815, 37.815845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604382, 38.295750, 37.416840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031394, 0.998876, 0.035503,
		0.997716, -0.029193, -0.060911,
		-0.059806, 0.037334, -0.997512,
		44.586441, 38.306950, 37.117584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068245, 38.830978, 37.611031>,  <44.628304, 38.280815, 37.815845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068245, 38.830978, 37.611031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848373, 38.785698, 37.279961>,  <44.716450, 38.758530, 37.081318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848373, 38.785698, 37.279961>,  <45.068245, 38.830978, 37.611031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848373, 38.785698, 37.279961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189482, 0.981848, -0.008453,
		0.813603, 0.152182, -0.561151,
		-0.549679, -0.113206, -0.827670,
		44.683472, 38.751736, 37.031658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351158, 39.285011, 37.089973>,  <45.068245, 38.830978, 37.611031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351158, 39.285011, 37.089973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970551, 39.221470, 36.984619>,  <44.742184, 39.183346, 36.921406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970551, 39.221470, 36.984619>,  <45.351158, 39.285011, 37.089973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970551, 39.221470, 36.984619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143349, 0.986657, -0.077197,
		0.272134, -0.035698, -0.961597,
		-0.951522, -0.158851, -0.263386,
		44.685093, 39.173813, 36.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230591, 39.615509, 36.517639>,  <45.351158, 39.285011, 37.089973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230591, 39.615509, 36.517639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873665, 39.585964, 36.695770>,  <44.659508, 39.568237, 36.802650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873665, 39.585964, 36.695770>,  <45.230591, 39.615509, 36.517639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873665, 39.585964, 36.695770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119141, 0.990078, -0.074509,
		-0.435407, -0.119542, -0.892262,
		-0.892315, -0.073863, 0.445329,
		44.605968, 39.563805, 36.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845516, 40.172623, 36.194019>,  <45.230591, 39.615509, 36.517639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845516, 40.172623, 36.194019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619923, 40.067142, 36.507038>,  <44.484566, 40.003853, 36.694851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619923, 40.067142, 36.507038>,  <44.845516, 40.172623, 36.194019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619923, 40.067142, 36.507038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463402, 0.885433, -0.035602,
		-0.683508, -0.382714, -0.621569,
		-0.563982, -0.263702, 0.782550,
		44.450729, 39.988033, 36.741802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259232, 40.528893, 36.068676>,  <44.845516, 40.172623, 36.194019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259232, 40.528893, 36.068676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197479, 40.435318, 36.452644>,  <44.160427, 40.379173, 36.683025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197479, 40.435318, 36.452644>,  <44.259232, 40.528893, 36.068676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197479, 40.435318, 36.452644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329147, 0.928243, 0.173284,
		-0.931574, -0.289203, -0.220300,
		-0.154378, -0.233938, 0.959917,
		44.151165, 40.365135, 36.740620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580109, 40.644604, 36.262894>,  <44.259232, 40.528893, 36.068676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580109, 40.644604, 36.262894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778702, 40.630085, 36.609810>,  <43.897858, 40.621372, 36.817959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778702, 40.630085, 36.609810>,  <43.580109, 40.644604, 36.262894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778702, 40.630085, 36.609810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396015, 0.879622, 0.263510,
		-0.772451, -0.474287, 0.422340,
		0.496478, -0.036296, 0.867290,
		43.927647, 40.619198, 36.869995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181530, 40.800476, 36.807377>,  <43.580109, 40.644604, 36.262894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181530, 40.800476, 36.807377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530231, 40.907860, 36.971313>,  <43.739452, 40.972290, 37.069675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530231, 40.907860, 36.971313>,  <43.181530, 40.800476, 36.807377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530231, 40.907860, 36.971313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355515, 0.922206, 0.152137,
		-0.337115, -0.278331, 0.899381,
		0.871758, 0.268456, 0.409840,
		43.791759, 40.988396, 37.094265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010181, 41.123653, 37.467613>,  <43.181530, 40.800476, 36.807377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010181, 41.123653, 37.467613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377293, 41.247784, 37.368511>,  <43.597561, 41.322262, 37.309052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377293, 41.247784, 37.368511>,  <43.010181, 41.123653, 37.467613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377293, 41.247784, 37.368511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314228, 0.949026, 0.024689,
		0.242785, 0.055192, 0.968509,
		0.917778, 0.310327, -0.247752,
		43.652626, 41.340881, 37.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236488, 41.618000, 38.004421>,  <43.010181, 41.123653, 37.467613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236488, 41.618000, 38.004421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470394, 41.676613, 37.685276>,  <43.610737, 41.711781, 37.493790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470394, 41.676613, 37.685276>,  <43.236488, 41.618000, 38.004421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470394, 41.676613, 37.685276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235126, 0.971945, 0.006175,
		0.776383, 0.183988, 0.602809,
		0.584761, 0.146530, -0.797862,
		43.645821, 41.720573, 37.445919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.783833, 38.113579, 43.658070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391617, 38.182472, 43.620373>,  <37.156288, 38.223808, 43.597755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391617, 38.182472, 43.620373>,  <37.783833, 38.113579, 43.658070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391617, 38.182472, 43.620373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039850, -0.644635, -0.763451,
		-0.192244, -0.744837, 0.638952,
		-0.980538, 0.172232, -0.094246,
		37.097454, 38.234142, 43.592098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455185, 37.420471, 43.677799>,  <37.783833, 38.113579, 43.658070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455185, 37.420471, 43.677799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222069, 37.690353, 43.496635>,  <37.082199, 37.852280, 43.387936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222069, 37.690353, 43.496635>,  <37.455185, 37.420471, 43.677799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222069, 37.690353, 43.496635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141128, -0.632916, -0.761249,
		-0.800273, -0.379731, 0.464077,
		-0.582792, 0.674701, -0.452914,
		37.047230, 37.892765, 43.360760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843170, 37.045601, 43.341118>,  <37.455185, 37.420471, 43.677799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843170, 37.045601, 43.341118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848148, 37.411694, 43.180027>,  <36.851135, 37.631351, 43.083374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848148, 37.411694, 43.180027>,  <36.843170, 37.045601, 43.341118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848148, 37.411694, 43.180027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338230, -0.375164, -0.863048,
		-0.940981, 0.146957, 0.304890,
		0.012447, 0.915235, -0.402728,
		36.851883, 37.686264, 43.059208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263866, 37.065907, 42.895920>,  <36.843170, 37.045601, 43.341118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263866, 37.065907, 42.895920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486237, 37.359055, 42.739025>,  <36.619659, 37.534943, 42.644890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486237, 37.359055, 42.739025>,  <36.263866, 37.065907, 42.895920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486237, 37.359055, 42.739025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261039, -0.294080, -0.919443,
		-0.789178, 0.613535, 0.027819,
		0.555929, 0.732866, -0.392238,
		36.653015, 37.578915, 42.621353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966248, 37.269779, 42.262852>,  <36.263866, 37.065907, 42.895920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966248, 37.269779, 42.262852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328697, 37.433159, 42.218838>,  <36.546165, 37.531189, 42.192429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328697, 37.433159, 42.218838>,  <35.966248, 37.269779, 42.262852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328697, 37.433159, 42.218838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054313, -0.145638, -0.987846,
		-0.419514, 0.901086, -0.109782,
		0.906122, 0.408453, -0.110038,
		36.600533, 37.555695, 42.185825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856220, 37.791367, 41.723202>,  <35.966248, 37.269779, 42.262852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856220, 37.791367, 41.723202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248787, 37.721745, 41.755531>,  <36.484325, 37.679970, 41.774929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248787, 37.721745, 41.755531>,  <35.856220, 37.791367, 41.723202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248787, 37.721745, 41.755531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061056, -0.116074, -0.991362,
		0.181935, 0.977871, -0.103290,
		0.981413, -0.174057, 0.080823,
		36.543209, 37.669529, 41.779778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181099, 38.226910, 41.273010>,  <35.856220, 37.791367, 41.723202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181099, 38.226910, 41.273010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444496, 37.935722, 41.349377>,  <36.602535, 37.761009, 41.395195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444496, 37.935722, 41.349377>,  <36.181099, 38.226910, 41.273010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444496, 37.935722, 41.349377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085908, -0.179310, -0.980035,
		0.747668, 0.661746, -0.055536,
		0.658492, -0.727970, 0.190914,
		36.642044, 37.717331, 41.406651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768116, 38.392612, 40.850948>,  <36.181099, 38.226910, 41.273010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768116, 38.392612, 40.850948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792015, 38.004440, 40.944500>,  <36.806355, 37.771538, 41.000629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792015, 38.004440, 40.944500>,  <36.768116, 38.392612, 40.850948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792015, 38.004440, 40.944500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390087, -0.192965, -0.900331,
		0.918837, 0.145028, 0.367022,
		0.059751, -0.970428, 0.233877,
		36.809940, 37.713310, 41.014664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476044, 38.101067, 40.611984>,  <36.768116, 38.392612, 40.850948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476044, 38.101067, 40.611984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231926, 37.786716, 40.651852>,  <37.085457, 37.598106, 40.675774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231926, 37.786716, 40.651852>,  <37.476044, 38.101067, 40.611984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231926, 37.786716, 40.651852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215272, -0.285610, -0.933855,
		0.762363, -0.548472, 0.343484,
		-0.610295, -0.785879, 0.099668,
		37.048836, 37.550953, 40.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884388, 37.632431, 40.266617>,  <37.476044, 38.101067, 40.611984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884388, 37.632431, 40.266617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520805, 37.466671, 40.284821>,  <37.302654, 37.367214, 40.295742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520805, 37.466671, 40.284821>,  <37.884388, 37.632431, 40.266617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520805, 37.466671, 40.284821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175656, -0.479708, -0.859666,
		0.378077, -0.773405, 0.508825,
		-0.908957, -0.414398, 0.045513,
		37.248119, 37.342350, 40.298473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960770, 36.866543, 40.134857>,  <37.884388, 37.632431, 40.266617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960770, 36.866543, 40.134857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581409, 36.961834, 40.051155>,  <37.353794, 37.019009, 40.000935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581409, 36.961834, 40.051155>,  <37.960770, 36.866543, 40.134857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581409, 36.961834, 40.051155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088674, -0.434340, -0.896374,
		-0.304428, -0.868675, 0.390803,
		-0.948399, 0.238227, -0.209254,
		37.296890, 37.033302, 39.988380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735844, 36.277157, 39.720627>,  <37.960770, 36.866543, 40.134857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735844, 36.277157, 39.720627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478004, 36.573921, 39.646805>,  <37.323303, 36.751980, 39.602512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478004, 36.573921, 39.646805>,  <37.735844, 36.277157, 39.720627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478004, 36.573921, 39.646805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045016, -0.277817, -0.959579,
		-0.763199, -0.610231, 0.212477,
		-0.644594, 0.741914, -0.184559,
		37.284626, 36.796494, 39.591438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397556, 36.061543, 39.065380>,  <37.735844, 36.277157, 39.720627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397556, 36.061543, 39.065380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325085, 36.454330, 39.086941>,  <37.281601, 36.690002, 39.099876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325085, 36.454330, 39.086941>,  <37.397556, 36.061543, 39.065380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325085, 36.454330, 39.086941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233960, 0.096269, -0.967468,
		-0.955215, -0.162678, -0.247184,
		-0.181183, 0.981972, 0.053898,
		37.270729, 36.748920, 39.103111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071594, 35.815361, 39.234329>,  <37.397556, 36.061543, 39.065380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071594, 35.815361, 39.234329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324276, 36.050373, 39.436623>,  <38.475883, 36.191380, 39.557999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324276, 36.050373, 39.436623>,  <38.071594, 35.815361, 39.234329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324276, 36.050373, 39.436623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265992, 0.777047, -0.570479,
		-0.728148, 0.225853, 0.647140,
		0.631703, 0.587527, 0.505730,
		38.513786, 36.226631, 39.588341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324982, 35.306450, 39.775158>,  <38.071594, 35.815361, 39.234329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324982, 35.306450, 39.775158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492420, 34.985374, 39.945080>,  <38.592884, 34.792728, 40.047035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492420, 34.985374, 39.945080>,  <38.324982, 35.306450, 39.775158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492420, 34.985374, 39.945080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419858, 0.243727, 0.874252,
		-0.805293, -0.544317, -0.234994,
		0.418596, -0.802693, 0.424808,
		38.618000, 34.744568, 40.072521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915726, 35.123951, 40.223263>,  <38.324982, 35.306450, 39.775158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915726, 35.123951, 40.223263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221909, 34.917179, 40.376553>,  <38.405617, 34.793118, 40.468525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221909, 34.917179, 40.376553>,  <37.915726, 35.123951, 40.223263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221909, 34.917179, 40.376553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462284, -0.027479, 0.886306,
		-0.447626, -0.855588, -0.260002,
		0.765457, -0.516928, 0.383224,
		38.451546, 34.762100, 40.491520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781536, 34.318043, 40.415855>,  <37.915726, 35.123951, 40.223263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781536, 34.318043, 40.415855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071850, 34.469193, 40.645794>,  <38.246037, 34.559883, 40.783756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071850, 34.469193, 40.645794>,  <37.781536, 34.318043, 40.415855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071850, 34.469193, 40.645794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611814, -0.027489, 0.790524,
		0.314519, -0.925449, 0.211236,
		0.725783, 0.377872, 0.574849,
		38.289585, 34.582554, 40.818249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653610, 34.006344, 41.083153>,  <37.781536, 34.318043, 40.415855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653610, 34.006344, 41.083153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935276, 34.279305, 41.161617>,  <38.104275, 34.443081, 41.208694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935276, 34.279305, 41.161617>,  <37.653610, 34.006344, 41.083153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935276, 34.279305, 41.161617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358348, 0.103050, 0.927883,
		0.612977, -0.723675, 0.317102,
		0.704163, 0.682404, 0.196161,
		38.146526, 34.484024, 41.220467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131203, 33.780445, 41.645393>,  <37.653610, 34.006344, 41.083153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131203, 33.780445, 41.645393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146980, 34.180119, 41.641895>,  <38.156445, 34.419922, 41.639797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146980, 34.180119, 41.641895>,  <38.131203, 33.780445, 41.645393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146980, 34.180119, 41.641895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088969, 0.012228, 0.995959,
		0.995253, -0.038503, 0.089379,
		0.039440, 0.999184, -0.008745,
		38.158813, 34.479874, 41.639271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531414, 33.851887, 42.243374>,  <38.131203, 33.780445, 41.645393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531414, 33.851887, 42.243374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389244, 34.216808, 42.162006>,  <38.303944, 34.435760, 42.113186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389244, 34.216808, 42.162006>,  <38.531414, 33.851887, 42.243374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389244, 34.216808, 42.162006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073430, 0.244214, 0.966937,
		0.931815, 0.328738, -0.153790,
		-0.355426, 0.912300, -0.203423,
		38.282616, 34.490498, 42.100979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027912, 34.444820, 42.470680>,  <38.531414, 33.851887, 42.243374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027912, 34.444820, 42.470680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643356, 34.553864, 42.485752>,  <38.412624, 34.619289, 42.494793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643356, 34.553864, 42.485752>,  <39.027912, 34.444820, 42.470680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643356, 34.553864, 42.485752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, 0.034758, 0.998195,
		0.270810, 0.961496, -0.046768,
		-0.961386, 0.272612, 0.037678,
		38.354942, 34.635647, 42.497055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990429, 34.800888, 43.060749>,  <39.027912, 34.444820, 42.470680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990429, 34.800888, 43.060749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602219, 34.739140, 42.986721>,  <38.369293, 34.702091, 42.942303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602219, 34.739140, 42.986721>,  <38.990429, 34.800888, 43.060749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602219, 34.739140, 42.986721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198512, 0.076633, 0.977098,
		-0.136657, 0.985036, -0.105020,
		-0.970525, -0.154375, -0.185069,
		38.311062, 34.692825, 42.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572147, 35.418819, 43.364967>,  <38.990429, 34.800888, 43.060749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572147, 35.418819, 43.364967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328278, 35.104397, 43.324154>,  <38.181957, 34.915745, 43.299667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328278, 35.104397, 43.324154>,  <38.572147, 35.418819, 43.364967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328278, 35.104397, 43.324154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311064, 0.118874, 0.942925,
		-0.729064, 0.606616, -0.316989,
		-0.609676, -0.786057, -0.102029,
		38.145374, 34.868580, 43.293545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953178, 35.670414, 43.751160>,  <38.572147, 35.418819, 43.364967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953178, 35.670414, 43.751160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904335, 35.273426, 43.755142>,  <37.875031, 35.035233, 43.757530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904335, 35.273426, 43.755142>,  <37.953178, 35.670414, 43.751160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904335, 35.273426, 43.755142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239012, 0.039137, 0.970228,
		-0.963308, 0.116094, -0.241990,
		-0.122109, -0.992467, 0.009953,
		37.867702, 34.975685, 43.758129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365063, 35.645420, 44.116402>,  <37.953178, 35.670414, 43.751160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365063, 35.645420, 44.116402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544479, 35.287933, 44.119923>,  <37.652130, 35.073441, 44.122036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544479, 35.287933, 44.119923>,  <37.365063, 35.645420, 44.116402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544479, 35.287933, 44.119923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231184, -0.106497, 0.967064,
		-0.863347, -0.435801, -0.254381,
		0.448539, -0.893720, 0.008806,
		37.679043, 35.019817, 44.122566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844532, 35.166725, 44.306412>,  <37.365063, 35.645420, 44.116402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844532, 35.166725, 44.306412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191547, 34.994640, 44.406246>,  <37.399757, 34.891388, 44.466148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191547, 34.994640, 44.406246>,  <36.844532, 35.166725, 44.306412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191547, 34.994640, 44.406246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363445, -0.205771, 0.908607,
		-0.339538, -0.878962, -0.334873,
		0.867538, -0.430215, 0.249587,
		37.451809, 34.865578, 44.481121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647694, 34.540195, 44.699242>,  <36.844532, 35.166725, 44.306412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647694, 34.540195, 44.699242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029182, 34.619537, 44.789639>,  <37.258076, 34.667141, 44.843876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029182, 34.619537, 44.789639>,  <36.647694, 34.540195, 44.699242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029182, 34.619537, 44.789639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208925, -0.103378, 0.972452,
		0.216251, -0.974664, -0.057153,
		0.953722, 0.198353, 0.225988,
		37.315300, 34.679043, 44.857433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701027, 34.240250, 45.293671>,  <36.647694, 34.540195, 44.699242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701027, 34.240250, 45.293671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012024, 34.490135, 45.322609>,  <37.198624, 34.640068, 45.339973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012024, 34.490135, 45.322609>,  <36.701027, 34.240250, 45.293671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012024, 34.490135, 45.322609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081503, -0.013971, 0.996575,
		0.623588, -0.780726, 0.040054,
		0.777493, 0.624717, 0.072344,
		37.245274, 34.677551, 45.344311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789406, 33.478249, 45.626541>,  <36.701027, 34.240250, 45.293671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789406, 33.478249, 45.626541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413528, 33.346180, 45.590866>,  <36.188000, 33.266937, 45.569462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413528, 33.346180, 45.590866>,  <36.789406, 33.478249, 45.626541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413528, 33.346180, 45.590866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208097, -0.345030, -0.915232,
		0.271411, -0.878601, 0.392932,
		-0.939697, -0.330172, -0.089189,
		36.131618, 33.247128, 45.564110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793236, 32.807751, 45.252357>,  <36.789406, 33.478249, 45.626541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793236, 32.807751, 45.252357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419197, 32.934338, 45.188553>,  <36.194775, 33.010288, 45.150269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419197, 32.934338, 45.188553>,  <36.793236, 32.807751, 45.252357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419197, 32.934338, 45.188553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139791, -0.084232, -0.986592,
		-0.325661, -0.944856, 0.034525,
		-0.935095, 0.316468, -0.159513,
		36.138668, 33.029278, 45.140697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614635, 32.470329, 44.617897>,  <36.793236, 32.807751, 45.252357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614635, 32.470329, 44.617897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312256, 32.729710, 44.653778>,  <36.130829, 32.885338, 44.675308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312256, 32.729710, 44.653778>,  <36.614635, 32.470329, 44.617897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312256, 32.729710, 44.653778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138163, -0.024095, -0.990116,
		-0.639879, -0.760876, 0.107807,
		-0.755954, 0.648450, 0.089707,
		36.085468, 32.924244, 44.680691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112152, 32.190063, 44.181938>,  <36.614635, 32.470329, 44.617897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112152, 32.190063, 44.181938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015465, 32.577824, 44.199074>,  <35.957451, 32.810478, 44.209354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015465, 32.577824, 44.199074>,  <36.112152, 32.190063, 44.181938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015465, 32.577824, 44.199074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246816, -0.018726, -0.968881,
		-0.938431, -0.244774, 0.243789,
		-0.241722, 0.969399, 0.042841,
		35.942947, 32.868645, 44.211926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509747, 32.276833, 43.999149>,  <36.112152, 32.190063, 44.181938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509747, 32.276833, 43.999149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631001, 32.651459, 43.928776>,  <35.703754, 32.876236, 43.886551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631001, 32.651459, 43.928776>,  <35.509747, 32.276833, 43.999149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631001, 32.651459, 43.928776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266231, -0.094035, -0.959311,
		-0.915002, 0.337641, 0.220838,
		0.303137, 0.936566, -0.175933,
		35.721943, 32.932430, 43.875996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933159, 32.655102, 43.778019>,  <35.509747, 32.276833, 43.999149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933159, 32.655102, 43.778019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237530, 32.881699, 43.651482>,  <35.420151, 33.017658, 43.575558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237530, 32.881699, 43.651482>,  <34.933159, 32.655102, 43.778019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237530, 32.881699, 43.651482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357655, -0.040580, -0.932972,
		-0.541361, 0.823065, 0.171731,
		0.760928, 0.566495, -0.316342,
		35.465809, 33.051647, 43.556580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622044, 33.192043, 43.390785>,  <34.933159, 32.655102, 43.778019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622044, 33.192043, 43.390785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997768, 33.168831, 43.255535>,  <35.223202, 33.154903, 43.174385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997768, 33.168831, 43.255535>,  <34.622044, 33.192043, 43.390785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997768, 33.168831, 43.255535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341955, -0.078986, -0.936391,
		0.027635, 0.995185, -0.094038,
		0.939310, -0.058034, -0.338125,
		35.279560, 33.151421, 43.154099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684448, 33.692123, 42.855019>,  <34.622044, 33.192043, 43.390785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684448, 33.692123, 42.855019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955044, 33.400398, 42.814098>,  <35.117401, 33.225365, 42.789547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955044, 33.400398, 42.814098>,  <34.684448, 33.692123, 42.855019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955044, 33.400398, 42.814098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192972, -0.041485, -0.980327,
		0.710717, 0.682926, -0.168800,
		0.676494, -0.729308, -0.102302,
		35.157993, 33.181606, 42.783409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677387, 33.739090, 42.236191>,  <34.684448, 33.692123, 42.855019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677387, 33.739090, 42.236191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912865, 33.425362, 42.314449>,  <35.054153, 33.237125, 42.361404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912865, 33.425362, 42.314449>,  <34.677387, 33.739090, 42.236191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912865, 33.425362, 42.314449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068295, -0.192913, -0.978836,
		0.805465, 0.589599, -0.060002,
		0.588696, -0.784320, 0.195651,
		35.089474, 33.190067, 42.373146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098949, 33.622189, 41.596230>,  <34.677387, 33.739090, 42.236191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098949, 33.622189, 41.596230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173428, 33.285355, 41.798706>,  <35.218113, 33.083256, 41.920193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173428, 33.285355, 41.798706>,  <35.098949, 33.622189, 41.596230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173428, 33.285355, 41.798706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050666, -0.522744, -0.850983,
		0.981206, 0.132799, -0.139995,
		0.186191, -0.842083, 0.506191,
		35.229286, 33.032730, 41.950562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447922, 33.268032, 41.072678>,  <35.098949, 33.622189, 41.596230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447922, 33.268032, 41.072678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300907, 33.011372, 41.341957>,  <35.212700, 32.857376, 41.503525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300907, 33.011372, 41.341957>,  <35.447922, 33.268032, 41.072678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300907, 33.011372, 41.341957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153473, -0.672096, -0.724384,
		0.917259, -0.369555, 0.148543,
		-0.367534, -0.641651, 0.673203,
		35.190647, 32.818878, 41.543919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833939, 32.651772, 41.018040>,  <35.447922, 33.268032, 41.072678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833939, 32.651772, 41.018040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475632, 32.548096, 41.162495>,  <35.260647, 32.485889, 41.249168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475632, 32.548096, 41.162495>,  <35.833939, 32.651772, 41.018040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475632, 32.548096, 41.162495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077424, -0.709025, -0.700920,
		0.437729, -0.655822, 0.615054,
		-0.895767, -0.259193, 0.361137,
		35.206902, 32.470337, 41.270836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.471088, 34.289825, 49.047039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081139, 34.321999, 48.963951>,  <35.847168, 34.341305, 48.914097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081139, 34.321999, 48.963951>,  <36.471088, 34.289825, 49.047039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081139, 34.321999, 48.963951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068529, -0.779001, -0.623267,
		-0.211949, -0.621842, 0.753916,
		-0.974875, 0.080435, -0.207722,
		35.788677, 34.346130, 48.901634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150303, 33.589417, 49.048813>,  <36.471088, 34.289825, 49.047039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150303, 33.589417, 49.048813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898430, 33.805126, 48.825142>,  <35.747307, 33.934551, 48.690937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898430, 33.805126, 48.825142>,  <36.150303, 33.589417, 49.048813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898430, 33.805126, 48.825142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129791, -0.782716, -0.608695,
		-0.765926, -0.310715, 0.562862,
		-0.629691, 0.539270, -0.559175,
		35.709526, 33.966908, 48.657387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649921, 33.088352, 48.767162>,  <36.150303, 33.589417, 49.048813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649921, 33.088352, 48.767162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 33.423523, 48.550442>,  <35.607815, 33.624626, 48.420410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 33.423523, 48.550442>,  <35.649921, 33.088352, 48.767162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623604, 33.423523, 48.550442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169690, -0.544460, -0.821443,
		-0.983299, 0.037893, 0.178010,
		-0.065792, 0.837931, -0.541797,
		35.603867, 33.674904, 48.387901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043968, 33.076111, 48.230602>,  <35.649921, 33.088352, 48.767162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043968, 33.076111, 48.230602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.328697, 33.330433, 48.111229>,  <35.499535, 33.483025, 48.039604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.328697, 33.330433, 48.111229>,  <35.043968, 33.076111, 48.230602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328697, 33.330433, 48.111229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078508, -0.350208, -0.933376,
		-0.697954, 0.687831, -0.199372,
		0.711826, 0.635801, -0.298429,
		35.542244, 33.521172, 48.021702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701271, 33.399017, 47.643837>,  <35.043968, 33.076111, 48.230602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701271, 33.399017, 47.643837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092720, 33.469929, 47.602135>,  <35.327591, 33.512478, 47.577114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092720, 33.469929, 47.602135>,  <34.701271, 33.399017, 47.643837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092720, 33.469929, 47.602135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070949, -0.184787, -0.980214,
		-0.193040, 0.966656, -0.168259,
		0.978623, 0.177282, -0.104254,
		35.386307, 33.523113, 47.570858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844921, 33.855755, 47.085091>,  <34.701271, 33.399017, 47.643837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844921, 33.855755, 47.085091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217857, 33.713112, 47.109035>,  <35.441620, 33.627525, 47.123402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217857, 33.713112, 47.109035>,  <34.844921, 33.855755, 47.085091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217857, 33.713112, 47.109035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012905, -0.132627, -0.991082,
		0.361362, 0.924794, -0.119051,
		0.932336, -0.356603, 0.059860,
		35.497559, 33.606133, 47.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159954, 34.177338, 46.610329>,  <34.844921, 33.855755, 47.085091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159954, 34.177338, 46.610329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385971, 33.855217, 46.682121>,  <35.521580, 33.661945, 46.725197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385971, 33.855217, 46.682121>,  <35.159954, 34.177338, 46.610329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385971, 33.855217, 46.682121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065079, -0.173352, -0.982707,
		0.822492, 0.566951, -0.045543,
		0.565042, -0.805305, 0.179478,
		35.555485, 33.613625, 46.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735394, 34.318958, 46.199318>,  <35.159954, 34.177338, 46.610329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735394, 34.318958, 46.199318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762730, 33.926376, 46.270966>,  <35.779129, 33.690826, 46.313953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762730, 33.926376, 46.270966>,  <35.735394, 34.318958, 46.199318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762730, 33.926376, 46.270966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191494, -0.163298, -0.967814,
		0.979112, 0.100437, 0.176783,
		0.068336, -0.981451, 0.179120,
		35.783230, 33.631943, 46.324703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328934, 34.060688, 45.922348>,  <35.735394, 34.318958, 46.199318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328934, 34.060688, 45.922348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109447, 33.728024, 45.956409>,  <35.977757, 33.528427, 45.976845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109447, 33.728024, 45.956409>,  <36.328934, 34.060688, 45.922348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109447, 33.728024, 45.956409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277230, -0.277109, -0.919975,
		0.788702, -0.481201, 0.382616,
		-0.548719, -0.831659, 0.085154,
		35.944832, 33.478527, 45.981956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113949, 34.013592, 46.004185>,  <36.328934, 34.060688, 45.922348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113949, 34.013592, 46.004185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.247158, 34.376465, 45.901329>,  <37.327084, 34.594189, 45.839615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.247158, 34.376465, 45.901329>,  <37.113949, 34.013592, 46.004185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247158, 34.376465, 45.901329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046070, 0.256725, 0.965386,
		0.941794, -0.333338, 0.043700,
		0.333019, 0.907181, -0.257139,
		37.347065, 34.648621, 45.824188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560299, 34.147762, 46.534737>,  <37.113949, 34.013592, 46.004185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560299, 34.147762, 46.534737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483589, 34.499123, 46.359631>,  <37.437561, 34.709938, 46.254566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483589, 34.499123, 46.359631>,  <37.560299, 34.147762, 46.534737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483589, 34.499123, 46.359631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022954, 0.441908, 0.896767,
		0.981170, 0.182028, -0.064585,
		-0.191778, 0.878398, -0.437765,
		37.426056, 34.762642, 46.228302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072624, 34.775845, 46.827229>,  <37.560299, 34.147762, 46.534737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072624, 34.775845, 46.827229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742836, 34.944630, 46.676392>,  <37.544964, 35.045898, 46.585888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742836, 34.944630, 46.676392>,  <38.072624, 34.775845, 46.827229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742836, 34.944630, 46.676392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108059, 0.536707, 0.836821,
		0.555493, 0.730682, -0.396902,
		-0.824470, 0.421959, -0.377093,
		37.495495, 35.071217, 46.563263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151077, 35.442669, 47.008179>,  <38.072624, 34.775845, 46.827229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151077, 35.442669, 47.008179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756985, 35.420052, 46.943523>,  <37.520531, 35.406483, 46.904732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756985, 35.420052, 46.943523>,  <38.151077, 35.442669, 47.008179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756985, 35.420052, 46.943523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162675, 0.603829, 0.780338,
		0.053480, 0.795106, -0.604108,
		-0.985229, -0.056540, -0.161637,
		37.461414, 35.403088, 46.895031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076748, 36.118576, 46.811077>,  <38.151077, 35.442669, 47.008179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076748, 36.118576, 46.811077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753963, 35.922585, 46.942978>,  <37.560295, 35.804989, 47.022118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753963, 35.922585, 46.942978>,  <38.076748, 36.118576, 46.811077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753963, 35.922585, 46.942978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168222, 0.725879, 0.666934,
		-0.566144, 0.482717, -0.668180,
		-0.806959, -0.489983, 0.329749,
		37.511875, 35.775589, 47.041901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697964, 36.731327, 46.896210>,  <38.076748, 36.118576, 46.811077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697964, 36.731327, 46.896210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547386, 36.437595, 47.122150>,  <37.457039, 36.261356, 47.257713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547386, 36.437595, 47.122150>,  <37.697964, 36.731327, 46.896210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547386, 36.437595, 47.122150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299997, 0.673471, 0.675603,
		-0.876523, 0.084871, -0.473818,
		-0.376442, -0.734326, 0.564852,
		37.434452, 36.217297, 47.291607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994106, 36.990200, 47.054020>,  <37.697964, 36.731327, 46.896210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994106, 36.990200, 47.054020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096077, 36.692234, 47.300636>,  <37.157257, 36.513454, 47.448605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096077, 36.692234, 47.300636>,  <36.994106, 36.990200, 47.054020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096077, 36.692234, 47.300636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235831, 0.570454, 0.786744,
		-0.937762, -0.345958, -0.030252,
		0.254923, -0.744913, 0.616538,
		37.172554, 36.468761, 47.485600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510807, 37.065460, 47.612492>,  <36.994106, 36.990200, 47.054020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510807, 37.065460, 47.612492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795605, 36.832066, 47.768753>,  <36.966484, 36.692028, 47.862511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795605, 36.832066, 47.768753>,  <36.510807, 37.065460, 47.612492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795605, 36.832066, 47.768753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062621, 0.501363, 0.862968,
		-0.699387, -0.638892, 0.320429,
		0.711995, -0.583483, 0.390655,
		37.009205, 36.657021, 47.885948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217602, 36.936737, 48.282570>,  <36.510807, 37.065460, 47.612492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217602, 36.936737, 48.282570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610935, 36.864532, 48.291187>,  <36.846935, 36.821209, 48.296360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610935, 36.864532, 48.291187>,  <36.217602, 36.936737, 48.282570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610935, 36.864532, 48.291187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086923, 0.570967, 0.816359,
		-0.159662, -0.800883, 0.577143,
		0.983338, -0.180508, 0.021547,
		36.905937, 36.810379, 48.297649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315388, 36.697132, 48.941353>,  <36.217602, 36.936737, 48.282570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315388, 36.697132, 48.941353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668739, 36.821609, 48.801182>,  <36.880753, 36.896294, 48.717079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668739, 36.821609, 48.801182>,  <36.315388, 36.697132, 48.941353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668739, 36.821609, 48.801182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071151, 0.650006, 0.756591,
		0.463223, -0.693291, 0.552062,
		0.883381, 0.311191, -0.350426,
		36.933754, 36.914967, 48.696053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703613, 36.698551, 49.486576>,  <36.315388, 36.697132, 48.941353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703613, 36.698551, 49.486576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.903965, 36.944386, 49.242805>,  <37.024178, 37.091885, 49.096542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.903965, 36.944386, 49.242805>,  <36.703613, 36.698551, 49.486576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903965, 36.944386, 49.242805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224373, 0.587852, 0.777230,
		0.835928, -0.526039, 0.156547,
		0.500880, 0.614584, -0.609431,
		37.054230, 37.128761, 49.059975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295689, 36.781788, 49.832314>,  <36.703613, 36.698551, 49.486576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295689, 36.781788, 49.832314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224960, 37.090805, 49.588375>,  <37.182522, 37.276215, 49.442013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224960, 37.090805, 49.588375>,  <37.295689, 36.781788, 49.832314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224960, 37.090805, 49.588375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263074, 0.634165, 0.727067,
		0.948433, -0.031873, -0.315371,
		-0.176823, 0.772540, -0.609848,
		37.171913, 37.322567, 49.405422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859936, 37.112976, 49.937267>,  <37.295689, 36.781788, 49.832314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859936, 37.112976, 49.937267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573364, 37.354984, 49.798309>,  <37.401421, 37.500187, 49.714935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573364, 37.354984, 49.798309>,  <37.859936, 37.112976, 49.937267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573364, 37.354984, 49.798309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182603, 0.643204, 0.743602,
		0.673339, 0.469302, -0.571288,
		-0.716429, 0.605016, -0.347399,
		37.358437, 37.536488, 49.694088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103951, 37.849445, 49.891773>,  <37.859936, 37.112976, 49.937267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103951, 37.849445, 49.891773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705650, 37.879585, 49.870590>,  <37.466671, 37.897667, 49.857880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705650, 37.879585, 49.870590>,  <38.103951, 37.849445, 49.891773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705650, 37.879585, 49.870590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011155, 0.669448, 0.742775,
		0.091417, 0.739027, -0.667444,
		-0.995750, 0.075348, -0.052955,
		37.406925, 37.902191, 49.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.365252, 39.101978, 47.794838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667877, 38.903736, 47.965477>,  <30.849453, 38.784790, 48.067860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667877, 38.903736, 47.965477>,  <30.365252, 39.101978, 47.794838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667877, 38.903736, 47.965477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382377, -0.193912, -0.903430,
		0.530469, 0.846623, 0.042802,
		0.756565, -0.495608, 0.426594,
		30.894846, 38.755054, 48.093456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020618, 39.334221, 47.542511>,  <30.365252, 39.101978, 47.794838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020618, 39.334221, 47.542511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139746, 38.981071, 47.687752>,  <31.211222, 38.769184, 47.774895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139746, 38.981071, 47.687752>,  <31.020618, 39.334221, 47.542511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139746, 38.981071, 47.687752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446442, -0.207396, -0.870446,
		0.843798, 0.421337, 0.332385,
		0.297816, -0.882871, 0.363103,
		31.229090, 38.716209, 47.796684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655489, 39.269634, 47.269527>,  <31.020618, 39.334221, 47.542511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655489, 39.269634, 47.269527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.555433, 38.895672, 47.370235>,  <31.495399, 38.671295, 47.430660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.555433, 38.895672, 47.370235>,  <31.655489, 39.269634, 47.269527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555433, 38.895672, 47.370235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290691, -0.320559, -0.901521,
		0.923541, -0.152319, 0.351952,
		-0.250141, -0.934902, 0.251771,
		31.480391, 38.615200, 47.445766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114685, 38.898304, 46.841461>,  <31.655489, 39.269634, 47.269527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114685, 38.898304, 46.841461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858261, 38.624039, 46.979393>,  <31.704409, 38.459480, 47.062153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858261, 38.624039, 46.979393>,  <32.114685, 38.898304, 46.841461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858261, 38.624039, 46.979393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182956, -0.572865, -0.798970,
		0.745369, -0.449095, 0.492685,
		-0.641055, -0.685667, 0.344831,
		31.665945, 38.418339, 47.082844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472824, 38.267166, 46.897102>,  <32.114685, 38.898304, 46.841461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472824, 38.267166, 46.897102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.081104, 38.205032, 46.845192>,  <31.846073, 38.167751, 46.814045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.081104, 38.205032, 46.845192>,  <32.472824, 38.267166, 46.897102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081104, 38.205032, 46.845192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192208, -0.512631, -0.836819,
		0.063460, -0.844441, 0.531876,
		-0.979300, -0.155336, -0.129777,
		31.787313, 38.158432, 46.806259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429504, 37.756557, 46.462875>,  <32.472824, 38.267166, 46.897102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429504, 37.756557, 46.462875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039982, 37.840263, 46.427299>,  <31.806269, 37.890488, 46.405952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039982, 37.840263, 46.427299>,  <32.429504, 37.756557, 46.462875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039982, 37.840263, 46.427299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014922, -0.449117, -0.893348,
		-0.226891, -0.868620, 0.440475,
		-0.973805, 0.209266, -0.088939,
		31.747841, 37.903042, 46.400616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135796, 37.156467, 46.347031>,  <32.429504, 37.756557, 46.462875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135796, 37.156467, 46.347031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905315, 37.438057, 46.180935>,  <31.767029, 37.607010, 46.081276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905315, 37.438057, 46.180935>,  <32.135796, 37.156467, 46.347031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905315, 37.438057, 46.180935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073909, -0.461094, -0.884268,
		-0.813963, -0.540202, 0.213651,
		-0.576197, 0.703970, -0.415239,
		31.732456, 37.649246, 46.056362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871895, 36.787502, 45.885345>,  <32.135796, 37.156467, 46.347031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871895, 36.787502, 45.885345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779131, 37.158314, 45.767471>,  <31.723473, 37.380798, 45.696747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779131, 37.158314, 45.767471>,  <31.871895, 36.787502, 45.885345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779131, 37.158314, 45.767471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084665, -0.321034, -0.943276,
		-0.969046, -0.193804, 0.152937,
		-0.231909, 0.927026, -0.294688,
		31.709558, 37.436420, 45.679066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253923, 36.643795, 45.411118>,  <31.871895, 36.787502, 45.885345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253923, 36.643795, 45.411118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428886, 36.996826, 45.342152>,  <31.533863, 37.208645, 45.300770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428886, 36.996826, 45.342152>,  <31.253923, 36.643795, 45.411118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428886, 36.996826, 45.342152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053925, -0.165646, -0.984710,
		-0.897646, 0.440016, -0.024862,
		0.437407, 0.882580, -0.172419,
		31.560108, 37.261600, 45.290424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764593, 37.076187, 45.037445>,  <31.253923, 36.643795, 45.411118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764593, 37.076187, 45.037445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129967, 37.215088, 44.952538>,  <31.349190, 37.298428, 44.901592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129967, 37.215088, 44.952538>,  <30.764593, 37.076187, 45.037445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129967, 37.215088, 44.952538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222256, -0.011316, -0.974923,
		-0.340945, 0.937704, 0.066842,
		0.913432, 0.347251, -0.212269,
		31.403996, 37.319263, 44.888855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670149, 37.280388, 44.426174>,  <30.764593, 37.076187, 45.037445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670149, 37.280388, 44.426174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066891, 37.328175, 44.443859>,  <31.304935, 37.356846, 44.454472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066891, 37.328175, 44.443859>,  <30.670149, 37.280388, 44.426174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066891, 37.328175, 44.443859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027675, 0.136706, -0.990225,
		-0.124346, 0.983381, 0.132286,
		0.991853, 0.119469, 0.044214,
		31.364447, 37.364014, 44.457123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937212, 37.997787, 44.146084>,  <30.670149, 37.280388, 44.426174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937212, 37.997787, 44.146084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221212, 37.717236, 44.120911>,  <31.391613, 37.548904, 44.105808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221212, 37.717236, 44.120911>,  <30.937212, 37.997787, 44.146084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221212, 37.717236, 44.120911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080910, 0.170025, -0.982113,
		0.699538, 0.692208, 0.177467,
		0.710000, -0.701384, -0.062933,
		31.434212, 37.506821, 44.102032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322044, 38.237713, 43.513603>,  <30.937212, 37.997787, 44.146084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322044, 38.237713, 43.513603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.468637, 37.874798, 43.596081>,  <31.556593, 37.657047, 43.645565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.468637, 37.874798, 43.596081>,  <31.322044, 38.237713, 43.513603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468637, 37.874798, 43.596081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162432, -0.155819, -0.974339,
		0.916137, 0.390570, 0.090268,
		0.366483, -0.907290, 0.206192,
		31.578583, 37.602612, 43.657940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036201, 38.316158, 43.195293>,  <31.322044, 38.237713, 43.513603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036201, 38.316158, 43.195293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916510, 37.935158, 43.217896>,  <31.844694, 37.706558, 43.231457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916510, 37.935158, 43.217896>,  <32.036201, 38.316158, 43.195293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916510, 37.935158, 43.217896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179846, -0.114455, -0.977014,
		0.937078, -0.282192, 0.205553,
		-0.299232, -0.952506, 0.056502,
		31.826740, 37.649406, 43.234844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838181, 38.417778, 43.144562>,  <32.036201, 38.316158, 43.195293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838181, 38.417778, 43.144562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.003658, 38.764725, 43.033905>,  <33.102943, 38.972893, 42.967510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.003658, 38.764725, 43.033905>,  <32.838181, 38.417778, 43.144562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003658, 38.764725, 43.033905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215388, 0.388481, 0.895930,
		0.884570, -0.311057, 0.347533,
		0.413695, 0.867368, -0.276641,
		33.127766, 39.024937, 42.950912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275108, 38.551521, 43.733013>,  <32.838181, 38.417778, 43.144562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275108, 38.551521, 43.733013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.247997, 38.902760, 43.543545>,  <33.231731, 39.113503, 43.429863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.247997, 38.902760, 43.543545>,  <33.275108, 38.551521, 43.733013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247997, 38.902760, 43.543545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032280, 0.472582, 0.880695,
		0.997178, 0.074980, -0.003686,
		-0.067777, 0.878091, -0.473669,
		33.227665, 39.166187, 43.401443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782768, 38.956200, 43.971954>,  <33.275108, 38.551521, 43.733013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782768, 38.956200, 43.971954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548683, 39.235565, 43.807156>,  <33.408230, 39.403183, 43.708279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548683, 39.235565, 43.807156>,  <33.782768, 38.956200, 43.971954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548683, 39.235565, 43.807156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021527, 0.521287, 0.853110,
		0.810592, 0.490384, -0.320101,
		-0.585216, 0.698414, -0.411994,
		33.373119, 39.445091, 43.683556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172981, 39.572693, 44.114277>,  <33.782768, 38.956200, 43.971954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172981, 39.572693, 44.114277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787037, 39.670250, 44.075157>,  <33.555470, 39.728786, 44.051685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787037, 39.670250, 44.075157>,  <34.172981, 39.572693, 44.114277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787037, 39.670250, 44.075157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082261, 0.633815, 0.769098,
		0.249563, 0.734026, -0.631605,
		-0.964858, 0.243895, -0.097795,
		33.497578, 39.743420, 44.045818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170452, 40.233017, 44.233482>,  <34.172981, 39.572693, 44.114277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170452, 40.233017, 44.233482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805866, 40.084305, 44.303917>,  <33.587112, 39.995075, 44.346180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805866, 40.084305, 44.303917>,  <34.170452, 40.233017, 44.233482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805866, 40.084305, 44.303917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003214, 0.434470, 0.900680,
		-0.411362, 0.820374, -0.397200,
		-0.911466, -0.371782, 0.176088,
		33.532425, 39.972771, 44.356743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814205, 40.866722, 44.489445>,  <34.170452, 40.233017, 44.233482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814205, 40.866722, 44.489445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602577, 40.549633, 44.610558>,  <33.475601, 40.359379, 44.683228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602577, 40.549633, 44.610558>,  <33.814205, 40.866722, 44.489445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602577, 40.549633, 44.610558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023849, 0.342785, 0.939111,
		-0.848241, 0.504080, -0.162453,
		-0.529073, -0.792718, 0.302786,
		33.443855, 40.311817, 44.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260712, 41.183674, 44.769760>,  <33.814205, 40.866722, 44.489445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260712, 41.183674, 44.769760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286423, 40.815357, 44.923649>,  <33.301849, 40.594368, 45.015980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286423, 40.815357, 44.923649>,  <33.260712, 41.183674, 44.769760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286423, 40.815357, 44.923649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061920, 0.381095, 0.922460,
		-0.996009, -0.083111, -0.032522,
		0.064273, -0.920793, 0.384720,
		33.305706, 40.539120, 45.039066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975254, 41.293274, 45.424122>,  <33.260712, 41.183674, 44.769760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975254, 41.293274, 45.424122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149269, 40.935944, 45.469204>,  <33.253677, 40.721542, 45.496254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149269, 40.935944, 45.469204>,  <32.975254, 41.293274, 45.424122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149269, 40.935944, 45.469204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036671, 0.142643, 0.989095,
		-0.899665, -0.426161, 0.094814,
		0.435038, -0.893331, 0.112703,
		33.279781, 40.667946, 45.503014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622643, 40.901188, 45.920940>,  <32.975254, 41.293274, 45.424122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622643, 40.901188, 45.920940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995331, 40.757416, 45.900127>,  <33.218945, 40.671150, 45.887642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995331, 40.757416, 45.900127>,  <32.622643, 40.901188, 45.920940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995331, 40.757416, 45.900127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046942, -0.022871, 0.998636,
		-0.360133, -0.932890, -0.004437,
		0.931719, -0.359434, -0.052029,
		33.274845, 40.649586, 45.884518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650482, 40.333920, 46.451950>,  <32.622643, 40.901188, 45.920940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650482, 40.333920, 46.451950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031876, 40.441097, 46.396702>,  <33.260712, 40.505405, 46.363552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031876, 40.441097, 46.396702>,  <32.650482, 40.333920, 46.451950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031876, 40.441097, 46.396702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131057, 0.044156, 0.990391,
		0.271472, -0.962421, 0.006986,
		0.953481, 0.267947, -0.138119,
		33.317921, 40.521481, 46.355267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100918, 39.930145, 46.849590>,  <32.650482, 40.333920, 46.451950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100918, 39.930145, 46.849590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330921, 40.253059, 46.796448>,  <33.468922, 40.446808, 46.764561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330921, 40.253059, 46.796448>,  <33.100918, 39.930145, 46.849590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330921, 40.253059, 46.796448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187447, 0.028078, 0.981873,
		0.796386, -0.589488, -0.135179,
		0.575007, 0.807289, -0.132858,
		33.503422, 40.495247, 46.756592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634277, 39.867966, 47.269993>,  <33.100918, 39.930145, 46.849590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634277, 39.867966, 47.269993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633568, 40.262497, 47.204075>,  <33.633144, 40.499214, 47.164524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633568, 40.262497, 47.204075>,  <33.634277, 39.867966, 47.269993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633568, 40.262497, 47.204075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139835, 0.163424, 0.976595,
		0.990173, -0.021315, -0.138213,
		-0.001772, 0.986326, -0.164798,
		33.633038, 40.558395, 47.154636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077652, 40.089161, 47.734299>,  <33.634277, 39.867966, 47.269993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077652, 40.089161, 47.734299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849850, 40.412563, 47.674995>,  <33.713169, 40.606606, 47.639412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849850, 40.412563, 47.674995>,  <34.077652, 40.089161, 47.734299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849850, 40.412563, 47.674995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001421, 0.179401, 0.983775,
		0.821986, 0.560477, -0.101021,
		-0.569506, 0.808505, -0.148261,
		33.678997, 40.655113, 47.630516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457428, 40.643085, 48.105404>,  <34.077652, 40.089161, 47.734299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457428, 40.643085, 48.105404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070465, 40.735542, 48.064041>,  <33.838287, 40.791016, 48.039223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070465, 40.735542, 48.064041>,  <34.457428, 40.643085, 48.105404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070465, 40.735542, 48.064041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033048, 0.289622, 0.956570,
		0.251048, 0.928813, -0.272545,
		-0.967410, 0.231138, -0.103405,
		33.780243, 40.804882, 48.033020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026665, 40.951664, 48.390854>,  <34.457428, 40.643085, 48.105404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026665, 40.951664, 48.390854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317341, 40.694336, 48.487232>,  <35.491749, 40.539940, 48.545059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317341, 40.694336, 48.487232>,  <35.026665, 40.951664, 48.390854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317341, 40.694336, 48.487232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181458, -0.158525, -0.970537,
		0.662562, 0.749006, 0.001536,
		0.726694, -0.643320, 0.240946,
		35.535351, 40.501339, 48.559517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590534, 41.106983, 48.021084>,  <35.026665, 40.951664, 48.390854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590534, 41.106983, 48.021084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639698, 40.724533, 48.127449>,  <35.669197, 40.495064, 48.191269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639698, 40.724533, 48.127449>,  <35.590534, 41.106983, 48.021084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639698, 40.724533, 48.127449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166402, -0.244296, -0.955317,
		0.978368, 0.161664, 0.129076,
		0.122908, -0.956130, 0.265912,
		35.676571, 40.437695, 48.207222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210606, 40.927155, 47.802036>,  <35.590534, 41.106983, 48.021084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210606, 40.927155, 47.802036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035515, 40.568932, 47.833958>,  <35.930462, 40.353996, 47.853111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035515, 40.568932, 47.833958>,  <36.210606, 40.927155, 47.802036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035515, 40.568932, 47.833958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376858, -0.263335, -0.888050,
		0.816318, -0.358647, 0.452767,
		-0.437726, -0.895560, 0.079806,
		35.904198, 40.300262, 47.857899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763474, 40.416607, 47.674934>,  <36.210606, 40.927155, 47.802036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763474, 40.416607, 47.674934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411091, 40.252064, 47.581383>,  <36.199661, 40.153339, 47.525253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411091, 40.252064, 47.581383>,  <36.763474, 40.416607, 47.674934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411091, 40.252064, 47.581383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398669, -0.378975, -0.835130,
		0.254905, -0.828953, 0.497857,
		-0.880958, -0.411358, -0.233875,
		36.146805, 40.128654, 47.511219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995007, 39.719151, 47.546303>,  <36.763474, 40.416607, 47.674934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995007, 39.719151, 47.546303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.626289, 39.724464, 47.391323>,  <36.405060, 39.727654, 47.298336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.626289, 39.724464, 47.391323>,  <36.995007, 39.719151, 47.546303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626289, 39.724464, 47.391323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271532, -0.691193, -0.669719,
		-0.276699, -0.722548, 0.633531,
		-0.921796, 0.013286, -0.387447,
		36.349751, 39.728451, 47.275089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687248, 39.077278, 47.558796>,  <36.995007, 39.719151, 47.546303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687248, 39.077278, 47.558796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535072, 39.309330, 47.270710>,  <36.443768, 39.448563, 47.097858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535072, 39.309330, 47.270710>,  <36.687248, 39.077278, 47.558796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535072, 39.309330, 47.270710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257162, -0.681703, -0.684944,
		-0.888332, -0.445793, 0.110160,
		-0.380440, 0.580129, -0.720219,
		36.420940, 39.483368, 47.054646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504757, 38.538288, 47.021652>,  <36.687248, 39.077278, 47.558796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504757, 38.538288, 47.021652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.426868, 38.872307, 46.815823>,  <36.380135, 39.072716, 46.692326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.426868, 38.872307, 46.815823>,  <36.504757, 38.538288, 47.021652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426868, 38.872307, 46.815823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120972, -0.500163, -0.857439,
		-0.973369, -0.229214, -0.003623,
		-0.194725, 0.835043, -0.514572,
		36.368450, 39.122818, 46.661449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846790, 38.460312, 46.571396>,  <36.504757, 38.538288, 47.021652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846790, 38.460312, 46.571396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093769, 38.737579, 46.422653>,  <36.241955, 38.903938, 46.333408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093769, 38.737579, 46.422653>,  <35.846790, 38.460312, 46.571396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093769, 38.737579, 46.422653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081297, -0.413967, -0.906654,
		-0.782401, 0.590041, -0.199250,
		0.617446, 0.693169, -0.371857,
		36.279003, 38.945530, 46.311096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652363, 38.514194, 45.875050>,  <35.846790, 38.460312, 46.571396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652363, 38.514194, 45.875050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014721, 38.683544, 45.879292>,  <36.232136, 38.785152, 45.881836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014721, 38.683544, 45.879292>,  <35.652363, 38.514194, 45.875050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014721, 38.683544, 45.879292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157000, -0.312476, -0.936861,
		-0.393328, 0.850362, -0.349540,
		0.905894, 0.423372, 0.010601,
		36.286488, 38.810555, 45.882473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627522, 38.906651, 45.258568>,  <35.652363, 38.514194, 45.875050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627522, 38.906651, 45.258568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.017147, 38.869427, 45.341061>,  <36.250923, 38.847092, 45.390556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.017147, 38.869427, 45.341061>,  <35.627522, 38.906651, 45.258568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017147, 38.869427, 45.341061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181561, -0.222429, -0.957894,
		0.135017, 0.970497, -0.199765,
		0.974067, -0.093062, 0.206236,
		36.309368, 38.841507, 45.402931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000687, 39.307053, 44.769455>,  <35.627522, 38.906651, 45.258568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000687, 39.307053, 44.769455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280014, 39.064743, 44.921974>,  <36.447613, 38.919357, 45.013485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280014, 39.064743, 44.921974>,  <36.000687, 39.307053, 44.769455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280014, 39.064743, 44.921974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311366, -0.222576, -0.923857,
		0.644513, 0.763873, 0.033187,
		0.698322, -0.605771, 0.381297,
		36.489510, 38.883011, 45.036362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610508, 39.594627, 44.458462>,  <36.000687, 39.307053, 44.769455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610508, 39.594627, 44.458462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689823, 39.223412, 44.584591>,  <36.737411, 39.000683, 44.660267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689823, 39.223412, 44.584591>,  <36.610508, 39.594627, 44.458462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689823, 39.223412, 44.584591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307874, -0.246451, -0.918953,
		0.930535, 0.279294, 0.236851,
		0.198286, -0.928039, 0.315319,
		36.749310, 38.945000, 44.679188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327351, 39.428608, 44.265156>,  <36.610508, 39.594627, 44.458462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327351, 39.428608, 44.265156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134464, 39.081200, 44.311005>,  <37.018734, 38.872753, 44.338512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134464, 39.081200, 44.311005>,  <37.327351, 39.428608, 44.265156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134464, 39.081200, 44.311005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378407, -0.324501, -0.866895,
		0.790114, -0.374653, 0.485134,
		-0.482212, -0.868524, 0.114621,
		36.989799, 38.820641, 44.345390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736782, 38.891621, 43.930355>,  <37.327351, 39.428608, 44.265156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736782, 38.891621, 43.930355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376354, 38.720989, 43.961613>,  <37.160099, 38.618610, 43.980366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376354, 38.720989, 43.961613>,  <37.736782, 38.891621, 43.930355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376354, 38.720989, 43.961613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119826, -0.418056, -0.900484,
		0.416798, -0.802032, 0.427812,
		-0.901066, -0.426583, 0.078141,
		37.106033, 38.593014, 43.985054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.563257, 28.225090, 30.096535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300325, 28.276516, 29.799513>,  <27.142567, 28.307371, 29.621300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300325, 28.276516, 29.799513>,  <27.563257, 28.225090, 30.096535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300325, 28.276516, 29.799513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366745, 0.806213, 0.464240,
		0.658344, 0.577487, -0.482796,
		-0.657329, 0.128567, -0.742556,
		27.103127, 28.315086, 29.576746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660456, 28.927977, 29.897345>,  <27.563257, 28.225090, 30.096535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660456, 28.927977, 29.897345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288620, 28.814089, 29.803709>,  <27.065519, 28.745756, 29.747528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288620, 28.814089, 29.803709>,  <27.660456, 28.927977, 29.897345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288620, 28.814089, 29.803709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366489, 0.781763, 0.504512,
		0.039355, 0.554780, -0.831066,
		-0.929590, -0.284721, -0.234087,
		27.009743, 28.728672, 29.733482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265059, 29.554647, 29.890783>,  <27.660456, 28.927977, 29.897345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265059, 29.554647, 29.890783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943914, 29.321466, 29.840845>,  <26.751228, 29.181559, 29.810883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943914, 29.321466, 29.840845>,  <27.265059, 29.554647, 29.890783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943914, 29.321466, 29.840845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554974, 0.654314, 0.513689,
		-0.217769, 0.481705, -0.848845,
		-0.802858, -0.582952, -0.124844,
		26.703056, 29.146582, 29.803392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711107, 29.948521, 29.629473>,  <27.265059, 29.554647, 29.890783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711107, 29.948521, 29.629473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.575905, 29.646553, 29.854275>,  <26.494783, 29.465372, 29.989157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.575905, 29.646553, 29.854275>,  <26.711107, 29.948521, 29.629473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575905, 29.646553, 29.854275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447408, 0.654251, 0.609740,
		-0.827996, -0.045350, -0.558897,
		-0.338007, -0.754917, 0.562007,
		26.474503, 29.420078, 30.022877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131744, 30.240084, 29.873709>,  <26.711107, 29.948521, 29.629473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131744, 30.240084, 29.873709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.190247, 29.920044, 30.106415>,  <26.225348, 29.728020, 30.246038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.190247, 29.920044, 30.106415>,  <26.131744, 30.240084, 29.873709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190247, 29.920044, 30.106415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216855, 0.547854, 0.807979,
		-0.965186, -0.244329, -0.093380,
		0.146255, -0.800100, 0.581765,
		26.234123, 29.680014, 30.280945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710949, 30.329332, 30.355495>,  <26.131744, 30.240084, 29.873709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710949, 30.329332, 30.355495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952385, 30.051319, 30.511757>,  <26.097246, 29.884512, 30.605515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952385, 30.051319, 30.511757>,  <25.710949, 30.329332, 30.355495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952385, 30.051319, 30.511757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022487, 0.474938, 0.879732,
		-0.796979, -0.539780, 0.271037,
		0.603588, -0.695033, 0.390654,
		26.133461, 29.842810, 30.628954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391773, 29.976509, 30.906853>,  <25.710949, 30.329332, 30.355495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391773, 29.976509, 30.906853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788118, 30.024834, 30.930851>,  <26.025925, 30.053829, 30.945250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788118, 30.024834, 30.930851>,  <25.391773, 29.976509, 30.906853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788118, 30.024834, 30.930851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118113, 0.562267, 0.818478,
		0.065148, -0.818084, 0.571397,
		0.990861, 0.120812, 0.059995,
		26.085377, 30.061077, 30.948849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414305, 30.056200, 31.603704>,  <25.391773, 29.976509, 30.906853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414305, 30.056200, 31.603704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782621, 30.137102, 31.470295>,  <26.003611, 30.185644, 31.390249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782621, 30.137102, 31.470295>,  <25.414305, 30.056200, 31.603704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782621, 30.137102, 31.470295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123044, 0.660790, 0.740417,
		0.370141, -0.722807, 0.583563,
		0.920791, 0.202255, -0.333522,
		26.058859, 30.197779, 31.370237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763462, 30.105139, 32.205593>,  <25.414305, 30.056200, 31.603704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763462, 30.105139, 32.205593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.005239, 30.291376, 31.947021>,  <26.150307, 30.403118, 31.791878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.005239, 30.291376, 31.947021>,  <25.763462, 30.105139, 32.205593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005239, 30.291376, 31.947021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263723, 0.648741, 0.713853,
		0.751730, -0.601962, 0.269340,
		0.604444, 0.465593, -0.646429,
		26.186573, 30.431053, 31.753094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413767, 30.253860, 32.598621>,  <25.763462, 30.105139, 32.205593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413767, 30.253860, 32.598621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391699, 30.517822, 32.298893>,  <26.378458, 30.676199, 32.119057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391699, 30.517822, 32.298893>,  <26.413767, 30.253860, 32.598621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391699, 30.517822, 32.298893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174272, 0.745311, 0.643538,
		0.983151, -0.095080, -0.156123,
		-0.055173, 0.659903, -0.749323,
		26.375147, 30.715794, 32.074097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836494, 30.757399, 32.743427>,  <26.413767, 30.253860, 32.598621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836494, 30.757399, 32.743427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594107, 30.951740, 32.491478>,  <26.448673, 31.068346, 32.340309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594107, 30.951740, 32.491478>,  <26.836494, 30.757399, 32.743427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594107, 30.951740, 32.491478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199477, 0.859322, 0.470929,
		0.770070, 0.159724, -0.617642,
		-0.605972, 0.485854, -0.629877,
		26.412315, 31.097496, 32.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221846, 31.350672, 32.642555>,  <26.836494, 30.757399, 32.743427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221846, 31.350672, 32.642555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852808, 31.434652, 32.513100>,  <26.631386, 31.485041, 32.435429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852808, 31.434652, 32.513100>,  <27.221846, 31.350672, 32.642555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852808, 31.434652, 32.513100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049123, 0.896038, 0.441251,
		0.382631, 0.391198, -0.836993,
		-0.922594, 0.209952, -0.323635,
		26.576029, 31.497639, 32.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286182, 31.980711, 32.312687>,  <27.221846, 31.350672, 32.642555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286182, 31.980711, 32.312687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.924534, 31.911354, 32.468891>,  <26.707544, 31.869740, 32.562614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.924534, 31.911354, 32.468891>,  <27.286182, 31.980711, 32.312687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924534, 31.911354, 32.468891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042887, 0.872515, 0.486702,
		-0.425119, 0.456785, -0.781423,
		-0.904121, -0.173393, 0.390513,
		26.653297, 31.859337, 32.586044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109005, 32.634014, 32.346256>,  <27.286182, 31.980711, 32.312687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109005, 32.634014, 32.346256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817316, 32.437183, 32.536453>,  <26.642302, 32.319084, 32.650570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817316, 32.437183, 32.536453>,  <27.109005, 32.634014, 32.346256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817316, 32.437183, 32.536453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135450, 0.784935, 0.604591,
		-0.670736, 0.376477, -0.639045,
		-0.729224, -0.492080, 0.475490,
		26.598549, 32.289558, 32.679100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504728, 33.121635, 32.396999>,  <27.109005, 32.634014, 32.346256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504728, 33.121635, 32.396999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482239, 32.848785, 32.688625>,  <26.468746, 32.685074, 32.863602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482239, 32.848785, 32.688625>,  <26.504728, 33.121635, 32.396999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482239, 32.848785, 32.688625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057177, 0.726826, 0.684438,
		-0.996780, 0.080167, -0.001862,
		-0.056222, -0.682127, 0.729069,
		26.465372, 32.644146, 32.907345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199825, 33.448471, 32.877644>,  <26.504728, 33.121635, 32.396999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199825, 33.448471, 32.877644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341188, 33.151829, 33.105724>,  <26.426006, 32.973843, 33.242573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341188, 33.151829, 33.105724>,  <26.199825, 33.448471, 32.877644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341188, 33.151829, 33.105724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013849, 0.605319, 0.795863,
		-0.935368, -0.289159, 0.203653,
		0.353406, -0.741604, 0.570200,
		26.447210, 32.929348, 33.276783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831078, 33.525120, 33.422199>,  <26.199825, 33.448471, 32.877644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831078, 33.525120, 33.422199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145815, 33.305912, 33.535728>,  <26.334658, 33.174389, 33.603844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145815, 33.305912, 33.535728>,  <25.831078, 33.525120, 33.422199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145815, 33.305912, 33.535728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120751, 0.587704, 0.800014,
		-0.605225, -0.595214, 0.528605,
		0.786843, -0.548018, 0.283821,
		26.381868, 33.141506, 33.620876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633196, 33.059227, 33.999512>,  <25.831078, 33.525120, 33.422199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633196, 33.059227, 33.999512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023794, 33.142860, 34.020447>,  <26.258154, 33.193039, 34.033009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023794, 33.142860, 34.020447>,  <25.633196, 33.059227, 33.999512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023794, 33.142860, 34.020447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100340, 0.226074, 0.968928,
		0.190747, -0.951408, 0.241740,
		0.976498, 0.209076, 0.052342,
		26.316744, 33.205585, 34.036148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767788, 33.034920, 34.664009>,  <25.633196, 33.059227, 33.999512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767788, 33.034920, 34.664009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.122042, 33.189381, 34.560829>,  <26.334595, 33.282055, 34.498920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.122042, 33.189381, 34.560829>,  <25.767788, 33.034920, 34.664009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122042, 33.189381, 34.560829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062897, 0.450612, 0.890501,
		0.460124, -0.804874, 0.374784,
		0.885623, 0.386168, -0.257962,
		26.387732, 33.305225, 34.483444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234333, 32.877178, 35.215691>,  <25.767788, 33.034920, 34.664009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234333, 32.877178, 35.215691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397554, 33.191853, 35.030384>,  <26.495487, 33.380657, 34.919201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397554, 33.191853, 35.030384>,  <26.234333, 32.877178, 35.215691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397554, 33.191853, 35.030384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114399, 0.459374, 0.880845,
		0.905762, -0.412429, 0.097453,
		0.408053, 0.786688, -0.463265,
		26.519970, 33.427860, 34.891403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937880, 32.957878, 35.477810>,  <26.234333, 32.877178, 35.215691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937880, 32.957878, 35.477810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857094, 33.327286, 35.347378>,  <26.808622, 33.548931, 35.269119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857094, 33.327286, 35.347378>,  <26.937880, 32.957878, 35.477810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857094, 33.327286, 35.347378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360832, 0.379680, 0.851847,
		0.910501, 0.054383, -0.409916,
		-0.201962, 0.923518, -0.326076,
		26.796505, 33.604340, 35.249554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650988, 33.339390, 35.529430>,  <26.937880, 32.957878, 35.477810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650988, 33.339390, 35.529430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340029, 33.590355, 35.511482>,  <27.153454, 33.740932, 35.500713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340029, 33.590355, 35.511482>,  <27.650988, 33.339390, 35.529430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340029, 33.590355, 35.511482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278441, 0.407210, 0.869857,
		0.564026, 0.663731, -0.491260,
		-0.777397, 0.627409, -0.044867,
		27.106810, 33.778576, 35.498024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378193, 33.320377, 35.799049>,  <27.650988, 33.339390, 35.529430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378193, 33.320377, 35.799049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748489, 33.291443, 35.650578>,  <28.970667, 33.274082, 35.561497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748489, 33.291443, 35.650578>,  <28.378193, 33.320377, 35.799049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748489, 33.291443, 35.650578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355617, -0.500358, -0.789416,
		-0.128616, 0.862791, -0.488927,
		0.925740, -0.072340, -0.371177,
		29.026211, 33.269741, 35.539223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362568, 33.461830, 34.981564>,  <28.378193, 33.320377, 35.799049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362568, 33.461830, 34.981564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709253, 33.269928, 35.036175>,  <28.917265, 33.154785, 35.068943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709253, 33.269928, 35.036175>,  <28.362568, 33.461830, 34.981564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709253, 33.269928, 35.036175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085356, -0.412319, -0.907032,
		0.491451, 0.774483, -0.398312,
		0.866713, -0.479760, 0.136527,
		28.969267, 33.125999, 35.077133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599512, 33.291878, 34.329552>,  <28.362568, 33.461830, 34.981564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599512, 33.291878, 34.329552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861813, 33.077454, 34.542206>,  <29.019194, 32.948799, 34.669796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861813, 33.077454, 34.542206>,  <28.599512, 33.291878, 34.329552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861813, 33.077454, 34.542206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129613, -0.613781, -0.778764,
		0.743768, 0.579582, -0.333008,
		0.655751, -0.536057, 0.531632,
		29.058538, 32.916637, 34.701694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025337, 33.101181, 33.877934>,  <28.599512, 33.291878, 34.329552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025337, 33.101181, 33.877934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.079716, 32.840603, 34.176502>,  <29.112343, 32.684258, 34.355644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.079716, 32.840603, 34.176502>,  <29.025337, 33.101181, 33.877934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079716, 32.840603, 34.176502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182265, -0.724108, -0.665167,
		0.973806, 0.226472, 0.020296,
		0.135945, -0.651443, 0.746419,
		29.120499, 32.645168, 34.400429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644880, 32.765381, 33.747940>,  <29.025337, 33.101181, 33.877934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644880, 32.765381, 33.747940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473335, 32.509182, 34.002762>,  <29.370409, 32.355461, 34.155655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473335, 32.509182, 34.002762>,  <29.644880, 32.765381, 33.747940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473335, 32.509182, 34.002762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098211, -0.734075, -0.671929,
		0.898016, -0.225598, 0.377721,
		-0.428861, -0.640499, 0.637055,
		29.344677, 32.317032, 34.193878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087788, 32.207256, 33.709690>,  <29.644880, 32.765381, 33.747940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087788, 32.207256, 33.709690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739332, 32.062119, 33.842030>,  <29.530258, 31.975037, 33.921432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739332, 32.062119, 33.842030>,  <30.087788, 32.207256, 33.709690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739332, 32.062119, 33.842030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153255, -0.841030, -0.518827,
		0.466506, -0.401267, 0.788262,
		-0.871140, -0.362841, 0.330849,
		29.477989, 31.953266, 33.941284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263327, 31.532671, 33.801208>,  <30.087788, 32.207256, 33.709690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263327, 31.532671, 33.801208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.863554, 31.521900, 33.793053>,  <29.623692, 31.515438, 33.788158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.863554, 31.521900, 33.793053>,  <30.263327, 31.532671, 33.801208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863554, 31.521900, 33.793053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033244, -0.890938, -0.452906,
		-0.005969, -0.453325, 0.891325,
		-0.999429, -0.026928, -0.020388,
		29.563725, 31.513823, 33.786938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056910, 30.836023, 33.915443>,  <30.263327, 31.532671, 33.801208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056910, 30.836023, 33.915443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735743, 30.994675, 33.737453>,  <29.543041, 31.089867, 33.630657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735743, 30.994675, 33.737453>,  <30.056910, 30.836023, 33.915443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735743, 30.994675, 33.737453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103010, -0.827591, -0.551799,
		-0.587120, -0.397213, 0.705346,
		-0.802919, 0.396630, -0.444978,
		29.494867, 31.113663, 33.603958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567757, 30.351463, 33.888840>,  <30.056910, 30.836023, 33.915443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567757, 30.351463, 33.888840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451157, 30.599056, 33.597115>,  <29.381197, 30.747612, 33.422081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451157, 30.599056, 33.597115>,  <29.567757, 30.351463, 33.888840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451157, 30.599056, 33.597115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167218, -0.783653, -0.598269,
		-0.941842, -0.052441, 0.331938,
		-0.291498, 0.618981, -0.729309,
		29.363707, 30.784750, 33.378323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000139, 29.952059, 33.539143>,  <29.567757, 30.351463, 33.888840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000139, 29.952059, 33.539143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138580, 30.239182, 33.297493>,  <29.221645, 30.411455, 33.152504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138580, 30.239182, 33.297493>,  <29.000139, 29.952059, 33.539143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138580, 30.239182, 33.297493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119147, -0.672337, -0.730594,
		-0.930601, 0.180880, -0.318221,
		0.346101, 0.717806, -0.604126,
		29.242411, 30.454523, 33.116257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606842, 29.901697, 32.912151>,  <29.000139, 29.952059, 33.539143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606842, 29.901697, 32.912151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926014, 30.114445, 32.798717>,  <29.117517, 30.242094, 32.730659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926014, 30.114445, 32.798717>,  <28.606842, 29.901697, 32.912151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926014, 30.114445, 32.798717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024911, -0.499178, -0.866141,
		-0.602232, 0.684058, -0.411560,
		0.797932, 0.531870, -0.283581,
		29.165394, 30.274006, 32.713642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466864, 30.078350, 32.231232>,  <28.606842, 29.901697, 32.912151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466864, 30.078350, 32.231232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858850, 30.108667, 32.304905>,  <29.094042, 30.126858, 32.349110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858850, 30.108667, 32.304905>,  <28.466864, 30.078350, 32.231232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858850, 30.108667, 32.304905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198065, -0.273649, -0.941215,
		-0.020934, 0.958839, -0.283178,
		0.979965, 0.075791, 0.184183,
		29.152840, 30.131405, 32.360161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713259, 30.502293, 31.657356>,  <28.466864, 30.078350, 32.231232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713259, 30.502293, 31.657356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002928, 30.288370, 31.831509>,  <29.176729, 30.160017, 31.936001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002928, 30.288370, 31.831509>,  <28.713259, 30.502293, 31.657356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002928, 30.288370, 31.831509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263451, -0.368908, -0.891347,
		0.637312, 0.760192, -0.126259,
		0.724173, -0.534804, 0.435383,
		29.220181, 30.127930, 31.962124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408239, 30.404573, 31.136580>,  <28.713259, 30.502293, 31.657356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408239, 30.404573, 31.136580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460915, 30.110903, 31.403006>,  <29.492519, 29.934700, 31.562860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460915, 30.110903, 31.403006>,  <29.408239, 30.404573, 31.136580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460915, 30.110903, 31.403006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217806, -0.634067, -0.741970,
		0.967067, 0.242783, 0.076408,
		0.131690, -0.734177, 0.666065,
		29.500422, 29.890650, 31.602825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937574, 30.071394, 30.858452>,  <29.408239, 30.404573, 31.136580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937574, 30.071394, 30.858452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.788591, 29.805017, 31.117001>,  <29.699202, 29.645191, 31.272129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.788591, 29.805017, 31.117001>,  <29.937574, 30.071394, 30.858452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788591, 29.805017, 31.117001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208706, -0.738749, -0.640853,
		0.904277, -0.103789, 0.414139,
		-0.372458, -0.665941, 0.646372,
		29.676853, 29.605234, 31.310913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362768, 29.459892, 30.930630>,  <29.937574, 30.071394, 30.858452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362768, 29.459892, 30.930630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002148, 29.336418, 31.051903>,  <29.785776, 29.262333, 31.124666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002148, 29.336418, 31.051903>,  <30.362768, 29.459892, 30.930630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002148, 29.336418, 31.051903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100489, -0.830944, -0.547206,
		0.420843, -0.462868, 0.780157,
		-0.901551, -0.308685, 0.303183,
		29.731682, 29.243813, 31.142859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411226, 28.767717, 30.884060>,  <30.362768, 29.459892, 30.930630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411226, 28.767717, 30.884060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013149, 28.805199, 30.895422>,  <29.774303, 28.827688, 30.902239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013149, 28.805199, 30.895422>,  <30.411226, 28.767717, 30.884060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013149, 28.805199, 30.895422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092334, -0.801570, -0.590728,
		-0.032584, -0.590513, 0.806370,
		-0.995195, 0.093704, 0.028406,
		29.714590, 28.833309, 30.903944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187218, 28.132275, 30.753281>,  <30.411226, 28.767717, 30.884060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187218, 28.132275, 30.753281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.858339, 28.344099, 30.669798>,  <29.661013, 28.471193, 30.619709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.858339, 28.344099, 30.669798>,  <30.187218, 28.132275, 30.753281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858339, 28.344099, 30.669798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263934, -0.679552, -0.684506,
		-0.504315, -0.507713, 0.698494,
		-0.822195, 0.529563, -0.208705,
		29.611681, 28.502968, 30.607185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494923, 27.682140, 30.794666>,  <30.187218, 28.132275, 30.753281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494923, 27.682140, 30.794666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388126, 27.986671, 30.558329>,  <29.324049, 28.169390, 30.416527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388126, 27.986671, 30.558329>,  <29.494923, 27.682140, 30.794666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388126, 27.986671, 30.558329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470424, -0.638053, -0.609582,
		-0.841081, 0.115193, 0.528502,
		-0.266993, 0.761327, -0.590843,
		29.308029, 28.215069, 30.381075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774902, 27.592031, 30.652145>,  <29.494923, 27.682140, 30.794666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774902, 27.592031, 30.652145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966532, 27.806339, 30.374027>,  <29.081511, 27.934923, 30.207155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966532, 27.806339, 30.374027>,  <28.774902, 27.592031, 30.652145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966532, 27.806339, 30.374027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230498, -0.687531, -0.688602,
		-0.846970, 0.490156, -0.205885,
		0.479075, 0.535769, -0.695298,
		29.110254, 27.967070, 30.165438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.757172, 38.795593, 49.910480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500263, 38.531261, 50.065807>,  <37.346119, 38.372662, 50.159004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500263, 38.531261, 50.065807>,  <37.757172, 38.795593, 49.910480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500263, 38.531261, 50.065807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274085, 0.671148, 0.688794,
		-0.715794, 0.335962, -0.612184,
		-0.642275, -0.660825, 0.388321,
		37.307579, 38.333015, 50.182304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159203, 39.247826, 50.039589>,  <37.757172, 38.795593, 49.910480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159203, 39.247826, 50.039589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089069, 38.908588, 50.239586>,  <37.046989, 38.705044, 50.359585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089069, 38.908588, 50.239586>,  <37.159203, 39.247826, 50.039589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089069, 38.908588, 50.239586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374953, 0.527109, 0.762605,
		-0.910312, -0.053761, -0.410417,
		-0.175336, -0.848096, 0.499992,
		37.036469, 38.654160, 50.389584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683220, 39.437782, 50.538025>,  <37.159203, 39.247826, 50.039589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683220, 39.437782, 50.538025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738529, 39.058533, 50.652523>,  <36.771713, 38.830982, 50.721222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738529, 39.058533, 50.652523>,  <36.683220, 39.437782, 50.538025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738529, 39.058533, 50.652523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243057, 0.247699, 0.937853,
		-0.960107, -0.199251, -0.196199,
		0.138270, -0.948127, 0.286247,
		36.780010, 38.774094, 50.738396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054512, 39.225906, 50.843231>,  <36.683220, 39.437782, 50.538025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054512, 39.225906, 50.843231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356861, 39.011105, 50.993050>,  <36.538273, 38.882225, 51.082939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356861, 39.011105, 50.993050>,  <36.054512, 39.225906, 50.843231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356861, 39.011105, 50.993050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397333, 0.078435, 0.914316,
		-0.520365, -0.839928, -0.154081,
		0.755875, -0.537000, 0.374546,
		36.583622, 38.850006, 51.105412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723854, 38.608555, 51.099220>,  <36.054512, 39.225906, 50.843231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723854, 38.608555, 51.099220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065842, 38.669636, 51.297501>,  <36.271034, 38.706284, 51.416470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065842, 38.669636, 51.297501>,  <35.723854, 38.608555, 51.099220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065842, 38.669636, 51.297501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504953, 0.026577, 0.862737,
		0.118572, -0.987914, 0.099832,
		0.854964, 0.152707, 0.495699,
		36.322330, 38.715446, 51.446209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635769, 38.275093, 51.660969>,  <35.723854, 38.608555, 51.099220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635769, 38.275093, 51.660969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959850, 38.474983, 51.783504>,  <36.154301, 38.594917, 51.857025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959850, 38.474983, 51.783504>,  <35.635769, 38.275093, 51.660969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959850, 38.474983, 51.783504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414080, 0.118079, 0.902549,
		0.414856, -0.858097, 0.302595,
		0.810205, 0.499726, 0.306335,
		36.202911, 38.624901, 51.875404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009792, 37.977619, 52.370296>,  <35.635769, 38.275093, 51.660969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009792, 37.977619, 52.370296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.049541, 38.369514, 52.300732>,  <36.073391, 38.604652, 52.258995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.049541, 38.369514, 52.300732>,  <36.009792, 37.977619, 52.370296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049541, 38.369514, 52.300732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498885, 0.200276, 0.843210,
		0.860953, 0.002971, 0.508676,
		0.099370, 0.979735, -0.173910,
		36.079353, 38.663437, 52.248558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083828, 38.148674, 53.053631>,  <36.009792, 37.977619, 52.370296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083828, 38.148674, 53.053631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063828, 38.509262, 52.881653>,  <36.051826, 38.725613, 52.778465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063828, 38.509262, 52.881653>,  <36.083828, 38.148674, 53.053631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063828, 38.509262, 52.881653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318369, 0.393642, 0.862373,
		0.946647, 0.180006, 0.267315,
		-0.050006, 0.901468, -0.429949,
		36.048824, 38.779701, 52.752666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334633, 38.532646, 53.564293>,  <36.083828, 38.148674, 53.053631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334633, 38.532646, 53.564293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119778, 38.771793, 53.326286>,  <35.990864, 38.915279, 53.183483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119778, 38.771793, 53.326286>,  <36.334633, 38.532646, 53.564293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119778, 38.771793, 53.326286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158468, 0.621327, 0.767359,
		0.828476, 0.506468, -0.238995,
		-0.537137, 0.597865, -0.595013,
		35.958637, 38.951153, 53.147781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626892, 39.176846, 53.649567>,  <36.334633, 38.532646, 53.564293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626892, 39.176846, 53.649567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252342, 39.230770, 53.519936>,  <36.027611, 39.263123, 53.442158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252342, 39.230770, 53.519936>,  <36.626892, 39.176846, 53.649567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252342, 39.230770, 53.519936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170337, 0.632758, 0.755383,
		0.306892, 0.762525, -0.569537,
		-0.936378, 0.134808, -0.324074,
		35.971428, 39.271214, 53.422714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298050, 39.891369, 53.713383>,  <36.626892, 39.176846, 53.649567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298050, 39.891369, 53.713383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953968, 39.689808, 53.682060>,  <35.747520, 39.568871, 53.663265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953968, 39.689808, 53.682060>,  <36.298050, 39.891369, 53.713383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953968, 39.689808, 53.682060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381339, 0.533674, 0.754833,
		-0.338576, 0.679169, -0.651226,
		-0.860202, -0.503906, -0.078305,
		35.695908, 39.538635, 53.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786095, 40.451836, 53.865742>,  <36.298050, 39.891369, 53.713383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786095, 40.451836, 53.865742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589718, 40.103359, 53.866093>,  <35.471889, 39.894272, 53.866302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589718, 40.103359, 53.866093>,  <35.786095, 40.451836, 53.865742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589718, 40.103359, 53.866093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566355, 0.319929, 0.759531,
		-0.661977, 0.372390, -0.650471,
		-0.490946, -0.871190, 0.000881,
		35.442432, 39.842003, 53.866356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091179, 40.651291, 53.882931>,  <35.786095, 40.451836, 53.865742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091179, 40.651291, 53.882931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162052, 40.288345, 54.035400>,  <35.204578, 40.070580, 54.126881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162052, 40.288345, 54.035400>,  <35.091179, 40.651291, 53.882931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162052, 40.288345, 54.035400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548413, 0.230573, 0.803791,
		-0.817220, -0.351463, -0.456756,
		0.177187, -0.907364, 0.381175,
		35.215210, 40.016136, 54.149754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088932, 41.393612, 53.778164>,  <35.091179, 40.651291, 53.882931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088932, 41.393612, 53.778164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989395, 41.433872, 54.163483>,  <34.929672, 41.458027, 54.394676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989395, 41.433872, 54.163483>,  <35.088932, 41.393612, 53.778164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989395, 41.433872, 54.163483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432731, -0.878245, 0.203543,
		0.866500, 0.467500, 0.174990,
		-0.248840, 0.100646, 0.963301,
		34.914742, 41.464066, 54.452473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520954, 41.824314, 54.048244>,  <35.088932, 41.393612, 53.778164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520954, 41.824314, 54.048244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507263, 42.146984, 53.812244>,  <34.499046, 42.340588, 53.670643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507263, 42.146984, 53.812244>,  <34.520954, 41.824314, 54.048244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507263, 42.146984, 53.812244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600709, -0.455201, -0.657222,
		-0.798735, -0.376917, -0.468995,
		-0.034231, 0.806676, -0.590002,
		34.496994, 42.388988, 53.635242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058182, 41.876377, 53.318306>,  <34.520954, 41.824314, 54.048244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058182, 41.876377, 53.318306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389126, 42.099178, 53.289375>,  <34.587692, 42.232861, 53.272018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389126, 42.099178, 53.289375>,  <34.058182, 41.876377, 53.318306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389126, 42.099178, 53.289375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182116, -0.387834, -0.903559,
		-0.531334, 0.734393, -0.422316,
		0.827356, 0.557002, -0.072324,
		34.637333, 42.266277, 53.267677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004341, 42.122845, 52.636593>,  <34.058182, 41.876377, 53.318306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004341, 42.122845, 52.636593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381580, 42.170479, 52.760773>,  <34.607925, 42.199059, 52.835281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381580, 42.170479, 52.760773>,  <34.004341, 42.122845, 52.636593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381580, 42.170479, 52.760773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332505, -0.333560, -0.882144,
		-0.001495, 0.935177, -0.354177,
		0.943100, 0.119084, 0.310452,
		34.664509, 42.206203, 52.853909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362312, 42.494282, 52.147583>,  <34.004341, 42.122845, 52.636593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362312, 42.494282, 52.147583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654774, 42.311901, 52.350567>,  <34.830250, 42.202473, 52.472359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654774, 42.311901, 52.350567>,  <34.362312, 42.494282, 52.147583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654774, 42.311901, 52.350567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483104, -0.179154, -0.857038,
		0.481684, 0.871785, 0.089284,
		0.731158, -0.455955, 0.507458,
		34.874123, 42.175114, 52.502804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065578, 42.772053, 51.919212>,  <34.362312, 42.494282, 52.147583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065578, 42.772053, 51.919212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134834, 42.414833, 52.085339>,  <35.176388, 42.200500, 52.185013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134834, 42.414833, 52.085339>,  <35.065578, 42.772053, 51.919212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134834, 42.414833, 52.085339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612401, -0.232637, -0.755543,
		0.771354, 0.385155, 0.506624,
		0.173141, -0.893049, 0.415315,
		35.186775, 42.146919, 52.209934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710537, 42.719791, 51.614536>,  <35.065578, 42.772053, 51.919212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710537, 42.719791, 51.614536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582928, 42.362869, 51.742290>,  <35.506363, 42.148716, 51.818943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582928, 42.362869, 51.742290>,  <35.710537, 42.719791, 51.614536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582928, 42.362869, 51.742290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546432, -0.448522, -0.707277,
		0.774361, -0.051117, 0.630676,
		-0.319026, -0.892309, 0.319386,
		35.487221, 42.095177, 51.838108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271446, 42.232826, 51.534012>,  <35.710537, 42.719791, 51.614536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271446, 42.232826, 51.534012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931961, 42.021305, 51.530880>,  <35.728271, 41.894394, 51.529003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931961, 42.021305, 51.530880>,  <36.271446, 42.232826, 51.534012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931961, 42.021305, 51.530880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375745, -0.592515, -0.712560,
		0.372165, -0.607698, 0.701568,
		-0.848710, -0.528800, -0.007826,
		35.677349, 41.862663, 51.528530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446198, 41.729588, 51.176647>,  <36.271446, 42.232826, 51.534012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446198, 41.729588, 51.176647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063686, 41.614414, 51.197144>,  <35.834179, 41.545311, 51.209442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063686, 41.614414, 51.197144>,  <36.446198, 41.729588, 51.176647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063686, 41.614414, 51.197144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142614, -0.612088, -0.777824,
		0.255324, -0.736509, 0.626390,
		-0.956280, -0.287929, 0.051244,
		35.776802, 41.528034, 51.212517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367043, 40.904053, 51.236637>,  <36.446198, 41.729588, 51.176647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367043, 40.904053, 51.236637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037464, 41.067909, 51.080017>,  <35.839718, 41.166222, 50.986046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037464, 41.067909, 51.080017>,  <36.367043, 40.904053, 51.236637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037464, 41.067909, 51.080017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147866, -0.511603, -0.846403,
		-0.547036, -0.755287, 0.360962,
		-0.823947, 0.409639, -0.391547,
		35.790279, 41.190800, 50.962555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171886, 40.474117, 50.817631>,  <36.367043, 40.904053, 51.236637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171886, 40.474117, 50.817631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942410, 40.769989, 50.676918>,  <35.804722, 40.947514, 50.592491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942410, 40.769989, 50.676918>,  <36.171886, 40.474117, 50.817631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942410, 40.769989, 50.676918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045455, -0.457578, -0.888007,
		-0.817806, -0.493456, 0.296133,
		-0.573696, 0.739678, -0.351780,
		35.770302, 40.991894, 50.571384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616165, 40.130356, 50.676834>,  <36.171886, 40.474117, 50.817631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616165, 40.130356, 50.676834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635899, 40.473404, 50.472069>,  <35.647739, 40.679234, 50.349209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635899, 40.473404, 50.472069>,  <35.616165, 40.130356, 50.676834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635899, 40.473404, 50.472069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144087, -0.501068, -0.853329,
		-0.988335, 0.115860, 0.098850,
		0.049336, 0.857617, -0.511917,
		35.650700, 40.730690, 50.318493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119053, 40.006424, 50.144341>,  <35.616165, 40.130356, 50.676834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119053, 40.006424, 50.144341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329369, 40.319305, 50.010651>,  <35.455559, 40.507034, 49.930435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329369, 40.319305, 50.010651>,  <35.119053, 40.006424, 50.144341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329369, 40.319305, 50.010651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283594, -0.209248, -0.935836,
		-0.801950, 0.586835, 0.111809,
		0.525786, 0.782202, -0.334229,
		35.487106, 40.553967, 49.910381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707623, 40.339020, 49.596920>,  <35.119053, 40.006424, 50.144341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707623, 40.339020, 49.596920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093925, 40.423641, 49.536842>,  <35.325706, 40.474415, 49.500797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093925, 40.423641, 49.536842>,  <34.707623, 40.339020, 49.596920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093925, 40.423641, 49.536842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126025, -0.123501, -0.984309,
		-0.226786, 0.969531, -0.092610,
		0.965757, 0.211556, -0.150194,
		35.383652, 40.487106, 49.491783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726173, 40.550991, 48.972443>,  <34.707623, 40.339020, 49.596920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726173, 40.550991, 48.972443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120598, 40.489353, 48.997566>,  <35.357250, 40.452370, 49.012642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120598, 40.489353, 48.997566>,  <34.726173, 40.550991, 48.972443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120598, 40.489353, 48.997566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044295, -0.120778, -0.991691,
		0.160403, 0.980646, -0.112269,
		0.986057, -0.154097, 0.062811,
		35.416416, 40.443123, 49.016411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290916, 41.063427, 48.813633>,  <34.726173, 40.550991, 48.972443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290916, 41.063427, 48.813633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927216, 41.026299, 48.651329>,  <33.708996, 41.004021, 48.553947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927216, 41.026299, 48.651329>,  <34.290916, 41.063427, 48.813633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927216, 41.026299, 48.651329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415300, 0.136840, 0.899333,
		-0.027954, 0.986235, -0.162971,
		-0.909255, -0.092822, -0.405759,
		33.654438, 40.998451, 48.529602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020573, 41.639591, 49.163361>,  <34.290916, 41.063427, 48.813633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020573, 41.639591, 49.163361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728222, 41.399651, 49.033134>,  <33.552811, 41.255688, 48.954998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728222, 41.399651, 49.033134>,  <34.020573, 41.639591, 49.163361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728222, 41.399651, 49.033134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314482, -0.127372, 0.940679,
		-0.605734, 0.789910, -0.095548,
		-0.730882, -0.599849, -0.325566,
		33.508957, 41.219696, 48.935463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404457, 41.863228, 49.417919>,  <34.020573, 41.639591, 49.163361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404457, 41.863228, 49.417919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331268, 41.475357, 49.353115>,  <33.287354, 41.242634, 49.314232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331268, 41.475357, 49.353115>,  <33.404457, 41.863228, 49.417919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331268, 41.475357, 49.353115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399860, -0.077142, 0.913324,
		-0.898127, 0.231897, -0.373620,
		-0.182975, -0.969676, -0.162010,
		33.276375, 41.184456, 49.304512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741917, 41.864258, 49.467133>,  <33.404457, 41.863228, 49.417919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741917, 41.864258, 49.467133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912876, 41.514057, 49.557312>,  <33.015453, 41.303936, 49.611420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912876, 41.514057, 49.557312>,  <32.741917, 41.864258, 49.467133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912876, 41.514057, 49.557312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402731, 0.038880, 0.914492,
		-0.809404, -0.481651, -0.335973,
		0.427403, -0.875501, 0.225445,
		33.041096, 41.251408, 49.624947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194973, 41.459503, 49.764511>,  <32.741917, 41.864258, 49.467133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194973, 41.459503, 49.764511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542408, 41.297909, 49.879303>,  <32.750870, 41.200951, 49.948177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542408, 41.297909, 49.879303>,  <32.194973, 41.459503, 49.764511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542408, 41.297909, 49.879303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349909, -0.089927, 0.932457,
		-0.350895, -0.910333, -0.219469,
		0.868583, -0.403989, 0.286979,
		32.802982, 41.176712, 49.965397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080639, 40.723457, 50.090828>,  <32.194973, 41.459503, 49.764511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080639, 40.723457, 50.090828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429478, 40.857624, 50.233341>,  <32.638783, 40.938122, 50.318848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429478, 40.857624, 50.233341>,  <32.080639, 40.723457, 50.090828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429478, 40.857624, 50.233341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331483, -0.130631, 0.934374,
		0.359943, -0.932970, -0.002739,
		0.872101, 0.335413, 0.356283,
		32.691109, 40.958248, 50.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040539, 40.429222, 50.756550>,  <32.080639, 40.723457, 50.090828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040539, 40.429222, 50.756550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325649, 40.709457, 50.770012>,  <32.496716, 40.877598, 50.778088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325649, 40.709457, 50.770012>,  <32.040539, 40.429222, 50.756550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325649, 40.709457, 50.770012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267091, 0.226748, 0.936615,
		0.648550, -0.676582, 0.348740,
		0.712772, 0.700587, 0.033651,
		32.539482, 40.919632, 50.780106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825377, 39.721207, 50.784168>,  <32.040539, 40.429222, 50.756550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825377, 39.721207, 50.784168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.505936, 39.495110, 50.866852>,  <31.314270, 39.359451, 50.916462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.505936, 39.495110, 50.866852>,  <31.825377, 39.721207, 50.784168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505936, 39.495110, 50.866852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062902, -0.419961, -0.905360,
		0.598562, -0.710020, 0.370937,
		-0.798603, -0.565247, 0.206711,
		31.266356, 39.325535, 50.928864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082439, 39.053307, 50.652905>,  <31.825377, 39.721207, 50.784168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082439, 39.053307, 50.652905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684534, 39.075428, 50.618526>,  <31.445791, 39.088699, 50.597900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684534, 39.075428, 50.618526>,  <32.082439, 39.053307, 50.652905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684534, 39.075428, 50.618526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057716, -0.390026, -0.918993,
		-0.084341, -0.919142, 0.384792,
		-0.994764, 0.055301, -0.085944,
		31.386105, 39.092018, 50.592743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993126, 38.516670, 50.259338>,  <32.082439, 39.053307, 50.652905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993126, 38.516670, 50.259338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649792, 38.718227, 50.220657>,  <31.443792, 38.839161, 50.197449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649792, 38.718227, 50.220657>,  <31.993126, 38.516670, 50.259338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649792, 38.718227, 50.220657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115172, -0.372877, -0.920705,
		-0.500000, -0.779134, 0.378088,
		-0.858332, 0.503898, -0.096704,
		31.392292, 38.869396, 50.191647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452139, 38.035137, 49.983482>,  <31.993126, 38.516670, 50.259338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452139, 38.035137, 49.983482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349361, 38.406731, 49.876926>,  <31.287695, 38.629688, 49.812992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349361, 38.406731, 49.876926>,  <31.452139, 38.035137, 49.983482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349361, 38.406731, 49.876926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233278, -0.327108, -0.915741,
		-0.937850, -0.173150, 0.300760,
		-0.256941, 0.928988, -0.266387,
		31.272280, 38.685429, 49.797012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974781, 37.922832, 49.421074>,  <31.452139, 38.035137, 49.983482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974781, 37.922832, 49.421074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.996286, 38.320198, 49.380592>,  <31.009190, 38.558617, 49.356304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.996286, 38.320198, 49.380592>,  <30.974781, 37.922832, 49.421074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996286, 38.320198, 49.380592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054797, -0.098264, -0.993650,
		-0.997049, 0.058968, 0.049152,
		0.053764, 0.993412, -0.101205,
		31.012415, 38.618221, 49.350231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316160, 38.165279, 49.112953>,  <30.974781, 37.922832, 49.421074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316160, 38.165279, 49.112953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601770, 38.436443, 49.042965>,  <30.773136, 38.599140, 49.000973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601770, 38.436443, 49.042965>,  <30.316160, 38.165279, 49.112953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601770, 38.436443, 49.042965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132023, -0.115057, -0.984547,
		-0.687561, 0.726090, 0.007345,
		0.714024, 0.677905, -0.174969,
		30.815977, 38.639816, 48.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011452, 38.697960, 48.710342>,  <30.316160, 38.165279, 49.112953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011452, 38.697960, 48.710342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406981, 38.681660, 48.652966>,  <30.644297, 38.671879, 48.618542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406981, 38.681660, 48.652966>,  <30.011452, 38.697960, 48.710342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406981, 38.681660, 48.652966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143651, -0.002285, -0.989626,
		0.039999, 0.999167, -0.008113,
		0.988820, -0.040750, -0.143440,
		30.703627, 38.669434, 48.609932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.654156, 37.114922, 54.998039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976822, 37.321075, 54.882336>,  <34.170422, 37.444767, 54.812916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976822, 37.321075, 54.882336>,  <33.654156, 37.114922, 54.998039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976822, 37.321075, 54.882336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060138, -0.415308, -0.907691,
		-0.587939, 0.749600, -0.304021,
		0.806667, 0.515383, -0.289256,
		34.218822, 37.475689, 54.795559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458248, 37.310596, 54.307983>,  <33.654156, 37.114922, 54.998039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458248, 37.310596, 54.307983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850666, 37.388096, 54.309216>,  <34.086117, 37.434593, 54.309956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850666, 37.388096, 54.309216>,  <33.458248, 37.310596, 54.307983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850666, 37.388096, 54.309216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067064, -0.324570, -0.943481,
		-0.181794, 0.925806, -0.331412,
		0.981047, 0.193745, 0.003084,
		34.144981, 37.446220, 54.310143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570240, 37.703011, 53.706226>,  <33.458248, 37.310596, 54.307983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570240, 37.703011, 53.706226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921997, 37.545197, 53.812817>,  <34.133053, 37.450508, 53.876770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921997, 37.545197, 53.812817>,  <33.570240, 37.703011, 53.706226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921997, 37.545197, 53.812817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037087, -0.501244, -0.864511,
		0.474648, 0.770129, -0.426159,
		0.879394, -0.394533, 0.266476,
		34.185814, 37.426838, 53.892761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990387, 37.878635, 53.248943>,  <33.570240, 37.703011, 53.706226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990387, 37.878635, 53.248943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.190334, 37.559742, 53.384319>,  <34.310303, 37.368404, 53.465546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.190334, 37.559742, 53.384319>,  <33.990387, 37.878635, 53.248943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190334, 37.559742, 53.384319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216556, -0.263301, -0.940094,
		0.838590, 0.543216, 0.041030,
		0.499871, -0.797238, 0.338438,
		34.340294, 37.320572, 53.485851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586590, 37.855785, 52.847038>,  <33.990387, 37.878635, 53.248943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586590, 37.855785, 52.847038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558029, 37.481167, 52.984318>,  <34.540894, 37.256397, 53.066685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558029, 37.481167, 52.984318>,  <34.586590, 37.855785, 52.847038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558029, 37.481167, 52.984318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119046, -0.349616, -0.929299,
		0.990318, -0.025495, 0.136455,
		-0.071399, -0.936546, 0.343196,
		34.536610, 37.200203, 53.087276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094589, 37.525093, 52.440395>,  <34.586590, 37.855785, 52.847038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094589, 37.525093, 52.440395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.885311, 37.221329, 52.595089>,  <34.759743, 37.039070, 52.687904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.885311, 37.221329, 52.595089>,  <35.094589, 37.525093, 52.440395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885311, 37.221329, 52.595089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129911, -0.519568, -0.844495,
		0.842250, -0.391599, 0.370493,
		-0.523200, -0.759407, 0.386733,
		34.728352, 36.993507, 52.711109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430721, 36.881210, 52.247665>,  <35.094589, 37.525093, 52.440395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430721, 36.881210, 52.247665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.039585, 36.823112, 52.307976>,  <34.804905, 36.788254, 52.344162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.039585, 36.823112, 52.307976>,  <35.430721, 36.881210, 52.247665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039585, 36.823112, 52.307976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045368, -0.556081, -0.829889,
		0.204378, -0.818339, 0.537169,
		-0.977840, -0.145241, 0.150777,
		34.746235, 36.779541, 52.353210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436550, 36.148735, 52.159199>,  <35.430721, 36.881210, 52.247665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436550, 36.148735, 52.159199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.062019, 36.285862, 52.128815>,  <34.837299, 36.368137, 52.110584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.062019, 36.285862, 52.128815>,  <35.436550, 36.148735, 52.159199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062019, 36.285862, 52.128815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119139, -0.513672, -0.849674,
		-0.330300, -0.786523, 0.521808,
		-0.936327, 0.342815, -0.075961,
		34.781120, 36.388706, 52.106026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964298, 35.587017, 52.051331>,  <35.436550, 36.148735, 52.159199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964298, 35.587017, 52.051331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746643, 35.880383, 51.888344>,  <34.616051, 36.056400, 51.790554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746643, 35.880383, 51.888344>,  <34.964298, 35.587017, 52.051331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746643, 35.880383, 51.888344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085699, -0.531699, -0.842586,
		-0.834610, -0.423560, 0.352168,
		-0.544133, 0.733412, -0.407463,
		34.583405, 36.100407, 51.766106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422722, 35.213108, 51.702499>,  <34.964298, 35.587017, 52.051331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422722, 35.213108, 51.702499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457218, 35.575920, 51.537643>,  <34.477917, 35.793606, 51.438728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457218, 35.575920, 51.537643>,  <34.422722, 35.213108, 51.702499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457218, 35.575920, 51.537643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053625, -0.408855, -0.911022,
		-0.994830, 0.100669, 0.013379,
		0.086242, 0.907030, -0.412140,
		34.483089, 35.848030, 51.414001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013729, 35.198753, 51.194122>,  <34.422722, 35.213108, 51.702499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013729, 35.198753, 51.194122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.265961, 35.489246, 51.084610>,  <34.417301, 35.663544, 51.018902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.265961, 35.489246, 51.084610>,  <34.013729, 35.198753, 51.194122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265961, 35.489246, 51.084610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077177, -0.409679, -0.908959,
		-0.772279, 0.552040, -0.314383,
		0.630578, 0.726234, -0.273781,
		34.455135, 35.707115, 51.002476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845051, 35.487118, 50.476517>,  <34.013729, 35.198753, 51.194122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845051, 35.487118, 50.476517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230652, 35.565968, 50.547890>,  <34.462013, 35.613277, 50.590714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230652, 35.565968, 50.547890>,  <33.845051, 35.487118, 50.476517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230652, 35.565968, 50.547890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260730, -0.569290, -0.779698,
		-0.052120, 0.798154, -0.600195,
		0.964004, 0.197127, 0.178431,
		34.519852, 35.625107, 50.601418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266502, 35.738956, 50.033096>,  <33.845051, 35.487118, 50.476517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266502, 35.738956, 50.033096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915813, 35.572063, 49.937366>,  <32.705399, 35.471928, 49.879929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915813, 35.572063, 49.937366>,  <33.266502, 35.738956, 50.033096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915813, 35.572063, 49.937366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460756, 0.585698, 0.666830,
		-0.138052, 0.694894, -0.705736,
		-0.876725, -0.417229, -0.239320,
		32.652798, 35.446896, 49.865570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742100, 36.323742, 49.911854>,  <33.266502, 35.738956, 50.033096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742100, 36.323742, 49.911854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557117, 35.997387, 50.050690>,  <32.446129, 35.801575, 50.133991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557117, 35.997387, 50.050690>,  <32.742100, 36.323742, 49.911854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557117, 35.997387, 50.050690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574587, 0.573914, 0.583501,
		-0.675268, 0.070407, -0.734204,
		-0.462452, -0.815884, 0.347090,
		32.418381, 35.752621, 50.154816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239330, 36.700790, 50.242405>,  <32.742100, 36.323742, 49.911854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239330, 36.700790, 50.242405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185978, 36.318943, 50.348919>,  <32.153965, 36.089832, 50.412827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185978, 36.318943, 50.348919>,  <32.239330, 36.700790, 50.242405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185978, 36.318943, 50.348919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408253, 0.297757, 0.862943,
		-0.903072, 0.006387, -0.429442,
		-0.133381, -0.954621, 0.266288,
		32.145966, 36.032558, 50.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477118, 36.578312, 50.382065>,  <32.239330, 36.700790, 50.242405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477118, 36.578312, 50.382065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689440, 36.301231, 50.577374>,  <31.816833, 36.134983, 50.694557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689440, 36.301231, 50.577374>,  <31.477118, 36.578312, 50.382065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689440, 36.301231, 50.577374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464792, 0.243818, 0.851188,
		-0.708670, -0.678758, -0.192544,
		0.530806, -0.692705, 0.488268,
		31.848682, 36.093422, 50.723854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989717, 36.269661, 50.899128>,  <31.477118, 36.578312, 50.382065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989717, 36.269661, 50.899128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.346924, 36.188465, 51.059784>,  <31.561247, 36.139748, 51.156178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.346924, 36.188465, 51.059784>,  <30.989717, 36.269661, 50.899128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346924, 36.188465, 51.059784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391027, 0.091778, 0.915792,
		-0.222757, -0.974871, 0.002586,
		0.893016, -0.202988, 0.401645,
		31.614828, 36.127567, 51.180279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810982, 35.678829, 51.369202>,  <30.989717, 36.269661, 50.899128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810982, 35.678829, 51.369202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.148136, 35.866272, 51.474998>,  <31.350428, 35.978737, 51.538475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.148136, 35.866272, 51.474998>,  <30.810982, 35.678829, 51.369202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148136, 35.866272, 51.474998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362404, 0.131036, 0.922764,
		0.397754, -0.873635, 0.280273,
		0.842885, 0.468605, 0.264489,
		31.401001, 36.006855, 51.554344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932890, 35.447117, 52.016766>,  <30.810982, 35.678829, 51.369202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932890, 35.447117, 52.016766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.174194, 35.765564, 51.997673>,  <31.318977, 35.956631, 51.986217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.174194, 35.765564, 51.997673>,  <30.932890, 35.447117, 52.016766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174194, 35.765564, 51.997673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173508, 0.189425, 0.966443,
		0.778442, -0.574735, 0.252405,
		0.603261, 0.796114, -0.047736,
		31.355173, 36.004398, 51.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262457, 35.484619, 52.701675>,  <30.932890, 35.447117, 52.016766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262457, 35.484619, 52.701675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365801, 35.847530, 52.568951>,  <31.427807, 36.065277, 52.489315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365801, 35.847530, 52.568951>,  <31.262457, 35.484619, 52.701675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365801, 35.847530, 52.568951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004861, 0.344694, 0.938702,
		0.966037, -0.240908, 0.093465,
		0.258358, 0.907276, -0.331816,
		31.443308, 36.119713, 52.469406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882530, 35.784088, 53.150860>,  <31.262457, 35.484619, 52.701675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882530, 35.784088, 53.150860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705229, 36.106258, 52.993477>,  <31.598848, 36.299561, 52.899048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705229, 36.106258, 52.993477>,  <31.882530, 35.784088, 53.150860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705229, 36.106258, 52.993477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187620, 0.512573, 0.837895,
		0.876542, 0.297578, -0.378314,
		-0.443252, 0.805430, -0.393460,
		31.572252, 36.347889, 52.875439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345131, 36.383614, 53.261288>,  <31.882530, 35.784088, 53.150860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345131, 36.383614, 53.261288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970079, 36.513222, 53.210899>,  <31.745049, 36.590984, 53.180668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970079, 36.513222, 53.210899>,  <32.345131, 36.383614, 53.261288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970079, 36.513222, 53.210899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058243, 0.503640, 0.861948,
		0.342728, 0.800850, -0.491098,
		-0.937627, 0.324016, -0.125968,
		31.688791, 36.610428, 53.173107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284313, 37.071781, 53.595238>,  <32.345131, 36.383614, 53.261288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284313, 37.071781, 53.595238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.897516, 36.982731, 53.545670>,  <31.665438, 36.929298, 53.515930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.897516, 36.982731, 53.545670>,  <32.284313, 37.071781, 53.595238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897516, 36.982731, 53.545670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248151, 0.712577, 0.656244,
		-0.057798, 0.665335, -0.744304,
		-0.966996, -0.222629, -0.123918,
		31.607418, 36.915943, 53.508495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984238, 37.694344, 53.439804>,  <32.284313, 37.071781, 53.595238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984238, 37.694344, 53.439804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706890, 37.447754, 53.589043>,  <31.540482, 37.299801, 53.678585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706890, 37.447754, 53.589043>,  <31.984238, 37.694344, 53.439804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706890, 37.447754, 53.589043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225936, 0.677651, 0.699815,
		-0.684244, 0.400936, -0.609147,
		-0.693371, -0.616473, 0.373093,
		31.498878, 37.262814, 53.700970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264723, 37.950214, 53.355370>,  <31.984238, 37.694344, 53.439804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264723, 37.950214, 53.355370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.262083, 37.715038, 53.678921>,  <31.260500, 37.573933, 53.873051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.262083, 37.715038, 53.678921>,  <31.264723, 37.950214, 53.355370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262083, 37.715038, 53.678921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327011, 0.765690, 0.553879,
		-0.944997, -0.260858, -0.197315,
		-0.006598, -0.587938, 0.808879,
		31.260103, 37.538658, 53.921585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684929, 38.089119, 53.914856>,  <31.264723, 37.950214, 53.355370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684929, 38.089119, 53.914856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.991505, 37.909760, 54.098816>,  <31.175451, 37.802143, 54.209190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.991505, 37.909760, 54.098816>,  <30.684929, 38.089119, 53.914856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991505, 37.909760, 54.098816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155691, 0.564961, 0.810296,
		-0.623161, -0.692646, 0.363198,
		0.766440, -0.448398, 0.459900,
		31.221437, 37.775242, 54.236786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425613, 38.680138, 53.679245>,  <30.684929, 38.089119, 53.914856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425613, 38.680138, 53.679245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226879, 39.021843, 53.618073>,  <30.107637, 39.226868, 53.581367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226879, 39.021843, 53.618073>,  <30.425613, 38.680138, 53.679245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226879, 39.021843, 53.618073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382122, 0.057118, -0.922345,
		-0.779189, -0.516695, -0.354811,
		-0.496837, 0.854262, -0.152935,
		30.077827, 39.278122, 53.572193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217939, 38.711353, 53.032398>,  <30.425613, 38.680138, 53.679245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217939, 38.711353, 53.032398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.220497, 39.098083, 53.134544>,  <30.222033, 39.330120, 53.195831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.220497, 39.098083, 53.134544>,  <30.217939, 38.711353, 53.032398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220497, 39.098083, 53.134544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471910, 0.222225, -0.853181,
		-0.881624, 0.125964, -0.454833,
		0.006395, 0.966824, 0.255362,
		30.222416, 39.388130, 53.211151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754356, 39.105263, 52.565937>,  <30.217939, 38.711353, 53.032398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754356, 39.105263, 52.565937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.068871, 39.309982, 52.704395>,  <30.257580, 39.432816, 52.787468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.068871, 39.309982, 52.704395>,  <29.754356, 39.105263, 52.565937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068871, 39.309982, 52.704395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359267, 0.077068, -0.930047,
		-0.502673, 0.855642, -0.123275,
		0.786287, 0.511799, 0.346143,
		30.304756, 39.463520, 52.808239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790226, 39.733246, 52.274876>,  <29.754356, 39.105263, 52.565937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790226, 39.733246, 52.274876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.162933, 39.631378, 52.378376>,  <30.386559, 39.570259, 52.440475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.162933, 39.631378, 52.378376>,  <29.790226, 39.733246, 52.274876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162933, 39.631378, 52.378376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268307, 0.002898, -0.963329,
		0.244580, 0.967024, 0.071029,
		0.931768, -0.254669, 0.258750,
		30.442463, 39.554977, 52.456001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196604, 40.162304, 51.875805>,  <29.790226, 39.733246, 52.274876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196604, 40.162304, 51.875805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.437832, 39.863461, 51.987621>,  <30.582569, 39.684155, 52.054710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.437832, 39.863461, 51.987621>,  <30.196604, 40.162304, 51.875805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437832, 39.863461, 51.987621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379091, -0.039906, -0.924499,
		0.701852, 0.663508, 0.259154,
		0.603070, -0.747104, 0.279538,
		30.618753, 39.639328, 52.071484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807610, 40.336243, 51.541061>,  <30.196604, 40.162304, 51.875805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807610, 40.336243, 51.541061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.835665, 39.947624, 51.631546>,  <30.852497, 39.714451, 51.685837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.835665, 39.947624, 51.631546>,  <30.807610, 40.336243, 51.541061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835665, 39.947624, 51.631546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225825, -0.205416, -0.952264,
		0.971640, 0.117871, 0.204994,
		0.070136, -0.971551, 0.226208,
		30.856705, 39.656158, 51.699409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430811, 40.151573, 51.291355>,  <30.807610, 40.336243, 51.541061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430811, 40.151573, 51.291355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.237036, 39.804245, 51.333958>,  <31.120770, 39.595848, 51.359520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.237036, 39.804245, 51.333958>,  <31.430811, 40.151573, 51.291355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237036, 39.804245, 51.333958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189551, -0.223043, -0.956202,
		0.854043, -0.443033, 0.272642,
		-0.484439, -0.868317, 0.106511,
		31.091703, 39.543751, 51.365910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166759, 40.462971, 51.517105>,  <31.430811, 40.151573, 51.291355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166759, 40.462971, 51.517105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.346226, 40.789402, 51.371387>,  <32.453907, 40.985260, 51.283958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.346226, 40.789402, 51.371387>,  <32.166759, 40.462971, 51.517105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346226, 40.789402, 51.371387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170649, 0.478355, 0.861426,
		0.877255, -0.324329, 0.353886,
		0.448669, 0.816080, -0.364293,
		32.480827, 41.034225, 51.262100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801414, 40.688473, 51.897358>,  <32.166759, 40.462971, 51.517105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801414, 40.688473, 51.897358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645729, 41.016457, 51.729458>,  <32.552319, 41.213245, 51.628719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645729, 41.016457, 51.729458>,  <32.801414, 40.688473, 51.897358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645729, 41.016457, 51.729458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233571, 0.528634, 0.816083,
		0.891044, 0.219589, -0.397268,
		-0.389212, 0.819956, -0.419747,
		32.528965, 41.262444, 51.603535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103832, 41.269333, 52.253967>,  <32.801414, 40.688473, 51.897358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103832, 41.269333, 52.253967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.808014, 41.460506, 52.064377>,  <32.630524, 41.575211, 51.950623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.808014, 41.460506, 52.064377>,  <33.103832, 41.269333, 52.253967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808014, 41.460506, 52.064377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080314, 0.636481, 0.767099,
		0.668298, 0.605372, -0.432322,
		-0.739545, 0.477929, -0.473979,
		32.586151, 41.603886, 51.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300457, 41.905441, 52.303978>,  <33.103832, 41.269333, 52.253967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300457, 41.905441, 52.303978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915276, 41.953815, 52.207565>,  <32.684166, 41.982841, 52.149719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915276, 41.953815, 52.207565>,  <33.300457, 41.905441, 52.303978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915276, 41.953815, 52.207565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107095, 0.648781, 0.753401,
		0.247491, 0.751303, -0.611794,
		-0.962953, 0.120940, -0.241028,
		32.626389, 41.990097, 52.135258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264378, 42.582054, 52.118977>,  <33.300457, 41.905441, 52.303978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264378, 42.582054, 52.118977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918545, 42.428127, 52.248226>,  <32.711044, 42.335770, 52.325775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918545, 42.428127, 52.248226>,  <33.264378, 42.582054, 52.118977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918545, 42.428127, 52.248226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086850, 0.518928, 0.850394,
		-0.494924, 0.763301, -0.415236,
		-0.864585, -0.384818, 0.323123,
		32.659168, 42.312683, 52.345161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968456, 43.090965, 52.471798>,  <33.264378, 42.582054, 52.118977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968456, 43.090965, 52.471798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.743866, 42.798771, 52.627304>,  <32.609112, 42.623455, 52.720608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.743866, 42.798771, 52.627304>,  <32.968456, 43.090965, 52.471798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743866, 42.798771, 52.627304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007734, 0.474421, 0.880264,
		-0.827457, 0.491241, -0.272025,
		-0.561476, -0.730485, 0.388763,
		32.575424, 42.579624, 52.743935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445297, 43.410366, 52.888325>,  <32.968456, 43.090965, 52.471798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445297, 43.410366, 52.888325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.465313, 43.033955, 53.022163>,  <32.477322, 42.808105, 53.102467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.465313, 43.033955, 53.022163>,  <32.445297, 43.410366, 52.888325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465313, 43.033955, 53.022163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076688, 0.337646, 0.938144,
		-0.995799, -0.021284, 0.089062,
		0.050039, -0.941033, 0.334595,
		32.480324, 42.751644, 53.122543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046593, 43.539143, 53.556946>,  <32.445297, 43.410366, 52.888325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046593, 43.539143, 53.556946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227268, 43.182293, 53.560764>,  <32.335674, 42.968182, 53.563053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227268, 43.182293, 53.560764>,  <32.046593, 43.539143, 53.556946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227268, 43.182293, 53.560764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237918, 0.130753, 0.962444,
		-0.859869, -0.432453, 0.271312,
		0.451687, -0.892126, 0.009542,
		32.362774, 42.914654, 53.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571001, 43.098072, 54.010880>,  <32.046593, 43.539143, 53.556946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571001, 43.098072, 54.010880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954279, 42.983807, 54.004456>,  <32.184246, 42.915249, 54.000603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954279, 42.983807, 54.004456>,  <31.571001, 43.098072, 54.010880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954279, 42.983807, 54.004456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059802, 0.145087, 0.987610,
		-0.279792, -0.947285, 0.156104,
		0.958197, -0.285660, -0.016055,
		32.241737, 42.898109, 53.999638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.867855, 37.679523, 38.207550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157619, 37.799034, 38.456055>,  <35.331478, 37.870739, 38.605156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157619, 37.799034, 38.456055>,  <34.867855, 37.679523, 38.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157619, 37.799034, 38.456055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591051, -0.194643, 0.782798,
		0.354806, -0.934262, 0.035591,
		0.724411, 0.298778, 0.621257,
		35.374943, 37.888668, 38.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918678, 37.206104, 38.709148>,  <34.867855, 37.679523, 38.207550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918678, 37.206104, 38.709148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071812, 37.544781, 38.856960>,  <35.163692, 37.747986, 38.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071812, 37.544781, 38.856960>,  <34.918678, 37.206104, 38.709148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071812, 37.544781, 38.856960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555621, -0.108536, 0.824321,
		0.738054, -0.520895, 0.428889,
		0.382835, 0.846693, 0.369525,
		35.186661, 37.798790, 38.967819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991661, 37.065735, 39.372326>,  <34.918678, 37.206104, 38.709148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991661, 37.065735, 39.372326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001865, 37.465504, 39.381268>,  <35.007988, 37.705364, 39.386631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001865, 37.465504, 39.381268>,  <34.991661, 37.065735, 39.372326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001865, 37.465504, 39.381268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549262, -0.004673, 0.835638,
		0.835261, -0.033594, 0.548826,
		0.025507, 0.999425, 0.022355,
		35.009518, 37.765331, 39.387974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159508, 37.197475, 40.079895>,  <34.991661, 37.065735, 39.372326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159508, 37.197475, 40.079895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961926, 37.515316, 39.938694>,  <34.843376, 37.706020, 39.853973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961926, 37.515316, 39.938694>,  <35.159508, 37.197475, 40.079895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961926, 37.515316, 39.938694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412738, 0.143055, 0.899546,
		0.765284, 0.590031, 0.257302,
		-0.493952, 0.794606, -0.353006,
		34.813740, 37.753696, 39.832794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176762, 37.794800, 40.592712>,  <35.159508, 37.197475, 40.079895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176762, 37.794800, 40.592712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867390, 37.907619, 40.365646>,  <34.681767, 37.975311, 40.229404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867390, 37.907619, 40.365646>,  <35.176762, 37.794800, 40.592712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867390, 37.907619, 40.365646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498717, 0.282003, 0.819607,
		0.391255, 0.917018, -0.077447,
		-0.773435, 0.282051, -0.567667,
		34.635361, 37.992233, 40.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991745, 38.375423, 40.849640>,  <35.176762, 37.794800, 40.592712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991745, 38.375423, 40.849640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675861, 38.276897, 40.624893>,  <34.486332, 38.217781, 40.490044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675861, 38.276897, 40.624893>,  <34.991745, 38.375423, 40.849640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675861, 38.276897, 40.624893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611515, 0.242700, 0.753091,
		-0.049130, 0.938311, -0.342284,
		-0.789706, -0.246311, -0.561867,
		34.438950, 38.203003, 40.456333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717854, 39.013199, 40.664841>,  <34.991745, 38.375423, 40.849640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717854, 39.013199, 40.664841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438141, 38.728600, 40.637173>,  <34.270313, 38.557842, 40.620571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438141, 38.728600, 40.637173>,  <34.717854, 39.013199, 40.664841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438141, 38.728600, 40.637173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606085, 0.538797, 0.585115,
		-0.379041, 0.451079, -0.807995,
		-0.699278, -0.711496, -0.069166,
		34.228359, 38.515152, 40.616425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078632, 39.332798, 40.602322>,  <34.717854, 39.013199, 40.664841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078632, 39.332798, 40.602322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976486, 38.978397, 40.757133>,  <33.915199, 38.765759, 40.850021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976486, 38.978397, 40.757133>,  <34.078632, 39.332798, 40.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976486, 38.978397, 40.757133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491448, 0.463680, 0.737211,
		-0.832626, -0.001944, -0.553833,
		-0.255368, -0.886001, 0.387027,
		33.899876, 38.712597, 40.873241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367088, 39.362110, 40.738892>,  <34.078632, 39.332798, 40.602322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367088, 39.362110, 40.738892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496464, 39.062450, 40.970116>,  <33.574089, 38.882652, 41.108852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496464, 39.062450, 40.970116>,  <33.367088, 39.362110, 40.738892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496464, 39.062450, 40.970116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496420, 0.385744, 0.777668,
		-0.805578, -0.538488, -0.247132,
		0.323436, -0.749154, 0.578064,
		33.593494, 38.837704, 41.143536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760727, 39.103115, 41.241207>,  <33.367088, 39.362110, 40.738892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760727, 39.103115, 41.241207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067364, 38.947750, 41.445744>,  <33.251347, 38.854530, 41.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067364, 38.947750, 41.445744>,  <32.760727, 39.103115, 41.241207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067364, 38.947750, 41.445744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447907, 0.247167, 0.859237,
		-0.460124, -0.887719, 0.015505,
		0.766594, -0.388411, 0.511343,
		33.297340, 38.831226, 41.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475132, 39.041161, 41.873116>,  <32.760727, 39.103115, 41.241207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475132, 39.041161, 41.873116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860966, 38.973858, 41.954372>,  <33.092464, 38.933475, 42.003128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860966, 38.973858, 41.954372>,  <32.475132, 39.041161, 41.873116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860966, 38.973858, 41.954372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120414, 0.404339, 0.906648,
		-0.234687, -0.899000, 0.369759,
		0.964584, -0.168254, 0.203145,
		33.150341, 38.923382, 42.015316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514397, 38.632530, 42.469635>,  <32.475132, 39.041161, 41.873116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514397, 38.632530, 42.469635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853703, 38.844234, 42.476982>,  <33.057285, 38.971256, 42.481392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853703, 38.844234, 42.476982>,  <32.514397, 38.632530, 42.469635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853703, 38.844234, 42.476982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211265, 0.306382, 0.928169,
		0.485614, -0.791210, 0.371706,
		0.848261, 0.529261, 0.018372,
		33.108181, 39.003014, 42.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419693, 37.924351, 42.563583>,  <32.514397, 38.632530, 42.469635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419693, 37.924351, 42.563583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117348, 37.686108, 42.672340>,  <31.935940, 37.543163, 42.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117348, 37.686108, 42.672340>,  <32.419693, 37.924351, 42.563583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117348, 37.686108, 42.672340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094512, -0.311660, -0.945482,
		0.647873, -0.740351, 0.179280,
		-0.755863, -0.595607, 0.271888,
		31.890589, 37.507427, 42.753906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573257, 37.178146, 42.274742>,  <32.419693, 37.924351, 42.563583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573257, 37.178146, 42.274742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183250, 37.188038, 42.363049>,  <31.949247, 37.193974, 42.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183250, 37.188038, 42.363049>,  <32.573257, 37.178146, 42.274742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183250, 37.188038, 42.363049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211946, -0.401222, -0.891123,
		0.066541, -0.915647, 0.396437,
		-0.975013, 0.024727, 0.220765,
		31.890747, 37.195457, 42.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275761, 36.466938, 42.148403>,  <32.573257, 37.178146, 42.274742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275761, 36.466938, 42.148403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978704, 36.733974, 42.127213>,  <31.800470, 36.894196, 42.114498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978704, 36.733974, 42.127213>,  <32.275761, 36.466938, 42.148403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978704, 36.733974, 42.127213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389665, -0.495086, -0.776564,
		-0.544659, -0.556062, 0.627807,
		-0.742636, 0.667597, -0.052975,
		31.755913, 36.934254, 42.111320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660618, 36.076542, 42.123978>,  <32.275761, 36.466938, 42.148403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660618, 36.076542, 42.123978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594027, 36.442493, 41.976852>,  <31.554071, 36.662064, 41.888577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594027, 36.442493, 41.976852>,  <31.660618, 36.076542, 42.123978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594027, 36.442493, 41.976852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432234, -0.402984, -0.806708,
		-0.886261, 0.024682, 0.462528,
		-0.166480, 0.914874, -0.367817,
		31.544083, 36.716957, 41.866508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952724, 36.097862, 41.972965>,  <31.660618, 36.076542, 42.123978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952724, 36.097862, 41.972965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131897, 36.391949, 41.769470>,  <31.239401, 36.568401, 41.647373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131897, 36.391949, 41.769470>,  <30.952724, 36.097862, 41.972965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131897, 36.391949, 41.769470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418767, -0.330213, -0.845928,
		-0.789931, 0.591961, 0.159971,
		0.447932, 0.735215, -0.508739,
		31.266277, 36.612514, 41.616848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421043, 36.251141, 41.571663>,  <30.952724, 36.097862, 41.972965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421043, 36.251141, 41.571663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732925, 36.427002, 41.393330>,  <30.920055, 36.532520, 41.286331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732925, 36.427002, 41.393330>,  <30.421043, 36.251141, 41.571663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732925, 36.427002, 41.393330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257232, -0.424249, -0.868242,
		-0.570869, 0.791655, -0.217697,
		0.779705, 0.439654, -0.445830,
		30.966837, 36.558899, 41.259583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122280, 36.690086, 41.055004>,  <30.421043, 36.251141, 41.571663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122280, 36.690086, 41.055004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501570, 36.602207, 40.963264>,  <30.729143, 36.549480, 40.908222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501570, 36.602207, 40.963264>,  <30.122280, 36.690086, 41.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501570, 36.602207, 40.963264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306986, -0.448921, -0.839184,
		0.081403, 0.866144, -0.493121,
		0.948226, -0.219693, -0.229351,
		30.786037, 36.536301, 40.894459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032278, 36.521500, 40.324005>,  <30.122280, 36.690086, 41.055004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032278, 36.521500, 40.324005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417622, 36.440140, 40.393940>,  <30.648829, 36.391323, 40.435902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417622, 36.440140, 40.393940>,  <30.032278, 36.521500, 40.324005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417622, 36.440140, 40.393940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043919, -0.523440, -0.850930,
		0.264597, 0.827429, -0.495327,
		0.963358, -0.203400, 0.174840,
		30.706629, 36.379120, 40.446392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306879, 36.871952, 39.857304>,  <30.032278, 36.521500, 40.324005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306879, 36.871952, 39.857304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548565, 36.567039, 39.950127>,  <30.693577, 36.384090, 40.005821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548565, 36.567039, 39.950127>,  <30.306879, 36.871952, 39.857304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548565, 36.567039, 39.950127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020813, -0.306230, -0.951730,
		0.796549, 0.570220, -0.200894,
		0.604216, -0.762281, 0.232059,
		30.729830, 36.338356, 40.019745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709692, 36.724552, 39.308197>,  <30.306879, 36.871952, 39.857304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709692, 36.724552, 39.308197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722883, 36.376595, 39.505051>,  <30.730799, 36.167820, 39.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722883, 36.376595, 39.505051>,  <30.709692, 36.724552, 39.308197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722883, 36.376595, 39.505051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081657, -0.493099, -0.866133,
		0.996115, -0.011622, -0.087294,
		0.032978, -0.869896, 0.492132,
		30.732777, 36.115627, 39.652691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139677, 36.215576, 38.911469>,  <30.709692, 36.724552, 39.308197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139677, 36.215576, 38.911469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922075, 35.985279, 39.155624>,  <30.791515, 35.847099, 39.302116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922075, 35.985279, 39.155624>,  <31.139677, 36.215576, 38.911469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922075, 35.985279, 39.155624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199926, -0.617560, -0.760690,
		0.814918, -0.535850, 0.220848,
		-0.544002, -0.575747, 0.610391,
		30.758875, 35.812553, 39.338741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519388, 35.528809, 39.122936>,  <31.139677, 36.215576, 38.911469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519388, 35.528809, 39.122936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122345, 35.493172, 39.155895>,  <30.884119, 35.471790, 39.175671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122345, 35.493172, 39.155895>,  <31.519388, 35.528809, 39.122936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122345, 35.493172, 39.155895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019758, -0.788594, -0.614596,
		0.119736, -0.608426, 0.784526,
		-0.992609, -0.089090, 0.082402,
		30.824562, 35.466446, 39.180614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336916, 34.854366, 39.160439>,  <31.519388, 35.528809, 39.122936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336916, 34.854366, 39.160439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004812, 35.004837, 38.995926>,  <30.805550, 35.095119, 38.897217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004812, 35.004837, 38.995926>,  <31.336916, 34.854366, 39.160439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004812, 35.004837, 38.995926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053884, -0.788612, -0.612526,
		-0.554765, -0.486394, 0.675023,
		-0.830261, 0.376180, -0.411285,
		30.755733, 35.117691, 38.872540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985319, 34.489532, 39.373440>,  <31.336916, 34.854366, 39.160439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985319, 34.489532, 39.373440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626381, 34.313869, 39.355942>,  <31.411018, 34.208473, 39.345444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626381, 34.313869, 39.355942>,  <31.985319, 34.489532, 39.373440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626381, 34.313869, 39.355942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411426, -0.868290, 0.277131,
		-0.159690, 0.230683, 0.959836,
		-0.897345, -0.439156, -0.043748,
		31.357178, 34.182121, 39.342815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921665, 34.268429, 39.958405>,  <31.985319, 34.489532, 39.373440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921665, 34.268429, 39.958405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745338, 34.062016, 39.664631>,  <31.639544, 33.938168, 39.488369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745338, 34.062016, 39.664631>,  <31.921665, 34.268429, 39.958405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745338, 34.062016, 39.664631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606183, -0.774593, 0.180412,
		-0.661985, -0.365672, 0.654263,
		-0.440816, -0.516033, -0.734432,
		31.613094, 33.907204, 39.444302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718472, 33.572414, 40.202225>,  <31.921665, 34.268429, 39.958405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718472, 33.572414, 40.202225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770060, 33.577541, 39.805599>,  <31.801012, 33.580616, 39.567623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770060, 33.577541, 39.805599>,  <31.718472, 33.572414, 40.202225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770060, 33.577541, 39.805599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583323, -0.809602, 0.065406,
		-0.801935, -0.586839, -0.111893,
		0.128972, 0.012818, -0.991565,
		31.808752, 33.581387, 39.508129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526590, 32.938236, 39.853928>,  <31.718472, 33.572414, 40.202225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526590, 32.938236, 39.853928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801153, 33.138645, 39.643093>,  <31.965891, 33.258892, 39.516594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801153, 33.138645, 39.643093>,  <31.526590, 32.938236, 39.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801153, 33.138645, 39.643093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582501, -0.812711, -0.013957,
		-0.435361, -0.297448, -0.849697,
		0.686406, 0.501025, -0.527086,
		32.007076, 33.288952, 39.484966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214424, 32.875816, 40.103676>,  <31.526590, 32.938236, 39.853928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214424, 32.875816, 40.103676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592224, 32.819843, 40.222557>,  <32.818905, 32.786259, 40.293884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592224, 32.819843, 40.222557>,  <32.214424, 32.875816, 40.103676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592224, 32.819843, 40.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297058, 0.022412, 0.954596,
		-0.140242, -0.989907, -0.020400,
		0.944504, -0.139935, 0.297203,
		32.875576, 32.777863, 40.311718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218540, 32.418453, 40.679642>,  <32.214424, 32.875816, 40.103676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218540, 32.418453, 40.679642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542755, 32.651577, 40.702839>,  <32.737286, 32.791451, 40.716759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542755, 32.651577, 40.702839>,  <32.218540, 32.418453, 40.679642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542755, 32.651577, 40.702839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140409, 0.097233, 0.985308,
		0.568603, -0.806774, 0.160643,
		0.810540, 0.582805, 0.057992,
		32.785915, 32.826420, 40.720238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645267, 32.177620, 41.237785>,  <32.218540, 32.418453, 40.679642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645267, 32.177620, 41.237785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774815, 32.551651, 41.180180>,  <32.852543, 32.776070, 41.145615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774815, 32.551651, 41.180180>,  <32.645267, 32.177620, 41.237785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774815, 32.551651, 41.180180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045188, 0.136761, 0.989573,
		0.945022, -0.327000, 0.002038,
		0.323869, 0.935076, -0.144019,
		32.871975, 32.832172, 41.136974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340714, 32.376976, 41.638943>,  <32.645267, 32.177620, 41.237785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340714, 32.376976, 41.638943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144039, 32.716122, 41.559570>,  <33.026035, 32.919609, 41.511948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144039, 32.716122, 41.559570>,  <33.340714, 32.376976, 41.638943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144039, 32.716122, 41.559570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019408, 0.238489, 0.970951,
		0.870557, 0.473551, -0.133717,
		-0.491685, 0.847864, -0.198428,
		32.996532, 32.970482, 41.500042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685478, 32.969334, 42.011959>,  <33.340714, 32.376976, 41.638943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685478, 32.969334, 42.011959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312588, 33.084023, 41.923637>,  <33.088856, 33.152836, 41.870644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312588, 33.084023, 41.923637>,  <33.685478, 32.969334, 42.011959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312588, 33.084023, 41.923637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161539, 0.216286, 0.962874,
		0.323830, 0.933281, -0.155310,
		-0.932223, 0.286719, -0.220801,
		33.032921, 33.170040, 41.857399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647018, 33.696236, 42.255013>,  <33.685478, 32.969334, 42.011959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647018, 33.696236, 42.255013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277729, 33.544247, 42.232094>,  <33.056156, 33.453053, 42.218342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277729, 33.544247, 42.232094>,  <33.647018, 33.696236, 42.255013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277729, 33.544247, 42.232094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174452, 0.281593, 0.943542,
		-0.342384, 0.881095, -0.326259,
		-0.923222, -0.379971, -0.057296,
		33.000763, 33.430256, 42.214905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121265, 34.157879, 42.492870>,  <33.647018, 33.696236, 42.255013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121265, 34.157879, 42.492870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950890, 33.800114, 42.547424>,  <32.848663, 33.585453, 42.580154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950890, 33.800114, 42.547424>,  <33.121265, 34.157879, 42.492870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950890, 33.800114, 42.547424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283398, 0.275048, 0.918713,
		-0.859219, 0.352670, -0.370630,
		-0.425943, -0.894412, 0.136380,
		32.823105, 33.531792, 42.588337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605309, 34.343636, 43.055729>,  <33.121265, 34.157879, 42.492870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605309, 34.343636, 43.055729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606846, 33.943851, 43.068832>,  <32.607769, 33.703983, 43.076694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606846, 33.943851, 43.068832>,  <32.605309, 34.343636, 43.055729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606846, 33.943851, 43.068832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216235, 0.031150, 0.975844,
		-0.976334, -0.010838, -0.215998,
		0.003848, -0.999456, 0.032757,
		32.608002, 33.644016, 43.078659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032928, 34.182384, 43.406952>,  <32.605309, 34.343636, 43.055729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032928, 34.182384, 43.406952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259151, 33.852852, 43.422169>,  <32.394886, 33.655132, 43.431301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259151, 33.852852, 43.422169>,  <32.032928, 34.182384, 43.406952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259151, 33.852852, 43.422169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083688, -0.011435, 0.996426,
		-0.820451, -0.566722, -0.075412,
		0.565559, -0.823830, 0.038046,
		32.428818, 33.605701, 43.433582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677341, 33.670502, 43.873562>,  <32.032928, 34.182384, 43.406952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677341, 33.670502, 43.873562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069981, 33.597393, 43.851440>,  <32.305565, 33.553528, 43.838165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069981, 33.597393, 43.851440>,  <31.677341, 33.670502, 43.873562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069981, 33.597393, 43.851440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060662, 0.023840, 0.997874,
		-0.181066, -0.982866, 0.034489,
		0.981598, -0.182773, -0.055306,
		32.364460, 33.542561, 43.834850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751543, 33.195930, 44.512745>,  <31.677341, 33.670502, 43.873562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751543, 33.195930, 44.512745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120186, 33.319283, 44.418476>,  <32.341370, 33.393295, 44.361916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120186, 33.319283, 44.418476>,  <31.751543, 33.195930, 44.512745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120186, 33.319283, 44.418476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267178, -0.063627, 0.961545,
		0.281527, -0.949133, -0.141032,
		0.921607, 0.308381, -0.235674,
		32.396667, 33.411797, 44.347775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261612, 32.681408, 44.825935>,  <31.751543, 33.195930, 44.512745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261612, 32.681408, 44.825935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469200, 33.013954, 44.746437>,  <32.593754, 33.213482, 44.698738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469200, 33.013954, 44.746437>,  <32.261612, 32.681408, 44.825935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469200, 33.013954, 44.746437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336553, 0.014995, 0.941545,
		0.785751, -0.555519, -0.272017,
		0.518967, 0.831369, -0.198744,
		32.624889, 33.263363, 44.686813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994972, 32.684013, 45.198429>,  <32.261612, 32.681408, 44.825935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994972, 32.684013, 45.198429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913532, 33.068134, 45.122139>,  <32.864670, 33.298607, 45.076366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913532, 33.068134, 45.122139>,  <32.994972, 32.684013, 45.198429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913532, 33.068134, 45.122139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435968, 0.263345, 0.860570,
		0.876630, 0.092061, -0.472276,
		-0.203597, 0.960299, -0.190721,
		32.852451, 33.356224, 45.064922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667797, 33.126404, 45.329269>,  <32.994972, 32.684013, 45.198429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667797, 33.126404, 45.329269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346874, 33.363487, 45.357571>,  <33.154320, 33.505737, 45.374550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346874, 33.363487, 45.357571>,  <33.667797, 33.126404, 45.329269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346874, 33.363487, 45.357571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339920, 0.356222, 0.870379,
		0.490678, 0.722358, -0.487272,
		-0.802303, 0.592709, 0.070754,
		33.106182, 33.541302, 45.378796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970234, 33.803165, 45.596340>,  <33.667797, 33.126404, 45.329269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970234, 33.803165, 45.596340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572975, 33.812180, 45.642200>,  <33.334618, 33.817589, 45.669716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572975, 33.812180, 45.642200>,  <33.970234, 33.803165, 45.596340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572975, 33.812180, 45.642200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113870, 0.406735, 0.906422,
		-0.026206, 0.913268, -0.406515,
		-0.993150, 0.022536, 0.114653,
		33.275032, 33.818939, 45.676598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897850, 34.378014, 46.121101>,  <33.970234, 33.803165, 45.596340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897850, 34.378014, 46.121101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529629, 34.222740, 46.103737>,  <33.308697, 34.129574, 46.093319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529629, 34.222740, 46.103737>,  <33.897850, 34.378014, 46.121101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529629, 34.222740, 46.103737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206010, 0.388077, 0.898307,
		-0.331865, 0.835886, -0.437217,
		-0.920557, -0.388188, -0.043412,
		33.253460, 34.106285, 46.090714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483711, 34.870872, 46.398590>,  <33.897850, 34.378014, 46.121101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483711, 34.870872, 46.398590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288166, 34.525570, 46.448872>,  <33.170837, 34.318390, 46.479038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288166, 34.525570, 46.448872>,  <33.483711, 34.870872, 46.398590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288166, 34.525570, 46.448872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166662, 0.233859, 0.957880,
		-0.856293, 0.447322, -0.258197,
		-0.488862, -0.863257, 0.125700,
		33.141506, 34.266594, 46.486580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902191, 35.126083, 46.736656>,  <33.483711, 34.870872, 46.398590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902191, 35.126083, 46.736656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982666, 34.738113, 46.791451>,  <33.030952, 34.505333, 46.824329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982666, 34.738113, 46.791451>,  <32.902191, 35.126083, 46.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982666, 34.738113, 46.791451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339853, 0.062046, 0.938430,
		-0.918707, -0.235358, -0.317149,
		0.201189, -0.969926, 0.136989,
		33.043022, 34.447136, 46.832546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338291, 34.864170, 47.068111>,  <32.902191, 35.126083, 46.736656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338291, 34.864170, 47.068111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601322, 34.584953, 47.181480>,  <32.759140, 34.417423, 47.249504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601322, 34.584953, 47.181480>,  <32.338291, 34.864170, 47.068111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601322, 34.584953, 47.181480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250623, 0.152096, 0.956062,
		-0.710481, -0.699716, -0.074931,
		0.657575, -0.698043, 0.283426,
		32.798595, 34.375542, 47.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033676, 34.376106, 47.556728>,  <32.338291, 34.864170, 47.068111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033676, 34.376106, 47.556728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425484, 34.331436, 47.623749>,  <32.660568, 34.304634, 47.663960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425484, 34.331436, 47.623749>,  <32.033676, 34.376106, 47.556728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425484, 34.331436, 47.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137685, 0.235690, 0.962025,
		-0.146923, -0.965390, 0.215487,
		0.979518, -0.111675, 0.167548,
		32.719337, 34.297935, 47.674015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033131, 34.012218, 48.200474>,  <32.033676, 34.376106, 47.556728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033131, 34.012218, 48.200474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387722, 34.193710, 48.164055>,  <32.600475, 34.302605, 48.142204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387722, 34.193710, 48.164055>,  <32.033131, 34.012218, 48.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387722, 34.193710, 48.164055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007817, 0.211391, 0.977370,
		0.462712, -0.865702, 0.190940,
		0.886474, 0.453734, -0.091046,
		32.653664, 34.329830, 48.136742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321766, 33.868633, 48.820065>,  <32.033131, 34.012218, 48.200474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321766, 33.868633, 48.820065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553486, 34.169666, 48.694824>,  <32.692516, 34.350288, 48.619678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553486, 34.169666, 48.694824>,  <32.321766, 33.868633, 48.820065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553486, 34.169666, 48.694824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115557, 0.304411, 0.945505,
		0.806885, -0.583908, 0.089377,
		0.579296, 0.752586, -0.313099,
		32.727276, 34.395443, 48.600895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917603, 33.888630, 49.322086>,  <32.321766, 33.868633, 48.820065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917603, 33.888630, 49.322086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866470, 34.230877, 49.121456>,  <32.835789, 34.436226, 49.001080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866470, 34.230877, 49.121456>,  <32.917603, 33.888630, 49.322086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866470, 34.230877, 49.121456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050053, 0.510644, 0.858334,
		0.990532, 0.084620, -0.108105,
		-0.127835, 0.855618, -0.501574,
		32.828121, 34.487564, 48.970985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346794, 34.304504, 49.665714>,  <32.917603, 33.888630, 49.322086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346794, 34.304504, 49.665714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095551, 34.552528, 49.477669>,  <32.944805, 34.701344, 49.364841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095551, 34.552528, 49.477669>,  <33.346794, 34.304504, 49.665714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095551, 34.552528, 49.477669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086227, 0.544981, 0.834003,
		0.773336, 0.564378, -0.288840,
		-0.628105, 0.620059, -0.470118,
		32.907120, 34.738544, 49.336632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475609, 34.998604, 49.928837>,  <33.346794, 34.304504, 49.665714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475609, 34.998604, 49.928837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133331, 35.080261, 49.738632>,  <32.927963, 35.129253, 49.624508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133331, 35.080261, 49.738632>,  <33.475609, 34.998604, 49.928837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133331, 35.080261, 49.738632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233330, 0.667983, 0.706651,
		0.461890, 0.715629, -0.523959,
		-0.855696, 0.204140, -0.475512,
		32.876621, 35.141502, 49.595978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076298, 35.332008, 49.753746>,  <33.475609, 34.998604, 49.928837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076298, 35.332008, 49.753746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403023, 35.396278, 49.975376>,  <34.599056, 35.434841, 50.108356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403023, 35.396278, 49.975376>,  <34.076298, 35.332008, 49.753746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403023, 35.396278, 49.975376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523367, -0.610447, -0.594510,
		0.242712, 0.775589, -0.582712,
		0.816810, 0.160677, 0.554080,
		34.648067, 35.444481, 50.141602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518211, 35.560421, 49.242180>,  <34.076298, 35.332008, 49.753746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518211, 35.560421, 49.242180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738701, 35.423180, 49.546398>,  <34.870995, 35.340836, 49.728928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738701, 35.423180, 49.546398>,  <34.518211, 35.560421, 49.242180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738701, 35.423180, 49.546398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594216, -0.478457, -0.646518,
		0.585711, 0.808307, -0.059860,
		0.551226, -0.343103, 0.760546,
		34.904068, 35.320248, 49.774563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225864, 35.802166, 49.118500>,  <34.518211, 35.560421, 49.242180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225864, 35.802166, 49.118500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208050, 35.488708, 49.366341>,  <35.197361, 35.300632, 49.515045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208050, 35.488708, 49.366341>,  <35.225864, 35.802166, 49.118500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208050, 35.488708, 49.366341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678580, -0.478912, -0.556932,
		0.733175, 0.395651, 0.553096,
		-0.044533, -0.783648, 0.619607,
		35.194691, 35.253613, 49.552223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832638, 35.540073, 49.052082>,  <35.225864, 35.802166, 49.118500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832638, 35.540073, 49.052082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639103, 35.226162, 49.207016>,  <35.522980, 35.037815, 49.299976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639103, 35.226162, 49.207016>,  <35.832638, 35.540073, 49.052082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639103, 35.226162, 49.207016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541438, -0.616142, -0.572026,
		0.687563, -0.067054, 0.723022,
		-0.483842, -0.784775, 0.387331,
		35.493950, 34.990730, 49.323215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322777, 34.995319, 49.088551>,  <35.832638, 35.540073, 49.052082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322777, 34.995319, 49.088551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954617, 34.839714, 49.104259>,  <35.733723, 34.746353, 49.113686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954617, 34.839714, 49.104259>,  <36.322777, 34.995319, 49.088551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954617, 34.839714, 49.104259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248009, -0.658521, -0.710522,
		0.302261, -0.644222, 0.702579,
		-0.920397, -0.389009, 0.039272,
		35.678497, 34.723011, 49.116039>
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
