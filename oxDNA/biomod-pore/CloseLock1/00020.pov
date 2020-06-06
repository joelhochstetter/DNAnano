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
	<24.501673, 35.049393, 35.314163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400501, 34.764812, 35.051907>,  <24.339798, 34.594063, 34.894554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400501, 34.764812, 35.051907>,  <24.501673, 35.049393, 35.314163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400501, 34.764812, 35.051907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258446, 0.603364, -0.754425,
		0.932327, -0.360263, 0.031264,
		-0.252928, -0.711451, -0.655641,
		24.324623, 34.551376, 34.855213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086740, 34.922405, 34.968945>,  <24.501673, 35.049393, 35.314163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086740, 34.922405, 34.968945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772936, 34.807251, 34.749249>,  <24.584654, 34.738159, 34.617432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772936, 34.807251, 34.749249>,  <25.086740, 34.922405, 34.968945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772936, 34.807251, 34.749249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354882, 0.517904, -0.778354,
		0.508527, -0.805544, -0.304138,
		-0.784512, -0.287881, -0.549241,
		24.537582, 34.720886, 34.584476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394526, 34.661434, 34.388386>,  <25.086740, 34.922405, 34.968945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394526, 34.661434, 34.388386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023361, 34.782501, 34.301327>,  <24.800663, 34.855141, 34.249092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023361, 34.782501, 34.301327>,  <25.394526, 34.661434, 34.388386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023361, 34.782501, 34.301327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357584, 0.557533, -0.749193,
		-0.105412, -0.773013, -0.625572,
		-0.927913, 0.302669, -0.217646,
		24.744987, 34.873302, 34.236034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225561, 34.609276, 33.616882>,  <25.394526, 34.661434, 34.388386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225561, 34.609276, 33.616882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006922, 34.890915, 33.798199>,  <24.875738, 35.059898, 33.906990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006922, 34.890915, 33.798199>,  <25.225561, 34.609276, 33.616882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006922, 34.890915, 33.798199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093630, 0.589308, -0.802465,
		-0.832144, -0.396184, -0.388040,
		-0.546599, 0.704098, 0.453294,
		24.842941, 35.102146, 33.934185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679277, 34.676880, 33.203995>,  <25.225561, 34.609276, 33.616882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679277, 34.676880, 33.203995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731646, 35.028549, 33.387260>,  <24.763067, 35.239552, 33.497219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731646, 35.028549, 33.387260>,  <24.679277, 34.676880, 33.203995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731646, 35.028549, 33.387260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130818, 0.442785, -0.887034,
		-0.982724, 0.176068, -0.057041,
		0.130921, 0.879171, 0.458168,
		24.770922, 35.292301, 33.524712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256952, 35.171429, 32.898228>,  <24.679277, 34.676880, 33.203995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256952, 35.171429, 32.898228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594952, 35.318314, 33.053730>,  <24.797752, 35.406445, 33.147034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594952, 35.318314, 33.053730>,  <24.256952, 35.171429, 32.898228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594952, 35.318314, 33.053730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199256, 0.458420, -0.866111,
		-0.496258, 0.809326, 0.314196,
		0.845000, 0.367208, 0.388758,
		24.848452, 35.428474, 33.170357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284555, 35.874512, 32.761284>,  <24.256952, 35.171429, 32.898228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284555, 35.874512, 32.761284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670071, 35.813774, 32.848969>,  <24.901381, 35.777332, 32.901581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670071, 35.813774, 32.848969>,  <24.284555, 35.874512, 32.761284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670071, 35.813774, 32.848969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261593, 0.697901, -0.666711,
		-0.051754, 0.699913, 0.712351,
		0.963790, -0.151841, 0.219211,
		24.959208, 35.768223, 32.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588972, 36.430054, 32.461708>,  <24.284555, 35.874512, 32.761284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588972, 36.430054, 32.461708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907259, 36.201931, 32.543274>,  <25.098232, 36.065056, 32.592213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907259, 36.201931, 32.543274>,  <24.588972, 36.430054, 32.461708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907259, 36.201931, 32.543274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555036, 0.551877, -0.622388,
		0.242420, 0.608423, 0.755681,
		0.795718, -0.570310, 0.203911,
		25.145975, 36.030838, 32.604446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099268, 36.852367, 32.608788>,  <24.588972, 36.430054, 32.461708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099268, 36.852367, 32.608788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253586, 36.499882, 32.499516>,  <25.346176, 36.288391, 32.433952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253586, 36.499882, 32.499516>,  <25.099268, 36.852367, 32.608788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253586, 36.499882, 32.499516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536089, 0.455103, -0.710978,
		0.750847, 0.127843, 0.647985,
		0.385793, -0.881213, -0.273178,
		25.369324, 36.235519, 32.417561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745657, 36.982067, 32.612988>,  <25.099268, 36.852367, 32.608788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745657, 36.982067, 32.612988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708658, 36.660061, 32.378590>,  <25.686459, 36.466858, 32.237949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708658, 36.660061, 32.378590>,  <25.745657, 36.982067, 32.612988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708658, 36.660061, 32.378590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591670, 0.428911, -0.682614,
		0.800856, -0.409856, 0.436632,
		-0.092497, -0.805017, -0.585996,
		25.680908, 36.418556, 32.202789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338099, 36.957966, 32.207386>,  <25.745657, 36.982067, 32.612988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338099, 36.957966, 32.207386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120905, 36.705975, 31.985287>,  <25.990589, 36.554779, 31.852028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120905, 36.705975, 31.985287>,  <26.338099, 36.957966, 32.207386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120905, 36.705975, 31.985287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562939, 0.217563, -0.797349,
		0.623111, -0.745519, 0.236503,
		-0.542985, -0.629974, -0.555248,
		25.958010, 36.516983, 31.818712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890160, 36.467693, 31.877754>,  <26.338099, 36.957966, 32.207386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890160, 36.467693, 31.877754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540279, 36.491070, 31.685305>,  <26.330351, 36.505096, 31.569834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540279, 36.491070, 31.685305>,  <26.890160, 36.467693, 31.877754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540279, 36.491070, 31.685305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478272, 0.264767, -0.837350,
		0.078446, -0.962540, -0.259546,
		-0.874701, 0.058447, -0.481125,
		26.277868, 36.508602, 31.540966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054865, 36.239269, 31.173273>,  <26.890160, 36.467693, 31.877754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054865, 36.239269, 31.173273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694876, 36.411602, 31.146648>,  <26.478882, 36.515003, 31.130674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694876, 36.411602, 31.146648>,  <27.054865, 36.239269, 31.173273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694876, 36.411602, 31.146648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281902, 0.458674, -0.842704,
		-0.332534, -0.777175, -0.534247,
		-0.899974, 0.430833, -0.066562,
		26.424883, 36.540852, 31.126680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704763, 35.955956, 30.502293>,  <27.054865, 36.239269, 31.173273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704763, 35.955956, 30.502293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578064, 36.311481, 30.634762>,  <26.502045, 36.524799, 30.714243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578064, 36.311481, 30.634762>,  <26.704763, 35.955956, 30.502293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578064, 36.311481, 30.634762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487163, 0.452026, -0.747225,
		-0.813845, -0.075347, -0.576177,
		-0.316748, 0.888817, 0.331173,
		26.483040, 36.578125, 30.734114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313900, 36.205326, 29.912754>,  <26.704763, 35.955956, 30.502293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313900, 36.205326, 29.912754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364178, 36.531914, 30.138172>,  <26.394344, 36.727867, 30.273424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364178, 36.531914, 30.138172>,  <26.313900, 36.205326, 29.912754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364178, 36.531914, 30.138172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355974, 0.493105, -0.793807,
		-0.926004, 0.300384, -0.228661,
		0.125693, 0.816466, 0.563546,
		26.401886, 36.776855, 30.307236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953386, 36.838337, 29.469116>,  <26.313900, 36.205326, 29.912754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953386, 36.838337, 29.469116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208553, 37.004459, 29.728525>,  <26.361652, 37.104134, 29.884171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208553, 37.004459, 29.728525>,  <25.953386, 36.838337, 29.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208553, 37.004459, 29.728525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440611, 0.493842, -0.749655,
		-0.631606, 0.763963, 0.132040,
		0.637916, 0.415308, 0.648524,
		26.399927, 37.129051, 29.923082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994068, 37.519424, 29.194820>,  <25.953386, 36.838337, 29.469116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994068, 37.519424, 29.194820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321255, 37.492397, 29.423334>,  <26.517567, 37.476181, 29.560442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321255, 37.492397, 29.423334>,  <25.994068, 37.519424, 29.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321255, 37.492397, 29.423334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494097, 0.591113, -0.637537,
		-0.294620, 0.803754, 0.516894,
		0.817965, -0.067565, 0.571286,
		26.566645, 37.472126, 29.594721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274870, 38.216675, 29.318182>,  <25.994068, 37.519424, 29.194820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274870, 38.216675, 29.318182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589558, 37.977280, 29.378693>,  <26.778370, 37.833645, 29.414999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589558, 37.977280, 29.378693>,  <26.274870, 38.216675, 29.318182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589558, 37.977280, 29.378693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567262, 0.604238, -0.559563,
		0.243482, 0.526035, 0.814864,
		0.786721, -0.598485, 0.151278,
		26.825575, 37.797733, 29.424076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870356, 38.684940, 29.532963>,  <26.274870, 38.216675, 29.318182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870356, 38.684940, 29.532963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061548, 38.353172, 29.417309>,  <27.176264, 38.154114, 29.347916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061548, 38.353172, 29.417309>,  <26.870356, 38.684940, 29.532963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061548, 38.353172, 29.417309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662672, 0.556570, -0.501094,
		0.576541, 0.047912, 0.815662,
		0.477982, -0.829418, -0.289136,
		27.204943, 38.104347, 29.330568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520111, 38.655487, 29.802935>,  <26.870356, 38.684940, 29.532963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520111, 38.655487, 29.802935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526215, 38.448051, 29.460981>,  <27.529877, 38.323589, 29.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526215, 38.448051, 29.460981>,  <27.520111, 38.655487, 29.802935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526215, 38.448051, 29.460981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766566, 0.555018, -0.323005,
		0.641985, -0.650397, 0.406004,
		0.015259, -0.518593, -0.854885,
		27.530792, 38.292473, 29.204515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226019, 38.690083, 29.648722>,  <27.520111, 38.655487, 29.802935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226019, 38.690083, 29.648722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078564, 38.520523, 29.317802>,  <27.990091, 38.418789, 29.119251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078564, 38.520523, 29.317802>,  <28.226019, 38.690083, 29.648722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078564, 38.520523, 29.317802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727101, 0.423003, -0.540733,
		0.579163, -0.800863, 0.152280,
		-0.368638, -0.423895, -0.827296,
		27.967972, 38.393356, 29.069614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880621, 38.446178, 29.262959>,  <28.226019, 38.690083, 29.648722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880621, 38.446178, 29.262959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560648, 38.510761, 29.031775>,  <28.368664, 38.549511, 28.893064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560648, 38.510761, 29.031775>,  <28.880621, 38.446178, 29.262959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560648, 38.510761, 29.031775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561883, 0.539689, -0.626916,
		0.210701, -0.826237, -0.522434,
		-0.799933, 0.161455, -0.577962,
		28.320667, 38.559196, 28.858385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068552, 38.236774, 28.549706>,  <28.880621, 38.446178, 29.262959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068552, 38.236774, 28.549706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772772, 38.502560, 28.506433>,  <28.595304, 38.662029, 28.480471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772772, 38.502560, 28.506433>,  <29.068552, 38.236774, 28.549706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772772, 38.502560, 28.506433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497485, 0.431062, -0.752791,
		-0.453569, -0.610469, -0.649309,
		-0.739449, 0.664464, -0.108182,
		28.550938, 38.701900, 28.473978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021605, 38.341446, 27.818623>,  <29.068552, 38.236774, 28.549706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021605, 38.341446, 27.818623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857668, 38.658463, 27.999245>,  <28.759306, 38.848675, 28.107618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857668, 38.658463, 27.999245>,  <29.021605, 38.341446, 27.818623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857668, 38.658463, 27.999245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572362, 0.608899, -0.549221,
		-0.710234, 0.033359, -0.703175,
		-0.409841, 0.792546, 0.451554,
		28.734716, 38.896225, 28.134710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935863, 38.922520, 27.284006>,  <29.021605, 38.341446, 27.818623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935863, 38.922520, 27.284006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952358, 39.085419, 27.648960>,  <28.962255, 39.183159, 27.867933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952358, 39.085419, 27.648960>,  <28.935863, 38.922520, 27.284006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952358, 39.085419, 27.648960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676051, 0.661014, -0.325601,
		-0.735700, 0.630246, -0.248062,
		0.041236, 0.407247, 0.912387,
		28.964729, 39.207592, 27.922676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680559, 38.739883, 27.256104>,  <28.935863, 38.922520, 27.284006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680559, 38.739883, 27.256104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910543, 38.698200, 26.931498>,  <30.048534, 38.673191, 26.736734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910543, 38.698200, 26.931498>,  <29.680559, 38.739883, 27.256104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910543, 38.698200, 26.931498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070995, 0.994470, -0.077396,
		0.815093, -0.013114, 0.579181,
		0.574963, -0.104204, -0.811517,
		30.083033, 38.666939, 26.688042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384556, 38.857071, 27.274754>,  <29.680559, 38.739883, 27.256104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384556, 38.857071, 27.274754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179745, 38.949112, 26.943724>,  <30.056858, 39.004337, 26.745106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179745, 38.949112, 26.943724>,  <30.384556, 38.857071, 27.274754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179745, 38.949112, 26.943724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172845, 0.971344, 0.163141,
		0.841400, -0.059510, -0.537127,
		-0.512027, 0.230106, -0.827575,
		30.026136, 39.018143, 26.695452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852032, 39.295242, 26.798225>,  <30.384556, 38.857071, 27.274754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852032, 39.295242, 26.798225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456427, 39.349480, 26.821772>,  <30.219063, 39.382023, 26.835899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456427, 39.349480, 26.821772>,  <30.852032, 39.295242, 26.798225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456427, 39.349480, 26.821772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146585, 0.951025, 0.272148,
		-0.019082, 0.277787, -0.960453,
		-0.989014, 0.135595, 0.058867,
		30.159723, 39.390160, 26.839432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678764, 39.812580, 26.339457>,  <30.852032, 39.295242, 26.798225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678764, 39.812580, 26.339457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431242, 39.823254, 26.653494>,  <30.282728, 39.829659, 26.841915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431242, 39.823254, 26.653494>,  <30.678764, 39.812580, 26.339457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431242, 39.823254, 26.653494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235080, 0.959913, 0.152660,
		-0.749545, 0.279026, -0.600272,
		-0.618805, 0.026687, 0.785091,
		30.245600, 39.831261, 26.889021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114265, 40.358082, 26.287064>,  <30.678764, 39.812580, 26.339457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114265, 40.358082, 26.287064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211039, 40.262123, 26.663132>,  <30.269102, 40.204548, 26.888773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211039, 40.262123, 26.663132>,  <30.114265, 40.358082, 26.287064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211039, 40.262123, 26.663132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160512, 0.965500, 0.205051,
		-0.956924, 0.101299, 0.272094,
		0.241935, -0.239893, 0.940170,
		30.283619, 40.190155, 26.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791655, 40.799656, 26.901739>,  <30.114265, 40.358082, 26.287064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791655, 40.799656, 26.901739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139526, 40.649567, 27.030031>,  <30.348249, 40.559513, 27.107006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139526, 40.649567, 27.030031>,  <29.791655, 40.799656, 26.901739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139526, 40.649567, 27.030031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229107, 0.882362, 0.411032,
		-0.437228, -0.283984, 0.853338,
		0.869679, -0.375220, 0.320731,
		30.400431, 40.537003, 27.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818163, 40.710438, 27.632948>,  <29.791655, 40.799656, 26.901739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818163, 40.710438, 27.632948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184734, 40.801781, 27.501490>,  <30.404678, 40.856586, 27.422615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184734, 40.801781, 27.501490>,  <29.818163, 40.710438, 27.632948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184734, 40.801781, 27.501490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024833, 0.852080, 0.522822,
		0.399423, -0.470969, 0.786543,
		0.916430, 0.228359, -0.328645,
		30.459663, 40.870289, 27.402897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121473, 40.641602, 28.233501>,  <29.818163, 40.710438, 27.632948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121473, 40.641602, 28.233501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242615, 40.880714, 27.936602>,  <30.315300, 41.024181, 27.758461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242615, 40.880714, 27.936602>,  <30.121473, 40.641602, 28.233501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242615, 40.880714, 27.936602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412841, 0.619671, 0.667510,
		0.858978, -0.508587, -0.059121,
		0.302852, 0.597784, -0.742250,
		30.333469, 41.060051, 27.713926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748745, 40.867855, 28.444710>,  <30.121473, 40.641602, 28.233501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748745, 40.867855, 28.444710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670303, 41.124836, 28.148386>,  <30.623238, 41.279026, 27.970592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670303, 41.124836, 28.148386>,  <30.748745, 40.867855, 28.444710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670303, 41.124836, 28.148386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486711, 0.719621, 0.495235,
		0.851267, -0.263442, -0.453809,
		-0.196105, 0.642451, -0.740810,
		30.611471, 41.317570, 27.926144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420574, 40.734840, 28.851248>,  <30.748745, 40.867855, 28.444710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420574, 40.734840, 28.851248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446789, 41.076794, 29.057116>,  <31.462517, 41.281963, 29.180635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446789, 41.076794, 29.057116>,  <31.420574, 40.734840, 28.851248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446789, 41.076794, 29.057116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718745, -0.317338, 0.618630,
		0.692178, -0.410458, 0.593644,
		0.065536, 0.854881, 0.514669,
		31.466450, 41.333260, 29.211515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595688, 40.605015, 29.576508>,  <31.420574, 40.734840, 28.851248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595688, 40.605015, 29.576508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424721, 40.966637, 29.575815>,  <31.322140, 41.183609, 29.575399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424721, 40.966637, 29.575815>,  <31.595688, 40.605015, 29.576508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424721, 40.966637, 29.575815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609617, -0.286801, 0.738994,
		0.667592, 0.316916, 0.673710,
		-0.427420, 0.904052, -0.001732,
		31.296495, 41.237854, 29.575296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668480, 40.624981, 30.240629>,  <31.595688, 40.605015, 29.576508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668480, 40.624981, 30.240629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380362, 40.857349, 30.088999>,  <31.207491, 40.996773, 29.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380362, 40.857349, 30.088999>,  <31.668480, 40.624981, 30.240629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380362, 40.857349, 30.088999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588224, -0.221896, 0.777659,
		0.367645, 0.783128, 0.501544,
		-0.720298, 0.580923, -0.379076,
		31.164272, 41.031628, 29.975275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417572, 41.173676, 30.854376>,  <31.668480, 40.624981, 30.240629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417572, 41.173676, 30.854376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144047, 41.117588, 30.567951>,  <30.979933, 41.083935, 30.396097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144047, 41.117588, 30.567951>,  <31.417572, 41.173676, 30.854376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144047, 41.117588, 30.567951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602690, -0.444641, 0.662616,
		-0.411298, 0.884667, 0.219544,
		-0.683812, -0.140216, -0.716059,
		30.938904, 41.075523, 30.353134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828526, 41.570858, 31.111784>,  <31.417572, 41.173676, 30.854376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828526, 41.570858, 31.111784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717621, 41.295586, 30.843597>,  <30.651077, 41.130421, 30.682686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717621, 41.295586, 30.843597>,  <30.828526, 41.570858, 31.111784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717621, 41.295586, 30.843597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684164, -0.348526, 0.640663,
		-0.674570, 0.636341, -0.374199,
		-0.277262, -0.688186, -0.670467,
		30.634441, 41.089130, 30.642458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138954, 41.661621, 31.114359>,  <30.828526, 41.570858, 31.111784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138954, 41.661621, 31.114359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221409, 41.293884, 30.980305>,  <30.270882, 41.073242, 30.899872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221409, 41.293884, 30.980305>,  <30.138954, 41.661621, 31.114359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221409, 41.293884, 30.980305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695859, -0.378516, 0.610332,
		-0.687958, 0.107394, -0.717760,
		0.206138, -0.919344, -0.335134,
		30.283251, 41.018082, 30.879765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502583, 41.382629, 31.095663>,  <30.138954, 41.661621, 31.114359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502583, 41.382629, 31.095663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719692, 41.052910, 31.031248>,  <29.849958, 40.855080, 30.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719692, 41.052910, 31.031248>,  <29.502583, 41.382629, 31.095663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719692, 41.052910, 31.031248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699037, -0.549657, 0.457411,
		-0.465557, -0.135700, -0.874553,
		0.542775, -0.824295, -0.161037,
		29.882524, 40.805622, 30.982937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023146, 40.901585, 30.761209>,  <29.502583, 41.382629, 31.095663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023146, 40.901585, 30.761209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317852, 40.704773, 30.946716>,  <29.494677, 40.586685, 31.058020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317852, 40.704773, 30.946716>,  <29.023146, 40.901585, 30.761209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317852, 40.704773, 30.946716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676063, -0.546776, 0.493938,
		0.010545, -0.677454, -0.735490,
		0.736768, -0.492029, 0.463768,
		29.538883, 40.557163, 31.085846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827936, 40.244781, 30.677097>,  <29.023146, 40.901585, 30.761209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827936, 40.244781, 30.677097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098057, 40.204586, 30.969362>,  <29.260130, 40.180470, 31.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098057, 40.204586, 30.969362>,  <28.827936, 40.244781, 30.677097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098057, 40.204586, 30.969362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546416, -0.733558, 0.404131,
		0.495375, -0.672158, -0.550280,
		0.675302, -0.100486, 0.730664,
		29.300648, 40.174438, 31.188560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037704, 39.493580, 30.778137>,  <28.827936, 40.244781, 30.677097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037704, 39.493580, 30.778137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100687, 39.696049, 31.117311>,  <29.138477, 39.817532, 31.320816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100687, 39.696049, 31.117311>,  <29.037704, 39.493580, 30.778137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100687, 39.696049, 31.117311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538848, -0.675516, 0.503311,
		0.827557, -0.536157, 0.166388,
		0.157456, 0.506176, 0.847935,
		29.147924, 39.847900, 31.371693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210962, 38.969944, 31.288454>,  <29.037704, 39.493580, 30.778137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210962, 38.969944, 31.288454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099833, 39.275925, 31.520887>,  <29.033155, 39.459515, 31.660347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099833, 39.275925, 31.520887>,  <29.210962, 38.969944, 31.288454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099833, 39.275925, 31.520887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574543, -0.617099, 0.537670,
		0.769880, -0.184482, 0.610943,
		-0.277822, 0.764954, 0.581085,
		29.016485, 39.505409, 31.695213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437334, 38.746738, 31.924944>,  <29.210962, 38.969944, 31.288454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437334, 38.746738, 31.924944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169888, 39.040691, 31.970375>,  <29.009420, 39.217064, 31.997635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169888, 39.040691, 31.970375>,  <29.437334, 38.746738, 31.924944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169888, 39.040691, 31.970375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493622, -0.552866, 0.671324,
		0.556139, 0.392793, 0.732409,
		-0.668615, 0.734883, 0.113579,
		28.969303, 39.261158, 32.004448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359844, 38.850368, 32.544720>,  <29.437334, 38.746738, 31.924944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359844, 38.850368, 32.544720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010971, 39.016888, 32.441963>,  <28.801647, 39.116798, 32.380310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010971, 39.016888, 32.441963>,  <29.359844, 38.850368, 32.544720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010971, 39.016888, 32.441963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478757, -0.618578, 0.623019,
		0.100458, 0.666373, 0.738820,
		-0.872181, 0.416302, -0.256890,
		28.749317, 39.141777, 32.364895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993450, 38.984222, 33.202206>,  <29.359844, 38.850368, 32.544720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993450, 38.984222, 33.202206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712875, 38.991638, 32.917210>,  <28.544531, 38.996086, 32.746212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712875, 38.991638, 32.917210>,  <28.993450, 38.984222, 33.202206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712875, 38.991638, 32.917210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610377, -0.531778, 0.587070,
		-0.368006, 0.846681, 0.384322,
		-0.701435, 0.018536, -0.712492,
		28.502445, 38.997200, 32.703461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298405, 39.207447, 33.460358>,  <28.993450, 38.984222, 33.202206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298405, 39.207447, 33.460358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228872, 38.974796, 33.142490>,  <28.187153, 38.835205, 32.951771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228872, 38.974796, 33.142490>,  <28.298405, 39.207447, 33.460358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228872, 38.974796, 33.142490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697859, -0.496603, 0.516119,
		-0.694821, 0.644283, -0.319566,
		-0.173829, -0.581623, -0.794669,
		28.176723, 38.800308, 32.904091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643757, 38.838486, 33.603157>,  <28.298405, 39.207447, 33.460358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643757, 38.838486, 33.603157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789169, 38.657589, 33.277378>,  <27.876417, 38.549049, 33.081913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789169, 38.657589, 33.277378>,  <27.643757, 38.838486, 33.603157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789169, 38.657589, 33.277378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673390, -0.731689, 0.105719,
		-0.643731, 0.510007, -0.570529,
		0.363532, -0.452243, -0.814445,
		27.898230, 38.521915, 33.033043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057257, 38.578075, 33.348881>,  <27.643757, 38.838486, 33.603157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057257, 38.578075, 33.348881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350319, 38.364765, 33.179726>,  <27.526155, 38.236778, 33.078232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350319, 38.364765, 33.179726>,  <27.057257, 38.578075, 33.348881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350319, 38.364765, 33.179726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482949, -0.845158, 0.229059,
		-0.479559, 0.036412, -0.876754,
		0.732655, -0.533275, -0.422888,
		27.570116, 38.204784, 33.052860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752869, 37.962826, 33.020821>,  <27.057257, 38.578075, 33.348881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752869, 37.962826, 33.020821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135349, 37.870914, 33.093353>,  <27.364838, 37.815769, 33.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135349, 37.870914, 33.093353>,  <26.752869, 37.962826, 33.020821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135349, 37.870914, 33.093353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285580, -0.868240, 0.405714,
		0.064215, -0.439729, -0.895832,
		0.956201, -0.229779, 0.181331,
		27.422209, 37.801979, 33.147751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796301, 37.224339, 32.738071>,  <26.752869, 37.962826, 33.020821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796301, 37.224339, 32.738071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091297, 37.274292, 33.003555>,  <27.268295, 37.304264, 33.162846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091297, 37.274292, 33.003555>,  <26.796301, 37.224339, 32.738071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091297, 37.274292, 33.003555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279501, -0.838202, 0.468291,
		0.614808, -0.530868, -0.583258,
		0.737489, 0.124888, 0.663712,
		27.312544, 37.311760, 33.202667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004616, 36.637642, 32.763111>,  <26.796301, 37.224339, 32.738071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004616, 36.637642, 32.763111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156609, 36.780590, 33.104382>,  <27.247805, 36.866360, 33.309143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156609, 36.780590, 33.104382>,  <27.004616, 36.637642, 32.763111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156609, 36.780590, 33.104382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333940, -0.807150, 0.486820,
		0.862611, -0.469891, -0.187364,
		0.379983, 0.357367, 0.853171,
		27.270603, 36.887802, 33.360332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440989, 36.071777, 33.069809>,  <27.004616, 36.637642, 32.763111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440989, 36.071777, 33.069809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365122, 36.322189, 33.372360>,  <27.319601, 36.472435, 33.553890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365122, 36.322189, 33.372360>,  <27.440989, 36.071777, 33.069809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365122, 36.322189, 33.372360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366745, -0.759776, 0.536878,
		0.910782, -0.175571, 0.373698,
		-0.189667, 0.626031, 0.756380,
		27.308222, 36.509998, 33.599274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753988, 35.754436, 33.700809>,  <27.440989, 36.071777, 33.069809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753988, 35.754436, 33.700809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488190, 36.010391, 33.855206>,  <27.328711, 36.163963, 33.947842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488190, 36.010391, 33.855206>,  <27.753988, 35.754436, 33.700809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488190, 36.010391, 33.855206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331931, -0.715501, 0.614719,
		0.669529, 0.280355, 0.687846,
		-0.664494, 0.639890, 0.385990,
		27.288841, 36.202358, 33.971004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907448, 35.694023, 34.336338>,  <27.753988, 35.754436, 33.700809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907448, 35.694023, 34.336338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531824, 35.826088, 34.298058>,  <27.306450, 35.905327, 34.275089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531824, 35.826088, 34.298058>,  <27.907448, 35.694023, 34.336338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531824, 35.826088, 34.298058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305779, -0.675102, 0.671370,
		0.157054, 0.659720, 0.734918,
		-0.939060, 0.330164, -0.095701,
		27.250107, 35.925137, 34.269348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596306, 35.587910, 35.061317>,  <27.907448, 35.694023, 34.336338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596306, 35.587910, 35.061317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296698, 35.569408, 34.796944>,  <27.116934, 35.558308, 34.638321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296698, 35.569408, 34.796944>,  <27.596306, 35.587910, 35.061317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296698, 35.569408, 34.796944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319209, -0.848954, 0.421169,
		-0.580582, 0.526439, 0.621118,
		-0.749020, -0.046256, -0.660931,
		27.071991, 35.555531, 34.598663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868446, 35.492428, 35.401936>,  <27.596306, 35.587910, 35.061317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868446, 35.492428, 35.401936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904535, 35.311096, 35.047230>,  <26.926189, 35.202297, 34.834408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904535, 35.311096, 35.047230>,  <26.868446, 35.492428, 35.401936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904535, 35.311096, 35.047230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209059, -0.879178, 0.428182,
		-0.973732, 0.146754, -0.174096,
		0.090224, -0.453331, -0.886764,
		26.931602, 35.175098, 34.781200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680405, 34.886578, 35.906841>,  <26.868446, 35.492428, 35.401936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680405, 34.886578, 35.906841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064934, 34.987431, 35.951176>,  <27.295652, 35.047943, 35.977776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064934, 34.987431, 35.951176>,  <26.680405, 34.886578, 35.906841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064934, 34.987431, 35.951176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145014, 0.805497, -0.574582,
		-0.234150, 0.536287, 0.810907,
		0.961324, 0.252132, 0.110838,
		27.353331, 35.063068, 35.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766617, 35.639065, 36.159435>,  <26.680405, 34.886578, 35.906841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766617, 35.639065, 36.159435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113905, 35.519989, 36.000652>,  <27.322277, 35.448544, 35.905380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113905, 35.519989, 36.000652>,  <26.766617, 35.639065, 36.159435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113905, 35.519989, 36.000652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063547, 0.860155, -0.506058,
		0.492095, 0.414144, 0.765721,
		0.868219, -0.297688, -0.396960,
		27.374371, 35.430683, 35.881565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350056, 36.161674, 36.326290>,  <26.766617, 35.639065, 36.159435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350056, 36.161674, 36.326290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409378, 35.956741, 35.987934>,  <27.444971, 35.833782, 35.784920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409378, 35.956741, 35.987934>,  <27.350056, 36.161674, 36.326290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409378, 35.956741, 35.987934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306190, 0.837102, -0.453329,
		0.940347, -0.191771, 0.281017,
		0.148304, -0.512332, -0.845886,
		27.453869, 35.803043, 35.734169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036963, 36.285423, 36.123196>,  <27.350056, 36.161674, 36.326290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036963, 36.285423, 36.123196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847847, 36.170082, 35.790131>,  <27.734377, 36.100876, 35.590294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847847, 36.170082, 35.790131>,  <28.036963, 36.285423, 36.123196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847847, 36.170082, 35.790131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571474, 0.618935, -0.538829,
		0.670737, -0.730595, -0.127839,
		-0.472790, -0.288356, -0.832659,
		27.706009, 36.083576, 35.540333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427639, 35.936943, 35.628742>,  <28.036963, 36.285423, 36.123196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427639, 35.936943, 35.628742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152372, 36.151318, 35.433109>,  <27.987213, 36.279942, 35.315731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152372, 36.151318, 35.433109>,  <28.427639, 35.936943, 35.628742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152372, 36.151318, 35.433109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725533, 0.503218, -0.469440,
		-0.005474, -0.677898, -0.735136,
		-0.688166, 0.535935, -0.489083,
		27.945923, 36.312099, 35.286385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136076, 35.959980, 35.661774>,  <28.427639, 35.936943, 35.628742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136076, 35.959980, 35.661774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497467, 36.035362, 35.507782>,  <29.714302, 36.080593, 35.415386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497467, 36.035362, 35.507782>,  <29.136076, 35.959980, 35.661774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497467, 36.035362, 35.507782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421686, 0.551815, -0.719500,
		0.076843, 0.812394, 0.578023,
		0.903480, 0.188456, -0.384978,
		29.768511, 36.091900, 35.392288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629545, 35.996555, 36.225933>,  <29.136076, 35.959980, 35.661774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629545, 35.996555, 36.225933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002363, 35.912468, 36.107880>,  <30.226053, 35.862015, 36.037048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002363, 35.912468, 36.107880>,  <29.629545, 35.996555, 36.225933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002363, 35.912468, 36.107880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237865, -0.259466, 0.936001,
		-0.273353, -0.942593, -0.191826,
		0.932040, -0.210230, -0.295136,
		30.281977, 35.849403, 36.019341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806683, 35.289280, 36.345764>,  <29.629545, 35.996555, 36.225933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806683, 35.289280, 36.345764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154596, 35.486427, 36.336319>,  <30.363344, 35.604713, 36.330650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154596, 35.486427, 36.336319>,  <29.806683, 35.289280, 36.345764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154596, 35.486427, 36.336319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200236, -0.308811, 0.929807,
		0.450978, -0.813460, -0.367289,
		0.869784, 0.492867, -0.023617,
		30.415531, 35.634289, 36.329235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321201, 34.771042, 36.544918>,  <29.806683, 35.289280, 36.345764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321201, 34.771042, 36.544918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496496, 35.125107, 36.607449>,  <30.601673, 35.337543, 36.644966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496496, 35.125107, 36.607449>,  <30.321201, 34.771042, 36.544918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496496, 35.125107, 36.607449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288242, -0.303124, 0.908313,
		0.851390, -0.352996, -0.387981,
		0.438237, 0.885161, 0.156329,
		30.627968, 35.390656, 36.654346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965061, 34.610340, 36.892105>,  <30.321201, 34.771042, 36.544918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965061, 34.610340, 36.892105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880722, 34.995754, 36.958004>,  <30.830118, 35.227001, 36.997543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880722, 34.995754, 36.958004>,  <30.965061, 34.610340, 36.892105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880722, 34.995754, 36.958004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337147, -0.086509, 0.937469,
		0.917537, 0.253208, -0.306613,
		-0.210850, 0.963536, 0.164743,
		30.817467, 35.284817, 37.007427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545584, 34.869629, 37.158482>,  <30.965061, 34.610340, 36.892105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545584, 34.869629, 37.158482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229971, 35.094936, 37.256592>,  <31.040604, 35.230122, 37.315456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229971, 35.094936, 37.256592>,  <31.545584, 34.869629, 37.158482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229971, 35.094936, 37.256592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201744, -0.139537, 0.969448,
		0.580283, 0.814407, -0.003537,
		-0.789032, 0.563268, 0.245273,
		30.993261, 35.263916, 37.330173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792004, 35.166622, 37.829124>,  <31.545584, 34.869629, 37.158482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792004, 35.166622, 37.829124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397884, 35.229225, 37.801716>,  <31.161413, 35.266785, 37.785271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397884, 35.229225, 37.801716>,  <31.792004, 35.166622, 37.829124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397884, 35.229225, 37.801716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090752, -0.139626, 0.986037,
		0.144753, 0.977758, 0.151777,
		-0.985297, 0.156506, -0.068522,
		31.102295, 35.276176, 37.781158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617266, 35.659107, 38.323795>,  <31.792004, 35.166622, 37.829124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617266, 35.659107, 38.323795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260754, 35.489616, 38.259201>,  <31.046846, 35.387924, 38.220444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260754, 35.489616, 38.259201>,  <31.617266, 35.659107, 38.323795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260754, 35.489616, 38.259201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047083, -0.267720, 0.962346,
		-0.451003, 0.865322, 0.218663,
		-0.891280, -0.423725, -0.161484,
		30.993370, 35.362499, 38.210754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211876, 35.872879, 38.892231>,  <31.617266, 35.659107, 38.323795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211876, 35.872879, 38.892231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008169, 35.556618, 38.756279>,  <30.885944, 35.366863, 38.674709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008169, 35.556618, 38.756279>,  <31.211876, 35.872879, 38.892231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008169, 35.556618, 38.756279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168378, -0.295760, 0.940305,
		-0.843975, 0.536097, 0.017493,
		-0.509269, -0.790649, -0.339881,
		30.855389, 35.319424, 38.654316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639421, 35.738308, 39.358921>,  <31.211876, 35.872879, 38.892231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639421, 35.738308, 39.358921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674982, 35.395580, 39.155762>,  <30.696320, 35.189945, 39.033867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674982, 35.395580, 39.155762>,  <30.639421, 35.738308, 39.358921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674982, 35.395580, 39.155762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198790, -0.514917, 0.833872,
		-0.976002, 0.026830, -0.216105,
		0.088903, -0.856820, -0.507894,
		30.701653, 35.138535, 39.003395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054256, 35.280201, 39.566406>,  <30.639421, 35.738308, 39.358921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054256, 35.280201, 39.566406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349926, 35.038738, 39.446926>,  <30.527327, 34.893860, 39.375237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349926, 35.038738, 39.446926>,  <30.054256, 35.280201, 39.566406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349926, 35.038738, 39.446926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192725, -0.614525, 0.764994,
		-0.645357, -0.507892, -0.570578,
		0.739169, -0.603659, -0.298705,
		30.571678, 34.857643, 39.357315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776175, 34.627831, 39.285721>,  <30.054256, 35.280201, 39.566406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776175, 34.627831, 39.285721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157993, 34.569168, 39.389511>,  <30.387085, 34.533970, 39.451786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157993, 34.569168, 39.389511>,  <29.776175, 34.627831, 39.285721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157993, 34.569168, 39.389511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296214, -0.563345, 0.771297,
		0.033064, -0.813102, -0.581181,
		0.954549, -0.146652, 0.259479,
		30.444359, 34.525173, 39.467354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843515, 34.025543, 39.556660>,  <29.776175, 34.627831, 39.285721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843515, 34.025543, 39.556660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198463, 34.163937, 39.678558>,  <30.411432, 34.246971, 39.751698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198463, 34.163937, 39.678558>,  <29.843515, 34.025543, 39.556660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198463, 34.163937, 39.678558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147843, -0.412541, 0.898862,
		0.436711, -0.842677, -0.314925,
		0.887370, 0.345984, 0.304745,
		30.464674, 34.267731, 39.769981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157566, 33.395103, 39.664722>,  <29.843515, 34.025543, 39.556660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157566, 33.395103, 39.664722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395962, 33.644489, 39.867146>,  <30.539000, 33.794121, 39.988598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395962, 33.644489, 39.867146>,  <30.157566, 33.395103, 39.664722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395962, 33.644489, 39.867146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001349, -0.629433, 0.777053,
		0.802990, -0.463799, -0.374295,
		0.595990, 0.623461, 0.506055,
		30.574759, 33.831528, 40.018963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631695, 33.007317, 40.029778>,  <30.157566, 33.395103, 39.664722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631695, 33.007317, 40.029778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617125, 33.349499, 40.236412>,  <30.608383, 33.554810, 40.360394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617125, 33.349499, 40.236412>,  <30.631695, 33.007317, 40.029778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617125, 33.349499, 40.236412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155202, -0.515502, 0.842716,
		0.987211, -0.049480, 0.151545,
		-0.036424, 0.855459, 0.516589,
		30.606197, 33.606136, 40.391388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146740, 33.015007, 40.618412>,  <30.631695, 33.007317, 40.029778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146740, 33.015007, 40.618412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848457, 33.265305, 40.709953>,  <30.669489, 33.415482, 40.764877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848457, 33.265305, 40.709953>,  <31.146740, 33.015007, 40.618412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848457, 33.265305, 40.709953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118244, -0.462315, 0.878796,
		0.655701, 0.628262, 0.418740,
		-0.745704, 0.625741, 0.228852,
		30.624746, 33.453026, 40.778610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115711, 32.830521, 41.292934>,  <31.146740, 33.015007, 40.618412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115711, 32.830521, 41.292934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799944, 33.069355, 41.235928>,  <30.610483, 33.212654, 41.201725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799944, 33.069355, 41.235928>,  <31.115711, 32.830521, 41.292934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799944, 33.069355, 41.235928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335821, -0.225719, 0.914481,
		0.513854, 0.769766, 0.378700,
		-0.789416, 0.597085, -0.142517,
		30.563120, 33.248482, 41.193172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002657, 33.319050, 41.918903>,  <31.115711, 32.830521, 41.292934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002657, 33.319050, 41.918903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664503, 33.302967, 41.705849>,  <30.461611, 33.293316, 41.578014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664503, 33.302967, 41.705849>,  <31.002657, 33.319050, 41.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664503, 33.302967, 41.705849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525173, -0.119546, 0.842557,
		-0.097552, 0.992014, 0.079947,
		-0.845386, -0.040207, -0.532641,
		30.410887, 33.290905, 41.546055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580975, 33.899117, 42.177326>,  <31.002657, 33.319050, 41.918903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580975, 33.899117, 42.177326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353308, 33.628525, 41.990383>,  <30.216707, 33.466167, 41.878220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353308, 33.628525, 41.990383>,  <30.580975, 33.899117, 42.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353308, 33.628525, 41.990383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570352, -0.084586, 0.817034,
		-0.592241, 0.731584, -0.337690,
		-0.569165, -0.676483, -0.467356,
		30.182558, 33.425579, 41.850178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896626, 34.133240, 42.393753>,  <30.580975, 33.899117, 42.177326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896626, 34.133240, 42.393753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893803, 33.755955, 42.260906>,  <29.892109, 33.529583, 42.181198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893803, 33.755955, 42.260906>,  <29.896626, 34.133240, 42.393753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893803, 33.755955, 42.260906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647443, -0.248806, 0.720357,
		-0.762082, 0.220112, -0.608919,
		-0.007056, -0.943211, -0.332120,
		29.891685, 33.472992, 42.161270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144266, 33.946285, 42.232220>,  <29.896626, 34.133240, 42.393753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144266, 33.946285, 42.232220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361603, 33.618668, 42.305916>,  <29.492004, 33.422096, 42.350136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361603, 33.618668, 42.305916>,  <29.144266, 33.946285, 42.232220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361603, 33.618668, 42.305916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521878, -0.157624, 0.838330,
		-0.657589, -0.551652, -0.513085,
		0.543341, -0.819045, 0.184244,
		29.524605, 33.372955, 42.361191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619150, 33.484333, 42.459080>,  <29.144266, 33.946285, 42.232220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619150, 33.484333, 42.459080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968500, 33.331116, 42.579407>,  <29.178110, 33.239185, 42.651604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968500, 33.331116, 42.579407>,  <28.619150, 33.484333, 42.459080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968500, 33.331116, 42.579407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436044, -0.339781, 0.833315,
		-0.216983, -0.858968, -0.463780,
		0.873375, -0.383043, 0.300821,
		29.230513, 33.216202, 42.669655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442575, 32.741852, 42.620987>,  <28.619150, 33.484333, 42.459080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442575, 32.741852, 42.620987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797188, 32.825165, 42.786240>,  <29.009954, 32.875153, 42.885391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797188, 32.825165, 42.786240>,  <28.442575, 32.741852, 42.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797188, 32.825165, 42.786240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245044, -0.546035, 0.801123,
		0.392449, -0.811457, -0.433038,
		0.886531, 0.208286, 0.413134,
		29.063147, 32.887650, 42.910179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684929, 32.077995, 42.942310>,  <28.442575, 32.741852, 42.620987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684929, 32.077995, 42.942310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891710, 32.386234, 43.091404>,  <29.015779, 32.571178, 43.180859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891710, 32.386234, 43.091404>,  <28.684929, 32.077995, 42.942310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891710, 32.386234, 43.091404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250205, -0.280392, 0.926703,
		0.818631, -0.572323, 0.047859,
		0.516954, 0.770602, 0.372735,
		29.046797, 32.617416, 43.203224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162315, 31.828350, 43.445496>,  <28.684929, 32.077995, 42.942310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162315, 31.828350, 43.445496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121922, 32.201424, 43.584003>,  <29.097685, 32.425266, 43.667107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121922, 32.201424, 43.584003>,  <29.162315, 31.828350, 43.445496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121922, 32.201424, 43.584003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222852, -0.360408, 0.905783,
		0.969608, 0.014302, 0.244246,
		-0.100983, 0.932685, 0.346267,
		29.091627, 32.481228, 43.687885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586685, 31.844297, 44.057877>,  <29.162315, 31.828350, 43.445496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586685, 31.844297, 44.057877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354521, 32.165947, 44.109276>,  <29.215223, 32.358936, 44.140114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354521, 32.165947, 44.109276>,  <29.586685, 31.844297, 44.057877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354521, 32.165947, 44.109276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166404, -0.271586, 0.947919,
		0.797141, 0.528799, 0.291440,
		-0.580410, 0.804122, 0.128498,
		29.180397, 32.407185, 44.147823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881792, 32.217583, 44.690510>,  <29.586685, 31.844297, 44.057877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881792, 32.217583, 44.690510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503374, 32.332039, 44.629688>,  <29.276323, 32.400711, 44.593197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503374, 32.332039, 44.629688>,  <29.881792, 32.217583, 44.690510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503374, 32.332039, 44.629688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229517, -0.260493, 0.937798,
		0.228733, 0.922099, 0.312112,
		-0.946046, 0.286141, -0.152054,
		29.219561, 32.417881, 44.584072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644823, 32.422565, 45.363876>,  <29.881792, 32.217583, 44.690510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644823, 32.422565, 45.363876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298883, 32.373089, 45.169254>,  <29.091320, 32.343403, 45.052483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298883, 32.373089, 45.169254>,  <29.644823, 32.422565, 45.363876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298883, 32.373089, 45.169254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434693, -0.300343, 0.849020,
		-0.251152, 0.945777, 0.205983,
		-0.864849, -0.123694, -0.486555,
		29.039429, 32.335979, 45.023289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095364, 32.791035, 45.678307>,  <29.644823, 32.422565, 45.363876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095364, 32.791035, 45.678307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900969, 32.502533, 45.480881>,  <28.784332, 32.329433, 45.362423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900969, 32.502533, 45.480881>,  <29.095364, 32.791035, 45.678307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900969, 32.502533, 45.480881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556838, -0.179740, 0.810941,
		-0.673608, 0.668945, -0.314269,
		-0.485988, -0.721253, -0.493568,
		28.755173, 32.286156, 45.332809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435562, 32.954288, 45.904263>,  <29.095364, 32.791035, 45.678307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435562, 32.954288, 45.904263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468157, 32.589424, 45.743603>,  <28.487713, 32.370506, 45.647209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468157, 32.589424, 45.743603>,  <28.435562, 32.954288, 45.904263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468157, 32.589424, 45.743603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601877, -0.366243, 0.709655,
		-0.794420, 0.183915, -0.578853,
		0.081484, -0.912163, -0.401645,
		28.492601, 32.315777, 45.623108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711573, 32.698620, 46.068699>,  <28.435562, 32.954288, 45.904263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711573, 32.698620, 46.068699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941666, 32.384830, 45.975998>,  <28.079721, 32.196556, 45.920380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941666, 32.384830, 45.975998>,  <27.711573, 32.698620, 46.068699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941666, 32.384830, 45.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532898, -0.574336, 0.621417,
		-0.620589, -0.233958, -0.748421,
		0.575230, -0.784476, -0.231750,
		28.114235, 32.149487, 45.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334225, 32.115658, 46.096058>,  <27.711573, 32.698620, 46.068699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334225, 32.115658, 46.096058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695595, 31.944241, 46.090752>,  <27.912416, 31.841391, 46.087566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695595, 31.944241, 46.090752>,  <27.334225, 32.115658, 46.096058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695595, 31.944241, 46.090752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316548, -0.687552, 0.653506,
		-0.289177, -0.586193, -0.756805,
		0.903424, -0.428544, -0.013266,
		27.966621, 31.815678, 46.086773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168026, 31.371552, 45.928474>,  <27.334225, 32.115658, 46.096058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168026, 31.371552, 45.928474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518412, 31.403833, 46.118706>,  <27.728643, 31.423203, 46.232845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518412, 31.403833, 46.118706>,  <27.168026, 31.371552, 45.928474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518412, 31.403833, 46.118706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163582, -0.877785, 0.450260,
		0.453792, -0.472207, -0.755707,
		0.875964, 0.080704, 0.475576,
		27.781200, 31.428045, 46.261379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245659, 30.798277, 46.388813>,  <27.168026, 31.371552, 45.928474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245659, 30.798277, 46.388813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601742, 30.949875, 46.489918>,  <27.815392, 31.040834, 46.550583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601742, 30.949875, 46.489918>,  <27.245659, 30.798277, 46.388813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601742, 30.949875, 46.489918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172859, -0.794379, 0.582307,
		0.421483, -0.474682, -0.772676,
		0.890209, 0.378997, 0.252764,
		27.868805, 31.063574, 46.565746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793406, 30.258631, 46.278774>,  <27.245659, 30.798277, 46.388813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793406, 30.258631, 46.278774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877396, 30.505251, 46.582294>,  <27.927790, 30.653223, 46.764408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877396, 30.505251, 46.582294>,  <27.793406, 30.258631, 46.278774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877396, 30.505251, 46.582294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119733, -0.786476, 0.605904,
		0.970348, -0.036372, -0.238962,
		0.209976, 0.616549, 0.758800,
		27.940388, 30.690216, 46.809933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224863, 29.892612, 46.783493>,  <27.793406, 30.258631, 46.278774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224863, 29.892612, 46.783493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109756, 30.194229, 47.019665>,  <28.040693, 30.375198, 47.161369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109756, 30.194229, 47.019665>,  <28.224863, 29.892612, 46.783493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109756, 30.194229, 47.019665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414846, -0.653812, 0.632797,
		0.863188, -0.062843, 0.500956,
		-0.287764, 0.754042, 0.590433,
		28.023428, 30.420443, 47.196796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380669, 29.668766, 47.486610>,  <28.224863, 29.892612, 46.783493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380669, 29.668766, 47.486610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105207, 29.954910, 47.533970>,  <27.939932, 30.126596, 47.562386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105207, 29.954910, 47.533970>,  <28.380669, 29.668766, 47.486610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105207, 29.954910, 47.533970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568681, -0.634156, 0.523878,
		0.449846, 0.293437, 0.843524,
		-0.688651, 0.715360, 0.118401,
		27.898613, 30.169518, 47.569489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239372, 29.776901, 48.150150>,  <28.380669, 29.668766, 47.486610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239372, 29.776901, 48.150150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906929, 29.900141, 47.964966>,  <27.707464, 29.974085, 47.853855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906929, 29.900141, 47.964966>,  <28.239372, 29.776901, 48.150150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906929, 29.900141, 47.964966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505047, -0.766651, 0.396451,
		-0.232785, 0.563311, 0.792775,
		-0.831107, 0.308101, -0.462964,
		27.657597, 29.992571, 47.826077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642601, 29.909786, 48.669228>,  <28.239372, 29.776901, 48.150150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642601, 29.909786, 48.669228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467943, 29.844320, 48.315380>,  <27.363148, 29.805040, 48.103069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467943, 29.844320, 48.315380>,  <27.642601, 29.909786, 48.669228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467943, 29.844320, 48.315380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572650, -0.707811, 0.413611,
		-0.693839, 0.687180, 0.215340,
		-0.436646, -0.163665, -0.884621,
		27.336950, 29.795221, 48.049995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963850, 30.008930, 48.817589>,  <27.642601, 29.909786, 48.669228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963850, 30.008930, 48.817589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977736, 29.813097, 48.469082>,  <26.986067, 29.695597, 48.259979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977736, 29.813097, 48.469082>,  <26.963850, 30.008930, 48.817589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977736, 29.813097, 48.469082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538016, -0.743836, 0.396543,
		-0.842219, 0.454989, -0.289226,
		0.034715, -0.489585, -0.871264,
		26.988150, 29.666222, 48.207703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298571, 29.764046, 48.722198>,  <26.963850, 30.008930, 48.817589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298571, 29.764046, 48.722198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518465, 29.545544, 48.469406>,  <26.650402, 29.414442, 48.317730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518465, 29.545544, 48.469406>,  <26.298571, 29.764046, 48.722198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518465, 29.545544, 48.469406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472897, -0.827161, 0.303601,
		-0.688590, 0.131959, -0.713043,
		0.549738, -0.546253, -0.631978,
		26.683386, 29.381668, 48.279812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758963, 29.413670, 48.382648>,  <26.298571, 29.764046, 48.722198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758963, 29.413670, 48.382648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117722, 29.237978, 48.403244>,  <26.332977, 29.132563, 48.415600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117722, 29.237978, 48.403244>,  <25.758963, 29.413670, 48.382648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117722, 29.237978, 48.403244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419248, -0.807440, 0.415056,
		-0.140732, -0.393849, -0.908338,
		0.896898, -0.439231, 0.051487,
		26.386791, 29.106209, 48.418690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882175, 28.751453, 48.169895>,  <25.758963, 29.413670, 48.382648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882175, 28.751453, 48.169895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122337, 28.772583, 48.489075>,  <26.266436, 28.785261, 48.680584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122337, 28.772583, 48.489075>,  <25.882175, 28.751453, 48.169895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122337, 28.772583, 48.489075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374739, -0.862895, 0.339092,
		0.706458, -0.502616, -0.498291,
		0.600406, 0.052825, 0.797949,
		26.302460, 28.788431, 48.728458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210251, 28.127846, 48.198723>,  <25.882175, 28.751453, 48.169895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210251, 28.127846, 48.198723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210430, 28.286354, 48.565975>,  <26.210539, 28.381458, 48.786327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210430, 28.286354, 48.565975>,  <26.210251, 28.127846, 48.198723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210430, 28.286354, 48.565975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510484, -0.789401, 0.340957,
		0.859887, -0.468846, 0.201934,
		0.000449, 0.396269, 0.918135,
		26.210566, 28.405235, 48.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522388, 27.603712, 48.695744>,  <26.210251, 28.127846, 48.198723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522388, 27.603712, 48.695744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239447, 27.846630, 48.840431>,  <26.069681, 27.992382, 48.927246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239447, 27.846630, 48.840431>,  <26.522388, 27.603712, 48.695744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239447, 27.846630, 48.840431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512795, -0.793082, 0.328728,
		0.486510, 0.047038, 0.872408,
		-0.707354, 0.607296, 0.361721,
		26.027241, 28.028818, 48.948948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508850, 27.666977, 49.493294>,  <26.522388, 27.603712, 48.695744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508850, 27.666977, 49.493294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148920, 27.711897, 49.324673>,  <25.932962, 27.738850, 49.223499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148920, 27.711897, 49.324673>,  <26.508850, 27.666977, 49.493294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148920, 27.711897, 49.324673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384787, -0.659633, 0.645618,
		-0.205567, 0.743150, 0.636765,
		-0.899823, 0.112301, -0.421553,
		25.878973, 27.745586, 49.198208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208395, 27.416697, 49.611752>,  <26.508850, 27.666977, 49.493294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208395, 27.416697, 49.611752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326256, 27.099110, 49.399036>,  <27.396973, 26.908558, 49.271408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326256, 27.099110, 49.399036>,  <27.208395, 27.416697, 49.611752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326256, 27.099110, 49.399036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658956, -0.234209, 0.714789,
		-0.692067, -0.561039, 0.454178,
		0.294652, -0.793966, -0.531788,
		27.414652, 26.860920, 49.239498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836216, 26.865494, 49.183830>,  <27.208395, 27.416697, 49.611752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836216, 26.865494, 49.183830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632259, 26.607061, 48.956642>,  <26.509886, 26.452002, 48.820328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632259, 26.607061, 48.956642>,  <26.836216, 26.865494, 49.183830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632259, 26.607061, 48.956642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434462, 0.376444, -0.818250,
		0.742465, -0.663979, 0.088753,
		-0.509890, -0.646082, -0.567970,
		26.479292, 26.413237, 48.786251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560410, 26.809811, 48.506268>,  <26.836216, 26.865494, 49.183830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560410, 26.809811, 48.506268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412027, 26.528072, 48.264179>,  <26.322998, 26.359030, 48.118927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412027, 26.528072, 48.264179>,  <26.560410, 26.809811, 48.506268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412027, 26.528072, 48.264179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036572, 0.640133, -0.767393,
		0.927930, -0.306803, -0.211701,
		-0.370955, -0.704344, -0.605220,
		26.300741, 26.316769, 48.082615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016500, 26.444687, 47.895039>,  <26.560410, 26.809811, 48.506268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016500, 26.444687, 47.895039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652737, 26.585102, 47.805820>,  <26.434479, 26.669352, 47.752289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652737, 26.585102, 47.805820>,  <27.016500, 26.444687, 47.895039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652737, 26.585102, 47.805820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383856, 0.501983, -0.775027,
		-0.160096, -0.790434, -0.591255,
		-0.909408, 0.351036, -0.223047,
		26.379913, 26.690413, 47.738907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770491, 26.303082, 47.202412>,  <27.016500, 26.444687, 47.895039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770491, 26.303082, 47.202412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623156, 26.659821, 47.307434>,  <26.534754, 26.873863, 47.370449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623156, 26.659821, 47.307434>,  <26.770491, 26.303082, 47.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623156, 26.659821, 47.307434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478279, 0.423952, -0.769099,
		-0.797231, -0.157713, -0.582709,
		-0.368337, 0.891847, 0.262557,
		26.512655, 26.927374, 47.386200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390757, 26.653912, 46.644535>,  <26.770491, 26.303082, 47.202412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390757, 26.653912, 46.644535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508196, 26.942614, 46.895252>,  <26.578659, 27.115835, 47.045685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508196, 26.942614, 46.895252>,  <26.390757, 26.653912, 46.644535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508196, 26.942614, 46.895252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320571, 0.543386, -0.775865,
		-0.900575, 0.428724, -0.071837,
		0.293596, 0.721753, 0.626796,
		26.596275, 27.159140, 47.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171946, 27.244539, 46.356937>,  <26.390757, 26.653912, 46.644535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171946, 27.244539, 46.356937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468800, 27.346832, 46.604755>,  <26.646912, 27.408209, 46.753445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468800, 27.346832, 46.604755>,  <26.171946, 27.244539, 46.356937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468800, 27.346832, 46.604755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393189, 0.582476, -0.711424,
		-0.542805, 0.771571, 0.331724,
		0.742136, 0.255735, 0.619544,
		26.691441, 27.423553, 46.790619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322332, 28.012768, 46.368488>,  <26.171946, 27.244539, 46.356937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322332, 28.012768, 46.368488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678003, 27.896042, 46.509460>,  <26.891407, 27.826006, 46.594044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678003, 27.896042, 46.509460>,  <26.322332, 28.012768, 46.368488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678003, 27.896042, 46.509460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456248, 0.623736, -0.634659,
		-0.034619, 0.725120, 0.687752,
		0.889179, -0.291814, 0.352427,
		26.944757, 27.808498, 46.615189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712797, 28.592806, 46.212315>,  <26.322332, 28.012768, 46.368488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712797, 28.592806, 46.212315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971119, 28.291916, 46.264606>,  <27.126112, 28.111382, 46.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971119, 28.291916, 46.264606>,  <26.712797, 28.592806, 46.212315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971119, 28.291916, 46.264606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595075, 0.388629, -0.703457,
		0.478352, 0.532093, 0.698610,
		0.645805, -0.752226, 0.130734,
		27.164860, 28.066248, 46.303825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363537, 28.866274, 46.231358>,  <26.712797, 28.592806, 46.212315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363537, 28.866274, 46.231358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428581, 28.486298, 46.124645>,  <27.467607, 28.258312, 46.060616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428581, 28.486298, 46.124645>,  <27.363537, 28.866274, 46.231358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428581, 28.486298, 46.124645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576273, 0.310909, -0.755808,
		0.800917, -0.030839, 0.597981,
		0.162609, -0.949939, -0.266784,
		27.477364, 28.201315, 46.044609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087305, 28.748100, 46.107780>,  <27.363537, 28.866274, 46.231358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087305, 28.748100, 46.107780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919987, 28.439270, 45.916397>,  <27.819595, 28.253971, 45.801567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919987, 28.439270, 45.916397>,  <28.087305, 28.748100, 46.107780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919987, 28.439270, 45.916397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571984, 0.185294, -0.799062,
		0.705594, -0.607917, 0.364109,
		-0.418296, -0.772078, -0.478461,
		27.794498, 28.207647, 45.772858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596409, 28.371395, 45.840637>,  <28.087305, 28.748100, 46.107780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596409, 28.371395, 45.840637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282719, 28.224983, 45.640232>,  <28.094505, 28.137136, 45.519989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282719, 28.224983, 45.640232>,  <28.596409, 28.371395, 45.840637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282719, 28.224983, 45.640232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480974, 0.151495, -0.863547,
		0.391986, -0.918188, 0.057245,
		-0.784226, -0.366032, -0.501009,
		28.047451, 28.115173, 45.489929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772724, 27.822191, 45.567596>,  <28.596409, 28.371395, 45.840637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772724, 27.822191, 45.567596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472870, 27.960236, 45.341694>,  <28.292957, 28.043062, 45.206154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472870, 27.960236, 45.341694>,  <28.772724, 27.822191, 45.567596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472870, 27.960236, 45.341694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636525, 0.142127, -0.758047,
		-0.181342, -0.927739, -0.326214,
		-0.749634, 0.345109, -0.564755,
		28.247980, 28.063768, 45.172268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036232, 27.855017, 45.008221>,  <28.772724, 27.822191, 45.567596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036232, 27.855017, 45.008221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704271, 28.038237, 44.880814>,  <28.505095, 28.148169, 44.804367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704271, 28.038237, 44.880814>,  <29.036232, 27.855017, 45.008221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704271, 28.038237, 44.880814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522378, 0.437479, -0.731938,
		-0.195917, -0.773824, -0.602340,
		-0.829902, 0.458048, -0.318519,
		28.455301, 28.175652, 44.785259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946835, 27.624392, 44.273758>,  <29.036232, 27.855017, 45.008221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946835, 27.624392, 44.273758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748430, 27.968956, 44.317467>,  <28.629387, 28.175695, 44.343693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748430, 27.968956, 44.317467>,  <28.946835, 27.624392, 44.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748430, 27.968956, 44.317467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443776, 0.359652, -0.820800,
		-0.746347, -0.358635, -0.560666,
		-0.496012, 0.861412, 0.109272,
		28.599627, 28.227379, 44.350246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820601, 27.844385, 43.549328>,  <28.946835, 27.624392, 44.273758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820601, 27.844385, 43.549328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773230, 28.170206, 43.776478>,  <28.744806, 28.365698, 43.912766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773230, 28.170206, 43.776478>,  <28.820601, 27.844385, 43.549328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773230, 28.170206, 43.776478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354982, 0.568834, -0.741900,
		-0.927341, 0.113722, -0.356519,
		-0.118430, 0.814552, 0.567873,
		28.737701, 28.414572, 43.946838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434744, 28.369720, 43.128090>,  <28.820601, 27.844385, 43.549328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434744, 28.369720, 43.128090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645317, 28.538040, 43.423603>,  <28.771662, 28.639032, 43.600910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645317, 28.538040, 43.423603>,  <28.434744, 28.369720, 43.128090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645317, 28.538040, 43.423603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556563, 0.486321, -0.673595,
		-0.642733, 0.765780, 0.021814,
		0.526434, 0.420800, 0.738779,
		28.803247, 28.664280, 43.645237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537403, 28.977453, 42.856762>,  <28.434744, 28.369720, 43.128090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537403, 28.977453, 42.856762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805012, 28.965464, 43.153816>,  <28.965578, 28.958269, 43.332050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805012, 28.965464, 43.153816>,  <28.537403, 28.977453, 42.856762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805012, 28.965464, 43.153816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649964, 0.508228, -0.565024,
		-0.360492, 0.860701, 0.359499,
		0.669024, -0.029975, 0.742636,
		29.005718, 28.956470, 43.376606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880733, 29.612686, 42.861996>,  <28.537403, 28.977453, 42.856762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880733, 29.612686, 42.861996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140551, 29.414467, 43.092655>,  <29.296442, 29.295536, 43.231052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140551, 29.414467, 43.092655>,  <28.880733, 29.612686, 42.861996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140551, 29.414467, 43.092655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739761, 0.587088, -0.328757,
		-0.175629, 0.640125, 0.747927,
		0.649545, -0.495548, 0.576649,
		29.335415, 29.265802, 43.265652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314302, 30.088606, 43.460938>,  <28.880733, 29.612686, 42.861996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314302, 30.088606, 43.460938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490854, 29.763527, 43.308777>,  <29.596786, 29.568480, 43.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490854, 29.763527, 43.308777>,  <29.314302, 30.088606, 43.460938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490854, 29.763527, 43.308777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742310, 0.568879, -0.354052,
		0.504141, -0.126107, 0.854365,
		0.441381, -0.812696, -0.380405,
		29.623268, 29.519718, 43.194656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061138, 30.182983, 43.535725>,  <29.314302, 30.088606, 43.460938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061138, 30.182983, 43.535725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023499, 29.915878, 43.240364>,  <30.000914, 29.755615, 43.063148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023499, 29.915878, 43.240364>,  <30.061138, 30.182983, 43.535725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023499, 29.915878, 43.240364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712704, 0.472685, -0.518289,
		0.695125, -0.575034, 0.431436,
		-0.094101, -0.667761, -0.738404,
		29.995268, 29.715549, 43.018845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725203, 30.032347, 43.242435>,  <30.061138, 30.182983, 43.535725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725203, 30.032347, 43.242435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480665, 29.941238, 42.939285>,  <30.333942, 29.886574, 42.757397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480665, 29.941238, 42.939285>,  <30.725203, 30.032347, 43.242435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480665, 29.941238, 42.939285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642375, 0.416486, -0.643346,
		0.462184, -0.880146, -0.108299,
		-0.611344, -0.227776, -0.757877,
		30.297262, 29.872906, 42.711922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125275, 29.988821, 42.705669>,  <30.725203, 30.032347, 43.242435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125275, 29.988821, 42.705669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777424, 29.993357, 42.508236>,  <30.568714, 29.996078, 42.389778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777424, 29.993357, 42.508236>,  <31.125275, 29.988821, 42.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777424, 29.993357, 42.508236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473720, 0.300773, -0.827723,
		0.139070, -0.953628, -0.266932,
		-0.869626, 0.011339, -0.493581,
		30.516537, 29.996758, 42.360161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123652, 29.561409, 42.125443>,  <31.125275, 29.988821, 42.705669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123652, 29.561409, 42.125443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835098, 29.825209, 42.040905>,  <30.661966, 29.983488, 41.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835098, 29.825209, 42.040905>,  <31.123652, 29.561409, 42.125443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835098, 29.825209, 42.040905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452956, 0.218463, -0.864352,
		-0.523868, -0.719259, -0.456320,
		-0.721383, 0.659500, -0.211347,
		30.618683, 30.023058, 41.977501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997766, 29.518051, 41.360767>,  <31.123652, 29.561409, 42.125443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997766, 29.518051, 41.360767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829729, 29.865580, 41.465588>,  <30.728907, 30.074097, 41.528481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829729, 29.865580, 41.465588>,  <30.997766, 29.518051, 41.360767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829729, 29.865580, 41.465588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359264, 0.424396, -0.831154,
		-0.833338, -0.255018, -0.490423,
		-0.420093, 0.868823, 0.262046,
		30.703701, 30.126226, 41.544201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530643, 29.735374, 40.874672>,  <30.997766, 29.518051, 41.360767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530643, 29.735374, 40.874672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680729, 30.048483, 41.073261>,  <30.770781, 30.236349, 41.192413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680729, 30.048483, 41.073261>,  <30.530643, 29.735374, 40.874672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680729, 30.048483, 41.073261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190526, 0.459037, -0.867747,
		-0.907146, 0.420181, 0.023099,
		0.375214, 0.782773, 0.496469,
		30.793293, 30.283314, 41.222202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234510, 30.359913, 40.604507>,  <30.530643, 29.735374, 40.874672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234510, 30.359913, 40.604507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555805, 30.522469, 40.778706>,  <30.748583, 30.620001, 40.883224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555805, 30.522469, 40.778706>,  <30.234510, 30.359913, 40.604507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555805, 30.522469, 40.778706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124472, 0.600461, -0.789907,
		-0.582506, 0.688691, 0.431730,
		0.803239, 0.406387, 0.435495,
		30.796778, 30.644384, 40.909355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161055, 31.074825, 40.400745>,  <30.234510, 30.359913, 40.604507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161055, 31.074825, 40.400745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540232, 31.010303, 40.510574>,  <30.767738, 30.971590, 40.576469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540232, 31.010303, 40.510574>,  <30.161055, 31.074825, 40.400745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540232, 31.010303, 40.510574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317317, 0.550974, -0.771840,
		-0.026778, 0.818784, 0.573476,
		0.947941, -0.161305, 0.274568,
		30.824614, 30.961912, 40.592945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493166, 31.690266, 40.208717>,  <30.161055, 31.074825, 40.400745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493166, 31.690266, 40.208717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811455, 31.460066, 40.284218>,  <31.002428, 31.321947, 40.329517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811455, 31.460066, 40.284218>,  <30.493166, 31.690266, 40.208717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811455, 31.460066, 40.284218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469549, 0.389335, -0.792427,
		0.382554, 0.719180, 0.580028,
		0.795723, -0.575498, 0.188749,
		31.050171, 31.287416, 40.340843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027025, 32.080505, 40.106007>,  <30.493166, 31.690266, 40.208717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027025, 32.080505, 40.106007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207672, 31.723721, 40.097496>,  <31.316061, 31.509651, 40.092392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207672, 31.723721, 40.097496>,  <31.027025, 32.080505, 40.106007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207672, 31.723721, 40.097496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551560, 0.297849, -0.779145,
		0.701300, 0.340143, 0.626483,
		0.451618, -0.891958, -0.021273,
		31.343157, 31.456133, 40.091114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784237, 32.106976, 40.310284>,  <31.027025, 32.080505, 40.106007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784237, 32.106976, 40.310284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728430, 31.799852, 40.060162>,  <31.694944, 31.615578, 39.910088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728430, 31.799852, 40.060162>,  <31.784237, 32.106976, 40.310284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728430, 31.799852, 40.060162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510621, 0.485258, -0.709782,
		0.848410, -0.418321, 0.324357,
		-0.139520, -0.767810, -0.625301,
		31.686573, 31.569510, 39.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384586, 32.036446, 39.957188>,  <31.784237, 32.106976, 40.310284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384586, 32.036446, 39.957188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129395, 31.843851, 39.716801>,  <31.976280, 31.728294, 39.572571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129395, 31.843851, 39.716801>,  <32.384586, 32.036446, 39.957188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129395, 31.843851, 39.716801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459543, 0.388168, -0.798840,
		0.617904, -0.785811, -0.026379,
		-0.637977, -0.481484, -0.600965,
		31.938002, 31.699406, 39.536510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863289, 31.715117, 39.515011>,  <32.384586, 32.036446, 39.957188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863289, 31.715117, 39.515011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505207, 31.723522, 39.336952>,  <32.290356, 31.728565, 39.230118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505207, 31.723522, 39.336952>,  <32.863289, 31.715117, 39.515011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505207, 31.723522, 39.336952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427820, 0.320223, -0.845238,
		0.124783, -0.947109, -0.295659,
		-0.895209, 0.021017, -0.445150,
		32.236645, 31.729828, 39.203407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000977, 31.400068, 38.925812>,  <32.863289, 31.715117, 39.515011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000977, 31.400068, 38.925812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646477, 31.569014, 38.849728>,  <32.433777, 31.670380, 38.804077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646477, 31.569014, 38.849728>,  <33.000977, 31.400068, 38.925812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646477, 31.569014, 38.849728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237112, 0.060887, -0.969572,
		-0.397930, -0.904380, -0.154108,
		-0.886245, 0.422362, -0.190211,
		32.380604, 31.695723, 38.792664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538418, 30.974947, 38.408390>,  <33.000977, 31.400068, 38.925812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538418, 30.974947, 38.408390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419949, 31.356853, 38.397762>,  <32.348866, 31.585997, 38.391384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419949, 31.356853, 38.397762>,  <32.538418, 30.974947, 38.408390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419949, 31.356853, 38.397762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087735, -0.000506, -0.996144,
		-0.951097, -0.297361, -0.083617,
		-0.296172, 0.954765, -0.026570,
		32.331097, 31.643284, 38.389790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938892, 31.094173, 37.856014>,  <32.538418, 30.974947, 38.408390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938892, 31.094173, 37.856014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083675, 31.464443, 37.900036>,  <32.170544, 31.686605, 37.926449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083675, 31.464443, 37.900036>,  <31.938892, 31.094173, 37.856014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083675, 31.464443, 37.900036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027621, 0.128660, -0.991304,
		-0.931785, 0.355771, 0.072138,
		0.361958, 0.925675, 0.110057,
		32.192265, 31.742146, 37.933052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580004, 31.607065, 37.368511>,  <31.938892, 31.094173, 37.856014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580004, 31.607065, 37.368511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900454, 31.816807, 37.483925>,  <32.092724, 31.942652, 37.553173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900454, 31.816807, 37.483925>,  <31.580004, 31.607065, 37.368511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900454, 31.816807, 37.483925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148123, 0.293391, -0.944448,
		-0.579879, 0.799358, 0.157373,
		0.801124, 0.524355, 0.288535,
		32.140789, 31.974113, 37.570484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525293, 32.166759, 36.992115>,  <31.580004, 31.607065, 37.368511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525293, 32.166759, 36.992115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903597, 32.194500, 37.119068>,  <32.130577, 32.211143, 37.195240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903597, 32.194500, 37.119068>,  <31.525293, 32.166759, 36.992115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903597, 32.194500, 37.119068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292052, 0.246398, -0.924118,
		-0.142294, 0.966684, 0.212778,
		0.945758, 0.069355, 0.317383,
		32.187325, 32.215305, 37.214283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859747, 32.796055, 36.656994>,  <31.525293, 32.166759, 36.992115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859747, 32.796055, 36.656994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198246, 32.605522, 36.752468>,  <32.401344, 32.491203, 36.809753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198246, 32.605522, 36.752468>,  <31.859747, 32.796055, 36.656994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198246, 32.605522, 36.752468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402514, 0.278071, -0.872158,
		0.349069, 0.834134, 0.427048,
		0.846246, -0.476336, 0.238685,
		32.452122, 32.462620, 36.824074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299599, 33.214413, 36.567219>,  <31.859747, 32.796055, 36.656994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299599, 33.214413, 36.567219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494621, 32.866390, 36.538120>,  <32.611637, 32.657578, 36.520660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494621, 32.866390, 36.538120>,  <32.299599, 33.214413, 36.567219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494621, 32.866390, 36.538120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476791, 0.335127, -0.812626,
		0.731406, 0.361520, 0.578228,
		0.487560, -0.870054, -0.072744,
		32.640888, 32.605373, 36.516296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989475, 33.424759, 36.555683>,  <32.299599, 33.214413, 36.567219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989475, 33.424759, 36.555683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988621, 33.048969, 36.418644>,  <32.988106, 32.823494, 36.336418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988621, 33.048969, 36.418644>,  <32.989475, 33.424759, 36.555683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988621, 33.048969, 36.418644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588932, 0.275700, -0.759703,
		0.808180, -0.203394, 0.552699,
		-0.002140, -0.939479, -0.342601,
		32.987980, 32.767124, 36.315865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701073, 33.314167, 36.230198>,  <32.989475, 33.424759, 36.555683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701073, 33.314167, 36.230198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464405, 33.033909, 36.070686>,  <33.322403, 32.865753, 35.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464405, 33.033909, 36.070686>,  <33.701073, 33.314167, 36.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464405, 33.033909, 36.070686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456926, 0.116086, -0.881897,
		0.664189, -0.704004, 0.251458,
		-0.591669, -0.700644, -0.398781,
		33.286903, 32.823715, 35.951054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195892, 32.871296, 35.822662>,  <33.701073, 33.314167, 36.230198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195892, 32.871296, 35.822662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826138, 32.790295, 35.693352>,  <33.604286, 32.741695, 35.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826138, 32.790295, 35.693352>,  <34.195892, 32.871296, 35.822662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826138, 32.790295, 35.693352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328329, 0.009094, -0.944520,
		0.194210, -0.979239, 0.058083,
		-0.924382, -0.202505, -0.323279,
		33.548824, 32.729542, 35.596367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275055, 32.299889, 35.420322>,  <34.195892, 32.871296, 35.822662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275055, 32.299889, 35.420322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943310, 32.498196, 35.317276>,  <33.744263, 32.617180, 35.255447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943310, 32.498196, 35.317276>,  <34.275055, 32.299889, 35.420322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943310, 32.498196, 35.317276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329532, 0.061704, -0.942126,
		-0.451182, -0.866259, -0.214547,
		-0.829363, 0.495771, -0.257620,
		33.694500, 32.646927, 35.239990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157703, 32.105526, 34.692478>,  <34.275055, 32.299889, 35.420322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157703, 32.105526, 34.692478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995152, 32.462013, 34.773052>,  <33.897621, 32.675907, 34.821396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995152, 32.462013, 34.773052>,  <34.157703, 32.105526, 34.692478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995152, 32.462013, 34.773052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380505, 0.365507, -0.849483,
		-0.830705, -0.268565, -0.487650,
		-0.406380, 0.891223, 0.201438,
		33.873238, 32.729382, 34.833485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771172, 31.564873, 35.034782>,  <34.157703, 32.105526, 34.692478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771172, 31.564873, 35.034782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081261, 31.321569, 34.966599>,  <34.267315, 31.175587, 34.925690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081261, 31.321569, 34.966599>,  <33.771172, 31.564873, 35.034782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081261, 31.321569, 34.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378266, -0.663104, 0.645917,
		-0.505914, -0.436250, -0.744135,
		0.775220, -0.608259, -0.170455,
		34.313828, 31.139091, 34.915462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463787, 30.993530, 34.877460>,  <33.771172, 31.564873, 35.034782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463787, 30.993530, 34.877460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841316, 30.928806, 34.992710>,  <34.067833, 30.889971, 35.061859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841316, 30.928806, 34.992710>,  <33.463787, 30.993530, 34.877460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841316, 30.928806, 34.992710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325943, -0.599418, 0.731067,
		0.054414, -0.783910, -0.618485,
		0.943822, -0.161810, 0.288126,
		34.124462, 30.880262, 35.079147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554764, 30.289423, 35.141972>,  <33.463787, 30.993530, 34.877460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554764, 30.289423, 35.141972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888741, 30.445084, 35.297626>,  <34.089127, 30.538481, 35.391018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888741, 30.445084, 35.297626>,  <33.554764, 30.289423, 35.141972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888741, 30.445084, 35.297626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127743, -0.550736, 0.824847,
		0.535303, -0.738411, -0.410122,
		0.834944, 0.389153, 0.389137,
		34.139225, 30.561829, 35.414368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748486, 29.767412, 35.551449>,  <33.554764, 30.289423, 35.141972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748486, 29.767412, 35.551449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948414, 30.068970, 35.722012>,  <34.068371, 30.249905, 35.824348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948414, 30.068970, 35.722012>,  <33.748486, 29.767412, 35.551449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948414, 30.068970, 35.722012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235116, -0.355729, 0.904532,
		0.833606, -0.552359, -0.000548,
		0.499822, 0.753894, 0.426406,
		34.098362, 30.295137, 35.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345402, 29.527781, 35.975769>,  <33.748486, 29.767412, 35.551449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345402, 29.527781, 35.975769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223606, 29.873438, 36.136040>,  <34.150528, 30.080832, 36.232204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223606, 29.873438, 36.136040>,  <34.345402, 29.527781, 35.975769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223606, 29.873438, 36.136040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076227, -0.441410, 0.894062,
		0.949461, 0.241690, 0.200276,
		-0.304489, 0.864143, 0.400678,
		34.132259, 30.132681, 36.256245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695641, 29.538368, 36.520706>,  <34.345402, 29.527781, 35.975769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695641, 29.538368, 36.520706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401524, 29.800520, 36.589787>,  <34.225052, 29.957811, 36.631233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401524, 29.800520, 36.589787>,  <34.695641, 29.538368, 36.520706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401524, 29.800520, 36.589787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310832, -0.552526, 0.773368,
		0.602269, 0.514971, 0.609981,
		-0.735293, 0.655377, 0.172700,
		34.180935, 29.997133, 36.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657890, 29.690144, 37.323315>,  <34.695641, 29.538368, 36.520706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657890, 29.690144, 37.323315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296757, 29.789810, 37.183136>,  <34.080078, 29.849609, 37.099030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296757, 29.789810, 37.183136>,  <34.657890, 29.690144, 37.323315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296757, 29.789810, 37.183136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427455, -0.431637, 0.794337,
		0.046657, 0.866952, 0.496203,
		-0.902832, 0.249166, -0.350444,
		34.025906, 29.864559, 37.078003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254139, 30.018679, 37.934738>,  <34.657890, 29.690144, 37.323315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254139, 30.018679, 37.934738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985344, 29.911690, 37.658508>,  <33.824066, 29.847496, 37.492771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985344, 29.911690, 37.658508>,  <34.254139, 30.018679, 37.934738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985344, 29.911690, 37.658508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581738, -0.386400, 0.715734,
		-0.458277, 0.882697, 0.104056,
		-0.671984, -0.267471, -0.690577,
		33.783749, 29.831448, 37.451336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671635, 30.195566, 38.270370>,  <34.254139, 30.018679, 37.934738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671635, 30.195566, 38.270370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515572, 29.978012, 37.973190>,  <33.421932, 29.847481, 37.794884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515572, 29.978012, 37.973190>,  <33.671635, 30.195566, 38.270370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515572, 29.978012, 37.973190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691321, -0.359915, 0.626527,
		-0.608155, 0.758058, -0.235574,
		-0.390157, -0.543883, -0.742946,
		33.398525, 29.814848, 37.750305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955387, 30.170485, 38.450893>,  <33.671635, 30.195566, 38.270370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955387, 30.170485, 38.450893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001759, 29.880838, 38.178947>,  <33.029583, 29.707050, 38.015781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001759, 29.880838, 38.178947>,  <32.955387, 30.170485, 38.450893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001759, 29.880838, 38.178947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422153, -0.655500, 0.626183,
		-0.899081, 0.214415, -0.381679,
		0.115928, -0.724117, -0.679865,
		33.036537, 29.663603, 37.974987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311111, 29.822439, 38.431114>,  <32.955387, 30.170485, 38.450893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311111, 29.822439, 38.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587433, 29.560127, 38.309303>,  <32.753227, 29.402740, 38.236217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587433, 29.560127, 38.309303>,  <32.311111, 29.822439, 38.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587433, 29.560127, 38.309303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319122, -0.654473, 0.685438,
		-0.648785, -0.376341, -0.661396,
		0.690825, -0.655768, -0.304514,
		32.794674, 29.363394, 38.217945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952374, 29.171545, 38.336967>,  <32.311111, 29.822439, 38.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952374, 29.171545, 38.336967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342079, 29.103832, 38.396507>,  <32.575901, 29.063204, 38.432232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342079, 29.103832, 38.396507>,  <31.952374, 29.171545, 38.336967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342079, 29.103832, 38.396507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224869, -0.683946, 0.694011,
		-0.015682, -0.709620, -0.704410,
		0.974263, -0.169284, 0.148846,
		32.634357, 29.053047, 38.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022842, 28.429012, 38.250324>,  <31.952374, 29.171545, 38.336967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022842, 28.429012, 38.250324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334087, 28.564598, 38.461849>,  <32.520836, 28.645948, 38.588764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334087, 28.564598, 38.461849>,  <32.022842, 28.429012, 38.250324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334087, 28.564598, 38.461849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168734, -0.698143, 0.695791,
		0.605031, -0.630634, -0.486043,
		0.778117, 0.338963, 0.528808,
		32.567524, 28.666286, 38.620491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258522, 27.909004, 38.514866>,  <32.022842, 28.429012, 38.250324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258522, 27.909004, 38.514866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446671, 28.179651, 38.741470>,  <32.559559, 28.342039, 38.877434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446671, 28.179651, 38.741470>,  <32.258522, 27.909004, 38.514866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446671, 28.179651, 38.741470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087614, -0.602987, 0.792925,
		0.878109, -0.422604, -0.224346,
		0.470371, 0.676618, 0.566514,
		32.587780, 28.382637, 38.911427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824188, 27.540379, 38.856308>,  <32.258522, 27.909004, 38.514866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824188, 27.540379, 38.856308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749451, 27.871229, 39.068329>,  <32.704609, 28.069740, 39.195541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749451, 27.871229, 39.068329>,  <32.824188, 27.540379, 38.856308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749451, 27.871229, 39.068329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026215, -0.535160, 0.844344,
		0.982039, 0.171658, 0.078310,
		-0.186847, 0.827126, 0.530048,
		32.693398, 28.119368, 39.227345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283737, 27.529514, 39.544224>,  <32.824188, 27.540379, 38.856308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283737, 27.529514, 39.544224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968555, 27.767075, 39.609219>,  <32.779446, 27.909611, 39.648216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968555, 27.767075, 39.609219>,  <33.283737, 27.529514, 39.544224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968555, 27.767075, 39.609219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208875, -0.506076, 0.836814,
		0.579217, 0.625435, 0.522818,
		-0.787958, 0.593901, 0.162490,
		32.732166, 27.945246, 39.657967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301613, 27.599096, 40.210541>,  <33.283737, 27.529514, 39.544224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301613, 27.599096, 40.210541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931889, 27.714573, 40.110687>,  <32.710056, 27.783859, 40.050777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931889, 27.714573, 40.110687>,  <33.301613, 27.599096, 40.210541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931889, 27.714573, 40.110687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369424, -0.512536, 0.775134,
		0.095831, 0.808680, 0.580390,
		-0.924306, 0.288692, -0.249629,
		32.654598, 27.801180, 40.035797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990402, 27.728903, 40.904766>,  <33.301613, 27.599096, 40.210541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990402, 27.728903, 40.904766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651440, 27.786379, 40.700314>,  <32.448063, 27.820864, 40.577644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651440, 27.786379, 40.700314>,  <32.990402, 27.728903, 40.904766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651440, 27.786379, 40.700314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530859, -0.246288, 0.810883,
		-0.009369, 0.958486, 0.284985,
		-0.847409, 0.143689, -0.511128,
		32.397217, 27.829485, 40.546974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548550, 28.086090, 41.364361>,  <32.990402, 27.728903, 40.904766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548550, 28.086090, 41.364361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316147, 27.924973, 41.081463>,  <32.176704, 27.828302, 40.911724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316147, 27.924973, 41.081463>,  <32.548550, 28.086090, 41.364361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316147, 27.924973, 41.081463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753600, -0.062008, 0.654402,
		-0.307446, 0.913187, -0.267520,
		-0.581003, -0.402796, -0.707241,
		32.141846, 27.804134, 40.869289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947895, 28.415398, 41.357872>,  <32.548550, 28.086090, 41.364361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947895, 28.415398, 41.357872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835861, 28.068523, 41.193169>,  <31.768641, 27.860399, 41.094349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835861, 28.068523, 41.193169>,  <31.947895, 28.415398, 41.357872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835861, 28.068523, 41.193169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775568, -0.048358, 0.629409,
		-0.565726, 0.495632, -0.659017,
		-0.280086, -0.867185, -0.411754,
		31.751835, 27.808369, 41.069641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291040, 28.414310, 41.180252>,  <31.947895, 28.415398, 41.357872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291040, 28.414310, 41.180252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352745, 28.019949, 41.206161>,  <31.389769, 27.783333, 41.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352745, 28.019949, 41.206161>,  <31.291040, 28.414310, 41.180252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352745, 28.019949, 41.206161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783296, -0.082074, 0.616208,
		-0.602206, -0.145796, -0.784915,
		0.154261, -0.985905, 0.064776,
		31.399023, 27.724178, 41.225594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664351, 28.039387, 41.138981>,  <31.291040, 28.414310, 41.180252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664351, 28.039387, 41.138981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905905, 27.777723, 41.321144>,  <31.050837, 27.620726, 41.430443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905905, 27.777723, 41.321144>,  <30.664351, 28.039387, 41.138981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905905, 27.777723, 41.321144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723066, -0.209171, 0.658349,
		-0.335407, -0.726858, -0.599316,
		0.603886, -0.654160, 0.455409,
		31.087070, 27.581476, 41.457767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228762, 27.560255, 41.399040>,  <30.664351, 28.039387, 41.138981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228762, 27.560255, 41.399040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553106, 27.516882, 41.629082>,  <30.747713, 27.490858, 41.767109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553106, 27.516882, 41.629082>,  <30.228762, 27.560255, 41.399040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553106, 27.516882, 41.629082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585156, -0.166893, 0.793561,
		0.009935, -0.979995, -0.198776,
		0.810860, -0.108430, 0.575108,
		30.796364, 27.484352, 41.801613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996046, 27.174431, 41.937160>,  <30.228762, 27.560255, 41.399040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996046, 27.174431, 41.937160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354275, 27.293394, 42.069523>,  <30.569212, 27.364773, 42.148941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354275, 27.293394, 42.069523>,  <29.996046, 27.174431, 41.937160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354275, 27.293394, 42.069523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365821, 0.068900, 0.928131,
		0.253234, -0.952261, 0.170503,
		0.895571, 0.297408, 0.330909,
		30.622946, 27.382616, 42.168797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125572, 26.615843, 42.366749>,  <29.996046, 27.174431, 41.937160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125572, 26.615843, 42.366749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337433, 26.933369, 42.486298>,  <30.464548, 27.123884, 42.558029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337433, 26.933369, 42.486298>,  <30.125572, 26.615843, 42.366749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337433, 26.933369, 42.486298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239906, -0.197774, 0.950437,
		0.813583, -0.575100, 0.085690,
		0.529649, 0.793816, 0.298876,
		30.496328, 27.171515, 42.575962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350054, 26.455593, 42.997417>,  <30.125572, 26.615843, 42.366749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350054, 26.455593, 42.997417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453047, 26.840206, 43.035690>,  <30.514843, 27.070974, 43.058655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453047, 26.840206, 43.035690>,  <30.350054, 26.455593, 42.997417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453047, 26.840206, 43.035690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186668, -0.047655, 0.981267,
		0.948082, -0.270517, 0.167217,
		0.257480, 0.961535, 0.095678,
		30.530291, 27.128666, 43.064392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008696, 26.525743, 43.493637>,  <30.350054, 26.455593, 42.997417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008696, 26.525743, 43.493637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799393, 26.866167, 43.511074>,  <30.673811, 27.070421, 43.521538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799393, 26.866167, 43.511074>,  <31.008696, 26.525743, 43.493637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799393, 26.866167, 43.511074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016981, -0.061562, 0.997959,
		0.852004, 0.521451, 0.046665,
		-0.523260, 0.851058, 0.043596,
		30.642414, 27.121485, 43.524155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362125, 27.039082, 44.023830>,  <31.008696, 26.525743, 43.493637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362125, 27.039082, 44.023830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973867, 27.102646, 43.951614>,  <30.740913, 27.140783, 43.908283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973867, 27.102646, 43.951614>,  <31.362125, 27.039082, 44.023830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973867, 27.102646, 43.951614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198177, -0.103055, 0.974734,
		0.136289, 0.981900, 0.131522,
		-0.970645, 0.158910, -0.180545,
		30.682674, 27.150318, 43.897449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150961, 27.520874, 44.548065>,  <31.362125, 27.039082, 44.023830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150961, 27.520874, 44.548065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806433, 27.383247, 44.398533>,  <30.599716, 27.300673, 44.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806433, 27.383247, 44.398533>,  <31.150961, 27.520874, 44.548065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806433, 27.383247, 44.398533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379487, -0.053552, 0.923646,
		-0.337813, 0.937418, -0.084442,
		-0.861320, -0.344064, -0.373828,
		30.548037, 27.280027, 44.286385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611990, 27.925491, 44.905834>,  <31.150961, 27.520874, 44.548065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611990, 27.925491, 44.905834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476242, 27.579426, 44.758148>,  <30.394793, 27.371786, 44.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476242, 27.579426, 44.758148>,  <30.611990, 27.925491, 44.905834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476242, 27.579426, 44.758148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444257, -0.198556, 0.873620,
		-0.829135, 0.460505, -0.316972,
		-0.339369, -0.865165, -0.369212,
		30.374432, 27.319876, 44.647385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920256, 27.949152, 45.221855>,  <30.611990, 27.925491, 44.905834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920256, 27.949152, 45.221855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974016, 27.575466, 45.089687>,  <30.006273, 27.351254, 45.010387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974016, 27.575466, 45.089687>,  <29.920256, 27.949152, 45.221855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974016, 27.575466, 45.089687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334927, -0.356647, 0.872139,
		-0.932609, -0.006552, -0.360829,
		0.134403, -0.934216, -0.330418,
		30.014338, 27.295200, 44.990562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516085, 27.593792, 45.618378>,  <29.920256, 27.949152, 45.221855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516085, 27.593792, 45.618378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757153, 27.303410, 45.485847>,  <29.901793, 27.129181, 45.406330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757153, 27.303410, 45.485847>,  <29.516085, 27.593792, 45.618378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757153, 27.303410, 45.485847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241697, -0.561761, 0.791206,
		-0.760509, -0.396753, -0.514017,
		0.602668, -0.725955, -0.331330,
		29.937954, 27.085623, 45.386448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133337, 27.017944, 45.795441>,  <29.516085, 27.593792, 45.618378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133337, 27.017944, 45.795441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511583, 26.901237, 45.737915>,  <29.738531, 26.831213, 45.703400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511583, 26.901237, 45.737915>,  <29.133337, 27.017944, 45.795441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511583, 26.901237, 45.737915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113014, -0.709256, 0.695834,
		-0.305021, -0.641739, -0.703657,
		0.945617, -0.291767, -0.143812,
		29.795269, 26.813707, 45.694771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108435, 26.283316, 45.678551>,  <29.133337, 27.017944, 45.795441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108435, 26.283316, 45.678551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450783, 26.418484, 45.835163>,  <29.656193, 26.499584, 45.929131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450783, 26.418484, 45.835163>,  <29.108435, 26.283316, 45.678551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450783, 26.418484, 45.835163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173366, -0.525784, 0.832764,
		0.487266, -0.780617, -0.391420,
		0.855871, 0.337919, 0.391529,
		29.707544, 26.519859, 45.952621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161093, 25.854366, 46.165245>,  <29.108435, 26.283316, 45.678551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161093, 25.854366, 46.165245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468452, 26.094105, 46.255001>,  <29.652868, 26.237947, 46.308853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468452, 26.094105, 46.255001>,  <29.161093, 25.854366, 46.165245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468452, 26.094105, 46.255001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028855, -0.382711, 0.923417,
		0.639322, -0.703077, -0.311368,
		0.768398, 0.599345, 0.224388,
		29.698973, 26.273909, 46.322319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875893, 25.515123, 46.391251>,  <29.161093, 25.854366, 46.165245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875893, 25.515123, 46.391251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850460, 25.881390, 46.550003>,  <29.835201, 26.101149, 46.645252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850460, 25.881390, 46.550003>,  <29.875893, 25.515123, 46.391251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850460, 25.881390, 46.550003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141605, -0.385382, 0.911827,
		0.987879, 0.114175, -0.105159,
		-0.063582, 0.915666, 0.396879,
		29.831387, 26.156090, 46.669067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373180, 25.559464, 46.953609>,  <29.875893, 25.515123, 46.391251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373180, 25.559464, 46.953609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118155, 25.858477, 47.028130>,  <29.965139, 26.037884, 47.072842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118155, 25.858477, 47.028130>,  <30.373180, 25.559464, 46.953609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118155, 25.858477, 47.028130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032514, -0.215505, 0.975961,
		0.769711, 0.628295, 0.113092,
		-0.637563, 0.747531, 0.186305,
		29.926886, 26.082737, 47.084023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485619, 26.071095, 47.533123>,  <30.373180, 25.559464, 46.953609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485619, 26.071095, 47.533123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085722, 26.062462, 47.530354>,  <29.845783, 26.057283, 47.528690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085722, 26.062462, 47.530354>,  <30.485619, 26.071095, 47.533123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085722, 26.062462, 47.530354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005595, -0.061217, 0.998109,
		-0.021963, 0.997891, 0.061081,
		-0.999743, -0.021580, -0.006928,
		29.785799, 26.055988, 47.528275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004517, 26.301157, 47.988018>,  <30.485619, 26.071095, 47.533123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004517, 26.301157, 47.988018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303801, 26.491514, 48.172932>,  <31.483372, 26.605728, 48.283878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303801, 26.491514, 48.172932>,  <31.004517, 26.301157, 47.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303801, 26.491514, 48.172932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412648, 0.211808, -0.885923,
		-0.519520, 0.853617, -0.037899,
		0.748212, 0.475894, 0.462282,
		31.528265, 26.634283, 48.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075287, 26.941927, 47.575527>,  <31.004517, 26.301157, 47.988018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075287, 26.941927, 47.575527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420101, 26.921247, 47.777210>,  <31.626989, 26.908840, 47.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420101, 26.921247, 47.777210>,  <31.075287, 26.941927, 47.575527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420101, 26.921247, 47.777210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506846, 0.085568, -0.857779,
		0.001204, 0.994990, 0.099966,
		0.862036, -0.051700, 0.504203,
		31.678713, 26.905737, 47.928471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413124, 27.513943, 47.392742>,  <31.075287, 26.941927, 47.575527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413124, 27.513943, 47.392742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675385, 27.241053, 47.522167>,  <31.832741, 27.077318, 47.599823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675385, 27.241053, 47.522167>,  <31.413124, 27.513943, 47.392742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675385, 27.241053, 47.522167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486991, 0.054597, -0.871699,
		0.577029, 0.729101, 0.368034,
		0.655650, -0.682225, 0.323562,
		31.872080, 27.036385, 47.619236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032116, 27.771189, 47.078560>,  <31.413124, 27.513943, 47.392742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032116, 27.771189, 47.078560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119175, 27.393776, 47.178463>,  <32.171410, 27.167328, 47.238407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119175, 27.393776, 47.178463>,  <32.032116, 27.771189, 47.078560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119175, 27.393776, 47.178463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746766, -0.003793, -0.665076,
		0.628467, 0.331264, 0.703771,
		0.217647, -0.943530, 0.249760,
		32.184467, 27.110718, 47.253391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726509, 27.743790, 47.104137>,  <32.032116, 27.771189, 47.078560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726509, 27.743790, 47.104137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593052, 27.373291, 47.034000>,  <32.512978, 27.150991, 46.991920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593052, 27.373291, 47.034000>,  <32.726509, 27.743790, 47.104137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593052, 27.373291, 47.034000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621283, -0.076165, -0.779876,
		0.709004, -0.369138, 0.600874,
		-0.333647, -0.926248, -0.175338,
		32.492958, 27.095417, 46.981400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255505, 27.307320, 47.019154>,  <32.726509, 27.743790, 47.104137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255505, 27.307320, 47.019154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947033, 27.134624, 46.832012>,  <32.761951, 27.031008, 46.719727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947033, 27.134624, 46.832012>,  <33.255505, 27.307320, 47.019154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947033, 27.134624, 46.832012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556611, -0.100579, -0.824662,
		0.308981, -0.896374, 0.317873,
		-0.771178, -0.431737, -0.467855,
		32.715679, 27.005104, 46.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650333, 26.891066, 46.460556>,  <33.255505, 27.307320, 47.019154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650333, 26.891066, 46.460556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267693, 26.829571, 46.361546>,  <33.038109, 26.792675, 46.302139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267693, 26.829571, 46.361546>,  <33.650333, 26.891066, 46.460556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267693, 26.829571, 46.361546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271457, -0.161461, -0.948811,
		0.105901, -0.974831, 0.196187,
		-0.956607, -0.153736, -0.247525,
		32.980709, 26.783449, 46.287289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648178, 26.386267, 45.954182>,  <33.650333, 26.891066, 46.460556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648178, 26.386267, 45.954182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292099, 26.559900, 45.898869>,  <33.078453, 26.664080, 45.865681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292099, 26.559900, 45.898869>,  <33.648178, 26.386267, 45.954182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292099, 26.559900, 45.898869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088504, -0.132965, -0.987161,
		-0.446898, -0.891005, 0.079947,
		-0.890196, 0.434085, -0.138279,
		33.025040, 26.690126, 45.857384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191429, 26.011450, 45.544281>,  <33.648178, 26.386267, 45.954182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191429, 26.011450, 45.544281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056713, 26.384287, 45.490955>,  <32.975883, 26.607990, 45.458958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056713, 26.384287, 45.490955>,  <33.191429, 26.011450, 45.544281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056713, 26.384287, 45.490955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059629, -0.162419, -0.984918,
		-0.939690, -0.323761, 0.110281,
		-0.336790, 0.932094, -0.133318,
		32.955677, 26.663916, 45.450958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650822, 25.942825, 45.037731>,  <33.191429, 26.011450, 45.544281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650822, 25.942825, 45.037731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737869, 26.333237, 45.039158>,  <32.790100, 26.567484, 45.040012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737869, 26.333237, 45.039158>,  <32.650822, 25.942825, 45.037731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737869, 26.333237, 45.039158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110959, 0.028368, -0.993420,
		-0.969705, 0.215795, 0.114473,
		0.217622, 0.976026, 0.003564,
		32.803158, 26.626045, 45.040226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040604, 26.351019, 44.600128>,  <32.650822, 25.942825, 45.037731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040604, 26.351019, 44.600128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369572, 26.577307, 44.624088>,  <32.566952, 26.713079, 44.638466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369572, 26.577307, 44.624088>,  <32.040604, 26.351019, 44.600128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369572, 26.577307, 44.624088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013463, 0.085917, -0.996211,
		-0.568722, 0.820110, 0.063043,
		0.822420, 0.565719, 0.059904,
		32.616299, 26.747023, 44.642059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092449, 26.918179, 44.127846>,  <32.040604, 26.351019, 44.600128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092449, 26.918179, 44.127846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480526, 26.920156, 44.224754>,  <32.713371, 26.921343, 44.282902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480526, 26.920156, 44.224754>,  <32.092449, 26.918179, 44.127846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480526, 26.920156, 44.224754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213551, 0.455088, -0.864460,
		-0.114530, 0.890433, 0.440469,
		0.970195, 0.004944, 0.242274,
		32.771584, 26.921640, 44.297436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370159, 27.621147, 44.065437>,  <32.092449, 26.918179, 44.127846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370159, 27.621147, 44.065437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683083, 27.372101, 44.058075>,  <32.870838, 27.222673, 44.053658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683083, 27.372101, 44.058075>,  <32.370159, 27.621147, 44.065437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683083, 27.372101, 44.058075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456376, 0.593039, -0.663345,
		0.423924, 0.510542, 0.748088,
		0.782310, -0.622617, -0.018405,
		32.917774, 27.185316, 44.052555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065483, 28.107044, 44.181480>,  <32.370159, 27.621147, 44.065437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065483, 28.107044, 44.181480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162231, 27.768360, 43.991920>,  <33.220280, 27.565149, 43.878185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162231, 27.768360, 43.991920>,  <33.065483, 28.107044, 44.181480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162231, 27.768360, 43.991920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537601, 0.523520, -0.660993,
		0.807765, -0.094893, 0.581816,
		0.241869, -0.846712, -0.473896,
		33.234791, 27.514347, 43.849751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820709, 28.090639, 44.058758>,  <33.065483, 28.107044, 44.181480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820709, 28.090639, 44.058758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646797, 27.853743, 43.787399>,  <33.542450, 27.711605, 43.624584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646797, 27.853743, 43.787399>,  <33.820709, 28.090639, 44.058758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646797, 27.853743, 43.787399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533172, 0.437806, -0.723915,
		0.725737, -0.676443, 0.125418,
		-0.434779, -0.592242, -0.678393,
		33.516365, 27.676069, 43.583881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290173, 27.915506, 43.707054>,  <33.820709, 28.090639, 44.058758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290173, 27.915506, 43.707054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996807, 27.828438, 43.449459>,  <33.820789, 27.776197, 43.294903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996807, 27.828438, 43.449459>,  <34.290173, 27.915506, 43.707054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996807, 27.828438, 43.449459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536684, 0.396035, -0.745068,
		0.417231, -0.892060, -0.173630,
		-0.733409, -0.217681, -0.643992,
		33.776783, 27.763136, 43.256264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640663, 27.686245, 43.167290>,  <34.290173, 27.915506, 43.707054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640663, 27.686245, 43.167290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276676, 27.720886, 43.005074>,  <34.058285, 27.741671, 42.907745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276676, 27.720886, 43.005074>,  <34.640663, 27.686245, 43.167290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276676, 27.720886, 43.005074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407418, 0.368975, -0.835385,
		0.077289, -0.925396, -0.371038,
		-0.909966, 0.086601, -0.405540,
		34.003685, 27.746866, 42.883411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692467, 27.468239, 42.388733>,  <34.640663, 27.686245, 43.167290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692467, 27.468239, 42.388733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359455, 27.689787, 42.384300>,  <34.159649, 27.822716, 42.381641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359455, 27.689787, 42.384300>,  <34.692467, 27.468239, 42.388733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359455, 27.689787, 42.384300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274558, 0.395153, -0.876625,
		-0.481157, -0.732859, -0.481046,
		-0.832530, 0.553869, -0.011082,
		34.109695, 27.855947, 42.380974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484447, 27.402603, 41.760864>,  <34.692467, 27.468239, 42.388733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484447, 27.402603, 41.760864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325588, 27.735199, 41.916248>,  <34.230274, 27.934755, 42.009480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325588, 27.735199, 41.916248>,  <34.484447, 27.402603, 41.760864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325588, 27.735199, 41.916248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468907, 0.547695, -0.692934,
		-0.788924, -0.093045, -0.607406,
		-0.397147, 0.831488, 0.388460,
		34.206444, 27.984646, 42.032787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097359, 27.645504, 41.284885>,  <34.484447, 27.402603, 41.760864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097359, 27.645504, 41.284885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174232, 27.959930, 41.519890>,  <34.220356, 28.148586, 41.660892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174232, 27.959930, 41.519890>,  <34.097359, 27.645504, 41.284885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174232, 27.959930, 41.519890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365691, 0.498192, -0.786178,
		-0.910680, 0.365935, -0.191714,
		0.192180, 0.786064, 0.587512,
		34.231888, 28.195749, 41.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642971, 28.162657, 41.028687>,  <34.097359, 27.645504, 41.284885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642971, 28.162657, 41.028687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926609, 28.362171, 41.228046>,  <34.096790, 28.481880, 41.347660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926609, 28.362171, 41.228046>,  <33.642971, 28.162657, 41.028687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926609, 28.362171, 41.228046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177284, 0.558010, -0.810676,
		-0.682463, 0.663203, 0.307256,
		0.709094, 0.498784, 0.498396,
		34.139336, 28.511806, 41.377563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450375, 28.891905, 40.867405>,  <33.642971, 28.162657, 41.028687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450375, 28.891905, 40.867405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825878, 28.884031, 41.005009>,  <34.051182, 28.879307, 41.087570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825878, 28.884031, 41.005009>,  <33.450375, 28.891905, 40.867405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825878, 28.884031, 41.005009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289638, 0.585871, -0.756878,
		-0.186646, 0.810165, 0.555694,
		0.938761, -0.019682, 0.344006,
		34.107506, 28.878126, 41.108212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764263, 29.612291, 40.611420>,  <33.450375, 28.891905, 40.867405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764263, 29.612291, 40.611420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090714, 29.412121, 40.727013>,  <34.286583, 29.292019, 40.796368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090714, 29.412121, 40.727013>,  <33.764263, 29.612291, 40.611420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090714, 29.412121, 40.727013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496497, 0.351353, -0.793752,
		0.295678, 0.791282, 0.535208,
		0.816128, -0.500424, 0.288982,
		34.335552, 29.261993, 40.813705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260670, 30.087900, 40.266136>,  <33.764263, 29.612291, 40.611420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260670, 30.087900, 40.266136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422695, 29.729347, 40.338161>,  <34.519913, 29.514215, 40.381374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422695, 29.729347, 40.338161>,  <34.260670, 30.087900, 40.266136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422695, 29.729347, 40.338161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559172, 0.087070, -0.824467,
		0.723360, 0.434648, 0.536500,
		0.405066, -0.896382, 0.180059,
		34.544216, 29.460432, 40.392178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011303, 30.084368, 40.276539>,  <34.260670, 30.087900, 40.266136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011303, 30.084368, 40.276539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941563, 29.698832, 40.195927>,  <34.899719, 29.467510, 40.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941563, 29.698832, 40.195927>,  <35.011303, 30.084368, 40.276539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941563, 29.698832, 40.195927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616369, 0.052785, -0.785686,
		0.767913, -0.261201, 0.584879,
		-0.174349, -0.963840, -0.201531,
		34.889259, 29.409679, 40.135468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672089, 29.828974, 40.175358>,  <35.011303, 30.084368, 40.276539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672089, 29.828974, 40.175358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411694, 29.591179, 39.986549>,  <35.255455, 29.448502, 39.873264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411694, 29.591179, 39.986549>,  <35.672089, 29.828974, 40.175358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411694, 29.591179, 39.986549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603542, -0.028229, -0.796832,
		0.460381, -0.803610, 0.377174,
		-0.650989, -0.594486, -0.472016,
		35.216396, 29.412832, 39.844944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084934, 29.461283, 39.689732>,  <35.672089, 29.828974, 40.175358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084934, 29.461283, 39.689732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707939, 29.423883, 39.561378>,  <35.481743, 29.401443, 39.484367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707939, 29.423883, 39.561378>,  <36.084934, 29.461283, 39.689732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707939, 29.423883, 39.561378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307197, 0.135912, -0.941891,
		0.131639, -0.986303, -0.099387,
		-0.942498, -0.093458, -0.320881,
		35.425190, 29.395834, 39.465115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052963, 29.060974, 39.038620>,  <36.084934, 29.461283, 39.689732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052963, 29.060974, 39.038620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708138, 29.263639, 39.043186>,  <35.501240, 29.385239, 39.045925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708138, 29.263639, 39.043186>,  <36.052963, 29.060974, 39.038620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708138, 29.263639, 39.043186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207888, 0.374075, -0.903798,
		-0.462191, -0.776763, -0.427807,
		-0.862069, 0.506664, 0.011414,
		35.449516, 29.415638, 39.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804958, 28.926254, 38.399509>,  <36.052963, 29.060974, 39.038620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804958, 28.926254, 38.399509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616154, 29.257101, 38.521545>,  <35.502869, 29.455608, 38.594765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616154, 29.257101, 38.521545>,  <35.804958, 28.926254, 38.399509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616154, 29.257101, 38.521545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418388, 0.514778, -0.748301,
		-0.775985, -0.225565, -0.589040,
		-0.472016, 0.827118, 0.305086,
		35.474548, 29.505236, 38.613071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577667, 29.250196, 37.730289>,  <35.804958, 28.926254, 38.399509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577667, 29.250196, 37.730289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563995, 29.539883, 38.005779>,  <35.555794, 29.713694, 38.171074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563995, 29.539883, 38.005779>,  <35.577667, 29.250196, 37.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563995, 29.539883, 38.005779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337675, 0.656972, -0.674065,
		-0.940642, 0.209527, -0.267004,
		-0.034179, 0.724215, 0.688727,
		35.553741, 29.757147, 38.212399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371861, 29.702805, 37.296104>,  <35.577667, 29.250196, 37.730289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371861, 29.702805, 37.296104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503613, 29.896936, 37.620071>,  <35.582664, 30.013416, 37.814449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503613, 29.896936, 37.620071>,  <35.371861, 29.702805, 37.296104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503613, 29.896936, 37.620071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299479, 0.759790, -0.577089,
		-0.895444, 0.432636, 0.104916,
		0.329383, 0.485331, 0.809914,
		35.602428, 30.042536, 37.863045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102879, 30.321259, 37.253204>,  <35.371861, 29.702805, 37.296104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102879, 30.321259, 37.253204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421528, 30.352959, 37.492908>,  <35.612717, 30.371979, 37.636730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421528, 30.352959, 37.492908>,  <35.102879, 30.321259, 37.253204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421528, 30.352959, 37.492908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275331, 0.834986, -0.476436,
		-0.538132, 0.544534, 0.643348,
		0.796622, 0.079252, 0.599260,
		35.660515, 30.376734, 37.672688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286789, 31.048828, 37.290855>,  <35.102879, 30.321259, 37.253204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286789, 31.048828, 37.290855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618240, 30.877356, 37.434856>,  <35.817112, 30.774471, 37.521255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618240, 30.877356, 37.434856>,  <35.286789, 31.048828, 37.290855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618240, 30.877356, 37.434856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557666, 0.688169, -0.464147,
		-0.048769, 0.585367, 0.809300,
		0.828631, -0.428683, 0.360001,
		35.866829, 30.748751, 37.542858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659279, 31.593676, 37.637836>,  <35.286789, 31.048828, 37.290855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659279, 31.593676, 37.637836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897598, 31.291021, 37.530113>,  <36.040588, 31.109428, 37.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897598, 31.291021, 37.530113>,  <35.659279, 31.593676, 37.637836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897598, 31.291021, 37.530113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581638, 0.637731, -0.504972,
		0.553828, 0.144219, 0.820046,
		0.595795, -0.756638, -0.269310,
		36.076336, 31.064030, 37.449322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341114, 31.957584, 37.620941>,  <35.659279, 31.593676, 37.637836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341114, 31.957584, 37.620941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459217, 31.610462, 37.461071>,  <36.530079, 31.402189, 37.365150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459217, 31.610462, 37.461071>,  <36.341114, 31.957584, 37.620941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459217, 31.610462, 37.461071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721459, 0.476754, -0.502197,
		0.626355, -0.140072, 0.766850,
		0.295256, -0.867805, -0.399674,
		36.547794, 31.350121, 37.341167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087158, 31.857906, 37.728024>,  <36.341114, 31.957584, 37.620941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087158, 31.857906, 37.728024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990788, 31.613758, 37.426189>,  <36.932964, 31.467268, 37.245090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990788, 31.613758, 37.426189>,  <37.087158, 31.857906, 37.728024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990788, 31.613758, 37.426189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821164, 0.286240, -0.493718,
		0.517344, -0.738588, 0.432253,
		-0.240926, -0.610372, -0.754586,
		36.918510, 31.430647, 37.199814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701668, 31.424068, 37.646820>,  <37.087158, 31.857906, 37.728024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701668, 31.424068, 37.646820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494789, 31.409941, 37.304764>,  <37.370663, 31.401464, 37.099529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494789, 31.409941, 37.304764>,  <37.701668, 31.424068, 37.646820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494789, 31.409941, 37.304764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795464, 0.348864, -0.495510,
		0.315830, -0.936508, -0.152333,
		-0.517193, -0.035321, -0.855140,
		37.339630, 31.399343, 37.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249992, 31.463484, 37.118626>,  <37.701668, 31.424068, 37.646820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249992, 31.463484, 37.118626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908070, 31.538811, 36.925198>,  <37.702915, 31.584007, 36.809139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908070, 31.538811, 36.925198>,  <38.249992, 31.463484, 37.118626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908070, 31.538811, 36.925198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449219, 0.735066, -0.507819,
		0.259826, -0.651317, -0.712935,
		-0.854805, 0.188319, -0.483574,
		37.651627, 31.595306, 36.780125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441380, 31.577208, 36.394993>,  <38.249992, 31.463484, 37.118626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441380, 31.577208, 36.394993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080917, 31.743975, 36.442482>,  <37.864639, 31.844036, 36.470974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080917, 31.743975, 36.442482>,  <38.441380, 31.577208, 36.394993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080917, 31.743975, 36.442482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293076, 0.787754, -0.541802,
		-0.319408, -0.453455, -0.832080,
		-0.901157, 0.416919, 0.118718,
		37.810570, 31.869051, 36.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303555, 31.885576, 35.670918>,  <38.441380, 31.577208, 36.394993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303555, 31.885576, 35.670918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088757, 32.091709, 35.938072>,  <37.959877, 32.215389, 36.098366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088757, 32.091709, 35.938072>,  <38.303555, 31.885576, 35.670918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088757, 32.091709, 35.938072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436610, 0.847213, -0.302657,
		-0.721811, 0.129082, -0.679946,
		-0.536991, 0.515332, 0.667887,
		37.927658, 32.246307, 36.138439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752430, 32.364460, 35.382729>,  <38.303555, 31.885576, 35.670918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752430, 32.364460, 35.382729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946568, 32.476532, 35.714016>,  <38.063049, 32.543777, 35.912788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946568, 32.476532, 35.714016>,  <37.752430, 32.364460, 35.382729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946568, 32.476532, 35.714016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456892, 0.726359, -0.513470,
		-0.745447, 0.627614, 0.224520,
		0.485343, 0.280184, 0.828215,
		38.092171, 32.560589, 35.962479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045612, 31.763245, 34.883194>,  <37.752430, 32.364460, 35.382729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045612, 31.763245, 34.883194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762016, 31.715139, 34.605236>,  <37.591858, 31.686277, 34.438461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762016, 31.715139, 34.605236>,  <38.045612, 31.763245, 34.883194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762016, 31.715139, 34.605236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664928, 0.442296, 0.601868,
		0.234966, 0.888770, -0.393547,
		-0.708987, -0.120262, -0.694892,
		37.549320, 31.679062, 34.396767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762981, 31.783554, 35.094051>,  <38.045612, 31.763245, 34.883194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762981, 31.783554, 35.094051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072563, 31.824772, 34.844128>,  <39.258312, 31.849503, 34.694176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072563, 31.824772, 34.844128>,  <38.762981, 31.783554, 35.094051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072563, 31.824772, 34.844128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102329, 0.953353, 0.283985,
		0.624924, -0.283726, 0.727303,
		0.773950, 0.103045, -0.624806,
		39.304749, 31.855686, 34.656685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182026, 32.245483, 35.418766>,  <38.762981, 31.783554, 35.094051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182026, 32.245483, 35.418766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332573, 32.241817, 35.048195>,  <39.422901, 32.239616, 34.825851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332573, 32.241817, 35.048195>,  <39.182026, 32.245483, 35.418766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332573, 32.241817, 35.048195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423356, 0.891148, 0.163170,
		0.824087, -0.453620, 0.339277,
		0.376363, -0.009168, -0.926427,
		39.445480, 32.239067, 34.770267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788837, 32.420288, 35.432865>,  <39.182026, 32.245483, 35.418766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788837, 32.420288, 35.432865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737030, 32.533791, 35.052822>,  <39.705944, 32.601891, 34.824795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737030, 32.533791, 35.052822>,  <39.788837, 32.420288, 35.432865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737030, 32.533791, 35.052822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521079, 0.834688, 0.178249,
		0.843624, -0.471995, -0.255967,
		-0.129520, 0.283754, -0.950110,
		39.698174, 32.618916, 34.767788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415688, 32.629879, 35.128002>,  <39.788837, 32.420288, 35.432865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415688, 32.629879, 35.128002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131126, 32.849186, 34.952137>,  <39.960388, 32.980770, 34.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131126, 32.849186, 34.952137>,  <40.415688, 32.629879, 35.128002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131126, 32.849186, 34.952137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483315, 0.835856, 0.260290,
		0.510202, -0.027322, -0.859620,
		-0.711407, 0.548268, -0.439661,
		39.917706, 33.013668, 34.820240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791691, 33.149059, 34.799965>,  <40.415688, 32.629879, 35.128002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791691, 33.149059, 34.799965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412907, 33.271210, 34.839996>,  <40.185638, 33.344501, 34.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412907, 33.271210, 34.839996>,  <40.791691, 33.149059, 34.799965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412907, 33.271210, 34.839996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318425, 0.849646, 0.420366,
		0.043337, 0.429937, -0.901818,
		-0.946957, 0.305379, 0.100081,
		40.128819, 33.362823, 34.870022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155464, 33.024639, 35.378815>,  <40.791691, 33.149059, 34.799965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155464, 33.024639, 35.378815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442303, 32.856525, 35.156414>,  <41.614407, 32.755657, 35.022972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442303, 32.856525, 35.156414>,  <41.155464, 33.024639, 35.378815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442303, 32.856525, 35.156414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603227, -0.025353, 0.797167,
		-0.349130, -0.907040, 0.235345,
		0.717095, -0.420281, -0.556002,
		41.657433, 32.730442, 34.989613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619171, 32.472942, 35.750210>,  <41.155464, 33.024639, 35.378815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619171, 32.472942, 35.750210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926739, 32.715199, 35.832138>,  <42.111279, 32.860554, 35.881294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926739, 32.715199, 35.832138>,  <41.619171, 32.472942, 35.750210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926739, 32.715199, 35.832138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418879, 0.235197, 0.877053,
		0.483009, -0.760182, 0.434541,
		0.768923, 0.605645, 0.204822,
		42.157417, 32.896893, 35.893585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817650, 32.299015, 36.417969>,  <41.619171, 32.472942, 35.750210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817650, 32.299015, 36.417969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936954, 32.674149, 36.346966>,  <42.008537, 32.899227, 36.304363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936954, 32.674149, 36.346966>,  <41.817650, 32.299015, 36.417969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936954, 32.674149, 36.346966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593313, 0.327840, 0.735187,
		0.747678, -0.113958, 0.654210,
		0.298257, 0.937835, -0.177506,
		42.026432, 32.955498, 36.293713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830612, 32.539177, 37.054260>,  <41.817650, 32.299015, 36.417969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830612, 32.539177, 37.054260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831890, 32.866322, 36.824097>,  <41.832657, 33.062607, 36.685997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831890, 32.866322, 36.824097>,  <41.830612, 32.539177, 37.054260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831890, 32.866322, 36.824097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470291, 0.509033, 0.720910,
		0.882505, 0.268308, 0.386257,
		0.003191, 0.817860, -0.575408,
		41.832848, 33.111679, 36.651474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800171, 33.078487, 37.455189>,  <41.830612, 32.539177, 37.054260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800171, 33.078487, 37.455189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685654, 33.274727, 37.125984>,  <41.616943, 33.392471, 36.928463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685654, 33.274727, 37.125984>,  <41.800171, 33.078487, 37.455189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685654, 33.274727, 37.125984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655515, 0.526190, 0.541687,
		0.698813, 0.694576, 0.170954,
		-0.286288, 0.490601, -0.823012,
		41.599766, 33.421906, 36.879082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822124, 33.832592, 37.615677>,  <41.800171, 33.078487, 37.455189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822124, 33.832592, 37.615677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589355, 33.780823, 37.294525>,  <41.449696, 33.749760, 37.101833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589355, 33.780823, 37.294525>,  <41.822124, 33.832592, 37.615677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589355, 33.780823, 37.294525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693676, 0.594299, 0.406967,
		0.424479, 0.793762, -0.435615,
		-0.581920, -0.129427, -0.802881,
		41.414780, 33.741993, 37.053661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557167, 34.550877, 37.384937>,  <41.822124, 33.832592, 37.615677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557167, 34.550877, 37.384937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308140, 34.306133, 37.189781>,  <41.158722, 34.159286, 37.072685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308140, 34.306133, 37.189781>,  <41.557167, 34.550877, 37.384937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308140, 34.306133, 37.189781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782385, 0.500064, 0.371229,
		0.016838, 0.612835, -0.790031,
		-0.622568, -0.611857, -0.487893,
		41.121368, 34.122578, 37.043415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052681, 35.001156, 37.056755>,  <41.557167, 34.550877, 37.384937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052681, 35.001156, 37.056755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889320, 34.636086, 37.062820>,  <40.791306, 34.417042, 37.066460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889320, 34.636086, 37.062820>,  <41.052681, 35.001156, 37.056755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889320, 34.636086, 37.062820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869069, 0.393858, 0.299324,
		-0.279158, 0.109068, -0.954031,
		-0.408399, -0.912678, 0.015161,
		40.766800, 34.362282, 37.067368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391277, 35.035892, 36.660694>,  <41.052681, 35.001156, 37.056755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391277, 35.035892, 36.660694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375256, 34.719940, 36.905476>,  <40.365643, 34.530369, 37.052345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375256, 34.719940, 36.905476>,  <40.391277, 35.035892, 36.660694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375256, 34.719940, 36.905476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859803, 0.339263, 0.381628,
		-0.509053, -0.510874, -0.692728,
		-0.040053, -0.789879, 0.611954,
		40.363239, 34.482975, 37.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744267, 34.691387, 36.527687>,  <40.391277, 35.035892, 36.660694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744267, 34.691387, 36.527687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871353, 34.591442, 36.893559>,  <39.947605, 34.531475, 37.113079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871353, 34.591442, 36.893559>,  <39.744267, 34.691387, 36.527687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871353, 34.591442, 36.893559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866000, 0.316378, 0.387231,
		-0.386137, -0.915136, -0.115862,
		0.317713, -0.249861, 0.914674,
		39.966667, 34.516483, 37.167961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255306, 34.255619, 36.687817>,  <39.744267, 34.691387, 36.527687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255306, 34.255619, 36.687817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432842, 34.349503, 37.033745>,  <39.539364, 34.405834, 37.241302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432842, 34.349503, 37.033745>,  <39.255306, 34.255619, 36.687817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432842, 34.349503, 37.033745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882356, 0.282876, 0.376070,
		-0.156369, -0.929995, 0.332653,
		0.443843, 0.234713, 0.864820,
		39.565994, 34.419918, 37.293190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800011, 33.900070, 37.239422>,  <39.255306, 34.255619, 36.687817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800011, 33.900070, 37.239422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010563, 34.200909, 37.398052>,  <39.136894, 34.381413, 37.493229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010563, 34.200909, 37.398052>,  <38.800011, 33.900070, 37.239422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010563, 34.200909, 37.398052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841633, 0.394666, 0.368636,
		0.120738, -0.527811, 0.840737,
		0.526380, 0.752100, 0.396572,
		39.168476, 34.426540, 37.517025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446167, 33.978676, 37.850731>,  <38.800011, 33.900070, 37.239422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446167, 33.978676, 37.850731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667278, 34.309002, 37.806072>,  <38.799946, 34.507198, 37.779278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667278, 34.309002, 37.806072>,  <38.446167, 33.978676, 37.850731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667278, 34.309002, 37.806072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762598, 0.555314, 0.331769,
		0.335980, -0.098251, 0.936731,
		0.552776, 0.825817, -0.111648,
		38.833111, 34.556747, 37.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336838, 34.411007, 38.554234>,  <38.446167, 33.978676, 37.850731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336838, 34.411007, 38.554234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449520, 34.683804, 38.284260>,  <38.517128, 34.847481, 38.122276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449520, 34.683804, 38.284260>,  <38.336838, 34.411007, 38.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449520, 34.683804, 38.284260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668071, 0.644314, 0.372210,
		0.688713, 0.346053, 0.637120,
		0.281701, 0.681987, -0.674936,
		38.534031, 34.888401, 38.081779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229145, 35.034683, 38.872662>,  <38.336838, 34.411007, 38.554234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229145, 35.034683, 38.872662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303833, 35.168758, 38.503277>,  <38.348644, 35.249203, 38.281647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303833, 35.168758, 38.503277>,  <38.229145, 35.034683, 38.872662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303833, 35.168758, 38.503277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564363, 0.806010, 0.178444,
		0.804133, 0.487849, 0.339666,
		0.186720, 0.335188, -0.923464,
		38.359848, 35.269314, 38.226238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328453, 35.726082, 38.916660>,  <38.229145, 35.034683, 38.872662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328453, 35.726082, 38.916660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257355, 35.683704, 38.525318>,  <38.214695, 35.658279, 38.290512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257355, 35.683704, 38.525318>,  <38.328453, 35.726082, 38.916660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257355, 35.683704, 38.525318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578458, 0.815540, 0.016778,
		0.796112, 0.568921, -0.206239,
		-0.177742, -0.105943, -0.978358,
		38.204033, 35.651920, 38.231812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339436, 36.446316, 38.568806>,  <38.328453, 35.726082, 38.916660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339436, 36.446316, 38.568806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155575, 36.204510, 38.308567>,  <38.045258, 36.059425, 38.152424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155575, 36.204510, 38.308567>,  <38.339436, 36.446316, 38.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155575, 36.204510, 38.308567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749893, 0.656662, -0.080346,
		0.475792, 0.450946, -0.755162,
		-0.459654, -0.604519, -0.650596,
		38.017677, 36.023155, 38.113388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200169, 36.870869, 37.992443>,  <38.339436, 36.446316, 38.568806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200169, 36.870869, 37.992443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957375, 36.553726, 38.014168>,  <37.811699, 36.363441, 38.027203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957375, 36.553726, 38.014168>,  <38.200169, 36.870869, 37.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957375, 36.553726, 38.014168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747318, 0.592694, 0.300383,
		-0.270348, 0.141742, -0.952272,
		-0.606982, -0.792858, 0.054307,
		37.775280, 36.315868, 38.030460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575565, 37.184937, 37.838387>,  <38.200169, 36.870869, 37.992443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575565, 37.184937, 37.838387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430656, 36.841743, 37.984055>,  <37.343712, 36.635826, 38.071457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430656, 36.841743, 37.984055>,  <37.575565, 37.184937, 37.838387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430656, 36.841743, 37.984055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791297, 0.489580, 0.366279,
		-0.492554, -0.155477, -0.856281,
		-0.362270, -0.857985, 0.364173,
		37.321976, 36.584347, 38.093307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836327, 37.082104, 37.639709>,  <37.575565, 37.184937, 37.838387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836327, 37.082104, 37.639709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926003, 36.886295, 37.976780>,  <36.979809, 36.768810, 38.179024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926003, 36.886295, 37.976780>,  <36.836327, 37.082104, 37.639709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926003, 36.886295, 37.976780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630926, 0.586112, 0.508336,
		-0.742745, -0.645633, -0.177450,
		0.224193, -0.489522, 0.842678,
		36.993259, 36.739437, 38.229584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218620, 37.095833, 37.979725>,  <36.836327, 37.082104, 37.639709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218620, 37.095833, 37.979725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488312, 37.034756, 38.268749>,  <36.650127, 36.998108, 38.442165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488312, 37.034756, 38.268749>,  <36.218620, 37.095833, 37.979725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488312, 37.034756, 38.268749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512198, 0.608163, 0.606457,
		-0.532037, -0.778988, 0.331835,
		0.674233, -0.152693, 0.722562,
		36.690582, 36.988949, 38.485519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869781, 36.773457, 38.510494>,  <36.218620, 37.095833, 37.979725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869781, 36.773457, 38.510494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185429, 36.964165, 38.665405>,  <36.374817, 37.078590, 38.758354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185429, 36.964165, 38.665405>,  <35.869781, 36.773457, 38.510494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185429, 36.964165, 38.665405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598745, 0.456288, 0.658260,
		0.137127, -0.751325, 0.645528,
		0.789114, 0.476772, 0.387283,
		36.422161, 37.107197, 38.781590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776917, 36.929977, 39.217598>,  <35.869781, 36.773457, 38.510494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776917, 36.929977, 39.217598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045467, 37.215679, 39.138515>,  <36.206600, 37.387100, 39.091068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045467, 37.215679, 39.138515>,  <35.776917, 36.929977, 39.217598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045467, 37.215679, 39.138515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508505, 0.638029, 0.578223,
		0.539139, -0.287675, 0.791563,
		0.671380, 0.714257, -0.197702,
		36.246883, 37.429955, 39.079205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250393, 37.106590, 39.759190>,  <35.776917, 36.929977, 39.217598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250393, 37.106590, 39.759190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172035, 37.408611, 39.508900>,  <36.125023, 37.589825, 39.358727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172035, 37.408611, 39.508900>,  <36.250393, 37.106590, 39.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172035, 37.408611, 39.508900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491460, 0.476572, 0.728935,
		0.848583, 0.450309, 0.277720,
		-0.195892, 0.755050, -0.625720,
		36.113266, 37.635128, 39.321182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389442, 37.852486, 40.082294>,  <36.250393, 37.106590, 39.759190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389442, 37.852486, 40.082294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106487, 37.885754, 39.801529>,  <35.936714, 37.905716, 39.633068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106487, 37.885754, 39.801529>,  <36.389442, 37.852486, 40.082294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106487, 37.885754, 39.801529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513994, 0.621141, 0.591603,
		0.485191, 0.779272, -0.396641,
		-0.707390, 0.083169, -0.701913,
		35.894272, 37.910706, 39.590954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981190, 38.367970, 40.399223>,  <36.389442, 37.852486, 40.082294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981190, 38.367970, 40.399223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758030, 38.255592, 40.086861>,  <35.624134, 38.188168, 39.899445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758030, 38.255592, 40.086861>,  <35.981190, 38.367970, 40.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758030, 38.255592, 40.086861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790435, 0.466620, 0.396835,
		0.252899, 0.838652, -0.482395,
		-0.557902, -0.280943, -0.780908,
		35.590660, 38.171310, 39.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512814, 37.915051, 40.826416>,  <35.981190, 38.367970, 40.399223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512814, 37.915051, 40.826416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908134, 37.885063, 40.773281>,  <37.145325, 37.867069, 40.741402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908134, 37.885063, 40.773281>,  <36.512814, 37.915051, 40.826416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908134, 37.885063, 40.773281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009878, 0.837585, -0.546218,
		0.152213, 0.541139, 0.827043,
		0.988298, -0.074972, -0.132837,
		37.204624, 37.862572, 40.733429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106003, 38.225204, 40.326984>,  <36.512814, 37.915051, 40.826416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106003, 38.225204, 40.326984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195583, 38.149712, 40.709446>,  <37.249332, 38.104416, 40.938923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195583, 38.149712, 40.709446>,  <37.106003, 38.225204, 40.326984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195583, 38.149712, 40.709446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916097, -0.294026, -0.272609,
		0.332583, 0.936979, 0.107047,
		0.223955, -0.188730, 0.956151,
		37.262772, 38.093094, 40.996292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670406, 38.553154, 40.399094>,  <37.106003, 38.225204, 40.326984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670406, 38.553154, 40.399094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657398, 38.300465, 40.708900>,  <37.649593, 38.148853, 40.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657398, 38.300465, 40.708900>,  <37.670406, 38.553154, 40.399094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657398, 38.300465, 40.708900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948580, -0.263632, -0.175197,
		0.314862, 0.728990, 0.607812,
		-0.032521, -0.631721, 0.774513,
		37.647640, 38.110947, 40.941254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377754, 38.614563, 40.616821>,  <37.670406, 38.553154, 40.399094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377754, 38.614563, 40.616821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194698, 38.281178, 40.740692>,  <38.084866, 38.081146, 40.815014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194698, 38.281178, 40.740692>,  <38.377754, 38.614563, 40.616821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194698, 38.281178, 40.740692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867347, -0.495107, -0.050772,
		0.195641, 0.245364, 0.949484,
		-0.457639, -0.833465, 0.309679,
		38.057407, 38.031139, 40.833595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714844, 38.182358, 41.240860>,  <38.377754, 38.614563, 40.616821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714844, 38.182358, 41.240860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541512, 37.927502, 40.985901>,  <38.437511, 37.774586, 40.832928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541512, 37.927502, 40.985901>,  <38.714844, 38.182358, 41.240860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541512, 37.927502, 40.985901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886953, -0.426904, -0.176259,
		-0.159804, -0.641717, 0.750108,
		-0.433333, -0.637144, -0.637394,
		38.411510, 37.736359, 40.794682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001316, 37.602978, 41.417957>,  <38.714844, 38.182358, 41.240860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001316, 37.602978, 41.417957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891579, 37.576443, 41.034222>,  <38.825737, 37.560524, 40.803982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891579, 37.576443, 41.034222>,  <39.001316, 37.602978, 41.417957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891579, 37.576443, 41.034222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891240, -0.392199, -0.227753,
		-0.361144, -0.917485, 0.166718,
		-0.274347, -0.066334, -0.959340,
		38.809277, 37.556541, 40.746418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271168, 36.930447, 41.106300>,  <39.001316, 37.602978, 41.417957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271168, 36.930447, 41.106300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184536, 37.156406, 40.787807>,  <39.132557, 37.291981, 40.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184536, 37.156406, 40.787807>,  <39.271168, 36.930447, 41.106300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184536, 37.156406, 40.787807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737507, -0.439721, -0.512571,
		-0.639669, -0.698238, -0.321382,
		-0.216578, 0.564897, -0.796231,
		39.119564, 37.325874, 40.548939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233582, 36.475945, 40.596912>,  <39.271168, 36.930447, 41.106300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233582, 36.475945, 40.596912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305851, 36.834381, 40.434734>,  <39.349213, 37.049442, 40.337429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305851, 36.834381, 40.434734>,  <39.233582, 36.475945, 40.596912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305851, 36.834381, 40.434734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705064, -0.405411, -0.581830,
		-0.685742, -0.180747, -0.705045,
		0.180669, 0.896087, -0.405446,
		39.360050, 37.103207, 40.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244019, 36.353176, 39.913643>,  <39.233582, 36.475945, 40.596912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244019, 36.353176, 39.913643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429543, 36.707020, 39.933010>,  <39.540855, 36.919327, 39.944630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429543, 36.707020, 39.933010>,  <39.244019, 36.353176, 39.913643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429543, 36.707020, 39.933010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724566, -0.347314, -0.595297,
		-0.509790, 0.311185, -0.802046,
		0.463809, 0.884611, 0.048416,
		39.568684, 36.972404, 39.947536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477783, 36.509357, 39.252625>,  <39.244019, 36.353176, 39.913643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477783, 36.509357, 39.252625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740631, 36.729240, 39.458935>,  <39.898338, 36.861168, 39.582722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740631, 36.729240, 39.458935>,  <39.477783, 36.509357, 39.252625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740631, 36.729240, 39.458935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724236, -0.270712, -0.634190,
		-0.208992, 0.790278, -0.576007,
		0.657118, 0.549706, 0.515771,
		39.937767, 36.894154, 39.613667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883392, 36.838421, 38.734428>,  <39.477783, 36.509357, 39.252625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883392, 36.838421, 38.734428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098057, 36.844097, 39.071899>,  <40.226856, 36.847504, 39.274384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098057, 36.844097, 39.071899>,  <39.883392, 36.838421, 38.734428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098057, 36.844097, 39.071899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793861, -0.347352, -0.499130,
		0.285972, 0.937627, -0.197675,
		0.536661, 0.014189, 0.843679,
		40.259056, 36.848354, 39.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415852, 37.100719, 38.457569>,  <39.883392, 36.838421, 38.734428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415852, 37.100719, 38.457569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512886, 36.952576, 38.816231>,  <40.571106, 36.863689, 39.031429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512886, 36.952576, 38.816231>,  <40.415852, 37.100719, 38.457569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512886, 36.952576, 38.816231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842650, -0.377549, -0.383923,
		0.480719, 0.848701, 0.220491,
		0.242589, -0.370356, 0.896653,
		40.585663, 36.841469, 39.085228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065388, 37.364719, 38.539959>,  <40.415852, 37.100719, 38.457569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065388, 37.364719, 38.539959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014259, 37.035568, 38.761417>,  <40.983582, 36.838078, 38.894295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014259, 37.035568, 38.761417>,  <41.065388, 37.364719, 38.539959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014259, 37.035568, 38.761417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939682, -0.279054, -0.197807,
		0.317270, 0.494971, 0.808915,
		-0.127822, -0.822881, 0.553650,
		40.975914, 36.788704, 38.927513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678978, 37.350742, 38.954445>,  <41.065388, 37.364719, 38.539959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678978, 37.350742, 38.954445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538082, 36.976418, 38.948929>,  <41.453545, 36.751823, 38.945618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538082, 36.976418, 38.948929>,  <41.678978, 37.350742, 38.954445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538082, 36.976418, 38.948929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907478, -0.337892, -0.249626,
		0.228941, -0.100445, 0.968244,
		-0.352236, -0.935810, -0.013794,
		41.432411, 36.695675, 38.944790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200962, 37.040367, 39.364639>,  <41.678978, 37.350742, 38.954445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200962, 37.040367, 39.364639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009312, 36.738968, 39.184559>,  <41.894321, 36.558128, 39.076511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009312, 36.738968, 39.184559>,  <42.200962, 37.040367, 39.364639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009312, 36.738968, 39.184559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874659, -0.366889, -0.316803,
		0.073538, -0.545558, 0.834841,
		-0.479128, -0.753498, -0.450197,
		41.865574, 36.512917, 39.049500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526592, 36.531002, 39.623032>,  <42.200962, 37.040367, 39.364639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526592, 36.531002, 39.623032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356495, 36.390099, 39.289547>,  <42.254436, 36.305557, 39.089455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356495, 36.390099, 39.289547>,  <42.526592, 36.531002, 39.623032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356495, 36.390099, 39.289547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883830, -0.360053, -0.298674,
		-0.194971, -0.863872, 0.464448,
		-0.425242, -0.352260, -0.833716,
		42.228924, 36.284420, 39.039433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960041, 36.001366, 39.450603>,  <42.526592, 36.531002, 39.623032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960041, 36.001366, 39.450603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770424, 36.069004, 39.104958>,  <42.656654, 36.109589, 38.897572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770424, 36.069004, 39.104958>,  <42.960041, 36.001366, 39.450603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770424, 36.069004, 39.104958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765582, -0.405610, -0.499364,
		-0.434936, -0.898268, 0.062815,
		-0.474041, 0.169101, -0.864112,
		42.628212, 36.119732, 38.845722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998325, 35.404232, 39.039558>,  <42.960041, 36.001366, 39.450603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998325, 35.404232, 39.039558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922642, 35.697918, 38.778751>,  <42.877232, 35.874130, 38.622269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922642, 35.697918, 38.778751>,  <42.998325, 35.404232, 39.039558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922642, 35.697918, 38.778751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720085, -0.347695, -0.600488,
		-0.667592, -0.583123, -0.462914,
		-0.189206, 0.734218, -0.652016,
		42.865879, 35.918182, 38.583145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085629, 35.087151, 38.469608>,  <42.998325, 35.404232, 39.039558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085629, 35.087151, 38.469608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096325, 35.469833, 38.353680>,  <43.102741, 35.699444, 38.284122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096325, 35.469833, 38.353680>,  <43.085629, 35.087151, 38.469608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096325, 35.469833, 38.353680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619202, -0.243458, -0.746537,
		-0.784776, -0.159498, -0.598905,
		0.026737, 0.956707, -0.289821,
		43.104347, 35.756847, 38.266735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877010, 35.077866, 37.774349>,  <43.085629, 35.087151, 38.469608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877010, 35.077866, 37.774349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072105, 35.422688, 37.829437>,  <43.189163, 35.629581, 37.862492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072105, 35.422688, 37.829437>,  <42.877010, 35.077866, 37.774349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072105, 35.422688, 37.829437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549510, -0.180583, -0.815738,
		-0.678343, 0.473547, -0.561786,
		0.487740, 0.862057, 0.137722,
		43.218426, 35.681305, 37.870754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031616, 35.414604, 37.132431>,  <42.877010, 35.077866, 37.774349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031616, 35.414604, 37.132431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300713, 35.582047, 37.376461>,  <43.462170, 35.682510, 37.522881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300713, 35.582047, 37.376461>,  <43.031616, 35.414604, 37.132431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300713, 35.582047, 37.376461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714448, -0.153200, -0.682711,
		-0.192324, 0.895153, -0.402136,
		0.672738, 0.418607, 0.610076,
		43.502533, 35.707630, 37.559483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184708, 35.982830, 36.745556>,  <43.031616, 35.414604, 37.132431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184708, 35.982830, 36.745556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470360, 35.875072, 37.003998>,  <43.641750, 35.810417, 37.159061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470360, 35.875072, 37.003998>,  <43.184708, 35.982830, 36.745556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470360, 35.875072, 37.003998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639954, -0.122797, -0.758538,
		0.283683, 0.955170, 0.084706,
		0.714130, -0.269392, 0.646100,
		43.684601, 35.794254, 37.197826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947010, 36.299976, 36.381233>,  <43.184708, 35.982830, 36.745556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947010, 36.299976, 36.381233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065380, 36.061501, 36.679760>,  <44.136402, 35.918415, 36.858875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065380, 36.061501, 36.679760>,  <43.947010, 36.299976, 36.381233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065380, 36.061501, 36.679760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725659, -0.367769, -0.581520,
		0.621167, 0.713658, 0.323795,
		0.295925, -0.596186, 0.746318,
		44.154156, 35.882645, 36.903656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675003, 36.286217, 36.492901>,  <43.947010, 36.299976, 36.381233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675003, 36.286217, 36.492901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548515, 35.940811, 36.650047>,  <44.472622, 35.733566, 36.744335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548515, 35.940811, 36.650047>,  <44.675003, 36.286217, 36.492901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548515, 35.940811, 36.650047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469778, -0.502308, -0.725945,
		0.824207, -0.044994, 0.564499,
		-0.316216, -0.863517, 0.392868,
		44.453651, 35.681755, 36.767906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232685, 35.883896, 36.367489>,  <44.675003, 36.286217, 36.492901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232685, 35.883896, 36.367489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927723, 35.633472, 36.432949>,  <44.744743, 35.483219, 36.472225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927723, 35.633472, 36.432949>,  <45.232685, 35.883896, 36.367489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927723, 35.633472, 36.432949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330938, -0.594566, -0.732783,
		0.556068, -0.504522, 0.660489,
		-0.762410, -0.626058, 0.163653,
		44.699001, 35.445656, 36.482044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634827, 35.268929, 36.498680>,  <45.232685, 35.883896, 36.367489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634827, 35.268929, 36.498680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260536, 35.162270, 36.406319>,  <45.035961, 35.098274, 36.350903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260536, 35.162270, 36.406319>,  <45.634827, 35.268929, 36.498680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260536, 35.162270, 36.406319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348820, -0.602257, -0.718060,
		0.052407, -0.752451, 0.656560,
		-0.935723, -0.266652, -0.230907,
		44.979820, 35.082275, 36.337048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582150, 34.544941, 36.570953>,  <45.634827, 35.268929, 36.498680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582150, 34.544941, 36.570953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324593, 34.666836, 36.290230>,  <45.170059, 34.739971, 36.121796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324593, 34.666836, 36.290230>,  <45.582150, 34.544941, 36.570953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324593, 34.666836, 36.290230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403321, -0.644281, -0.649795,
		-0.650193, -0.701447, 0.291927,
		-0.643880, 0.304752, -0.701815,
		45.131424, 34.758259, 36.079689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341991, 34.586311, 36.426548>,  <45.582150, 34.544941, 36.570953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341991, 34.586311, 36.426548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157722, 34.812843, 36.153183>,  <46.047161, 34.948761, 35.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157722, 34.812843, 36.153183>,  <46.341991, 34.586311, 36.426548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157722, 34.812843, 36.153183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887187, 0.316487, -0.335760,
		0.026141, -0.760991, -0.648235,
		-0.460669, 0.566329, -0.683415,
		46.019524, 34.982742, 35.948158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007122, 34.769840, 36.051586>,  <46.341991, 34.586311, 36.426548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007122, 34.769840, 36.051586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950577, 35.136906, 35.903038>,  <46.916649, 35.357143, 35.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950577, 35.136906, 35.903038>,  <47.007122, 34.769840, 36.051586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950577, 35.136906, 35.903038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076233, 0.363932, 0.928300,
		0.987018, 0.159538, 0.018509,
		-0.141363, 0.917661, -0.371370,
		46.908169, 35.412205, 35.791626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352966, 34.861313, 35.374851>,  <47.007122, 34.769840, 36.051586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352966, 34.861313, 35.374851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655254, 34.970085, 35.136543>,  <47.836628, 35.035347, 34.993557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655254, 34.970085, 35.136543>,  <47.352966, 34.861313, 35.374851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655254, 34.970085, 35.136543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583788, -0.691981, 0.424682,
		-0.296779, -0.668744, -0.681692,
		0.755721, 0.271926, -0.595770,
		47.881969, 35.051662, 34.957813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.311119, 33.046997, 44.875576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.014221, 33.314751, 44.862869>,  <31.836084, 33.475403, 44.855247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.014221, 33.314751, 44.862869>,  <32.311119, 33.046997, 44.875576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014221, 33.314751, 44.862869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178370, 0.151649, -0.972207,
		-0.645960, -0.727277, -0.231957,
		-0.742240, 0.669381, -0.031765,
		31.791550, 33.515564, 44.853340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053974, 32.909458, 44.257263>,  <32.311119, 33.046997, 44.875576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053974, 32.909458, 44.257263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911884, 33.274071, 44.340145>,  <31.826632, 33.492836, 44.389874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911884, 33.274071, 44.340145>,  <32.053974, 32.909458, 44.257263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911884, 33.274071, 44.340145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207131, 0.292902, -0.933437,
		-0.911545, -0.288660, -0.292851,
		-0.355222, 0.911528, 0.207203,
		31.805317, 33.547531, 44.402306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657499, 33.091114, 43.620937>,  <32.053974, 32.909458, 44.257263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657499, 33.091114, 43.620937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758413, 33.432442, 43.803455>,  <31.818962, 33.637238, 43.912964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758413, 33.432442, 43.803455>,  <31.657499, 33.091114, 43.620937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758413, 33.432442, 43.803455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307593, 0.376368, -0.873919,
		-0.917463, 0.360829, -0.167522,
		0.252286, 0.853317, 0.456292,
		31.834099, 33.688438, 43.940342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546246, 33.525078, 43.080891>,  <31.657499, 33.091114, 43.620937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546246, 33.525078, 43.080891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.748890, 33.771858, 43.321796>,  <31.870476, 33.919926, 43.466339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.748890, 33.771858, 43.321796>,  <31.546246, 33.525078, 43.080891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748890, 33.771858, 43.321796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139801, 0.630509, -0.763488,
		-0.850766, 0.470987, 0.233170,
		0.506609, 0.616953, 0.602260,
		31.900873, 33.956944, 43.502476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271753, 34.096340, 42.897659>,  <31.546246, 33.525078, 43.080891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271753, 34.096340, 42.897659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619076, 34.195019, 43.069794>,  <31.827469, 34.254227, 43.173073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619076, 34.195019, 43.069794>,  <31.271753, 34.096340, 42.897659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619076, 34.195019, 43.069794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241511, 0.547515, -0.801187,
		-0.433264, 0.799605, 0.415830,
		0.868306, 0.246698, 0.430331,
		31.879568, 34.269028, 43.198895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460331, 34.819889, 42.781334>,  <31.271753, 34.096340, 42.897659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460331, 34.819889, 42.781334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.832493, 34.689739, 42.848831>,  <32.055790, 34.611649, 42.889328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.832493, 34.689739, 42.848831>,  <31.460331, 34.819889, 42.781334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832493, 34.689739, 42.848831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298847, 0.406876, -0.863216,
		0.212214, 0.853570, 0.475798,
		0.930406, -0.325377, 0.168742,
		32.111614, 34.592125, 42.899452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909204, 35.404877, 42.561787>,  <31.460331, 34.819889, 42.781334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909204, 35.404877, 42.561787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.119297, 35.064850, 42.546230>,  <32.245354, 34.860832, 42.536896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.119297, 35.064850, 42.546230>,  <31.909204, 35.404877, 42.561787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119297, 35.064850, 42.546230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406010, 0.290507, -0.866465,
		0.747855, 0.439303, 0.497721,
		0.525232, -0.850070, -0.038895,
		32.276867, 34.809830, 42.534561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583981, 35.544441, 42.284489>,  <31.909204, 35.404877, 42.561787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583981, 35.544441, 42.284489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544724, 35.152042, 42.217541>,  <32.521172, 34.916603, 42.177372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544724, 35.152042, 42.217541>,  <32.583981, 35.544441, 42.284489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544724, 35.152042, 42.217541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338469, 0.125251, -0.932604,
		0.935846, -0.148173, 0.319745,
		-0.098139, -0.980998, -0.167368,
		32.515282, 34.857742, 42.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276596, 35.440109, 41.973877>,  <32.583981, 35.544441, 42.284489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276596, 35.440109, 41.973877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044125, 35.138386, 41.851730>,  <32.904640, 34.957352, 41.778442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044125, 35.138386, 41.851730>,  <33.276596, 35.440109, 41.973877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044125, 35.138386, 41.851730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437498, 0.026788, -0.898820,
		0.686164, -0.655978, 0.314438,
		-0.581183, -0.754305, -0.305370,
		32.869770, 34.912094, 41.760120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715279, 35.029236, 41.497921>,  <33.276596, 35.440109, 41.973877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715279, 35.029236, 41.497921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345058, 34.907471, 41.407867>,  <33.122925, 34.834412, 41.353836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345058, 34.907471, 41.407867>,  <33.715279, 35.029236, 41.497921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345058, 34.907471, 41.407867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212549, 0.074327, -0.974319,
		0.313330, -0.949636, -0.004091,
		-0.925553, -0.304414, -0.225133,
		33.067394, 34.816147, 41.340328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824738, 34.613808, 40.962910>,  <33.715279, 35.029236, 41.497921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824738, 34.613808, 40.962910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.429741, 34.670177, 40.934628>,  <33.192741, 34.703999, 40.917660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.429741, 34.670177, 40.934628>,  <33.824738, 34.613808, 40.962910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429741, 34.670177, 40.934628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067881, -0.024724, -0.997387,
		-0.142308, -0.989711, 0.014849,
		-0.987492, 0.140928, -0.070701,
		33.133492, 34.712456, 40.913418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537628, 34.109215, 40.442585>,  <33.824738, 34.613808, 40.962910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537628, 34.109215, 40.442585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.303810, 34.432484, 40.471317>,  <33.163521, 34.626446, 40.488556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.303810, 34.432484, 40.471317>,  <33.537628, 34.109215, 40.442585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303810, 34.432484, 40.471317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074347, 0.141507, -0.987141,
		-0.807947, -0.571690, -0.142803,
		-0.584546, 0.808175, 0.071827,
		33.128445, 34.674934, 40.492867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049240, 34.074615, 39.927505>,  <33.537628, 34.109215, 40.442585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049240, 34.074615, 39.927505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068264, 34.462780, 40.022194>,  <33.079678, 34.695679, 40.079006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068264, 34.462780, 40.022194>,  <33.049240, 34.074615, 39.927505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068264, 34.462780, 40.022194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017139, 0.237744, -0.971177,
		-0.998721, 0.042130, 0.027938,
		0.047557, 0.970414, 0.236718,
		33.082531, 34.753902, 40.093208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615570, 34.355438, 39.362049>,  <33.049240, 34.074615, 39.927505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615570, 34.355438, 39.362049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.843266, 34.635372, 39.534649>,  <32.979885, 34.803333, 39.638210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.843266, 34.635372, 39.534649>,  <32.615570, 34.355438, 39.362049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843266, 34.635372, 39.534649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176576, 0.408523, -0.895505,
		-0.802986, 0.585951, 0.108973,
		0.569240, 0.699836, 0.431503,
		33.014038, 34.845322, 39.664101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419067, 34.899406, 38.912273>,  <32.615570, 34.355438, 39.362049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419067, 34.899406, 38.912273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.759552, 34.990971, 39.101181>,  <32.963840, 35.045910, 39.214527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.759552, 34.990971, 39.101181>,  <32.419067, 34.899406, 38.912273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759552, 34.990971, 39.101181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383360, 0.343384, -0.857393,
		-0.358437, 0.910872, 0.204537,
		0.851210, 0.228910, 0.472273,
		33.014915, 35.059643, 39.242863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549759, 35.560535, 38.780434>,  <32.419067, 34.899406, 38.912273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549759, 35.560535, 38.780434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919079, 35.438389, 38.873611>,  <33.140671, 35.365101, 38.929516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919079, 35.438389, 38.873611>,  <32.549759, 35.560535, 38.780434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919079, 35.438389, 38.873611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348624, 0.411857, -0.841924,
		0.161154, 0.858561, 0.486726,
		0.923304, -0.305364, 0.232943,
		33.196072, 35.346779, 38.943493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071579, 36.083885, 38.599724>,  <32.549759, 35.560535, 38.780434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071579, 36.083885, 38.599724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.305969, 35.761967, 38.637539>,  <33.446602, 35.568813, 38.660229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.305969, 35.761967, 38.637539>,  <33.071579, 36.083885, 38.599724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305969, 35.761967, 38.637539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571628, 0.327847, -0.752168,
		0.574350, 0.494789, 0.652155,
		0.585972, -0.804798, 0.094536,
		33.481762, 35.520527, 38.665901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754669, 36.294376, 38.509472>,  <33.071579, 36.083885, 38.599724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754669, 36.294376, 38.509472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809887, 35.905293, 38.434879>,  <33.843018, 35.671841, 38.390121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809887, 35.905293, 38.434879>,  <33.754669, 36.294376, 38.509472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809887, 35.905293, 38.434879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707573, 0.228604, -0.668640,
		0.693025, -0.039650, 0.719822,
		0.138043, -0.972712, -0.186484,
		33.851299, 35.613480, 38.378933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463207, 36.127434, 38.536221>,  <33.754669, 36.294376, 38.509472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463207, 36.127434, 38.536221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318840, 35.817848, 38.328098>,  <34.232220, 35.632099, 38.203224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318840, 35.817848, 38.328098>,  <34.463207, 36.127434, 38.536221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318840, 35.817848, 38.328098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789638, 0.043227, -0.612048,
		0.496193, -0.631756, 0.595547,
		-0.360922, -0.773961, -0.520308,
		34.210564, 35.585659, 38.172005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094608, 35.697659, 38.314701>,  <34.463207, 36.127434, 38.536221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094608, 35.697659, 38.314701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819740, 35.556183, 38.060867>,  <34.654819, 35.471298, 37.908566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819740, 35.556183, 38.060867>,  <35.094608, 35.697659, 38.314701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819740, 35.556183, 38.060867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643002, 0.110473, -0.757855,
		0.338150, -0.928816, 0.151508,
		-0.687171, -0.353688, -0.634587,
		34.613590, 35.450077, 37.870491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409706, 35.138882, 37.978054>,  <35.094608, 35.697659, 38.314701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409706, 35.138882, 37.978054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109177, 35.302731, 37.771084>,  <34.928860, 35.401039, 37.646900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109177, 35.302731, 37.771084>,  <35.409706, 35.138882, 37.978054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109177, 35.302731, 37.771084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595460, 0.082764, -0.799111,
		-0.284508, -0.908494, -0.306095,
		-0.751321, 0.409621, -0.517424,
		34.883781, 35.425617, 37.615856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512943, 34.856289, 37.257812>,  <35.409706, 35.138882, 37.978054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512943, 34.856289, 37.257812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298527, 35.192028, 37.221691>,  <35.169876, 35.393471, 37.200020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298527, 35.192028, 37.221691>,  <35.512943, 34.856289, 37.257812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298527, 35.192028, 37.221691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556476, 0.270880, -0.785467,
		-0.634819, -0.471295, -0.612280,
		-0.536041, 0.839348, -0.090304,
		35.137714, 35.443832, 37.194599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745094, 34.158386, 37.347054>,  <35.512943, 34.856289, 37.257812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745094, 34.158386, 37.347054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134769, 34.119743, 37.428669>,  <36.368572, 34.096558, 37.477638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134769, 34.119743, 37.428669>,  <35.745094, 34.158386, 37.347054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134769, 34.119743, 37.428669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225652, -0.389509, 0.892952,
		-0.006795, -0.915941, -0.401254,
		0.974184, -0.096611, 0.204037,
		36.427025, 34.090759, 37.489880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709766, 33.552795, 37.672863>,  <35.745094, 34.158386, 37.347054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709766, 33.552795, 37.672863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057457, 33.710308, 37.792450>,  <36.266071, 33.804817, 37.864201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057457, 33.710308, 37.792450>,  <35.709766, 33.552795, 37.672863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057457, 33.710308, 37.792450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129285, -0.402607, 0.906197,
		0.477212, -0.826341, -0.299046,
		0.869226, 0.393786, 0.298963,
		36.318226, 33.828445, 37.882137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960770, 32.997597, 38.044296>,  <35.709766, 33.552795, 37.672863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960770, 32.997597, 38.044296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165581, 33.316998, 38.170929>,  <36.288467, 33.508636, 38.246906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165581, 33.316998, 38.170929>,  <35.960770, 32.997597, 38.044296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165581, 33.316998, 38.170929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117697, -0.299859, 0.946695,
		0.850865, -0.521997, -0.059556,
		0.512031, 0.798501, 0.316577,
		36.319191, 33.556549, 38.265903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542912, 32.774250, 38.505104>,  <35.960770, 32.997597, 38.044296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542912, 32.774250, 38.505104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454350, 33.151096, 38.605824>,  <36.401211, 33.377205, 38.666256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454350, 33.151096, 38.605824>,  <36.542912, 32.774250, 38.505104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454350, 33.151096, 38.605824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106830, -0.233220, 0.966538,
		0.969312, 0.240899, -0.049009,
		-0.221409, 0.942113, 0.251798,
		36.387928, 33.433731, 38.681362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089821, 32.924553, 39.039272>,  <36.542912, 32.774250, 38.505104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089821, 32.924553, 39.039272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807812, 33.207806, 39.054718>,  <36.638607, 33.377758, 39.063984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807812, 33.207806, 39.054718>,  <37.089821, 32.924553, 39.039272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807812, 33.207806, 39.054718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021812, -0.076077, 0.996863,
		0.708848, 0.701970, 0.069082,
		-0.705024, 0.708131, 0.038615,
		36.596306, 33.420246, 39.066303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287575, 33.254776, 39.684883>,  <37.089821, 32.924553, 39.039272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287575, 33.254776, 39.684883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927166, 33.409679, 39.606709>,  <36.710922, 33.502621, 39.559803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927166, 33.409679, 39.606709>,  <37.287575, 33.254776, 39.684883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927166, 33.409679, 39.606709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249326, -0.093650, 0.963881,
		0.354967, 0.917203, 0.180934,
		-0.901019, 0.387257, -0.195440,
		36.656860, 33.525856, 39.548077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160015, 33.838642, 40.132263>,  <37.287575, 33.254776, 39.684883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160015, 33.838642, 40.132263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793915, 33.721172, 40.021942>,  <36.574253, 33.650692, 39.955750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793915, 33.721172, 40.021942>,  <37.160015, 33.838642, 40.132263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793915, 33.721172, 40.021942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293468, 0.016952, 0.955819,
		-0.276023, 0.955755, -0.101699,
		-0.915253, -0.293673, -0.275804,
		36.519341, 33.633072, 39.939201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707550, 34.284359, 40.613689>,  <37.160015, 33.838642, 40.132263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707550, 34.284359, 40.613689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453159, 34.018276, 40.457207>,  <36.300526, 33.858627, 40.363319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453159, 34.018276, 40.457207>,  <36.707550, 34.284359, 40.613689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453159, 34.018276, 40.457207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435104, -0.109585, 0.893687,
		-0.637353, 0.738577, -0.219739,
		-0.635977, -0.665203, -0.391202,
		36.262367, 33.818714, 40.339848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986645, 34.428230, 40.861626>,  <36.707550, 34.284359, 40.613689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986645, 34.428230, 40.861626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025478, 34.039894, 40.773956>,  <36.048779, 33.806892, 40.721355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025478, 34.039894, 40.773956>,  <35.986645, 34.428230, 40.861626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025478, 34.039894, 40.773956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435900, -0.239448, 0.867558,
		-0.894743, 0.011309, -0.446438,
		0.097087, -0.970844, -0.219174,
		36.054604, 33.748642, 40.708202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360687, 34.139832, 40.942181>,  <35.986645, 34.428230, 40.861626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360687, 34.139832, 40.942181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575481, 33.803207, 40.965580>,  <35.704357, 33.601234, 40.979618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575481, 33.803207, 40.965580>,  <35.360687, 34.139832, 40.942181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575481, 33.803207, 40.965580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582163, -0.319497, 0.747668,
		-0.610519, -0.435540, -0.661491,
		0.536984, -0.841562, 0.058496,
		35.736576, 33.550739, 40.983128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874210, 33.721523, 41.238628>,  <35.360687, 34.139832, 40.942181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874210, 33.721523, 41.238628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220264, 33.523701, 41.271969>,  <35.427898, 33.405006, 41.291973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220264, 33.523701, 41.271969>,  <34.874210, 33.721523, 41.238628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220264, 33.523701, 41.271969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359754, -0.496142, 0.790203,
		-0.349447, -0.713621, -0.607151,
		0.865138, -0.494559, 0.083353,
		35.479805, 33.375332, 41.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731850, 32.972393, 41.209778>,  <34.874210, 33.721523, 41.238628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731850, 32.972393, 41.209778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065876, 33.042545, 41.418358>,  <35.266293, 33.084637, 41.543507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065876, 33.042545, 41.418358>,  <34.731850, 32.972393, 41.209778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065876, 33.042545, 41.418358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415465, -0.420288, 0.806689,
		0.360634, -0.890281, -0.278105,
		0.835064, 0.175377, 0.521451,
		35.316395, 33.095158, 41.574795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592583, 32.423752, 41.569233>,  <34.731850, 32.972393, 41.209778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592583, 32.423752, 41.569233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862171, 32.667206, 41.736721>,  <35.023926, 32.813278, 41.837215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862171, 32.667206, 41.736721>,  <34.592583, 32.423752, 41.569233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862171, 32.667206, 41.736721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258102, -0.337081, 0.905406,
		0.692201, -0.718292, -0.070095,
		0.673974, 0.608631, 0.418721,
		35.064362, 32.849796, 41.862339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012234, 31.964081, 42.027107>,  <34.592583, 32.423752, 41.569233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012234, 31.964081, 42.027107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022026, 32.344234, 42.151150>,  <35.027901, 32.572327, 42.225574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022026, 32.344234, 42.151150>,  <35.012234, 31.964081, 42.027107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022026, 32.344234, 42.151150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342098, -0.283510, 0.895874,
		0.939345, -0.128022, 0.318184,
		0.024483, 0.950385, 0.310110,
		35.029369, 32.629349, 42.244183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431702, 31.935436, 42.633427>,  <35.012234, 31.964081, 42.027107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431702, 31.935436, 42.633427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220505, 32.274937, 42.645031>,  <35.093788, 32.478638, 42.651993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220505, 32.274937, 42.645031>,  <35.431702, 31.935436, 42.633427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220505, 32.274937, 42.645031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357564, -0.253162, 0.898920,
		0.770306, 0.464249, 0.437151,
		-0.527993, 0.848753, 0.029013,
		35.062107, 32.529564, 42.653736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611069, 32.146633, 43.288776>,  <35.431702, 31.935436, 42.633427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611069, 32.146633, 43.288776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305180, 32.383862, 43.188004>,  <35.121647, 32.526199, 43.127541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305180, 32.383862, 43.188004>,  <35.611069, 32.146633, 43.288776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305180, 32.383862, 43.188004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293080, 0.028064, 0.955676,
		0.573853, 0.804662, 0.152355,
		-0.764720, 0.593069, -0.251935,
		35.075764, 32.561783, 43.112423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522736, 32.567230, 43.909363>,  <35.611069, 32.146633, 43.288776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522736, 32.567230, 43.909363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187927, 32.594917, 43.692253>,  <34.987041, 32.611530, 43.561985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187927, 32.594917, 43.692253>,  <35.522736, 32.567230, 43.909363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187927, 32.594917, 43.692253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543243, 0.013560, 0.839466,
		0.065467, 0.997509, 0.026253,
		-0.837019, 0.069219, -0.542778,
		34.936821, 32.615685, 43.529419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144276, 33.171349, 44.234825>,  <35.522736, 32.567230, 43.909363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144276, 33.171349, 44.234825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.881142, 32.948269, 44.032352>,  <34.723263, 32.814419, 43.910870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.881142, 32.948269, 44.032352>,  <35.144276, 33.171349, 44.234825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881142, 32.948269, 44.032352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528296, -0.137325, 0.837881,
		-0.536800, 0.818602, -0.204296,
		-0.657836, -0.557703, -0.506180,
		34.683792, 32.780956, 43.880497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.436649, 33.494339, 44.386269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409313, 33.113506, 44.267021>,  <34.392910, 32.885006, 44.195473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409313, 33.113506, 44.267021>,  <34.436649, 33.494339, 44.386269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409313, 33.113506, 44.267021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607785, -0.197232, 0.769218,
		-0.791155, 0.233764, -0.565180,
		-0.068344, -0.952079, -0.298119,
		34.388809, 32.827881, 44.177586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730373, 33.405029, 44.462921>,  <34.436649, 33.494339, 44.386269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730373, 33.405029, 44.462921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897301, 33.042854, 44.431866>,  <33.997459, 32.825550, 44.413231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897301, 33.042854, 44.431866>,  <33.730373, 33.405029, 44.462921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897301, 33.042854, 44.431866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629590, -0.349675, 0.693790,
		-0.655332, -0.240650, -0.715980,
		0.417320, -0.905437, -0.077643,
		34.022495, 32.771225, 44.408573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137577, 32.957603, 44.313728>,  <33.730373, 33.405029, 44.462921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137577, 32.957603, 44.313728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438019, 32.729988, 44.447617>,  <33.618282, 32.593418, 44.527950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438019, 32.729988, 44.447617>,  <33.137577, 32.957603, 44.313728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438019, 32.729988, 44.447617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598240, -0.372241, 0.709609,
		-0.279195, -0.733236, -0.620012,
		0.751105, -0.569035, 0.334724,
		33.663349, 32.559277, 44.548035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860439, 32.226231, 44.318916>,  <33.137577, 32.957603, 44.313728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860439, 32.226231, 44.318916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179420, 32.243839, 44.559624>,  <33.370808, 32.254402, 44.704048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179420, 32.243839, 44.559624>,  <32.860439, 32.226231, 44.318916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179420, 32.243839, 44.559624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541643, -0.387248, 0.746098,
		0.265877, -0.920924, -0.284970,
		0.797454, 0.044018, 0.601773,
		33.418655, 32.257046, 44.740154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796124, 31.624052, 44.719372>,  <32.860439, 32.226231, 44.318916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796124, 31.624052, 44.719372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071350, 31.844595, 44.908081>,  <33.236485, 31.976921, 45.021305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071350, 31.844595, 44.908081>,  <32.796124, 31.624052, 44.719372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071350, 31.844595, 44.908081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268962, -0.410054, 0.871501,
		0.673961, -0.726540, -0.133851,
		0.688067, 0.551357, 0.471772,
		33.277771, 32.010002, 45.049614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135246, 31.178751, 45.113903>,  <32.796124, 31.624052, 44.719372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135246, 31.178751, 45.113903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179157, 31.540123, 45.279682>,  <33.205502, 31.756947, 45.379150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179157, 31.540123, 45.279682>,  <33.135246, 31.178751, 45.113903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179157, 31.540123, 45.279682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121628, -0.401624, 0.907692,
		0.986487, -0.150050, 0.065794,
		0.109775, 0.903429, 0.414447,
		33.212090, 31.811152, 45.404015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592297, 31.084944, 45.662491>,  <33.135246, 31.178751, 45.113903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592297, 31.084944, 45.662491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389530, 31.422398, 45.733276>,  <33.267872, 31.624870, 45.775749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389530, 31.422398, 45.733276>,  <33.592297, 31.084944, 45.662491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389530, 31.422398, 45.733276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164884, -0.296405, 0.940722,
		0.846081, 0.447685, 0.289353,
		-0.506913, 0.843636, 0.176966,
		33.237457, 31.675488, 45.786366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843258, 31.355127, 46.372871>,  <33.592297, 31.084944, 45.662491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843258, 31.355127, 46.372871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482224, 31.499090, 46.278381>,  <33.265602, 31.585468, 46.221687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482224, 31.499090, 46.278381>,  <33.843258, 31.355127, 46.372871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482224, 31.499090, 46.278381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375749, -0.390780, 0.840300,
		0.210119, 0.847205, 0.487948,
		-0.902586, 0.359909, -0.236226,
		33.211449, 31.607063, 46.207512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496693, 31.197741, 46.969643>,  <33.843258, 31.355127, 46.372871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496693, 31.197741, 46.969643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200623, 31.361668, 46.756405>,  <33.022980, 31.460024, 46.628464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200623, 31.361668, 46.756405>,  <33.496693, 31.197741, 46.969643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200623, 31.361668, 46.756405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632480, -0.155192, 0.758870,
		0.228267, 0.898869, 0.374070,
		-0.740178, 0.409817, -0.533092,
		32.978569, 31.484613, 46.596478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245308, 31.714220, 47.353279>,  <33.496693, 31.197741, 46.969643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245308, 31.714220, 47.353279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951294, 31.572248, 47.122192>,  <32.774887, 31.487066, 46.983540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951294, 31.572248, 47.122192>,  <33.245308, 31.714220, 47.353279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951294, 31.572248, 47.122192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508503, -0.275039, 0.815952,
		-0.448498, 0.893521, 0.021682,
		-0.735034, -0.354927, -0.577713,
		32.730785, 31.465771, 46.948879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684349, 31.880587, 47.695393>,  <33.245308, 31.714220, 47.353279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684349, 31.880587, 47.695393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537186, 31.593565, 47.458832>,  <32.448887, 31.421352, 47.316895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537186, 31.593565, 47.458832>,  <32.684349, 31.880587, 47.695393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537186, 31.593565, 47.458832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609263, -0.294449, 0.736274,
		-0.702454, 0.631203, -0.328848,
		-0.367909, -0.717554, -0.591405,
		32.426811, 31.378300, 47.281410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932964, 31.948309, 47.727230>,  <32.684349, 31.880587, 47.695393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932964, 31.948309, 47.727230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023567, 31.581903, 47.594799>,  <32.077930, 31.362061, 47.515343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023567, 31.581903, 47.594799>,  <31.932964, 31.948309, 47.727230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023567, 31.581903, 47.594799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550054, -0.400818, 0.732656,
		-0.803825, 0.016157, -0.594646,
		0.226507, -0.916015, -0.331075,
		32.091518, 31.307098, 47.495476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347218, 31.503075, 47.797096>,  <31.932964, 31.948309, 47.727230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347218, 31.503075, 47.797096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627972, 31.218332, 47.787159>,  <31.796425, 31.047487, 47.781197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627972, 31.218332, 47.787159>,  <31.347218, 31.503075, 47.797096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627972, 31.218332, 47.787159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520854, -0.536731, 0.663801,
		-0.485863, -0.452974, -0.747497,
		0.701889, -0.711853, -0.024844,
		31.838537, 31.004776, 47.779705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975874, 30.955473, 47.802872>,  <31.347218, 31.503075, 47.797096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975874, 30.955473, 47.802872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331766, 30.831980, 47.937374>,  <31.545301, 30.757883, 48.018074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331766, 30.831980, 47.937374>,  <30.975874, 30.955473, 47.802872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331766, 30.831980, 47.937374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456339, -0.582639, 0.672523,
		-0.011715, -0.751809, -0.659277,
		0.889729, -0.308733, 0.336254,
		31.598684, 30.739361, 48.038250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983334, 30.242029, 47.840191>,  <30.975874, 30.955473, 47.802872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983334, 30.242029, 47.840191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.310621, 30.278187, 48.067291>,  <31.506994, 30.299881, 48.203552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.310621, 30.278187, 48.067291>,  <30.983334, 30.242029, 47.840191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310621, 30.278187, 48.067291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378558, -0.658533, 0.650406,
		0.432677, -0.747104, -0.504606,
		0.818221, 0.090393, 0.567754,
		31.556087, 30.305305, 48.237617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182823, 29.534914, 48.117432>,  <30.983334, 30.242029, 47.840191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182823, 29.534914, 48.117432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381414, 29.760342, 48.381523>,  <31.500568, 29.895597, 48.539978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381414, 29.760342, 48.381523>,  <31.182823, 29.534914, 48.117432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381414, 29.760342, 48.381523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182599, -0.675766, 0.714142,
		0.848627, -0.475112, -0.232596,
		0.496478, 0.563568, 0.660228,
		31.530357, 29.929413, 48.579590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482784, 29.095171, 48.517406>,  <31.182823, 29.534914, 48.117432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482784, 29.095171, 48.517406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.510273, 29.405373, 48.768444>,  <31.526766, 29.591494, 48.919067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.510273, 29.405373, 48.768444>,  <31.482784, 29.095171, 48.517406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510273, 29.405373, 48.768444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101991, -0.620321, 0.777689,
		0.992409, -0.117451, 0.036466,
		0.068720, 0.775504, 0.627591,
		31.530890, 29.638023, 48.956722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045586, 28.928442, 48.935848>,  <31.482784, 29.095171, 48.517406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045586, 28.928442, 48.935848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834801, 29.205980, 49.132172>,  <31.708330, 29.372503, 49.249966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834801, 29.205980, 49.132172>,  <32.045586, 28.928442, 48.935848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834801, 29.205980, 49.132172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122517, -0.633479, 0.763998,
		0.841011, 0.342467, 0.418828,
		-0.526964, 0.693845, 0.490805,
		31.676712, 29.414133, 49.279411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276447, 28.836700, 49.592461>,  <32.045586, 28.928442, 48.935848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276447, 28.836700, 49.592461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922958, 29.023249, 49.608105>,  <31.710865, 29.135178, 49.617493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922958, 29.023249, 49.608105>,  <32.276447, 28.836700, 49.592461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922958, 29.023249, 49.608105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372040, -0.750755, 0.545851,
		0.283929, 0.467832, 0.836969,
		-0.883725, 0.466369, 0.039109,
		31.657841, 29.163158, 49.619839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163475, 28.970844, 50.259182>,  <32.276447, 28.836700, 49.592461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163475, 28.970844, 50.259182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811090, 28.988079, 50.070694>,  <31.599659, 28.998421, 49.957600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811090, 28.988079, 50.070694>,  <32.163475, 28.970844, 50.259182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811090, 28.988079, 50.070694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401621, -0.594677, 0.696463,
		-0.250218, 0.802810, 0.541191,
		-0.880961, 0.043087, -0.471224,
		31.546803, 29.001005, 49.929325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679821, 29.119162, 50.790157>,  <32.163475, 28.970844, 50.259182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679821, 29.119162, 50.790157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465033, 28.961411, 50.491863>,  <31.336159, 28.866760, 50.312885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465033, 28.961411, 50.491863>,  <31.679821, 29.119162, 50.790157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465033, 28.961411, 50.491863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486202, -0.577730, 0.655618,
		-0.689397, 0.714629, 0.118479,
		-0.536973, -0.394376, -0.745740,
		31.303942, 28.843098, 50.268143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946445, 29.190605, 50.954155>,  <31.679821, 29.119162, 50.790157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946445, 29.190605, 50.954155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979319, 28.892416, 50.689575>,  <30.999043, 28.713503, 50.530827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979319, 28.892416, 50.689575>,  <30.946445, 29.190605, 50.954155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979319, 28.892416, 50.689575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400399, -0.632472, 0.663068,
		-0.912648, 0.210350, -0.350466,
		0.082183, -0.745474, -0.661448,
		31.003973, 28.668774, 50.491142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367859, 28.714424, 51.056499>,  <30.946445, 29.190605, 50.954155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367859, 28.714424, 51.056499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680838, 28.517803, 50.903580>,  <30.868626, 28.399832, 50.811829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680838, 28.517803, 50.903580>,  <30.367859, 28.714424, 51.056499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680838, 28.517803, 50.903580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167183, -0.757205, 0.631419,
		-0.599856, -0.430137, -0.674652,
		0.782447, -0.491551, -0.382302,
		30.915571, 28.370338, 50.788887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721189, 28.931566, 50.704498>,  <30.367859, 28.714424, 51.056499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721189, 28.931566, 50.704498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.329597, 28.926123, 50.785896>,  <29.094643, 28.922857, 50.834736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.329597, 28.926123, 50.785896>,  <29.721189, 28.931566, 50.704498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329597, 28.926123, 50.785896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181261, 0.515391, -0.837566,
		-0.093479, -0.856847, -0.507025,
		-0.978982, -0.013609, 0.203492,
		29.035902, 28.922039, 50.846943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319635, 28.798288, 50.105904>,  <29.721189, 28.931566, 50.704498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319635, 28.798288, 50.105904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055431, 28.969292, 50.352795>,  <28.896910, 29.071894, 50.500927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055431, 28.969292, 50.352795>,  <29.319635, 28.798288, 50.105904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055431, 28.969292, 50.352795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225491, 0.671171, -0.706175,
		-0.716159, -0.605613, -0.346915,
		-0.660508, 0.427507, 0.617225,
		28.857279, 29.097544, 50.537964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879368, 29.034967, 49.622078>,  <29.319635, 28.798288, 50.105904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879368, 29.034967, 49.622078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.773441, 29.237524, 49.950333>,  <28.709887, 29.359058, 50.147285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.773441, 29.237524, 49.950333>,  <28.879368, 29.034967, 49.622078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773441, 29.237524, 49.950333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295296, 0.767547, -0.568922,
		-0.917972, -0.392990, -0.053722,
		-0.264815, 0.506391, 0.820635,
		28.693996, 29.389441, 50.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358253, 29.521181, 49.356724>,  <28.879368, 29.034967, 49.622078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358253, 29.521181, 49.356724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443897, 29.691051, 49.708588>,  <28.495283, 29.792974, 49.919708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443897, 29.691051, 49.708588>,  <28.358253, 29.521181, 49.356724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443897, 29.691051, 49.708588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144493, 0.876870, -0.458498,
		-0.966064, 0.225273, 0.126382,
		0.214108, 0.424677, 0.879663,
		28.508129, 29.818455, 49.972488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960155, 30.079351, 49.386761>,  <28.358253, 29.521181, 49.356724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960155, 30.079351, 49.386761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291771, 30.131207, 49.604343>,  <28.490740, 30.162319, 49.734894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291771, 30.131207, 49.604343>,  <27.960155, 30.079351, 49.386761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291771, 30.131207, 49.604343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237873, 0.798596, -0.552867,
		-0.506072, 0.587741, 0.631230,
		0.829040, 0.129638, 0.543954,
		28.540483, 30.170097, 49.767529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909903, 30.784864, 49.584808>,  <27.960155, 30.079351, 49.386761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909903, 30.784864, 49.584808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291143, 30.667896, 49.616024>,  <28.519888, 30.597715, 49.634754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291143, 30.667896, 49.616024>,  <27.909903, 30.784864, 49.584808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291143, 30.667896, 49.616024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296039, 0.847143, -0.441260,
		0.062926, 0.443666, 0.893980,
		0.953101, -0.292420, 0.078035,
		28.577074, 30.580170, 49.639435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265732, 31.437223, 49.635872>,  <27.909903, 30.784864, 49.584808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265732, 31.437223, 49.635872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561010, 31.177650, 49.562168>,  <28.738178, 31.021908, 49.517944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561010, 31.177650, 49.562168>,  <28.265732, 31.437223, 49.635872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561010, 31.177650, 49.562168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574300, 0.747856, -0.333002,
		0.353897, 0.139999, 0.924747,
		0.738198, -0.648931, -0.184263,
		28.782471, 30.982971, 49.506889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897127, 31.685160, 49.960751>,  <28.265732, 31.437223, 49.635872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897127, 31.685160, 49.960751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.996645, 31.449318, 49.653385>,  <29.056356, 31.307812, 49.468964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.996645, 31.449318, 49.653385>,  <28.897127, 31.685160, 49.960751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996645, 31.449318, 49.653385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625800, 0.703383, -0.337086,
		0.739240, -0.397011, 0.543973,
		0.248794, -0.589606, -0.768418,
		29.071283, 31.272436, 49.422859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629776, 31.654284, 49.899670>,  <28.897127, 31.685160, 49.960751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629776, 31.654284, 49.899670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.517456, 31.559244, 49.527714>,  <29.450064, 31.502220, 49.304539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.517456, 31.559244, 49.527714>,  <29.629776, 31.654284, 49.899670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517456, 31.559244, 49.527714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684549, 0.629518, -0.367560,
		0.672715, -0.739767, -0.014120,
		-0.280797, -0.237597, -0.929893,
		29.433216, 31.487965, 49.248745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137936, 32.012920, 49.429520>,  <29.629776, 31.654284, 49.899670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137936, 32.012920, 49.429520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899261, 31.887791, 49.133923>,  <29.756058, 31.812712, 48.956566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899261, 31.887791, 49.133923>,  <30.137936, 32.012920, 49.429520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899261, 31.887791, 49.133923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542310, 0.521579, -0.658676,
		0.591495, -0.793783, -0.141567,
		-0.596685, -0.312830, -0.738988,
		29.720255, 31.793941, 48.912228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542480, 31.621458, 48.885860>,  <30.137936, 32.012920, 49.429520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542480, 31.621458, 48.885860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211437, 31.768854, 48.716496>,  <30.012812, 31.857292, 48.614876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211437, 31.768854, 48.716496>,  <30.542480, 31.621458, 48.885860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211437, 31.768854, 48.716496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542824, 0.333467, -0.770806,
		-0.142841, -0.867764, -0.476006,
		-0.827610, 0.368490, -0.423410,
		29.963154, 31.879400, 48.589474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584410, 31.414320, 48.166302>,  <30.542480, 31.621458, 48.885860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584410, 31.414320, 48.166302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308218, 31.703390, 48.178848>,  <30.142504, 31.876831, 48.186378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308218, 31.703390, 48.178848>,  <30.584410, 31.414320, 48.166302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308218, 31.703390, 48.178848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405750, 0.422846, -0.810289,
		-0.598839, -0.546758, -0.585191,
		-0.690477, 0.722673, 0.031369,
		30.101074, 31.920193, 48.188259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397560, 31.424196, 47.437584>,  <30.584410, 31.414320, 48.166302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397560, 31.424196, 47.437584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.299625, 31.770739, 47.611702>,  <30.240866, 31.978664, 47.716171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.299625, 31.770739, 47.611702>,  <30.397560, 31.424196, 47.437584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299625, 31.770739, 47.611702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249539, 0.490141, -0.835160,
		-0.936902, -0.095854, -0.336193,
		-0.244835, 0.866357, 0.435295,
		30.226175, 32.030647, 47.742290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972919, 31.766279, 46.878174>,  <30.397560, 31.424196, 47.437584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972919, 31.766279, 46.878174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126293, 32.059986, 47.102253>,  <30.218317, 32.236210, 47.236702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126293, 32.059986, 47.102253>,  <29.972919, 31.766279, 46.878174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126293, 32.059986, 47.102253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080366, 0.577736, -0.812258,
		-0.920065, 0.356469, 0.162514,
		0.383435, 0.734269, 0.560202,
		30.241323, 32.280266, 47.270313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671637, 32.292347, 46.614151>,  <29.972919, 31.766279, 46.878174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671637, 32.292347, 46.614151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958708, 32.442871, 46.848526>,  <30.130951, 32.533188, 46.989151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958708, 32.442871, 46.848526>,  <29.671637, 32.292347, 46.614151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958708, 32.442871, 46.848526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296299, 0.596435, -0.745971,
		-0.630194, 0.708981, 0.316547,
		0.717679, 0.376313, 0.585940,
		30.174011, 32.555763, 47.024307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754564, 33.109550, 46.428608>,  <29.671637, 32.292347, 46.614151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754564, 33.109550, 46.428608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103905, 32.980202, 46.574310>,  <30.313509, 32.902592, 46.661732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103905, 32.980202, 46.574310>,  <29.754564, 33.109550, 46.428608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103905, 32.980202, 46.574310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486859, 0.556577, -0.673194,
		0.014955, 0.765279, 0.643525,
		0.873352, -0.323374, 0.364260,
		30.365910, 32.883190, 46.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165503, 33.698143, 46.485870>,  <29.754564, 33.109550, 46.428608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165503, 33.698143, 46.485870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.425352, 33.395313, 46.513668>,  <30.581261, 33.213615, 46.530346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.425352, 33.395313, 46.513668>,  <30.165503, 33.698143, 46.485870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425352, 33.395313, 46.513668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617100, 0.471703, -0.629828,
		0.444048, 0.452033, 0.773620,
		0.649622, -0.757075, 0.069491,
		30.620239, 33.168190, 46.534515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742870, 33.971977, 46.702698>,  <30.165503, 33.698143, 46.485870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742870, 33.971977, 46.702698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.838957, 33.630768, 46.517376>,  <30.896608, 33.426041, 46.406185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.838957, 33.630768, 46.517376>,  <30.742870, 33.971977, 46.702698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838957, 33.630768, 46.517376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544554, 0.513521, -0.663141,
		0.803589, -0.092993, 0.587875,
		0.240218, -0.853023, -0.463300,
		30.911022, 33.374863, 46.378387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474985, 33.970173, 46.544037>,  <30.742870, 33.971977, 46.702698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474985, 33.970173, 46.544037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317957, 33.724216, 46.270451>,  <31.223740, 33.576645, 46.106300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317957, 33.724216, 46.270451>,  <31.474985, 33.970173, 46.544037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317957, 33.724216, 46.270451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488440, 0.490741, -0.721526,
		0.779305, -0.617323, 0.107686,
		-0.392569, -0.614887, -0.683962,
		31.200186, 33.539749, 46.065262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968189, 34.038017, 45.976185>,  <31.474985, 33.970173, 46.544037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968189, 34.038017, 45.976185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671448, 33.827724, 45.809685>,  <31.493402, 33.701550, 45.709785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671448, 33.827724, 45.809685>,  <31.968189, 34.038017, 45.976185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671448, 33.827724, 45.809685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399381, 0.152233, -0.904057,
		0.538656, -0.836919, 0.097032,
		-0.741851, -0.525729, -0.416251,
		31.448893, 33.670006, 45.684811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346130, 33.578568, 45.635342>,  <31.968189, 34.038017, 45.976185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346130, 33.578568, 45.635342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982559, 33.567722, 45.468918>,  <31.764416, 33.561214, 45.369064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982559, 33.567722, 45.468918>,  <32.346130, 33.578568, 45.635342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982559, 33.567722, 45.468918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412339, 0.089447, -0.906629,
		0.061791, -0.995623, -0.070125,
		-0.908932, -0.027106, -0.416062,
		31.709879, 33.559589, 45.344101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.391491, 36.691753, 39.510033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.180229, 36.772301, 39.180061>,  <37.053474, 36.820629, 38.982079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.180229, 36.772301, 39.180061>,  <37.391491, 36.691753, 39.510033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180229, 36.772301, 39.180061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735467, -0.377098, -0.562925,
		-0.424434, -0.904018, 0.051066,
		-0.528151, 0.201367, -0.824929,
		37.021782, 36.832710, 38.932583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184025, 35.975246, 39.191574>,  <37.391491, 36.691753, 39.510033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184025, 35.975246, 39.191574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092590, 36.212879, 38.883076>,  <37.037727, 36.355457, 38.697975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092590, 36.212879, 38.883076>,  <37.184025, 35.975246, 39.191574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092590, 36.212879, 38.883076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329568, -0.698221, -0.635510,
		-0.916041, -0.399449, -0.036184,
		-0.228589, 0.594078, -0.771245,
		37.024014, 36.391102, 38.651703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927654, 35.535728, 38.710018>,  <37.184025, 35.975246, 39.191574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927654, 35.535728, 38.710018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053593, 35.866798, 38.524193>,  <37.129158, 36.065441, 38.412697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053593, 35.866798, 38.524193>,  <36.927654, 35.535728, 38.710018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053593, 35.866798, 38.524193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536251, -0.558972, -0.632443,
		-0.783138, -0.050000, -0.619835,
		0.314848, 0.827678, -0.464565,
		37.148048, 36.115101, 38.384823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852936, 35.395264, 37.990440>,  <36.927654, 35.535728, 38.710018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852936, 35.395264, 37.990440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144794, 35.668087, 38.010113>,  <37.319908, 35.831779, 38.021915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144794, 35.668087, 38.010113>,  <36.852936, 35.395264, 37.990440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144794, 35.668087, 38.010113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638167, -0.653318, -0.407332,
		-0.245690, 0.328595, -0.911955,
		0.729644, 0.682057, 0.049185,
		37.363689, 35.872704, 38.024868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316803, 35.145916, 37.555798>,  <36.852936, 35.395264, 37.990440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316803, 35.145916, 37.555798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528347, 35.447170, 37.712303>,  <37.655273, 35.627922, 37.806206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528347, 35.447170, 37.712303>,  <37.316803, 35.145916, 37.555798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528347, 35.447170, 37.712303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846684, -0.436336, -0.304529,
		-0.058629, 0.492332, -0.868431,
		0.528857, 0.753140, 0.391267,
		37.687004, 35.673111, 37.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737705, 35.505150, 36.943016>,  <37.316803, 35.145916, 37.555798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737705, 35.505150, 36.943016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889862, 35.547638, 37.310497>,  <37.981155, 35.573132, 37.530987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889862, 35.547638, 37.310497>,  <37.737705, 35.505150, 36.943016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889862, 35.547638, 37.310497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803201, -0.530372, -0.271246,
		0.458441, 0.841084, -0.287070,
		0.380395, 0.106224, 0.918704,
		38.003979, 35.579506, 37.586109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464394, 35.532070, 36.960232>,  <37.737705, 35.505150, 36.943016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464394, 35.532070, 36.960232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403706, 35.472755, 37.351128>,  <38.367290, 35.437168, 37.585663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403706, 35.472755, 37.351128>,  <38.464394, 35.532070, 36.960232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403706, 35.472755, 37.351128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814807, -0.578437, 0.038734,
		0.559526, 0.802136, 0.208587,
		-0.151724, -0.148286, 0.977236,
		38.358189, 35.428268, 37.644299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924042, 35.830112, 37.369198>,  <38.464394, 35.532070, 36.960232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924042, 35.830112, 37.369198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.809391, 35.503849, 37.570213>,  <38.740601, 35.308090, 37.690823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.809391, 35.503849, 37.570213>,  <38.924042, 35.830112, 37.369198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809391, 35.503849, 37.570213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915540, -0.387706, -0.107100,
		0.282194, 0.429397, 0.857895,
		-0.286623, -0.815661, 0.502539,
		38.723404, 35.259151, 37.720974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483631, 35.648308, 37.733429>,  <38.924042, 35.830112, 37.369198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483631, 35.648308, 37.733429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288700, 35.299458, 37.750938>,  <39.171741, 35.090149, 37.761444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288700, 35.299458, 37.750938>,  <39.483631, 35.648308, 37.733429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288700, 35.299458, 37.750938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873179, -0.486196, 0.034232,
		-0.008572, 0.054903, 0.998455,
		-0.487325, -0.872123, 0.043772,
		39.142502, 35.037819, 37.764069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850681, 35.277805, 38.261494>,  <39.483631, 35.648308, 37.733429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850681, 35.277805, 38.261494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.634647, 35.032551, 38.030888>,  <39.505028, 34.885399, 37.892525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.634647, 35.032551, 38.030888>,  <39.850681, 35.277805, 38.261494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634647, 35.032551, 38.030888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824712, -0.522143, -0.217296,
		-0.167792, -0.592819, 0.787662,
		-0.540089, -0.613133, -0.576516,
		39.472622, 34.848610, 37.857933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071659, 34.701332, 38.458324>,  <39.850681, 35.277805, 38.261494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071659, 34.701332, 38.458324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918861, 34.613125, 38.099339>,  <39.827183, 34.560200, 37.883945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918861, 34.613125, 38.099339>,  <40.071659, 34.701332, 38.458324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918861, 34.613125, 38.099339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811149, -0.545353, -0.211251,
		-0.442852, -0.808678, 0.387198,
		-0.381994, -0.220522, -0.897469,
		39.804264, 34.546967, 37.830097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233070, 33.933052, 38.332241>,  <40.071659, 34.701332, 38.458324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233070, 33.933052, 38.332241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159222, 34.121822, 37.987404>,  <40.114910, 34.235085, 37.780502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159222, 34.121822, 37.987404>,  <40.233070, 33.933052, 38.332241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159222, 34.121822, 37.987404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784474, -0.457643, -0.418525,
		-0.592042, -0.753559, -0.285719,
		-0.184626, 0.471924, -0.862091,
		40.103832, 34.263401, 37.728775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358677, 33.392815, 37.838890>,  <40.233070, 33.933052, 38.332241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358677, 33.392815, 37.838890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337257, 33.724613, 37.616512>,  <40.324406, 33.923691, 37.483086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337257, 33.724613, 37.616512>,  <40.358677, 33.392815, 37.838890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337257, 33.724613, 37.616512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690978, -0.371146, -0.620322,
		-0.720890, -0.417359, -0.553290,
		-0.053546, 0.829495, -0.555941,
		40.321194, 33.973461, 37.449730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160854, 33.230473, 37.176571>,  <40.358677, 33.392815, 37.838890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160854, 33.230473, 37.176571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364670, 33.573009, 37.142998>,  <40.486958, 33.778534, 37.122856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364670, 33.573009, 37.142998>,  <40.160854, 33.230473, 37.176571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364670, 33.573009, 37.142998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647238, -0.445727, -0.618393,
		-0.566967, 0.260773, -0.781374,
		0.509540, 0.856344, -0.083930,
		40.517532, 33.829914, 37.117817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334499, 33.237320, 36.505875>,  <40.160854, 33.230473, 37.176571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334499, 33.237320, 36.505875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.587410, 33.478996, 36.699852>,  <40.739155, 33.624004, 36.816238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.587410, 33.478996, 36.699852>,  <40.334499, 33.237320, 36.505875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587410, 33.478996, 36.699852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736041, -0.273093, -0.619407,
		-0.241807, 0.748577, -0.617383,
		0.632277, 0.604196, 0.484947,
		40.777092, 33.660255, 36.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667118, 33.679848, 35.949669>,  <40.334499, 33.237320, 36.505875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667118, 33.679848, 35.949669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.893372, 33.672367, 36.279446>,  <41.029125, 33.667881, 36.477310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.893372, 33.672367, 36.279446>,  <40.667118, 33.679848, 35.949669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893372, 33.672367, 36.279446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808481, -0.184450, -0.558870,
		0.162518, 0.982664, -0.089215,
		0.565637, -0.018698, 0.824442,
		41.063065, 33.666759, 36.526779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311527, 33.972267, 35.752720>,  <40.667118, 33.679848, 35.949669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311527, 33.972267, 35.752720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.401512, 33.803169, 36.103874>,  <41.455502, 33.701710, 36.314568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.401512, 33.803169, 36.103874>,  <41.311527, 33.972267, 35.752720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401512, 33.803169, 36.103874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907509, -0.237091, -0.346720,
		0.354713, 0.874685, 0.330309,
		0.224958, -0.422745, 0.877884,
		41.468998, 33.676346, 36.367241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924267, 34.246948, 35.945618>,  <41.311527, 33.972267, 35.752720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924267, 34.246948, 35.945618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924427, 33.922546, 36.179630>,  <41.924522, 33.727905, 36.320038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924427, 33.922546, 36.179630>,  <41.924267, 34.246948, 35.945618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924427, 33.922546, 36.179630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830159, -0.325905, -0.452351,
		0.557526, 0.485850, 0.673137,
		0.000397, -0.811009, 0.585034,
		41.924545, 33.679245, 36.355141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542042, 34.131851, 36.234318>,  <41.924267, 34.246948, 35.945618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542042, 34.131851, 36.234318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.395397, 33.760956, 36.264828>,  <42.307411, 33.538418, 36.283134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.395397, 33.760956, 36.264828>,  <42.542042, 34.131851, 36.234318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395397, 33.760956, 36.264828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797052, -0.355312, -0.488325,
		0.479897, -0.118230, 0.869322,
		-0.366615, -0.927241, 0.076278,
		42.285412, 33.482784, 36.287712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057667, 33.650993, 36.458805>,  <42.542042, 34.131851, 36.234318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057667, 33.650993, 36.458805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789841, 33.454899, 36.235607>,  <42.629147, 33.337242, 36.101688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789841, 33.454899, 36.235607>,  <43.057667, 33.650993, 36.458805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789841, 33.454899, 36.235607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731800, -0.306842, -0.608536,
		0.127111, -0.815791, 0.564205,
		-0.669561, -0.490237, -0.557993,
		42.588974, 33.307827, 36.068211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238033, 34.316933, 36.179737>,  <43.057667, 33.650993, 36.458805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238033, 34.316933, 36.179737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068489, 34.261597, 35.821697>,  <42.966763, 34.228394, 35.606873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068489, 34.261597, 35.821697>,  <43.238033, 34.316933, 36.179737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068489, 34.261597, 35.821697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818349, 0.482000, 0.313017,
		0.388136, 0.865180, -0.317510,
		-0.423856, -0.138340, -0.895102,
		42.941334, 34.220093, 35.553165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825123, 34.752342, 36.046173>,  <43.238033, 34.316933, 36.179737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825123, 34.752342, 36.046173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201801, 34.816021, 36.164742>,  <44.427807, 34.854229, 36.235882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201801, 34.816021, 36.164742>,  <43.825123, 34.752342, 36.046173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201801, 34.816021, 36.164742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335016, 0.361827, 0.869969,
		0.031243, -0.918552, 0.394064,
		0.941694, 0.159198, 0.296425,
		44.484310, 34.863781, 36.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931061, 34.444695, 36.685421>,  <43.825123, 34.752342, 36.046173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931061, 34.444695, 36.685421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187233, 34.748970, 36.643085>,  <44.340935, 34.931534, 36.617683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187233, 34.748970, 36.643085>,  <43.931061, 34.444695, 36.685421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187233, 34.748970, 36.643085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389831, 0.440704, 0.808586,
		0.661726, -0.476584, 0.578780,
		0.640430, 0.760688, -0.105838,
		44.379364, 34.977177, 36.611336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171215, 34.587536, 37.391079>,  <43.931061, 34.444695, 36.685421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171215, 34.587536, 37.391079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260384, 34.924305, 37.194519>,  <44.313885, 35.126366, 37.076584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260384, 34.924305, 37.194519>,  <44.171215, 34.587536, 37.391079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260384, 34.924305, 37.194519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396639, 0.538802, 0.743216,
		0.890497, 0.029229, 0.454050,
		0.222920, 0.841925, -0.491395,
		44.327259, 35.176884, 37.047100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554493, 35.036682, 37.896587>,  <44.171215, 34.587536, 37.391079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554493, 35.036682, 37.896587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.424980, 35.272800, 37.600826>,  <44.347271, 35.414471, 37.423370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.424980, 35.272800, 37.600826>,  <44.554493, 35.036682, 37.896587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424980, 35.272800, 37.600826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516926, 0.544177, 0.660802,
		0.792434, 0.596172, 0.128945,
		-0.323783, 0.590297, -0.739401,
		44.327847, 35.449890, 37.379005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765160, 35.659626, 38.020302>,  <44.554493, 35.036682, 37.896587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765160, 35.659626, 38.020302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.449131, 35.726398, 37.784359>,  <44.259514, 35.766464, 37.642796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.449131, 35.726398, 37.784359>,  <44.765160, 35.659626, 38.020302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449131, 35.726398, 37.784359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393929, 0.598991, 0.697158,
		0.469696, 0.783162, -0.407483,
		-0.790067, 0.166933, -0.589854,
		44.212112, 35.776478, 37.607403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407688, 36.213882, 38.286297>,  <44.765160, 35.659626, 38.020302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407688, 36.213882, 38.286297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118870, 36.091103, 38.038284>,  <43.945580, 36.017437, 37.889477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118870, 36.091103, 38.038284>,  <44.407688, 36.213882, 38.286297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118870, 36.091103, 38.038284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691422, 0.351611, 0.631115,
		0.024292, 0.884395, -0.466107,
		-0.722043, -0.306945, -0.620031,
		43.902256, 35.999020, 37.852276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912823, 36.796295, 38.082226>,  <44.407688, 36.213882, 38.286297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912823, 36.796295, 38.082226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703327, 36.458439, 38.037910>,  <43.577629, 36.255726, 38.011322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703327, 36.458439, 38.037910>,  <43.912823, 36.796295, 38.082226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703327, 36.458439, 38.037910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814801, 0.458741, 0.354481,
		-0.248590, 0.275923, -0.928477,
		-0.523740, -0.844644, -0.110784,
		43.546204, 36.205044, 38.004677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222622, 37.070881, 38.072380>,  <43.912823, 36.796295, 38.082226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222622, 37.070881, 38.072380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190639, 36.673592, 38.106106>,  <43.171452, 36.435219, 38.126343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190639, 36.673592, 38.106106>,  <43.222622, 37.070881, 38.072380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190639, 36.673592, 38.106106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940460, 0.103199, 0.323860,
		-0.330368, -0.053402, -0.942340,
		-0.079954, -0.993226, 0.084316,
		43.166653, 36.375626, 38.131401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552818, 36.849319, 37.756409>,  <43.222622, 37.070881, 38.072380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552818, 36.849319, 37.756409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665546, 36.563778, 38.012844>,  <42.733181, 36.392452, 38.166706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665546, 36.563778, 38.012844>,  <42.552818, 36.849319, 37.756409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665546, 36.563778, 38.012844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907510, 0.018576, 0.419620,
		-0.311456, -0.700047, -0.642595,
		0.281817, -0.713855, 0.641086,
		42.750092, 36.349621, 38.205170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025963, 36.310913, 37.682720>,  <42.552818, 36.849319, 37.756409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025963, 36.310913, 37.682720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200043, 36.275455, 38.041103>,  <42.304493, 36.254181, 38.256134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200043, 36.275455, 38.041103>,  <42.025963, 36.310913, 37.682720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200043, 36.275455, 38.041103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899858, -0.010537, 0.436055,
		-0.029214, -0.996007, -0.084355,
		0.435203, -0.088647, 0.895957,
		42.330605, 36.248863, 38.309891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743370, 35.724056, 37.980419>,  <42.025963, 36.310913, 37.682720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743370, 35.724056, 37.980419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886665, 35.934315, 38.289055>,  <41.972645, 36.060471, 38.474236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886665, 35.934315, 38.289055>,  <41.743370, 35.724056, 37.980419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886665, 35.934315, 38.289055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877478, -0.092717, 0.470569,
		0.318895, -0.845633, 0.428032,
		0.358243, 0.525651, 0.771591,
		41.994137, 36.092010, 38.520531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249256, 35.558609, 38.473293>,  <41.743370, 35.724056, 37.980419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249256, 35.558609, 38.473293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442406, 35.861446, 38.649315>,  <41.558296, 36.043148, 38.754929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442406, 35.861446, 38.649315>,  <41.249256, 35.558609, 38.473293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442406, 35.861446, 38.649315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848624, 0.280590, 0.448449,
		0.216040, -0.589986, 0.777974,
		0.482870, 0.757091, 0.440057,
		41.587265, 36.088573, 38.781330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929493, 35.442036, 39.014721>,  <41.249256, 35.558609, 38.473293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929493, 35.442036, 39.014721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086559, 35.808220, 38.979507>,  <41.180801, 36.027931, 38.958378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086559, 35.808220, 38.979507>,  <40.929493, 35.442036, 39.014721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086559, 35.808220, 38.979507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864556, 0.400079, 0.304106,
		0.313615, -0.043305, 0.948562,
		0.392669, 0.915457, -0.088031,
		41.204361, 36.082855, 38.953098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874538, 35.782600, 39.763344>,  <40.929493, 35.442036, 39.014721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874538, 35.782600, 39.763344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905117, 36.070171, 39.487000>,  <40.923466, 36.242714, 39.321194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905117, 36.070171, 39.487000>,  <40.874538, 35.782600, 39.763344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905117, 36.070171, 39.487000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832393, 0.427456, 0.352708,
		0.548886, 0.548106, 0.631113,
		0.076451, 0.718931, -0.690865,
		40.928051, 36.285851, 39.279739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995792, 36.340900, 40.288940>,  <40.874538, 35.782600, 39.763344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995792, 36.340900, 40.288940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922302, 36.519077, 39.938438>,  <40.878208, 36.625984, 39.728138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922302, 36.519077, 39.938438>,  <40.995792, 36.340900, 40.288940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922302, 36.519077, 39.938438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644109, 0.618832, 0.449633,
		0.742541, 0.647016, 0.173213,
		-0.183730, 0.445439, -0.876258,
		40.867184, 36.652710, 39.675560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053997, 37.129635, 40.334938>,  <40.995792, 36.340900, 40.288940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053997, 37.129635, 40.334938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811886, 37.035469, 40.030773>,  <40.666618, 36.978970, 39.848274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811886, 37.035469, 40.030773>,  <41.053997, 37.129635, 40.334938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811886, 37.035469, 40.030773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684251, 0.641990, 0.345903,
		0.406746, 0.729678, -0.549661,
		-0.605275, -0.235412, -0.760410,
		40.630302, 36.964844, 39.802650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683834, 37.658810, 40.328850>,  <41.053997, 37.129635, 40.334938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683834, 37.658810, 40.328850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.468292, 37.407967, 40.103863>,  <40.338966, 37.257462, 39.968872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.468292, 37.407967, 40.103863>,  <40.683834, 37.658810, 40.328850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468292, 37.407967, 40.103863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829380, 0.511871, 0.223867,
		0.147519, 0.587128, -0.795939,
		-0.538857, -0.627111, -0.562463,
		40.306637, 37.219833, 39.935123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173771, 38.113586, 40.234070>,  <40.683834, 37.658810, 40.328850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173771, 38.113586, 40.234070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013039, 37.765972, 40.118610>,  <39.916599, 37.557404, 40.049335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013039, 37.765972, 40.118610>,  <40.173771, 38.113586, 40.234070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013039, 37.765972, 40.118610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896274, 0.308641, 0.318487,
		-0.187688, 0.386682, -0.902912,
		-0.401829, -0.869033, -0.288645,
		39.892490, 37.505260, 40.032017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574394, 38.283146, 39.808887>,  <40.173771, 38.113586, 40.234070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574394, 38.283146, 39.808887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509808, 37.917870, 39.958557>,  <39.471054, 37.698704, 40.048359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509808, 37.917870, 39.958557>,  <39.574394, 38.283146, 39.808887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509808, 37.917870, 39.958557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912386, 0.282642, 0.296082,
		-0.376138, -0.293582, -0.878823,
		-0.161468, -0.913194, 0.374173,
		39.461369, 37.643913, 40.070808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927750, 38.082039, 39.511845>,  <39.574394, 38.283146, 39.808887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927750, 38.082039, 39.511845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985352, 37.839901, 39.824978>,  <39.019913, 37.694618, 40.012859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985352, 37.839901, 39.824978>,  <38.927750, 38.082039, 39.511845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985352, 37.839901, 39.824978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868507, 0.301846, 0.393172,
		-0.474298, -0.736513, -0.482277,
		0.144002, -0.605341, 0.782831,
		39.028553, 37.658298, 40.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301418, 37.698689, 39.547882>,  <38.927750, 38.082039, 39.511845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301418, 37.698689, 39.547882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465435, 37.645523, 39.908813>,  <38.563843, 37.613625, 40.125374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465435, 37.645523, 39.908813>,  <38.301418, 37.698689, 39.547882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465435, 37.645523, 39.908813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877443, 0.212520, 0.430034,
		-0.248920, -0.968075, -0.029481,
		0.410040, -0.132912, 0.902331,
		38.588448, 37.605648, 40.179512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.423313, 33.229404, 42.197021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085667, 33.154636, 41.996014>,  <35.883080, 33.109776, 41.875408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085667, 33.154636, 41.996014>,  <36.423313, 33.229404, 42.197021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085667, 33.154636, 41.996014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463813, 0.215588, -0.859302,
		0.268962, -0.958426, -0.095283,
		-0.844119, -0.186926, -0.502516,
		35.832432, 33.098560, 41.845261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589504, 32.723087, 41.659954>,  <36.423313, 33.229404, 42.197021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589504, 32.723087, 41.659954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252411, 32.910679, 41.554230>,  <36.050156, 33.023232, 41.490795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252411, 32.910679, 41.554230>,  <36.589504, 32.723087, 41.659954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252411, 32.910679, 41.554230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371981, 0.152389, -0.915646,
		-0.389137, -0.869966, -0.302873,
		-0.842735, 0.468975, -0.264310,
		35.999592, 33.051373, 41.474937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510685, 32.519547, 41.007671>,  <36.589504, 32.723087, 41.659954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510685, 32.519547, 41.007671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260174, 32.831375, 41.004768>,  <36.109867, 33.018471, 41.003025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260174, 32.831375, 41.004768>,  <36.510685, 32.519547, 41.007671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260174, 32.831375, 41.004768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308154, 0.238987, -0.920829,
		-0.716116, -0.578928, -0.389899,
		-0.626274, 0.779569, -0.007257,
		36.072292, 33.065247, 41.002590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195354, 32.496487, 40.394337>,  <36.510685, 32.519547, 41.007671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195354, 32.496487, 40.394337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126175, 32.878189, 40.491898>,  <36.084667, 33.107212, 40.550434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126175, 32.878189, 40.491898>,  <36.195354, 32.496487, 40.394337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126175, 32.878189, 40.491898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221891, 0.279013, -0.934300,
		-0.959612, -0.107464, -0.259994,
		-0.172945, 0.954255, 0.243899,
		36.074291, 33.164467, 40.565067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791817, 32.680161, 39.896988>,  <36.195354, 32.496487, 40.394337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791817, 32.680161, 39.896988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909344, 33.034000, 40.041851>,  <35.979858, 33.246304, 40.128769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909344, 33.034000, 40.041851>,  <35.791817, 32.680161, 39.896988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909344, 33.034000, 40.041851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280964, 0.282217, -0.917286,
		-0.913637, 0.371264, -0.165621,
		0.293814, 0.884600, 0.362156,
		35.997486, 33.299381, 40.150497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340420, 33.210114, 39.583542>,  <35.791817, 32.680161, 39.896988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340420, 33.210114, 39.583542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691345, 33.373344, 39.684578>,  <35.901901, 33.471283, 39.745197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691345, 33.373344, 39.684578>,  <35.340420, 33.210114, 39.583542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691345, 33.373344, 39.684578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132038, 0.300760, -0.944515,
		-0.461400, 0.861986, 0.209979,
		0.877312, 0.408074, 0.252586,
		35.954540, 33.495766, 39.760353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437103, 33.930984, 39.379467>,  <35.340420, 33.210114, 39.583542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437103, 33.930984, 39.379467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815163, 33.803299, 39.407166>,  <36.042000, 33.726688, 39.423786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815163, 33.803299, 39.407166>,  <35.437103, 33.930984, 39.379467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815163, 33.803299, 39.407166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180649, 0.334217, -0.925021,
		0.272134, 0.886793, 0.373551,
		0.945150, -0.319212, 0.069246,
		36.098709, 33.707535, 39.427940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910946, 34.464554, 39.307247>,  <35.437103, 33.930984, 39.379467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910946, 34.464554, 39.307247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100777, 34.127213, 39.206429>,  <36.214676, 33.924809, 39.145935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100777, 34.127213, 39.206429>,  <35.910946, 34.464554, 39.307247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100777, 34.127213, 39.206429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011018, 0.280637, -0.959751,
		0.880145, 0.458253, 0.123892,
		0.474577, -0.843355, -0.252050,
		36.243149, 33.874207, 39.130814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234482, 34.676773, 38.777744>,  <35.910946, 34.464554, 39.307247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234482, 34.676773, 38.777744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277092, 34.279427, 38.760418>,  <36.302658, 34.041019, 38.750023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277092, 34.279427, 38.760418>,  <36.234482, 34.676773, 38.777744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277092, 34.279427, 38.760418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207476, 0.064815, -0.976090,
		0.972423, 0.094988, 0.213004,
		0.106522, -0.993366, -0.043320,
		36.309048, 33.981415, 38.747421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965206, 34.569321, 38.674454>,  <36.234482, 34.676773, 38.777744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965206, 34.569321, 38.674454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766251, 34.245842, 38.548840>,  <36.646877, 34.051754, 38.473473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766251, 34.245842, 38.548840>,  <36.965206, 34.569321, 38.674454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766251, 34.245842, 38.548840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336555, 0.153760, -0.929025,
		0.799583, -0.567779, 0.195691,
		-0.497391, -0.808694, -0.314033,
		36.617035, 34.003235, 38.454628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520805, 34.114403, 38.320339>,  <36.965206, 34.569321, 38.674454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520805, 34.114403, 38.320339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150711, 34.046909, 38.184414>,  <36.928654, 34.006413, 38.102859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150711, 34.046909, 38.184414>,  <37.520805, 34.114403, 38.320339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150711, 34.046909, 38.184414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299969, 0.223046, -0.927507,
		0.232326, -0.960088, -0.155743,
		-0.925226, -0.168766, -0.339815,
		36.873142, 33.996288, 38.082470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677952, 33.966743, 37.665958>,  <37.520805, 34.114403, 38.320339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677952, 33.966743, 37.665958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282436, 34.002033, 37.617783>,  <37.045128, 34.023209, 37.588879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282436, 34.002033, 37.617783>,  <37.677952, 33.966743, 37.665958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282436, 34.002033, 37.617783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148559, 0.501556, -0.852274,
		-0.014785, -0.860615, -0.509042,
		-0.988793, 0.088224, -0.120437,
		36.985798, 34.028500, 37.581650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349525, 33.548946, 37.121891>,  <37.677952, 33.966743, 37.665958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349525, 33.548946, 37.121891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117161, 33.872120, 37.161469>,  <36.977741, 34.066025, 37.185215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117161, 33.872120, 37.161469>,  <37.349525, 33.548946, 37.121891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117161, 33.872120, 37.161469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266938, 0.303929, -0.914533,
		-0.768953, -0.504849, -0.392223,
		-0.580909, 0.807932, 0.098943,
		36.942886, 34.114498, 37.191151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330818, 33.171841, 37.752144>,  <37.349525, 33.548946, 37.121891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330818, 33.171841, 37.752144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988228, 33.224686, 37.951744>,  <36.782673, 33.256393, 38.071507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988228, 33.224686, 37.951744>,  <37.330818, 33.171841, 37.752144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988228, 33.224686, 37.951744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049296, 0.983210, -0.175691,
		-0.513835, -0.125876, -0.848604,
		-0.856472, 0.132109, 0.499003,
		36.731285, 33.264317, 38.101444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208363, 32.774712, 37.071079>,  <37.330818, 33.171841, 37.752144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208363, 32.774712, 37.071079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421085, 32.617889, 36.770821>,  <37.548717, 32.523796, 36.590664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421085, 32.617889, 36.770821>,  <37.208363, 32.774712, 37.071079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421085, 32.617889, 36.770821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532622, -0.843971, 0.063458,
		-0.658405, 0.366064, -0.657647,
		0.531806, -0.392058, -0.750648,
		37.580627, 32.500271, 36.545628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690018, 32.401920, 36.790680>,  <37.208363, 32.774712, 37.071079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690018, 32.401920, 36.790680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028187, 32.250767, 36.639698>,  <37.231087, 32.160076, 36.549110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028187, 32.250767, 36.639698>,  <36.690018, 32.401920, 36.790680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028187, 32.250767, 36.639698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372507, -0.923623, 0.090327,
		-0.382758, 0.064240, -0.921612,
		0.845419, -0.377881, -0.377455,
		37.281811, 32.137402, 36.526463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490009, 32.048527, 36.294903>,  <36.690018, 32.401920, 36.790680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490009, 32.048527, 36.294903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843552, 31.892437, 36.398071>,  <37.055676, 31.798782, 36.459972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843552, 31.892437, 36.398071>,  <36.490009, 32.048527, 36.294903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843552, 31.892437, 36.398071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448725, -0.863044, 0.231950,
		0.132085, -0.320747, -0.937910,
		0.883855, -0.390226, 0.257922,
		37.108707, 31.775370, 36.475449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563286, 31.327148, 35.970512>,  <36.490009, 32.048527, 36.294903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563286, 31.327148, 35.970512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790489, 31.360464, 36.298031>,  <36.926811, 31.380453, 36.494541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790489, 31.360464, 36.298031>,  <36.563286, 31.327148, 35.970512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790489, 31.360464, 36.298031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493057, -0.762143, 0.419563,
		0.658987, -0.642029, -0.391835,
		0.568006, 0.083290, 0.818799,
		36.960892, 31.385450, 36.543671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478107, 30.692650, 36.225544>,  <36.563286, 31.327148, 35.970512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478107, 30.692650, 36.225544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618244, 30.928017, 36.517029>,  <36.702328, 31.069237, 36.691921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618244, 30.928017, 36.517029>,  <36.478107, 30.692650, 36.225544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618244, 30.928017, 36.517029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386054, -0.618142, 0.684735,
		0.853359, -0.521215, 0.010600,
		0.350342, 0.588417, 0.728714,
		36.723347, 31.104542, 36.735641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767738, 30.312912, 36.632156>,  <36.478107, 30.692650, 36.225544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767738, 30.312912, 36.632156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681110, 30.634743, 36.853336>,  <36.629131, 30.827841, 36.986046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681110, 30.634743, 36.853336>,  <36.767738, 30.312912, 36.632156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681110, 30.634743, 36.853336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414127, -0.588623, 0.694278,
		0.884079, -0.078631, 0.460675,
		-0.216571, 0.804575, 0.552952,
		36.616138, 30.876116, 37.019222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003490, 30.177683, 37.314072>,  <36.767738, 30.312912, 36.632156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003490, 30.177683, 37.314072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719551, 30.457747, 37.344776>,  <36.549187, 30.625784, 37.363201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719551, 30.457747, 37.344776>,  <37.003490, 30.177683, 37.314072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719551, 30.457747, 37.344776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408951, -0.498420, 0.764419,
		0.573475, 0.511229, 0.640134,
		-0.709848, 0.700159, 0.076764,
		36.506596, 30.667795, 37.367805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076889, 30.395065, 37.971916>,  <37.003490, 30.177683, 37.314072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076889, 30.395065, 37.971916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707672, 30.467506, 37.836159>,  <36.486141, 30.510971, 37.754704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707672, 30.467506, 37.836159>,  <37.076889, 30.395065, 37.971916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707672, 30.467506, 37.836159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384689, -0.438474, 0.812253,
		-0.001714, 0.880308, 0.474400,
		-0.923045, 0.181104, -0.339396,
		36.430759, 30.521837, 37.734341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653011, 30.234568, 38.485474>,  <37.076889, 30.395065, 37.971916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653011, 30.234568, 38.485474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350639, 30.347034, 38.248993>,  <36.169216, 30.414515, 38.107105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350639, 30.347034, 38.248993>,  <36.653011, 30.234568, 38.485474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350639, 30.347034, 38.248993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653453, -0.269289, 0.707449,
		0.039708, 0.921101, 0.387293,
		-0.755925, 0.281169, -0.591203,
		36.123863, 30.431385, 38.071632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124107, 30.604576, 38.905006>,  <36.653011, 30.234568, 38.485474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124107, 30.604576, 38.905006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949295, 30.442116, 38.583996>,  <35.844406, 30.344639, 38.391392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949295, 30.442116, 38.583996>,  <36.124107, 30.604576, 38.905006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949295, 30.442116, 38.583996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671896, -0.445752, 0.591490,
		-0.597960, 0.797713, -0.078082,
		-0.437034, -0.406151, -0.802523,
		35.818184, 30.320271, 38.343239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449097, 30.762775, 39.042530>,  <36.124107, 30.604576, 38.905006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449097, 30.762775, 39.042530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482399, 30.440945, 38.807339>,  <35.502380, 30.247847, 38.666222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482399, 30.440945, 38.807339>,  <35.449097, 30.762775, 39.042530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482399, 30.440945, 38.807339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721139, -0.455863, 0.521677,
		-0.687769, 0.380581, -0.618168,
		0.083259, -0.804579, -0.587980,
		35.507378, 30.199572, 38.630943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844711, 30.536701, 39.062092>,  <35.449097, 30.762775, 39.042530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844711, 30.536701, 39.062092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049126, 30.217775, 38.933636>,  <35.171776, 30.026421, 38.856560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049126, 30.217775, 38.933636>,  <34.844711, 30.536701, 39.062092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049126, 30.217775, 38.933636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440919, -0.563870, 0.698312,
		-0.737858, -0.215264, -0.639709,
		0.511034, -0.797315, -0.321142,
		35.202435, 29.978580, 38.837292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348293, 30.070940, 39.066525>,  <34.844711, 30.536701, 39.062092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348293, 30.070940, 39.066525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697605, 29.876863, 39.048790>,  <34.907192, 29.760418, 39.038147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697605, 29.876863, 39.048790>,  <34.348293, 30.070940, 39.066525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697605, 29.876863, 39.048790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286985, -0.585803, 0.757941,
		-0.393718, -0.649173, -0.650815,
		0.873285, -0.485189, -0.044339,
		34.959591, 29.731306, 39.035488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225414, 29.296877, 38.998158>,  <34.348293, 30.070940, 39.066525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225414, 29.296877, 38.998158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582806, 29.361300, 39.165852>,  <34.797241, 29.399954, 39.266468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582806, 29.361300, 39.165852>,  <34.225414, 29.296877, 38.998158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582806, 29.361300, 39.165852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311196, -0.451027, 0.836500,
		0.323808, -0.877859, -0.352863,
		0.893479, 0.161056, 0.419233,
		34.850849, 29.409616, 39.291622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916973, 28.781237, 38.611118>,  <34.225414, 29.296877, 38.998158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916973, 28.781237, 38.611118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534897, 28.889395, 38.562958>,  <33.305653, 28.954290, 38.534061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534897, 28.889395, 38.562958>,  <33.916973, 28.781237, 38.611118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534897, 28.889395, 38.562958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241391, 0.476223, -0.845542,
		-0.171294, -0.836718, -0.520155,
		-0.955190, 0.270397, -0.120402,
		33.248341, 28.970514, 38.526836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735313, 28.543810, 37.938629>,  <33.916973, 28.781237, 38.611118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735313, 28.543810, 37.938629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446537, 28.801430, 38.039825>,  <33.273273, 28.956001, 38.100544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446537, 28.801430, 38.039825>,  <33.735313, 28.543810, 37.938629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446537, 28.801430, 38.039825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123003, 0.479247, -0.869018,
		-0.680936, -0.596259, -0.425207,
		-0.721939, 0.644047, 0.252995,
		33.229954, 28.994644, 38.115723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258533, 28.553629, 37.392288>,  <33.735313, 28.543810, 37.938629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258533, 28.553629, 37.392288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207073, 28.909309, 37.567909>,  <33.176197, 29.122719, 37.673283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207073, 28.909309, 37.567909>,  <33.258533, 28.553629, 37.392288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207073, 28.909309, 37.567909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329051, 0.455925, -0.826957,
		-0.935508, 0.038083, -0.351248,
		-0.128650, 0.889203, 0.439053,
		33.168480, 29.176071, 37.699627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923878, 29.027050, 36.852890>,  <33.258533, 28.553629, 37.392288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923878, 29.027050, 36.852890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082802, 29.267023, 37.130661>,  <33.178154, 29.411007, 37.297321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082802, 29.267023, 37.130661>,  <32.923878, 29.027050, 36.852890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082802, 29.267023, 37.130661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391697, 0.573454, -0.719530,
		-0.829892, 0.557879, -0.007156,
		0.397307, 0.599935, 0.694424,
		33.201996, 29.447004, 37.338989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735569, 29.676079, 36.660728>,  <32.923878, 29.027050, 36.852890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735569, 29.676079, 36.660728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064472, 29.695278, 36.887562>,  <33.261814, 29.706799, 37.023663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064472, 29.695278, 36.887562>,  <32.735569, 29.676079, 36.660728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064472, 29.695278, 36.887562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368910, 0.713784, -0.595330,
		-0.433348, 0.698720, 0.569211,
		0.822262, 0.047998, 0.567081,
		33.311150, 29.709677, 37.057686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920986, 30.333525, 36.578060>,  <32.735569, 29.676079, 36.660728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920986, 30.333525, 36.578060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257118, 30.179304, 36.730476>,  <33.458797, 30.086773, 36.821926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257118, 30.179304, 36.730476>,  <32.920986, 30.333525, 36.578060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257118, 30.179304, 36.730476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536467, 0.490690, -0.686605,
		0.077747, 0.781392, 0.619178,
		0.840332, -0.385550, 0.381042,
		33.509216, 30.063639, 36.844788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266869, 30.910316, 36.815029>,  <32.920986, 30.333525, 36.578060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266869, 30.910316, 36.815029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541939, 30.622774, 36.774334>,  <33.706982, 30.450249, 36.749916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541939, 30.622774, 36.774334>,  <33.266869, 30.910316, 36.815029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541939, 30.622774, 36.774334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497094, 0.568327, -0.655669,
		0.529152, 0.400314, 0.748163,
		0.687675, -0.718856, -0.101738,
		33.748241, 30.407118, 36.743813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969448, 31.273069, 36.796394>,  <33.266869, 30.910316, 36.815029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969448, 31.273069, 36.796394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010998, 30.918028, 36.616898>,  <34.035927, 30.705004, 36.509197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010998, 30.918028, 36.616898>,  <33.969448, 31.273069, 36.796394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010998, 30.918028, 36.616898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538690, 0.429484, -0.724815,
		0.836076, -0.166447, 0.522754,
		0.103871, -0.887603, -0.448744,
		34.042160, 30.651747, 36.482273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534195, 31.367338, 36.391869>,  <33.969448, 31.273069, 36.796394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534195, 31.367338, 36.391869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422573, 31.020597, 36.226604>,  <34.355602, 30.812553, 36.127445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422573, 31.020597, 36.226604>,  <34.534195, 31.367338, 36.391869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422573, 31.020597, 36.226604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361483, 0.303774, -0.881505,
		0.889640, -0.395334, 0.228584,
		-0.279052, -0.866852, -0.413156,
		34.338856, 30.760542, 36.102657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166485, 31.083174, 35.965542>,  <34.534195, 31.367338, 36.391869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166485, 31.083174, 35.965542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844593, 30.914448, 35.798454>,  <34.651459, 30.813213, 35.698200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844593, 30.914448, 35.798454>,  <35.166485, 31.083174, 35.965542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844593, 30.914448, 35.798454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324263, 0.277078, -0.904479,
		0.497262, -0.863309, -0.086193,
		-0.804726, -0.421813, -0.417719,
		34.603176, 30.787903, 35.673138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422474, 30.623247, 35.482239>,  <35.166485, 31.083174, 35.965542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422474, 30.623247, 35.482239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053429, 30.732880, 35.373676>,  <34.832001, 30.798658, 35.308540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053429, 30.732880, 35.373676>,  <35.422474, 30.623247, 35.482239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053429, 30.732880, 35.373676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326709, 0.181262, -0.927580,
		-0.205037, -0.944470, -0.256780,
		-0.922616, 0.274081, -0.271401,
		34.776642, 30.815104, 35.292255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393124, 30.445398, 34.689785>,  <35.422474, 30.623247, 35.482239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393124, 30.445398, 34.689785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069725, 30.670519, 34.758587>,  <34.875687, 30.805592, 34.799866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069725, 30.670519, 34.758587>,  <35.393124, 30.445398, 34.689785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069725, 30.670519, 34.758587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211444, 0.550563, -0.807572,
		-0.549200, -0.616552, -0.564130,
		-0.808499, 0.562800, 0.172003,
		34.827175, 30.839359, 34.810188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.597500, 26.451845, 41.140656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.496632, 26.838732, 41.152702>,  <31.436111, 27.070864, 41.159931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.496632, 26.838732, 41.152702>,  <31.597500, 26.451845, 41.140656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496632, 26.838732, 41.152702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431858, 0.140334, -0.890958,
		-0.865973, -0.211667, -0.453087,
		-0.252170, 0.967214, 0.030116,
		31.420980, 27.128897, 41.161736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368114, 26.689489, 40.537460>,  <31.597500, 26.451845, 41.140656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368114, 26.689489, 40.537460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.492336, 27.036200, 40.693539>,  <31.566870, 27.244226, 40.787186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.492336, 27.036200, 40.693539>,  <31.368114, 26.689489, 40.537460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492336, 27.036200, 40.693539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364223, 0.270658, -0.891115,
		-0.878007, 0.418860, -0.231645,
		0.310556, 0.866776, 0.390198,
		31.585503, 27.296232, 40.810596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484306, 27.010286, 39.988346>,  <31.368114, 26.689489, 40.537460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484306, 27.010286, 39.988346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.654018, 27.246508, 40.262932>,  <31.755846, 27.388241, 40.427685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.654018, 27.246508, 40.262932>,  <31.484306, 27.010286, 39.988346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654018, 27.246508, 40.262932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361190, 0.584795, -0.726331,
		-0.830378, 0.556113, 0.034816,
		0.424282, 0.590554, 0.686463,
		31.781303, 27.423674, 40.468872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479408, 27.552784, 39.722294>,  <31.484306, 27.010286, 39.988346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479408, 27.552784, 39.722294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.753269, 27.659462, 39.993622>,  <31.917585, 27.723469, 40.156418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.753269, 27.659462, 39.993622>,  <31.479408, 27.552784, 39.722294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753269, 27.659462, 39.993622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346049, 0.700136, -0.624547,
		-0.641482, 0.662333, 0.387062,
		0.684654, 0.266693, 0.678324,
		31.958666, 27.739470, 40.197121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454697, 28.256136, 39.807236>,  <31.479408, 27.552784, 39.722294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454697, 28.256136, 39.807236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.821594, 28.107059, 39.863472>,  <32.041733, 28.017614, 39.897213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.821594, 28.107059, 39.863472>,  <31.454697, 28.256136, 39.807236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821594, 28.107059, 39.863472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356070, 0.608962, -0.708787,
		0.178542, 0.700192, 0.691270,
		0.917244, -0.372689, 0.140593,
		32.096767, 27.995253, 39.905651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866728, 28.809546, 40.048462>,  <31.454697, 28.256136, 39.807236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866728, 28.809546, 40.048462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.101467, 28.531420, 39.882500>,  <32.242310, 28.364544, 39.782921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.101467, 28.531420, 39.882500>,  <31.866728, 28.809546, 40.048462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101467, 28.531420, 39.882500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277404, 0.654064, -0.703738,
		0.760696, 0.297889, 0.576718,
		0.586846, -0.695315, -0.414909,
		32.277519, 28.322824, 39.758026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424297, 29.261469, 39.789753>,  <31.866728, 28.809546, 40.048462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424297, 29.261469, 39.789753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.487495, 28.900389, 39.629669>,  <32.525414, 28.683741, 39.533619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.487495, 28.900389, 39.629669>,  <32.424297, 29.261469, 39.789753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487495, 28.900389, 39.629669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540804, 0.418214, -0.729813,
		0.826176, -0.101124, 0.554262,
		0.157999, -0.902702, -0.400207,
		32.534897, 28.629578, 39.509605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124001, 29.327732, 39.579338>,  <32.424297, 29.261469, 39.789753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124001, 29.327732, 39.579338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.963253, 29.019897, 39.380848>,  <32.866806, 28.835197, 39.261753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.963253, 29.019897, 39.380848>,  <33.124001, 29.327732, 39.579338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963253, 29.019897, 39.380848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287208, 0.408634, -0.866331,
		0.869492, -0.490669, 0.056816,
		-0.401865, -0.769586, -0.496228,
		32.842693, 28.789022, 39.231979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658653, 28.980228, 39.311707>,  <33.124001, 29.327732, 39.579338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658653, 28.980228, 39.311707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.331158, 28.888363, 39.101212>,  <33.134659, 28.833244, 38.974915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.331158, 28.888363, 39.101212>,  <33.658653, 28.980228, 39.311707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331158, 28.888363, 39.101212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437229, 0.344669, -0.830683,
		0.372155, -0.910196, -0.181777,
		-0.818738, -0.229665, -0.526235,
		33.085537, 28.819464, 38.943340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293446, 28.551332, 39.316864>,  <33.658653, 28.980228, 39.311707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293446, 28.551332, 39.316864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555073, 28.809469, 39.474712>,  <34.712048, 28.964352, 39.569424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555073, 28.809469, 39.474712>,  <34.293446, 28.551332, 39.316864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555073, 28.809469, 39.474712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246297, -0.311572, 0.917747,
		0.715215, -0.697464, -0.044843,
		0.654067, 0.645342, 0.394625,
		34.751293, 29.003073, 39.593102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628513, 28.198597, 39.868858>,  <34.293446, 28.551332, 39.316864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628513, 28.198597, 39.868858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707424, 28.577604, 39.969490>,  <34.754768, 28.805008, 40.029869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707424, 28.577604, 39.969490>,  <34.628513, 28.198597, 39.868858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707424, 28.577604, 39.969490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250502, -0.199385, 0.947362,
		0.947804, -0.249910, 0.198022,
		0.197273, 0.947518, 0.251581,
		34.766605, 28.861860, 40.044964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127125, 28.271925, 40.443275>,  <34.628513, 28.198597, 39.868858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127125, 28.271925, 40.443275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948734, 28.629881, 40.449982>,  <34.841702, 28.844654, 40.454006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948734, 28.629881, 40.449982>,  <35.127125, 28.271925, 40.443275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948734, 28.629881, 40.449982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259512, -0.147217, 0.954453,
		0.856597, 0.421311, 0.297889,
		-0.445976, 0.894888, 0.016770,
		34.814941, 28.898348, 40.455013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324265, 28.526802, 41.047100>,  <35.127125, 28.271925, 40.443275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324265, 28.526802, 41.047100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001152, 28.748095, 40.965679>,  <34.807285, 28.880869, 40.916824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001152, 28.748095, 40.965679>,  <35.324265, 28.526802, 41.047100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001152, 28.748095, 40.965679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218986, 0.038976, 0.974949,
		0.547304, 0.832117, 0.089666,
		-0.807777, 0.553229, -0.203554,
		34.758820, 28.914062, 40.904613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350040, 29.066458, 41.430035>,  <35.324265, 28.526802, 41.047100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350040, 29.066458, 41.430035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966240, 28.986376, 41.350758>,  <34.735962, 28.938326, 41.303192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966240, 28.986376, 41.350758>,  <35.350040, 29.066458, 41.430035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966240, 28.986376, 41.350758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172894, -0.136949, 0.975373,
		-0.222417, 0.970135, 0.096789,
		-0.959499, -0.200205, -0.198190,
		34.678391, 28.926313, 41.291302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922489, 29.352242, 42.008644>,  <35.350040, 29.066458, 41.430035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922489, 29.352242, 42.008644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.687378, 29.083666, 41.828117>,  <34.546310, 28.922520, 41.719803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.687378, 29.083666, 41.828117>,  <34.922489, 29.352242, 42.008644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687378, 29.083666, 41.828117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344809, -0.296733, 0.890537,
		-0.731862, 0.679056, -0.057106,
		-0.587780, -0.671441, -0.451312,
		34.511044, 28.882235, 41.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394512, 29.252567, 42.508205>,  <34.922489, 29.352242, 42.008644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394512, 29.252567, 42.508205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342651, 28.954147, 42.246948>,  <34.311535, 28.775095, 42.090195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342651, 28.954147, 42.246948>,  <34.394512, 29.252567, 42.508205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342651, 28.954147, 42.246948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532250, -0.503397, 0.680662,
		-0.836600, 0.435888, -0.331817,
		-0.129657, -0.746052, -0.653143,
		34.303753, 28.730331, 42.051006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739307, 29.094103, 42.530075>,  <34.394512, 29.252567, 42.508205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739307, 29.094103, 42.530075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.867092, 28.765646, 42.340900>,  <33.943764, 28.568573, 42.227394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.867092, 28.765646, 42.340900>,  <33.739307, 29.094103, 42.530075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867092, 28.765646, 42.340900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565138, -0.565717, 0.600486,
		-0.760634, 0.075447, -0.644782,
		0.319459, -0.821141, -0.472941,
		33.962929, 28.519304, 42.199017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119007, 28.643293, 42.440342>,  <33.739307, 29.094103, 42.530075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119007, 28.643293, 42.440342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437473, 28.401302, 42.435848>,  <33.628551, 28.256107, 42.433151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437473, 28.401302, 42.435848>,  <33.119007, 28.643293, 42.440342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437473, 28.401302, 42.435848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463008, -0.621067, 0.632376,
		-0.389548, -0.498275, -0.774580,
		0.796163, -0.604977, -0.011230,
		33.676323, 28.219809, 42.432480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874737, 28.006039, 42.344391>,  <33.119007, 28.643293, 42.440342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874737, 28.006039, 42.344391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.223629, 27.942753, 42.529510>,  <33.432964, 27.904781, 42.640583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.223629, 27.942753, 42.529510>,  <32.874737, 28.006039, 42.344391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223629, 27.942753, 42.529510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435440, -0.682101, 0.587478,
		0.222731, -0.713937, -0.663840,
		0.872228, -0.158213, 0.462802,
		33.485298, 27.895288, 42.668350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969971, 27.268164, 42.408241>,  <32.874737, 28.006039, 42.344391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969971, 27.268164, 42.408241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.203259, 27.419641, 42.695698>,  <33.343231, 27.510529, 42.868172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.203259, 27.419641, 42.695698>,  <32.969971, 27.268164, 42.408241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203259, 27.419641, 42.695698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419378, -0.617296, 0.665634,
		0.695689, -0.689591, -0.201199,
		0.583215, 0.378695, 0.718645,
		33.378223, 27.533251, 42.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130131, 26.686907, 42.796295>,  <32.969971, 27.268164, 42.408241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130131, 26.686907, 42.796295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253536, 26.977329, 43.042114>,  <33.327579, 27.151583, 43.189606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253536, 26.977329, 43.042114>,  <33.130131, 26.686907, 42.796295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253536, 26.977329, 43.042114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284404, -0.546098, 0.787967,
		0.907709, -0.417875, 0.038016,
		0.308512, 0.726056, 0.614543,
		33.346088, 27.195147, 43.226479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565399, 26.421562, 43.262047>,  <33.130131, 26.686907, 42.796295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565399, 26.421562, 43.262047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.469227, 26.762562, 43.447708>,  <33.411522, 26.967161, 43.559105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.469227, 26.762562, 43.447708>,  <33.565399, 26.421562, 43.262047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469227, 26.762562, 43.447708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075091, -0.493082, 0.866736,
		0.967757, 0.173538, 0.182568,
		-0.240433, 0.852499, 0.464152,
		33.397099, 27.018312, 43.586952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880775, 26.311357, 43.871761>,  <33.565399, 26.421562, 43.262047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880775, 26.311357, 43.871761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.594501, 26.584009, 43.932659>,  <33.422737, 26.747601, 43.969196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.594501, 26.584009, 43.932659>,  <33.880775, 26.311357, 43.871761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594501, 26.584009, 43.932659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253418, -0.456558, 0.852839,
		0.650826, 0.571783, 0.499489,
		-0.715685, 0.681629, 0.152240,
		33.379795, 26.788498, 43.978333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.999628, 32.887589, 44.444000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.365240, 32.739243, 44.509739>,  <28.584608, 32.650234, 44.549183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.365240, 32.739243, 44.509739>,  <27.999628, 32.887589, 44.444000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365240, 32.739243, 44.509739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328817, 0.440135, -0.835560,
		0.237545, 0.817766, 0.524243,
		0.914030, -0.370864, 0.164344,
		28.639450, 32.627983, 44.559044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346174, 33.399334, 44.096325>,  <27.999628, 32.887589, 44.444000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346174, 33.399334, 44.096325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.597946, 33.090466, 44.131111>,  <28.749010, 32.905144, 44.151985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.597946, 33.090466, 44.131111>,  <28.346174, 33.399334, 44.096325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597946, 33.090466, 44.131111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463818, 0.283544, -0.839331,
		0.623450, 0.568639, 0.536619,
		0.629431, -0.772174, 0.086969,
		28.786776, 32.858814, 44.157204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986380, 33.725574, 44.019356>,  <28.346174, 33.399334, 44.096325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986380, 33.725574, 44.019356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.023970, 33.340427, 43.918125>,  <29.046524, 33.109337, 43.857388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.023970, 33.340427, 43.918125>,  <28.986380, 33.725574, 44.019356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023970, 33.340427, 43.918125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499736, 0.265479, -0.824490,
		0.861065, -0.048989, 0.506130,
		0.093976, -0.962871, -0.253076,
		29.052162, 33.051567, 43.842201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665203, 33.537956, 43.906021>,  <28.986380, 33.725574, 44.019356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665203, 33.537956, 43.906021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.483114, 33.264782, 43.677505>,  <29.373861, 33.100876, 43.540398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.483114, 33.264782, 43.677505>,  <29.665203, 33.537956, 43.906021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483114, 33.264782, 43.677505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587852, 0.251371, -0.768923,
		0.668732, -0.685863, 0.287037,
		-0.455223, -0.682939, -0.571285,
		29.346548, 33.059902, 43.506119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167128, 33.153210, 43.493557>,  <29.665203, 33.537956, 43.906021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167128, 33.153210, 43.493557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.822655, 33.080875, 43.303543>,  <29.615971, 33.037476, 43.189533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.822655, 33.080875, 43.303543>,  <30.167128, 33.153210, 43.493557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822655, 33.080875, 43.303543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433083, 0.228194, -0.871990,
		0.266088, -0.956674, -0.118201,
		-0.861184, -0.180835, -0.475039,
		29.564301, 33.026627, 43.161030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271852, 32.535286, 43.044941>,  <30.167128, 33.153210, 43.493557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271852, 32.535286, 43.044941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.956764, 32.745461, 42.916306>,  <29.767712, 32.871563, 42.839127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.956764, 32.745461, 42.916306>,  <30.271852, 32.535286, 43.044941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956764, 32.745461, 42.916306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434034, 0.102920, -0.894998,
		-0.437164, -0.844587, -0.309129,
		-0.787719, 0.525433, -0.321587,
		29.720448, 32.903091, 42.819828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069803, 32.217064, 42.467991>,  <30.271852, 32.535286, 43.044941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069803, 32.217064, 42.467991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.900892, 32.578415, 42.438072>,  <29.799545, 32.795223, 42.420120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.900892, 32.578415, 42.438072>,  <30.069803, 32.217064, 42.467991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900892, 32.578415, 42.438072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404203, 0.113798, -0.907563,
		-0.811357, -0.413479, -0.413201,
		-0.422279, 0.903375, -0.074798,
		29.774208, 32.849426, 42.415634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649578, 32.225056, 41.756279>,  <30.069803, 32.217064, 42.467991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649578, 32.225056, 41.756279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741381, 32.598812, 41.865269>,  <29.796463, 32.823067, 41.930664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741381, 32.598812, 41.865269>,  <29.649578, 32.225056, 41.756279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741381, 32.598812, 41.865269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344015, 0.184001, -0.920759,
		-0.910483, 0.305056, -0.279214,
		0.229508, 0.934390, 0.272474,
		29.810232, 32.879128, 41.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313133, 32.673405, 41.273293>,  <29.649578, 32.225056, 41.756279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313133, 32.673405, 41.273293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608389, 32.872711, 41.455231>,  <29.785542, 32.992294, 41.564392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608389, 32.872711, 41.455231>,  <29.313133, 32.673405, 41.273293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608389, 32.872711, 41.455231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251899, 0.421885, -0.870954,
		-0.625857, 0.757460, 0.185897,
		0.738140, 0.498265, 0.454842,
		29.829830, 33.022190, 41.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258577, 33.245388, 40.914524>,  <29.313133, 32.673405, 41.273293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258577, 33.245388, 40.914524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608469, 33.253036, 41.108219>,  <29.818403, 33.257626, 41.224434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608469, 33.253036, 41.108219>,  <29.258577, 33.245388, 40.914524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608469, 33.253036, 41.108219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417775, 0.476622, -0.773496,
		-0.245588, 0.878900, 0.408926,
		0.874729, 0.019123, 0.484235,
		29.870888, 33.258774, 41.253490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478058, 33.931278, 41.063435>,  <29.258577, 33.245388, 40.914524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478058, 33.931278, 41.063435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.810579, 33.711136, 41.094528>,  <30.010092, 33.579048, 41.113186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.810579, 33.711136, 41.094528>,  <29.478058, 33.931278, 41.063435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810579, 33.711136, 41.094528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423554, 0.536694, -0.729768,
		0.359915, 0.639582, 0.679261,
		0.831302, -0.550358, 0.077733,
		30.059971, 33.546028, 41.117847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891516, 34.392818, 41.195427>,  <29.478058, 33.931278, 41.063435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891516, 34.392818, 41.195427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.111698, 34.088287, 41.058388>,  <30.243807, 33.905567, 40.976162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.111698, 34.088287, 41.058388>,  <29.891516, 34.392818, 41.195427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111698, 34.088287, 41.058388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299836, 0.563270, -0.769951,
		0.779164, 0.321100, 0.538329,
		0.550456, -0.761328, -0.342603,
		30.276834, 33.859890, 40.955608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552547, 34.712128, 41.035259>,  <29.891516, 34.392818, 41.195427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552547, 34.712128, 41.035259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553398, 34.365047, 40.836422>,  <30.553907, 34.156799, 40.717121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553398, 34.365047, 40.836422>,  <30.552547, 34.712128, 41.035259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553398, 34.365047, 40.836422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452770, 0.444054, -0.773185,
		0.891625, -0.223423, 0.393812,
		0.002126, -0.867697, -0.497089,
		30.554035, 34.104740, 40.687294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164558, 34.644222, 40.804886>,  <30.552547, 34.712128, 41.035259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164558, 34.644222, 40.804886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973185, 34.399292, 40.553120>,  <30.858360, 34.252335, 40.402061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973185, 34.399292, 40.553120>,  <31.164558, 34.644222, 40.804886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973185, 34.399292, 40.553120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508510, 0.391163, -0.767079,
		0.715903, -0.687060, 0.124226,
		-0.478436, -0.612324, -0.629411,
		30.829655, 34.215595, 40.364296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810343, 34.403217, 41.133221>,  <31.164558, 34.644222, 40.804886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810343, 34.403217, 41.133221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195393, 34.501369, 41.179085>,  <32.426422, 34.560261, 41.206604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195393, 34.501369, 41.179085>,  <31.810343, 34.403217, 41.133221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195393, 34.501369, 41.179085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051988, -0.248085, 0.967342,
		0.265812, -0.937146, -0.226055,
		0.962622, 0.245378, 0.114664,
		32.484180, 34.574982, 41.213486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194958, 33.815948, 41.357193>,  <31.810343, 34.403217, 41.133221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194958, 33.815948, 41.357193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406780, 34.134090, 41.475163>,  <32.533875, 34.324974, 41.545944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406780, 34.134090, 41.475163>,  <32.194958, 33.815948, 41.357193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406780, 34.134090, 41.475163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206222, -0.216534, 0.954246,
		0.822824, -0.566149, 0.049352,
		0.529559, 0.795355, 0.294922,
		32.565647, 34.372696, 41.563641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572826, 33.608658, 41.910587>,  <32.194958, 33.815948, 41.357193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572826, 33.608658, 41.910587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553413, 34.001392, 41.983955>,  <32.541767, 34.237034, 42.027977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553413, 34.001392, 41.983955>,  <32.572826, 33.608658, 41.910587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553413, 34.001392, 41.983955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239878, -0.189714, 0.952086,
		0.969589, 0.002205, 0.244727,
		-0.048528, 0.981837, 0.183416,
		32.538857, 34.295944, 42.038979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998032, 33.677864, 42.532444>,  <32.572826, 33.608658, 41.910587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998032, 33.677864, 42.532444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.794498, 34.022194, 42.535793>,  <32.672379, 34.228790, 42.537804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.794498, 34.022194, 42.535793>,  <32.998032, 33.677864, 42.532444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794498, 34.022194, 42.535793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159016, -0.103540, 0.981832,
		0.846053, 0.498255, 0.189570,
		-0.508831, 0.860826, 0.008370,
		32.641850, 34.280441, 42.538303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257702, 34.135590, 43.095314>,  <32.998032, 33.677864, 42.532444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257702, 34.135590, 43.095314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881557, 34.257282, 43.034428>,  <32.655872, 34.330299, 42.997894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881557, 34.257282, 43.034428>,  <33.257702, 34.135590, 43.095314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881557, 34.257282, 43.034428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217131, -0.192319, 0.957010,
		0.261882, 0.932982, 0.246907,
		-0.940357, 0.304235, -0.152215,
		32.599449, 34.348553, 42.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038280, 34.480919, 43.728195>,  <33.257702, 34.135590, 43.095314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038280, 34.480919, 43.728195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681618, 34.419235, 43.557945>,  <32.467621, 34.382225, 43.455795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681618, 34.419235, 43.557945>,  <33.038280, 34.480919, 43.728195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681618, 34.419235, 43.557945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406872, -0.139229, 0.902812,
		-0.198485, 0.978179, 0.061400,
		-0.891661, -0.154213, -0.425628,
		32.414120, 34.372971, 43.430256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537254, 34.875080, 44.030132>,  <33.038280, 34.480919, 43.728195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537254, 34.875080, 44.030132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321522, 34.560314, 43.910213>,  <32.192081, 34.371452, 43.838264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321522, 34.560314, 43.910213>,  <32.537254, 34.875080, 44.030132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321522, 34.560314, 43.910213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503677, 0.016147, 0.863741,
		-0.674853, 0.616846, -0.405061,
		-0.539336, -0.786918, -0.299795,
		32.159721, 34.324238, 43.820274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096207, 34.846878, 44.547840>,  <32.537254, 34.875080, 44.030132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096207, 34.846878, 44.547840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.001690, 34.508900, 44.355911>,  <31.944981, 34.306110, 44.240753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.001690, 34.508900, 44.355911>,  <32.096207, 34.846878, 44.547840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001690, 34.508900, 44.355911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554195, -0.288423, 0.780820,
		-0.798144, 0.450414, -0.400116,
		-0.236290, -0.844949, -0.479821,
		31.930803, 34.255413, 44.211964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432791, 34.737167, 44.724739>,  <32.096207, 34.846878, 44.547840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432791, 34.737167, 44.724739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.550573, 34.366749, 44.630314>,  <31.621243, 34.144497, 44.573658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.550573, 34.366749, 44.630314>,  <31.432791, 34.737167, 44.724739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550573, 34.366749, 44.630314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499751, -0.359758, 0.787924,
		-0.814582, -0.114037, -0.568728,
		0.294457, -0.926051, -0.236062,
		31.638910, 34.088932, 44.559494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832144, 34.350533, 44.797112>,  <31.432791, 34.737167, 44.724739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832144, 34.350533, 44.797112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139191, 34.095047, 44.818291>,  <31.323420, 33.941753, 44.830997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139191, 34.095047, 44.818291>,  <30.832144, 34.350533, 44.797112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139191, 34.095047, 44.818291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400822, -0.413957, 0.817301,
		-0.500106, -0.648598, -0.573773,
		0.767617, -0.638718, 0.052950,
		31.369476, 33.903431, 44.834175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521595, 33.626087, 44.755848>,  <30.832144, 34.350533, 44.797112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521595, 33.626087, 44.755848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877485, 33.616863, 44.938210>,  <31.091021, 33.611328, 45.047626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877485, 33.616863, 44.938210>,  <30.521595, 33.626087, 44.755848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877485, 33.616863, 44.938210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382981, -0.581188, 0.718015,
		0.248414, -0.813443, -0.525929,
		0.889728, -0.023056, 0.455909,
		31.144403, 33.609947, 45.074982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518253, 32.942764, 45.105534>,  <30.521595, 33.626087, 44.755848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518253, 32.942764, 45.105534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.797930, 33.165226, 45.285233>,  <30.965736, 33.298702, 45.393051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.797930, 33.165226, 45.285233>,  <30.518253, 32.942764, 45.105534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797930, 33.165226, 45.285233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239989, -0.409342, 0.880252,
		0.673450, -0.723282, -0.152740,
		0.699193, 0.556150, 0.449251,
		31.007689, 33.332069, 45.420010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887184, 32.447395, 45.495888>,  <30.518253, 32.942764, 45.105534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887184, 32.447395, 45.495888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.967096, 32.801182, 45.664558>,  <31.015043, 33.013454, 45.765762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.967096, 32.801182, 45.664558>,  <30.887184, 32.447395, 45.495888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967096, 32.801182, 45.664558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133327, -0.450886, 0.882568,
		0.970728, -0.120099, -0.208001,
		0.199780, 0.884465, 0.421675,
		31.027031, 33.066521, 45.791061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404251, 32.354507, 45.851318>,  <30.887184, 32.447395, 45.495888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404251, 32.354507, 45.851318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249557, 32.678932, 46.026867>,  <31.156742, 32.873589, 46.132195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249557, 32.678932, 46.026867>,  <31.404251, 32.354507, 45.851318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249557, 32.678932, 46.026867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103919, -0.511199, 0.853157,
		0.916318, 0.284336, 0.281983,
		-0.386733, 0.811066, 0.438872,
		31.133537, 32.922253, 46.158527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141857, 32.333332, 46.057018>,  <31.404251, 32.354507, 45.851318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141857, 32.333332, 46.057018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461296, 32.095287, 46.092972>,  <32.652962, 31.952459, 46.114544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461296, 32.095287, 46.092972>,  <32.141857, 32.333332, 46.057018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461296, 32.095287, 46.092972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458826, 0.505331, -0.730834,
		0.389508, 0.624885, 0.676611,
		0.798600, -0.595113, 0.089883,
		32.700874, 31.916754, 46.119938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632877, 32.787685, 46.180550>,  <32.141857, 32.333332, 46.057018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632877, 32.787685, 46.180550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826553, 32.460468, 46.056377>,  <32.942760, 32.264137, 45.981873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826553, 32.460468, 46.056377>,  <32.632877, 32.787685, 46.180550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826553, 32.460468, 46.056377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422282, 0.529222, -0.735937,
		0.766312, 0.225246, 0.601689,
		0.484194, -0.818039, -0.310431,
		32.971813, 32.215057, 45.963249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367859, 32.980171, 46.066483>,  <32.632877, 32.787685, 46.180550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367859, 32.980171, 46.066483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327377, 32.630676, 45.876183>,  <33.303089, 32.420979, 45.762001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327377, 32.630676, 45.876183>,  <33.367859, 32.980171, 46.066483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327377, 32.630676, 45.876183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567445, 0.342094, -0.748985,
		0.817169, -0.345761, 0.461178,
		-0.101204, -0.873740, -0.475749,
		33.297016, 32.368553, 45.733459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027550, 32.778706, 45.753765>,  <33.367859, 32.980171, 46.066483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027550, 32.778706, 45.753765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788692, 32.533802, 45.546474>,  <33.645378, 32.386860, 45.422100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788692, 32.533802, 45.546474>,  <34.027550, 32.778706, 45.753765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788692, 32.533802, 45.546474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633956, 0.035594, -0.772549,
		0.491443, -0.789859, 0.366888,
		-0.597145, -0.612255, -0.518228,
		33.609550, 32.350124, 45.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406258, 32.189281, 45.589680>,  <34.027550, 32.778706, 45.753765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406258, 32.189281, 45.589680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112019, 32.228481, 45.321564>,  <33.935474, 32.252003, 45.160694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112019, 32.228481, 45.321564>,  <34.406258, 32.189281, 45.589680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112019, 32.228481, 45.321564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677363, 0.118696, -0.726010,
		0.008411, -0.988083, -0.153695,
		-0.735601, 0.098001, -0.670289,
		33.891338, 32.257881, 45.120476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709141, 31.888264, 45.064331>,  <34.406258, 32.189281, 45.589680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709141, 31.888264, 45.064331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382133, 32.058460, 44.909092>,  <34.185928, 32.160580, 44.815948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382133, 32.058460, 44.909092>,  <34.709141, 31.888264, 45.064331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382133, 32.058460, 44.909092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438019, 0.021861, -0.898700,
		-0.373904, -0.904698, -0.204245,
		-0.817517, 0.425491, -0.388101,
		34.136879, 32.186108, 44.792660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560734, 31.550880, 44.410213>,  <34.709141, 31.888264, 45.064331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560734, 31.550880, 44.410213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369366, 31.901417, 44.387806>,  <34.254543, 32.111740, 44.374363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369366, 31.901417, 44.387806>,  <34.560734, 31.550880, 44.410213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369366, 31.901417, 44.387806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320148, 0.114668, -0.940402,
		-0.817689, -0.467845, -0.335419,
		-0.478425, 0.876340, -0.056017,
		34.225838, 32.164318, 44.371002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248245, 31.595770, 43.738743>,  <34.560734, 31.550880, 44.410213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248245, 31.595770, 43.738743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286121, 31.974276, 43.862434>,  <34.308846, 32.201378, 43.936649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286121, 31.974276, 43.862434>,  <34.248245, 31.595770, 43.738743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286121, 31.974276, 43.862434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467668, 0.231930, -0.852934,
		-0.878818, 0.225375, -0.420576,
		0.094686, 0.946264, 0.309225,
		34.314526, 32.258156, 43.955200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940929, 31.955339, 43.157127>,  <34.248245, 31.595770, 43.738743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940929, 31.955339, 43.157127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148537, 32.216797, 43.377445>,  <34.273102, 32.373672, 43.509636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148537, 32.216797, 43.377445>,  <33.940929, 31.955339, 43.157127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148537, 32.216797, 43.377445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323118, 0.446530, -0.834390,
		-0.791339, 0.611032, 0.020552,
		0.519016, 0.653644, 0.550792,
		34.304241, 32.412891, 43.542683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708672, 32.621937, 42.916328>,  <33.940929, 31.955339, 43.157127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708672, 32.621937, 42.916328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072006, 32.645958, 43.081890>,  <34.290009, 32.660370, 43.181229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072006, 32.645958, 43.081890>,  <33.708672, 32.621937, 42.916328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072006, 32.645958, 43.081890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334862, 0.488507, -0.805747,
		-0.250579, 0.870491, 0.423621,
		0.908338, 0.060049, 0.413905,
		34.344509, 32.663971, 43.206062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997837, 33.243565, 42.806595>,  <33.708672, 32.621937, 42.916328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997837, 33.243565, 42.806595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330975, 33.040203, 42.894142>,  <34.530857, 32.918186, 42.946671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330975, 33.040203, 42.894142>,  <33.997837, 33.243565, 42.806595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330975, 33.040203, 42.894142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420486, 0.323985, -0.847482,
		0.359952, 0.797849, 0.483604,
		0.832842, -0.508401, 0.218865,
		34.580826, 32.887684, 42.959801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497269, 33.725609, 42.702717>,  <33.997837, 33.243565, 42.806595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497269, 33.725609, 42.702717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671577, 33.365635, 42.696777>,  <34.776161, 33.149651, 42.693214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671577, 33.365635, 42.696777>,  <34.497269, 33.725609, 42.702717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671577, 33.365635, 42.696777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547747, 0.278256, -0.789016,
		0.714195, 0.335697, 0.614193,
		0.435773, -0.899934, -0.014852,
		34.802311, 33.095654, 42.692322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133995, 33.893200, 42.749096>,  <34.497269, 33.725609, 42.702717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133995, 33.893200, 42.749096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120796, 33.528168, 42.586075>,  <35.112877, 33.309147, 42.488262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120796, 33.528168, 42.586075>,  <35.133995, 33.893200, 42.749096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120796, 33.528168, 42.586075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605010, 0.306335, -0.734929,
		0.795534, -0.270826, 0.542014,
		-0.033000, -0.912585, -0.407553,
		35.110897, 33.254391, 42.463810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849121, 33.694523, 42.564087>,  <35.133995, 33.893200, 42.749096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849121, 33.694523, 42.564087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646088, 33.416031, 42.361065>,  <35.524265, 33.248936, 42.239250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646088, 33.416031, 42.361065>,  <35.849121, 33.694523, 42.564087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646088, 33.416031, 42.361065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688553, 0.026331, -0.724708,
		0.517930, -0.717333, 0.466027,
		-0.507586, -0.696232, -0.507560,
		35.493813, 33.207161, 42.208797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.754820, 39.788677, 29.015171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755018, 39.663963, 28.635111>,  <28.755136, 39.589134, 28.407074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755018, 39.663963, 28.635111>,  <28.754820, 39.788677, 29.015171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755018, 39.663963, 28.635111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812084, -0.554577, 0.181559,
		-0.583540, 0.771513, -0.253473,
		0.000496, -0.311789, -0.950151,
		28.755167, 39.570427, 28.350065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097052, 39.865662, 28.654413>,  <28.754820, 39.788677, 29.015171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097052, 39.865662, 28.654413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292385, 39.567741, 28.472513>,  <28.409586, 39.388988, 28.363373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292385, 39.567741, 28.472513>,  <28.097052, 39.865662, 28.654413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292385, 39.567741, 28.472513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692361, -0.647882, 0.317625,
		-0.531193, 0.159745, -0.832055,
		0.488335, -0.744803, -0.454751,
		28.438885, 39.344299, 28.336088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504774, 39.428726, 28.320784>,  <28.097052, 39.865662, 28.654413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504774, 39.428726, 28.320784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.824266, 39.190685, 28.356308>,  <28.015963, 39.047863, 28.377623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.824266, 39.190685, 28.356308>,  <27.504774, 39.428726, 28.320784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824266, 39.190685, 28.356308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573870, -0.709094, 0.409707,
		-0.180840, -0.378211, -0.907884,
		0.798730, -0.595098, 0.088811,
		28.063885, 39.012157, 28.382952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325686, 38.746758, 28.071241>,  <27.504774, 39.428726, 28.320784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325686, 38.746758, 28.071241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641651, 38.664635, 28.302372>,  <27.831230, 38.615360, 28.441050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641651, 38.664635, 28.302372>,  <27.325686, 38.746758, 28.071241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641651, 38.664635, 28.302372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558531, -0.629860, 0.539740,
		0.253136, -0.749083, -0.612207,
		0.789915, -0.205308, 0.577826,
		27.878626, 38.603043, 28.475719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532726, 38.005123, 27.962070>,  <27.325686, 38.746758, 28.071241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532726, 38.005123, 27.962070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664804, 38.124157, 28.320381>,  <27.744051, 38.195576, 28.535368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664804, 38.124157, 28.320381>,  <27.532726, 38.005123, 27.962070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664804, 38.124157, 28.320381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578892, -0.685733, 0.441195,
		0.745557, -0.664238, -0.054156,
		0.330195, 0.297585, 0.895776,
		27.763863, 38.213432, 28.589113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497787, 37.364136, 28.294542>,  <27.532726, 38.005123, 27.962070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497787, 37.364136, 28.294542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514982, 37.660892, 28.562199>,  <27.525299, 37.838947, 28.722792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514982, 37.660892, 28.562199>,  <27.497787, 37.364136, 28.294542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514982, 37.660892, 28.562199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400874, -0.600672, 0.691732,
		0.915124, -0.297978, 0.271583,
		0.042989, 0.741891, 0.669141,
		27.527880, 37.883461, 28.762941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692905, 36.993996, 28.861824>,  <27.497787, 37.364136, 28.294542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692905, 36.993996, 28.861824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558897, 37.342224, 29.005974>,  <27.478493, 37.551163, 29.092463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558897, 37.342224, 29.005974>,  <27.692905, 36.993996, 28.861824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558897, 37.342224, 29.005974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558561, -0.491527, 0.668140,
		0.758795, 0.022551, 0.650939,
		-0.335021, 0.870570, 0.360372,
		27.458391, 37.603394, 29.114086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624111, 36.822044, 29.540956>,  <27.692905, 36.993996, 28.861824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624111, 36.822044, 29.540956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415716, 37.163170, 29.526585>,  <27.290680, 37.367844, 29.517962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415716, 37.163170, 29.526585>,  <27.624111, 36.822044, 29.540956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415716, 37.163170, 29.526585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582742, -0.324614, 0.745008,
		0.623687, 0.409075, 0.666087,
		-0.520985, 0.852809, -0.035928,
		27.259420, 37.419014, 29.515806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591930, 37.096355, 30.232758>,  <27.624111, 36.822044, 29.540956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591930, 37.096355, 30.232758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.278507, 37.257576, 30.043617>,  <27.090454, 37.354309, 29.930134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.278507, 37.257576, 30.043617>,  <27.591930, 37.096355, 30.232758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278507, 37.257576, 30.043617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582474, -0.211637, 0.784815,
		0.216251, 0.890369, 0.400598,
		-0.783556, 0.403054, -0.472850,
		27.043440, 37.378490, 29.901762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320337, 37.632927, 30.619034>,  <27.591930, 37.096355, 30.232758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320337, 37.632927, 30.619034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017836, 37.468777, 30.415203>,  <26.836334, 37.370285, 30.292906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017836, 37.468777, 30.415203>,  <27.320337, 37.632927, 30.619034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017836, 37.468777, 30.415203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445145, -0.248068, 0.860412,
		-0.479504, 0.877526, 0.004925,
		-0.756255, -0.410379, -0.509576,
		26.790958, 37.345665, 30.262331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692026, 37.857349, 30.973930>,  <27.320337, 37.632927, 30.619034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692026, 37.857349, 30.973930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618017, 37.517044, 30.777168>,  <26.573612, 37.312862, 30.659111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618017, 37.517044, 30.777168>,  <26.692026, 37.857349, 30.973930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618017, 37.517044, 30.777168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468928, -0.363457, 0.804988,
		-0.863640, 0.379608, -0.331699,
		-0.185022, -0.850762, -0.491905,
		26.562511, 37.261814, 30.629597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962023, 37.761150, 30.952074>,  <26.692026, 37.857349, 30.973930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962023, 37.761150, 30.952074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.125296, 37.401279, 30.890148>,  <26.223259, 37.185356, 30.852993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.125296, 37.401279, 30.890148>,  <25.962023, 37.761150, 30.952074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125296, 37.401279, 30.890148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579059, -0.386264, 0.717977,
		-0.705747, -0.203419, -0.678632,
		0.408182, -0.899678, -0.154813,
		26.247749, 37.131374, 30.843704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362654, 37.234520, 30.961443>,  <25.962023, 37.761150, 30.952074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362654, 37.234520, 30.961443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690123, 37.016266, 31.033060>,  <25.886604, 36.885311, 31.076031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690123, 37.016266, 31.033060>,  <25.362654, 37.234520, 30.961443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690123, 37.016266, 31.033060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459868, -0.436181, 0.773477,
		-0.343944, -0.715560, -0.608011,
		0.818672, -0.545638, 0.179042,
		25.935724, 36.852573, 31.086773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184166, 36.486347, 30.921537>,  <25.362654, 37.234520, 30.961443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184166, 36.486347, 30.921537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521223, 36.497833, 31.136621>,  <25.723457, 36.504726, 31.265673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521223, 36.497833, 31.136621>,  <25.184166, 36.486347, 30.921537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521223, 36.497833, 31.136621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397037, -0.641431, 0.656450,
		0.363755, -0.766643, -0.529094,
		0.842641, 0.028717, 0.537710,
		25.774015, 36.506447, 31.297934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211182, 35.821602, 31.072628>,  <25.184166, 36.486347, 30.921537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211182, 35.821602, 31.072628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.472261, 36.013069, 31.307528>,  <25.628908, 36.127949, 31.448467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.472261, 36.013069, 31.307528>,  <25.211182, 35.821602, 31.072628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472261, 36.013069, 31.307528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345174, -0.502124, 0.792923,
		0.674419, -0.720242, -0.162511,
		0.652697, 0.478667, 0.587251,
		25.668070, 36.156670, 31.483704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551725, 35.258423, 31.455313>,  <25.211182, 35.821602, 31.072628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551725, 35.258423, 31.455313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.593719, 35.598476, 31.661713>,  <25.618916, 35.802509, 31.785553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.593719, 35.598476, 31.661713>,  <25.551725, 35.258423, 31.455313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593719, 35.598476, 31.661713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441415, -0.425116, 0.790208,
		0.891140, -0.310730, 0.330630,
		0.104985, 0.850131, 0.515999,
		25.625216, 35.853516, 31.816513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949205, 35.207539, 32.035141>,  <25.551725, 35.258423, 31.455313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949205, 35.207539, 32.035141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765388, 35.545967, 32.143204>,  <25.655098, 35.749023, 32.208042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765388, 35.545967, 32.143204>,  <25.949205, 35.207539, 32.035141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765388, 35.545967, 32.143204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122247, -0.361538, 0.924308,
		0.879701, 0.391735, 0.269572,
		-0.459544, 0.846070, 0.270157,
		25.627525, 35.799789, 32.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325008, 35.496323, 32.543720>,  <25.949205, 35.207539, 32.035141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325008, 35.496323, 32.543720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941696, 35.604412, 32.580982>,  <25.711708, 35.669266, 32.603340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941696, 35.604412, 32.580982>,  <26.325008, 35.496323, 32.543720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941696, 35.604412, 32.580982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020181, -0.389074, 0.920986,
		0.285116, 0.880683, 0.378295,
		-0.958281, 0.270222, 0.093158,
		25.654211, 35.685478, 32.608929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179699, 35.372311, 33.128567>,  <26.325008, 35.496323, 32.543720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179699, 35.372311, 33.128567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.809414, 35.511475, 33.069218>,  <25.587242, 35.594975, 33.033607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.809414, 35.511475, 33.069218>,  <26.179699, 35.372311, 33.128567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809414, 35.511475, 33.069218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233700, -0.217688, 0.947627,
		0.297392, 0.911904, 0.282823,
		-0.925712, 0.347912, -0.148373,
		25.531700, 35.615849, 33.024704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073181, 35.909290, 33.627567>,  <26.179699, 35.372311, 33.128567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073181, 35.909290, 33.627567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.714947, 35.762264, 33.527309>,  <25.500006, 35.674049, 33.467155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.714947, 35.762264, 33.527309>,  <26.073181, 35.909290, 33.627567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714947, 35.762264, 33.527309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174688, -0.227608, 0.957956,
		-0.409161, 0.901715, 0.139633,
		-0.895585, -0.367566, -0.250647,
		25.446272, 35.651993, 33.452114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118490, 36.468540, 34.143700>,  <26.073181, 35.909290, 33.627567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118490, 36.468540, 34.143700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.475168, 36.302113, 34.214989>,  <26.689175, 36.202255, 34.257763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.475168, 36.302113, 34.214989>,  <26.118490, 36.468540, 34.143700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475168, 36.302113, 34.214989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450073, 0.773161, -0.446830,
		0.048116, 0.478651, 0.876686,
		0.891695, -0.416072, 0.178227,
		26.742676, 36.177292, 34.268456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448746, 37.040802, 34.401257>,  <26.118490, 36.468540, 34.143700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448746, 37.040802, 34.401257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683533, 36.754089, 34.250687>,  <26.824406, 36.582062, 34.160347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683533, 36.754089, 34.250687>,  <26.448746, 37.040802, 34.401257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683533, 36.754089, 34.250687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484405, 0.683467, -0.546100,
		0.648705, 0.138203, 0.748386,
		0.586969, -0.716780, -0.376422,
		26.859623, 36.539055, 34.137760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053062, 37.303665, 34.568993>,  <26.448746, 37.040802, 34.401257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053062, 37.303665, 34.568993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.119707, 37.045586, 34.270744>,  <27.159693, 36.890736, 34.091793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.119707, 37.045586, 34.270744>,  <27.053062, 37.303665, 34.568993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119707, 37.045586, 34.270744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654806, 0.637770, -0.405560,
		0.737205, -0.420668, 0.528741,
		0.166609, -0.645203, -0.745623,
		27.169689, 36.852024, 34.047058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771276, 37.351768, 34.466091>,  <27.053062, 37.303665, 34.568993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771276, 37.351768, 34.466091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637424, 37.193176, 34.124138>,  <27.557114, 37.098022, 33.918964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637424, 37.193176, 34.124138>,  <27.771276, 37.351768, 34.466091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637424, 37.193176, 34.124138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556322, 0.649110, -0.518807,
		0.760611, -0.649199, 0.003360,
		-0.334628, -0.396480, -0.854884,
		27.537037, 37.074234, 33.867672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314234, 37.370556, 34.020088>,  <27.771276, 37.351768, 34.466091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314234, 37.370556, 34.020088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.996105, 37.379150, 33.777767>,  <27.805227, 37.384308, 33.632374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.996105, 37.379150, 33.777767>,  <28.314234, 37.370556, 34.020088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996105, 37.379150, 33.777767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466654, 0.659561, -0.589249,
		0.386908, -0.751344, -0.534588,
		-0.795322, 0.021482, -0.605807,
		27.757509, 37.385593, 33.596024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596884, 37.377396, 33.359447>,  <28.314234, 37.370556, 34.020088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596884, 37.377396, 33.359447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232405, 37.532978, 33.305141>,  <28.013718, 37.626328, 33.272560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232405, 37.532978, 33.305141>,  <28.596884, 37.377396, 33.359447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232405, 37.532978, 33.305141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366926, 0.616418, -0.696702,
		-0.187298, -0.684650, -0.704397,
		-0.911199, 0.388953, -0.135762,
		27.959045, 37.649662, 33.264412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571627, 37.485977, 32.679600>,  <28.596884, 37.377396, 33.359447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571627, 37.485977, 32.679600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257271, 37.713154, 32.777431>,  <28.068657, 37.849461, 32.836132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257271, 37.713154, 32.777431>,  <28.571627, 37.485977, 32.679600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257271, 37.713154, 32.777431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330182, 0.719829, -0.610595,
		-0.522839, -0.399104, -0.753230,
		-0.785888, 0.567946, 0.244578,
		28.021505, 37.883537, 32.850803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302952, 37.804749, 32.043724>,  <28.571627, 37.485977, 32.679600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302952, 37.804749, 32.043724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191864, 38.013287, 32.366482>,  <28.125212, 38.138409, 32.560135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191864, 38.013287, 32.366482>,  <28.302952, 37.804749, 32.043724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191864, 38.013287, 32.366482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273206, 0.848112, -0.453943,
		-0.920994, 0.094378, -0.377973,
		-0.277721, 0.521343, 0.806890,
		28.108547, 38.169689, 32.608547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908533, 38.291969, 31.761299>,  <28.302952, 37.804749, 32.043724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908533, 38.291969, 31.761299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002384, 38.435471, 32.122684>,  <28.058695, 38.521572, 32.339516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002384, 38.435471, 32.122684>,  <27.908533, 38.291969, 31.761299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002384, 38.435471, 32.122684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189080, 0.894813, -0.404423,
		-0.953519, 0.265715, 0.142114,
		0.234626, 0.358754, 0.903463,
		28.072773, 38.543098, 32.393723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548538, 38.940575, 31.791050>,  <27.908533, 38.291969, 31.761299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548538, 38.940575, 31.791050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846542, 38.952911, 32.057587>,  <28.025345, 38.960312, 32.217506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846542, 38.952911, 32.057587>,  <27.548538, 38.940575, 31.791050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846542, 38.952911, 32.057587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461108, 0.698024, -0.547852,
		-0.482015, 0.715410, 0.505816,
		0.745010, 0.030837, 0.666340,
		28.070045, 38.962162, 32.257488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661888, 39.671993, 31.990555>,  <27.548538, 38.940575, 31.791050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661888, 39.671993, 31.990555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001097, 39.495052, 32.107300>,  <28.204622, 39.388885, 32.177345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001097, 39.495052, 32.107300>,  <27.661888, 39.671993, 31.990555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001097, 39.495052, 32.107300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529019, 0.739462, -0.416335,
		-0.031654, 0.507461, 0.861093,
		0.848019, -0.442356, 0.291863,
		28.255503, 39.362347, 32.194859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046360, 40.272346, 32.082626>,  <27.661888, 39.671993, 31.990555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046360, 40.272346, 32.082626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327408, 39.987942, 32.093864>,  <28.496037, 39.817299, 32.100609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327408, 39.987942, 32.093864>,  <28.046360, 40.272346, 32.082626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327408, 39.987942, 32.093864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676518, 0.655254, -0.336102,
		0.220561, 0.255161, 0.941406,
		0.702621, -0.711010, 0.028097,
		28.538195, 39.774639, 32.102295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689953, 40.588688, 32.322823>,  <28.046360, 40.272346, 32.082626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689953, 40.588688, 32.322823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804293, 40.238213, 32.167603>,  <28.872896, 40.027927, 32.074471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804293, 40.238213, 32.167603>,  <28.689953, 40.588688, 32.322823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804293, 40.238213, 32.167603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744868, 0.457922, -0.485262,
		0.602878, -0.150333, 0.783542,
		0.285850, -0.876189, -0.388049,
		28.890047, 39.975357, 32.051189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430883, 40.424171, 32.498589>,  <28.689953, 40.588688, 32.322823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430883, 40.424171, 32.498589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334072, 40.230957, 32.161995>,  <29.275986, 40.115028, 31.960037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334072, 40.230957, 32.161995>,  <29.430883, 40.424171, 32.498589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334072, 40.230957, 32.161995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768464, 0.434046, -0.470177,
		0.592355, -0.760449, 0.266142,
		-0.242028, -0.483033, -0.841488,
		29.261463, 40.086048, 31.909548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113495, 40.145123, 32.189537>,  <29.430883, 40.424171, 32.498589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113495, 40.145123, 32.189537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.851946, 40.187836, 31.889925>,  <29.695017, 40.213463, 31.710157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.851946, 40.187836, 31.889925>,  <30.113495, 40.145123, 32.189537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851946, 40.187836, 31.889925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721524, 0.385968, -0.574832,
		0.227719, -0.916311, -0.329422,
		-0.653871, 0.106786, -0.749032,
		29.655785, 40.219872, 31.665215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505781, 39.872032, 31.626816>,  <30.113495, 40.145123, 32.189537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505781, 39.872032, 31.626816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215006, 40.089245, 31.458681>,  <30.040541, 40.219570, 31.357800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215006, 40.089245, 31.458681>,  <30.505781, 39.872032, 31.626816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215006, 40.089245, 31.458681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624353, 0.267794, -0.733805,
		-0.285913, -0.795868, -0.533711,
		-0.726937, 0.543028, -0.420337,
		29.996925, 40.252151, 31.332581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570189, 39.749401, 30.859045>,  <30.505781, 39.872032, 31.626816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570189, 39.749401, 30.859045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355263, 40.085361, 30.889677>,  <30.226307, 40.286938, 30.908056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355263, 40.085361, 30.889677>,  <30.570189, 39.749401, 30.859045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355263, 40.085361, 30.889677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602239, 0.445666, -0.662337,
		-0.590424, -0.309766, -0.745282,
		-0.537316, 0.839897, 0.076579,
		30.194067, 40.337330, 30.912651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411057, 39.875969, 30.235903>,  <30.570189, 39.749401, 30.859045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411057, 39.875969, 30.235903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.382023, 40.215160, 30.445919>,  <30.364603, 40.418674, 30.571930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.382023, 40.215160, 30.445919>,  <30.411057, 39.875969, 30.235903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382023, 40.215160, 30.445919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590772, 0.460695, -0.662382,
		-0.803567, 0.262102, -0.534399,
		-0.072583, 0.847976, 0.525042,
		30.360249, 40.469555, 30.603432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229023, 40.342175, 29.700886>,  <30.411057, 39.875969, 30.235903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229023, 40.342175, 29.700886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336029, 40.589752, 29.996277>,  <30.400232, 40.738297, 30.173512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336029, 40.589752, 29.996277>,  <30.229023, 40.342175, 29.700886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336029, 40.589752, 29.996277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557207, 0.525894, -0.642617,
		-0.786102, 0.583394, -0.204193,
		0.267515, 0.618940, 0.738477,
		30.416285, 40.775433, 30.217819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054947, 41.061897, 29.466591>,  <30.229023, 40.342175, 29.700886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054947, 41.061897, 29.466591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343214, 41.066975, 29.743858>,  <30.516174, 41.070023, 29.910219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343214, 41.066975, 29.743858>,  <30.054947, 41.061897, 29.466591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343214, 41.066975, 29.743858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578992, 0.538912, -0.611834,
		-0.381325, 0.842266, 0.381023,
		0.720666, 0.012698, 0.693166,
		30.559414, 41.070786, 29.951809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142738, 41.817249, 29.587372>,  <30.054947, 41.061897, 29.466591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142738, 41.817249, 29.587372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468914, 41.602890, 29.674891>,  <30.664619, 41.474274, 29.727402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468914, 41.602890, 29.674891>,  <30.142738, 41.817249, 29.587372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468914, 41.602890, 29.674891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523346, 0.521052, -0.674250,
		0.247329, 0.664314, 0.705348,
		0.815437, -0.535903, 0.218795,
		30.713545, 41.442120, 29.740528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680157, 42.346863, 29.710154>,  <30.142738, 41.817249, 29.587372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680157, 42.346863, 29.710154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868753, 41.997505, 29.661350>,  <30.981911, 41.787891, 29.632069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868753, 41.997505, 29.661350>,  <30.680157, 42.346863, 29.710154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868753, 41.997505, 29.661350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617122, 0.425603, -0.661832,
		0.629964, 0.236755, 0.739657,
		0.471492, -0.873389, -0.122008,
		31.010201, 41.735489, 29.624748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.102753, 27.227293, 44.570423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723465, 27.180828, 44.452183>,  <33.495892, 27.152948, 44.381241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723465, 27.180828, 44.452183>,  <34.102753, 27.227293, 44.570423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723465, 27.180828, 44.452183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297928, 0.002847, 0.954584,
		-0.110045, 0.993226, -0.037308,
		-0.948224, -0.116163, -0.295597,
		33.438999, 27.145979, 44.363503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693089, 27.608892, 44.930740>,  <34.102753, 27.227293, 44.570423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693089, 27.608892, 44.930740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382282, 27.378277, 44.829662>,  <33.195801, 27.239908, 44.769016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382282, 27.378277, 44.829662>,  <33.693089, 27.608892, 44.930740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382282, 27.378277, 44.829662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376162, 0.103400, 0.920766,
		-0.504730, 0.810500, -0.297215,
		-0.777013, -0.576540, -0.252691,
		33.149178, 27.205315, 44.753857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966385, 27.913380, 45.166149>,  <33.693089, 27.608892, 44.930740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966385, 27.913380, 45.166149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924946, 27.517494, 45.126690>,  <32.900082, 27.279963, 45.103016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924946, 27.517494, 45.126690>,  <32.966385, 27.913380, 45.166149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924946, 27.517494, 45.126690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376972, -0.052707, 0.924724,
		-0.920412, 0.132990, -0.367634,
		-0.103602, -0.989715, -0.098646,
		32.893864, 27.220579, 45.097095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445774, 27.797010, 45.562843>,  <32.966385, 27.913380, 45.166149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445774, 27.797010, 45.562843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554089, 27.419737, 45.485821>,  <32.619080, 27.193373, 45.439606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554089, 27.419737, 45.485821>,  <32.445774, 27.797010, 45.562843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554089, 27.419737, 45.485821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353975, -0.283578, 0.891227,
		-0.895195, -0.173175, -0.410654,
		0.270791, -0.943183, -0.192558,
		32.635326, 27.136782, 45.428055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906631, 27.333576, 45.684856>,  <32.445774, 27.797010, 45.562843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906631, 27.333576, 45.684856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239010, 27.117081, 45.736378>,  <32.438438, 26.987183, 45.767292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239010, 27.117081, 45.736378>,  <31.906631, 27.333576, 45.684856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239010, 27.117081, 45.736378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269846, -0.189616, 0.944049,
		-0.486533, -0.819211, -0.303611,
		0.830945, -0.541239, 0.128806,
		32.488293, 26.954710, 45.775021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752216, 26.638659, 45.837593>,  <31.906631, 27.333576, 45.684856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752216, 26.638659, 45.837593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115307, 26.695419, 45.995529>,  <32.333160, 26.729475, 46.090290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115307, 26.695419, 45.995529>,  <31.752216, 26.638659, 45.837593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115307, 26.695419, 45.995529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368761, -0.179039, 0.912119,
		0.200125, -0.973554, -0.110190,
		0.907725, 0.141904, 0.394839,
		32.387623, 26.737989, 46.113979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800173, 26.139858, 46.345833>,  <31.752216, 26.638659, 45.837593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800173, 26.139858, 46.345833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074230, 26.417387, 46.434547>,  <32.238667, 26.583904, 46.487778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074230, 26.417387, 46.434547>,  <31.800173, 26.139858, 46.345833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074230, 26.417387, 46.434547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093861, -0.217855, 0.971457,
		0.722335, -0.686406, -0.084139,
		0.685144, 0.693820, 0.221791,
		32.279774, 26.625532, 46.501083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154324, 25.838402, 46.876396>,  <31.800173, 26.139858, 46.345833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154324, 25.838402, 46.876396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283566, 26.215036, 46.914391>,  <32.361111, 26.441017, 46.937187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283566, 26.215036, 46.914391>,  <32.154324, 25.838402, 46.876396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283566, 26.215036, 46.914391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177714, -0.038213, 0.983340,
		0.929529, -0.334597, 0.154987,
		0.323100, 0.941586, 0.094983,
		32.380497, 26.497513, 46.942886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663742, 25.971119, 47.483204>,  <32.154324, 25.838402, 46.876396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663742, 25.971119, 47.483204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474277, 26.314434, 47.404224>,  <32.360600, 26.520424, 47.356838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474277, 26.314434, 47.404224>,  <32.663742, 25.971119, 47.483204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474277, 26.314434, 47.404224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212029, 0.106464, 0.971447,
		0.854804, 0.502000, 0.131555,
		-0.473660, 0.858290, -0.197444,
		32.332180, 26.571920, 47.344990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793114, 26.252663, 48.141811>,  <32.663742, 25.971119, 47.483204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793114, 26.252663, 48.141811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500740, 26.472610, 47.980133>,  <32.325314, 26.604578, 47.883125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500740, 26.472610, 47.980133>,  <32.793114, 26.252663, 48.141811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500740, 26.472610, 47.980133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427623, 0.092555, 0.899206,
		0.531855, 0.830108, 0.167485,
		-0.730937, 0.549868, -0.404199,
		32.281460, 26.637571, 47.858871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803616, 26.764179, 48.534779>,  <32.793114, 26.252663, 48.141811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803616, 26.764179, 48.534779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451687, 26.817986, 48.352428>,  <32.240528, 26.850269, 48.243019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451687, 26.817986, 48.352428>,  <32.803616, 26.764179, 48.534779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451687, 26.817986, 48.352428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438847, 0.138489, 0.887825,
		0.182559, 0.981186, -0.062814,
		-0.879821, 0.134515, -0.455873,
		32.187740, 26.858339, 48.215668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428577, 27.366962, 48.852016>,  <32.803616, 26.764179, 48.534779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428577, 27.366962, 48.852016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150875, 27.137980, 48.677525>,  <31.984253, 27.000589, 48.572830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150875, 27.137980, 48.677525>,  <32.428577, 27.366962, 48.852016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150875, 27.137980, 48.677525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525488, -0.010991, 0.850730,
		-0.491800, 0.819862, -0.293188,
		-0.694259, -0.572456, -0.436233,
		31.942596, 26.966244, 48.546654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929163, 27.631222, 49.120937>,  <32.428577, 27.366962, 48.852016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929163, 27.631222, 49.120937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818819, 27.262705, 49.011303>,  <31.752613, 27.041595, 48.945522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818819, 27.262705, 49.011303>,  <31.929163, 27.631222, 49.120937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818819, 27.262705, 49.011303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732883, 0.017100, 0.680139,
		-0.621919, 0.388499, -0.679916,
		-0.275860, -0.921290, -0.274089,
		31.736061, 26.986317, 48.929077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206614, 27.649286, 48.725140>,  <31.929163, 27.631222, 49.120937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206614, 27.649286, 48.725140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261818, 27.313990, 48.936157>,  <31.294941, 27.112812, 49.062767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261818, 27.313990, 48.936157>,  <31.206614, 27.649286, 48.725140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261818, 27.313990, 48.936157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844209, 0.178980, 0.505250,
		-0.517942, -0.515086, -0.682952,
		0.138012, -0.838244, 0.527541,
		31.303221, 27.062517, 49.094421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954401, 27.761389, 49.548771>,  <31.206614, 27.649286, 48.725140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954401, 27.761389, 49.548771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.937891, 28.012798, 49.859447>,  <30.927986, 28.163643, 50.045853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.937891, 28.012798, 49.859447>,  <30.954401, 27.761389, 49.548771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937891, 28.012798, 49.859447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249172, 0.759271, -0.601182,
		-0.967579, 0.168719, -0.187948,
		-0.041273, 0.628523, 0.776695,
		30.925508, 28.201355, 50.092457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640869, 28.384377, 49.250282>,  <30.954401, 27.761389, 49.548771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640869, 28.384377, 49.250282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848091, 28.506296, 49.569962>,  <30.972425, 28.579449, 49.761768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848091, 28.506296, 49.569962>,  <30.640869, 28.384377, 49.250282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848091, 28.506296, 49.569962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204426, 0.863155, -0.461708,
		-0.830558, 0.402567, 0.384854,
		0.518057, 0.304801, 0.799195,
		31.003508, 28.597736, 49.809719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307199, 28.985325, 49.568356>,  <30.640869, 28.384377, 49.250282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307199, 28.985325, 49.568356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698540, 28.977438, 49.650761>,  <30.933344, 28.972706, 49.700203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698540, 28.977438, 49.650761>,  <30.307199, 28.985325, 49.568356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698540, 28.977438, 49.650761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114085, 0.881918, -0.457389,
		-0.172665, 0.470990, 0.865075,
		0.978351, -0.019717, 0.206010,
		30.992044, 28.971523, 49.712563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401888, 29.668800, 49.712067>,  <30.307199, 28.985325, 49.568356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401888, 29.668800, 49.712067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773539, 29.528126, 49.666386>,  <30.996529, 29.443720, 49.638977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773539, 29.528126, 49.666386>,  <30.401888, 29.668800, 49.712067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773539, 29.528126, 49.666386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265209, 0.849040, -0.456940,
		0.257664, 0.394267, 0.882135,
		0.929125, -0.351687, -0.114204,
		31.052277, 29.422619, 49.632126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792505, 30.229130, 49.835587>,  <30.401888, 29.668800, 49.712067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792505, 30.229130, 49.835587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045927, 29.982065, 49.649212>,  <31.197981, 29.833826, 49.537388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045927, 29.982065, 49.649212>,  <30.792505, 30.229130, 49.835587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045927, 29.982065, 49.649212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339067, 0.762969, -0.550374,
		0.695442, 0.190709, 0.692813,
		0.633556, -0.617663, -0.465938,
		31.235994, 29.796766, 49.509430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319557, 30.690226, 49.639923>,  <30.792505, 30.229130, 49.835587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319557, 30.690226, 49.639923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.394983, 30.356060, 49.433418>,  <31.440239, 30.155560, 49.309517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.394983, 30.356060, 49.433418>,  <31.319557, 30.690226, 49.639923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394983, 30.356060, 49.433418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402701, 0.545237, -0.735220,
		0.895699, -0.069262, 0.439234,
		0.188564, -0.835416, -0.516260,
		31.451553, 30.105434, 49.278542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068657, 30.644125, 49.538048>,  <31.319557, 30.690226, 49.639923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068657, 30.644125, 49.538048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899969, 30.438334, 49.239395>,  <31.798756, 30.314859, 49.060204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899969, 30.438334, 49.239395>,  <32.068657, 30.644125, 49.538048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899969, 30.438334, 49.239395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505578, 0.550129, -0.664642,
		0.752689, -0.657776, 0.028107,
		-0.421723, -0.514479, -0.746633,
		31.773453, 30.283991, 49.015404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595982, 30.510540, 49.025963>,  <32.068657, 30.644125, 49.538048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595982, 30.510540, 49.025963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278542, 30.465685, 48.786755>,  <32.088078, 30.438772, 48.643230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278542, 30.465685, 48.786755>,  <32.595982, 30.510540, 49.025963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278542, 30.465685, 48.786755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493648, 0.455912, -0.740578,
		0.355691, -0.882932, -0.306455,
		-0.793597, -0.112136, -0.598021,
		32.040462, 30.432043, 48.607349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832615, 30.402714, 48.435032>,  <32.595982, 30.510540, 49.025963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832615, 30.402714, 48.435032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468498, 30.498251, 48.299786>,  <32.250027, 30.555574, 48.218636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468498, 30.498251, 48.299786>,  <32.832615, 30.402714, 48.435032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468498, 30.498251, 48.299786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412436, 0.453017, -0.790362,
		-0.035601, -0.858911, -0.510886,
		-0.910291, 0.238846, -0.338118,
		32.195412, 30.569904, 48.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804287, 30.184233, 47.705582>,  <32.832615, 30.402714, 48.435032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804287, 30.184233, 47.705582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485508, 30.423176, 47.741455>,  <32.294243, 30.566542, 47.762978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485508, 30.423176, 47.741455>,  <32.804287, 30.184233, 47.705582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485508, 30.423176, 47.741455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195764, 0.395867, -0.897199,
		-0.571451, -0.697461, -0.432425,
		-0.796944, 0.597358, 0.089681,
		32.246426, 30.602383, 47.768360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320122, 30.056742, 47.151909>,  <32.804287, 30.184233, 47.705582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320122, 30.056742, 47.151909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253899, 30.440542, 47.243073>,  <32.214165, 30.670822, 47.297771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253899, 30.440542, 47.243073>,  <32.320122, 30.056742, 47.151909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253899, 30.440542, 47.243073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304844, 0.269573, -0.913455,
		-0.937902, -0.081754, -0.337129,
		-0.165559, 0.959503, 0.227911,
		32.204231, 30.728394, 47.311447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943401, 30.394852, 46.616680>,  <32.320122, 30.056742, 47.151909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943401, 30.394852, 46.616680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106930, 30.695601, 46.823582>,  <32.205048, 30.876049, 46.947723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106930, 30.695601, 46.823582>,  <31.943401, 30.394852, 46.616680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106930, 30.695601, 46.823582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216969, 0.470459, -0.855332,
		-0.886447, 0.461907, 0.029201,
		0.408822, 0.751871, 0.517257,
		32.229576, 30.921162, 46.978760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771868, 30.979067, 46.183884>,  <31.943401, 30.394852, 46.616680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771868, 30.979067, 46.183884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064190, 31.136894, 46.406681>,  <32.239582, 31.231590, 46.540359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064190, 31.136894, 46.406681>,  <31.771868, 30.979067, 46.183884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064190, 31.136894, 46.406681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344828, 0.490810, -0.800125,
		-0.589082, 0.776801, 0.222628,
		0.730805, 0.394571, 0.556990,
		32.283432, 31.255266, 46.573776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834505, 31.685993, 46.078938>,  <31.771868, 30.979067, 46.183884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834505, 31.685993, 46.078938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210766, 31.642565, 46.207554>,  <32.436523, 31.616508, 46.284725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210766, 31.642565, 46.207554>,  <31.834505, 31.685993, 46.078938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210766, 31.642565, 46.207554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310498, 0.657768, -0.686246,
		-0.136994, 0.745355, 0.652440,
		0.940651, -0.108570, 0.321542,
		32.492962, 31.609993, 46.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405249, 32.116943, 46.572544>,  <31.834505, 31.685993, 46.078938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405249, 32.116943, 46.572544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187078, 32.452202, 46.570560>,  <31.056177, 32.653355, 46.569370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187078, 32.452202, 46.570560>,  <31.405249, 32.116943, 46.572544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187078, 32.452202, 46.570560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480171, -0.307614, 0.821468,
		0.686984, 0.450431, 0.570233,
		-0.545426, 0.838145, -0.004958,
		31.023451, 32.703644, 46.569073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566139, 32.509708, 47.197727>,  <31.405249, 32.116943, 46.572544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566139, 32.509708, 47.197727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208853, 32.626007, 47.060535>,  <30.994482, 32.695786, 46.978222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208853, 32.626007, 47.060535>,  <31.566139, 32.509708, 47.197727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208853, 32.626007, 47.060535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381716, -0.087232, 0.920154,
		0.237615, 0.952815, 0.188900,
		-0.893215, 0.290749, -0.342977,
		30.940887, 32.713230, 46.957642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243214, 32.859875, 47.682457>,  <31.566139, 32.509708, 47.197727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243214, 32.859875, 47.682457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916985, 32.775932, 47.466755>,  <30.721247, 32.725567, 47.337334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916985, 32.775932, 47.466755>,  <31.243214, 32.859875, 47.682457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916985, 32.775932, 47.466755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514377, -0.163939, 0.841748,
		-0.265054, 0.963889, 0.025757,
		-0.815575, -0.209860, -0.539255,
		30.672312, 32.712975, 47.304977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631229, 33.267818, 48.054920>,  <31.243214, 32.859875, 47.682457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631229, 33.267818, 48.054920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.519522, 32.957340, 47.828815>,  <30.452497, 32.771053, 47.693153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.519522, 32.957340, 47.828815>,  <30.631229, 33.267818, 48.054920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519522, 32.957340, 47.828815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526825, -0.368311, 0.766030,
		-0.802785, 0.511725, -0.306063,
		-0.279270, -0.776199, -0.565265,
		30.435741, 32.724480, 47.659237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780668, 33.138203, 48.148468>,  <30.631229, 33.267818, 48.054920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780668, 33.138203, 48.148468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.905664, 32.792183, 47.991478>,  <29.980661, 32.584572, 47.897285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.905664, 32.792183, 47.991478>,  <29.780668, 33.138203, 48.148468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905664, 32.792183, 47.991478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602525, -0.499915, 0.622132,
		-0.734380, 0.042067, -0.677433,
		0.312488, -0.865052, -0.392474,
		29.999411, 32.532669, 47.873737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187674, 32.874313, 48.050987>,  <29.780668, 33.138203, 48.148468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187674, 32.874313, 48.050987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450577, 32.575790, 48.093014>,  <29.608318, 32.396675, 48.118229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450577, 32.575790, 48.093014>,  <29.187674, 32.874313, 48.050987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450577, 32.575790, 48.093014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701250, -0.554494, 0.448090,
		-0.276155, -0.368187, -0.887793,
		0.657257, -0.746308, 0.105065,
		29.647755, 32.351898, 48.124535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921854, 32.189293, 47.830395>,  <29.187674, 32.874313, 48.050987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921854, 32.189293, 47.830395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.230383, 32.103596, 48.070114>,  <29.415501, 32.052177, 48.213947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.230383, 32.103596, 48.070114>,  <28.921854, 32.189293, 47.830395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230383, 32.103596, 48.070114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494335, -0.794767, 0.352105,
		0.400866, -0.567841, -0.718932,
		0.771324, -0.214246, 0.599299,
		29.461781, 32.039322, 48.249905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629400, 31.856251, 47.219761>,  <28.921854, 32.189293, 47.830395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629400, 31.856251, 47.219761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.445021, 31.564716, 47.017246>,  <28.334393, 31.389795, 46.895737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.445021, 31.564716, 47.017246>,  <28.629400, 31.856251, 47.219761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445021, 31.564716, 47.017246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157982, 0.493999, -0.854989,
		0.873252, -0.474089, -0.112565,
		-0.460948, -0.728838, -0.506283,
		28.306736, 31.346066, 46.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991922, 31.625494, 46.763706>,  <28.629400, 31.856251, 47.219761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991922, 31.625494, 46.763706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.630951, 31.536474, 46.616142>,  <28.414368, 31.483063, 46.527603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.630951, 31.536474, 46.616142>,  <28.991922, 31.625494, 46.763706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630951, 31.536474, 46.616142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248245, 0.431232, -0.867417,
		0.352127, -0.874363, -0.333911,
		-0.902431, -0.222549, -0.368905,
		28.360222, 31.469709, 46.505470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045931, 31.169989, 46.205097>,  <28.991922, 31.625494, 46.763706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045931, 31.169989, 46.205097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.706896, 31.380531, 46.178139>,  <28.503475, 31.506857, 46.161964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.706896, 31.380531, 46.178139>,  <29.045931, 31.169989, 46.205097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706896, 31.380531, 46.178139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299358, 0.369415, -0.879726,
		-0.438153, -0.765821, -0.470681,
		-0.847589, 0.526357, -0.067394,
		28.452620, 31.538439, 46.157921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680761, 30.966145, 45.630413>,  <29.045931, 31.169989, 46.205097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680761, 30.966145, 45.630413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.548086, 31.333651, 45.716068>,  <28.468481, 31.554153, 45.767460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.548086, 31.333651, 45.716068>,  <28.680761, 30.966145, 45.630413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548086, 31.333651, 45.716068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185712, 0.286134, -0.940021,
		-0.924929, -0.272026, -0.265532,
		-0.331688, 0.918765, 0.214135,
		28.448580, 31.609280, 45.780308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377981, 31.164375, 45.061230>,  <28.680761, 30.966145, 45.630413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377981, 31.164375, 45.061230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.400215, 31.515434, 45.251659>,  <28.413555, 31.726070, 45.365917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.400215, 31.515434, 45.251659>,  <28.377981, 31.164375, 45.061230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400215, 31.515434, 45.251659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275857, 0.444752, -0.852114,
		-0.959590, 0.178693, -0.217384,
		0.055585, 0.877647, 0.476073,
		28.416891, 31.778728, 45.394482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023832, 31.535980, 44.603226>,  <28.377981, 31.164375, 45.061230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023832, 31.535980, 44.603226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.243313, 31.769676, 44.842422>,  <28.375000, 31.909893, 44.985939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.243313, 31.769676, 44.842422>,  <28.023832, 31.535980, 44.603226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243313, 31.769676, 44.842422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256494, 0.563142, -0.785545,
		-0.795700, 0.584410, 0.159142,
		0.548700, 0.584240, 0.597990,
		28.407923, 31.944948, 45.021820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939985, 32.172108, 44.354782>,  <28.023832, 31.535980, 44.603226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939985, 32.172108, 44.354782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274319, 32.216022, 44.569939>,  <28.474918, 32.242371, 44.699032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274319, 32.216022, 44.569939>,  <27.939985, 32.172108, 44.354782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274319, 32.216022, 44.569939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374417, 0.602565, -0.704789,
		-0.401494, 0.790482, 0.462537,
		0.835832, 0.109787, 0.537896,
		28.525068, 32.248959, 44.731308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.846041, 26.564964, 47.500809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.231289, 26.480686, 47.567749>,  <29.462439, 26.430119, 47.607914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.231289, 26.480686, 47.567749>,  <28.846041, 26.564964, 47.500809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231289, 26.480686, 47.567749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251908, 0.487496, -0.835996,
		0.094560, 0.847322, 0.522594,
		0.963120, -0.210697, 0.167349,
		29.520226, 26.417477, 47.617954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334513, 27.158501, 47.216423>,  <28.846041, 26.564964, 47.500809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334513, 27.158501, 47.216423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565933, 26.832262, 47.212795>,  <29.704786, 26.636518, 47.210617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565933, 26.832262, 47.212795>,  <29.334513, 27.158501, 47.216423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565933, 26.832262, 47.212795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299191, 0.222554, -0.927876,
		0.758790, 0.534110, 0.372778,
		0.578551, -0.815596, -0.009071,
		29.739498, 26.587584, 47.210075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087334, 27.353327, 47.124165>,  <29.334513, 27.158501, 47.216423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087334, 27.353327, 47.124165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.011904, 26.984415, 46.989201>,  <29.966646, 26.763069, 46.908222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.011904, 26.984415, 46.989201>,  <30.087334, 27.353327, 47.124165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011904, 26.984415, 46.989201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169690, 0.307804, -0.936196,
		0.967288, -0.233797, 0.098457,
		-0.188574, -0.922278, -0.337407,
		29.955332, 26.707731, 46.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623413, 27.023655, 46.838009>,  <30.087334, 27.353327, 47.124165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623413, 27.023655, 46.838009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.331104, 26.805132, 46.674294>,  <30.155720, 26.674019, 46.576065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.331104, 26.805132, 46.674294>,  <30.623413, 27.023655, 46.838009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331104, 26.805132, 46.674294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355659, 0.207059, -0.911391,
		0.582648, -0.811587, 0.042986,
		-0.730772, -0.546308, -0.409291,
		30.111872, 26.641239, 46.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877340, 26.963448, 46.251118>,  <30.623413, 27.023655, 46.838009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877340, 26.963448, 46.251118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524174, 26.801910, 46.155312>,  <30.312273, 26.704988, 46.097828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524174, 26.801910, 46.155312>,  <30.877340, 26.963448, 46.251118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524174, 26.801910, 46.155312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143637, 0.253357, -0.956650,
		0.447021, -0.879045, -0.165686,
		-0.882916, -0.403844, -0.239519,
		30.259298, 26.680758, 46.083454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026455, 26.599037, 45.576435>,  <30.877340, 26.963448, 46.251118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026455, 26.599037, 45.576435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628744, 26.639051, 45.591415>,  <30.390118, 26.663061, 45.600403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628744, 26.639051, 45.591415>,  <31.026455, 26.599037, 45.576435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628744, 26.639051, 45.591415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012071, 0.243094, -0.969928,
		-0.106132, -0.964831, -0.240496,
		-0.994279, 0.100037, 0.037447,
		30.330460, 26.669062, 45.602650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815624, 26.231821, 45.007252>,  <31.026455, 26.599037, 45.576435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815624, 26.231821, 45.007252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.543434, 26.499952, 45.125648>,  <30.380119, 26.660831, 45.196686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.543434, 26.499952, 45.125648>,  <30.815624, 26.231821, 45.007252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543434, 26.499952, 45.125648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030577, 0.377614, -0.925458,
		-0.732132, -0.638803, -0.236461,
		-0.680476, 0.670327, 0.295996,
		30.339291, 26.701050, 45.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227116, 26.014997, 44.688789>,  <30.815624, 26.231821, 45.007252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227116, 26.014997, 44.688789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194216, 26.403051, 44.780067>,  <30.174475, 26.635883, 44.834835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194216, 26.403051, 44.780067>,  <30.227116, 26.014997, 44.688789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194216, 26.403051, 44.780067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013586, 0.227861, -0.973599,
		-0.996519, -0.083180, -0.005562,
		-0.082252, 0.970134, 0.228198,
		30.169540, 26.694092, 44.848526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810278, 26.241856, 44.142937>,  <30.227116, 26.014997, 44.688789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810278, 26.241856, 44.142937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970247, 26.577145, 44.291233>,  <30.066229, 26.778318, 44.380211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970247, 26.577145, 44.291233>,  <29.810278, 26.241856, 44.142937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970247, 26.577145, 44.291233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033827, 0.390720, -0.919888,
		-0.915925, 0.380425, 0.127903,
		0.399923, 0.838221, 0.370738,
		30.090223, 26.828611, 44.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524569, 26.787333, 43.703041>,  <29.810278, 26.241856, 44.142937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524569, 26.787333, 43.703041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.842646, 26.936443, 43.894333>,  <30.033491, 27.025909, 44.009109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.842646, 26.936443, 43.894333>,  <29.524569, 26.787333, 43.703041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842646, 26.936443, 43.894333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313030, 0.423091, -0.850298,
		-0.519307, 0.825852, 0.219748,
		0.795193, 0.372778, 0.478231,
		30.081203, 27.048277, 44.037804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454355, 27.452841, 43.538494>,  <29.524569, 26.787333, 43.703041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454355, 27.452841, 43.538494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.833462, 27.358828, 43.624744>,  <30.060926, 27.302420, 43.676495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.833462, 27.358828, 43.624744>,  <29.454355, 27.452841, 43.538494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833462, 27.358828, 43.624744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285216, 0.321860, -0.902806,
		0.142786, 0.917151, 0.372083,
		0.947768, -0.235032, 0.215629,
		30.117792, 27.288319, 43.689434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888409, 28.152628, 43.406219>,  <29.454355, 27.452841, 43.538494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888409, 28.152628, 43.406219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.124477, 27.830280, 43.425301>,  <30.266119, 27.636871, 43.436749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.124477, 27.830280, 43.425301>,  <29.888409, 28.152628, 43.406219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124477, 27.830280, 43.425301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402736, 0.242700, -0.882553,
		0.699645, 0.540068, 0.467786,
		0.590170, -0.805868, 0.047701,
		30.301529, 27.588520, 43.439610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221569, 28.580112, 43.862591>,  <29.888409, 28.152628, 43.406219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221569, 28.580112, 43.862591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946653, 28.814014, 43.690220>,  <29.781704, 28.954355, 43.586800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946653, 28.814014, 43.690220>,  <30.221569, 28.580112, 43.862591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946653, 28.814014, 43.690220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700318, -0.375932, 0.606819,
		0.192841, 0.718846, 0.667887,
		-0.687290, 0.584753, -0.430926,
		29.740467, 28.989441, 43.560944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803120, 28.836668, 44.415916>,  <30.221569, 28.580112, 43.862591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803120, 28.836668, 44.415916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.555956, 28.895090, 44.106892>,  <29.407658, 28.930143, 43.921474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.555956, 28.895090, 44.106892>,  <29.803120, 28.836668, 44.415916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555956, 28.895090, 44.106892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786114, -0.133058, 0.603589,
		-0.014637, 0.980287, 0.197035,
		-0.617908, 0.146057, -0.772565,
		29.370583, 28.938908, 43.875122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266476, 29.353626, 44.652615>,  <29.803120, 28.836668, 44.415916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266476, 29.353626, 44.652615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.137367, 29.142050, 44.338661>,  <29.059902, 29.015104, 44.150288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.137367, 29.142050, 44.338661>,  <29.266476, 29.353626, 44.652615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137367, 29.142050, 44.338661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825235, -0.248802, 0.507035,
		-0.463471, 0.811370, -0.356192,
		-0.322771, -0.528939, -0.784883,
		29.040535, 28.983368, 44.103195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564890, 29.506390, 44.656563>,  <29.266476, 29.353626, 44.652615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564890, 29.506390, 44.656563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.600607, 29.178951, 44.429611>,  <28.622036, 28.982489, 44.293438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.600607, 29.178951, 44.429611>,  <28.564890, 29.506390, 44.656563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600607, 29.178951, 44.429611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842577, -0.365854, 0.395241,
		-0.531123, 0.442773, -0.722399,
		0.089291, -0.818598, -0.567384,
		28.627394, 28.933372, 44.259396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919737, 29.319901, 44.404224>,  <28.564890, 29.506390, 44.656563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919737, 29.319901, 44.404224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.124672, 28.978071, 44.370255>,  <28.247633, 28.772974, 44.349873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.124672, 28.978071, 44.370255>,  <27.919737, 29.319901, 44.404224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124672, 28.978071, 44.370255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705647, -0.475280, 0.525519,
		-0.489466, -0.209305, -0.846531,
		0.512333, -0.854576, -0.084938,
		28.278374, 28.721699, 44.344776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431824, 28.878366, 44.454784>,  <27.919737, 29.319901, 44.404224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431824, 28.878366, 44.454784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.747610, 28.648039, 44.539799>,  <27.937082, 28.509842, 44.590809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.747610, 28.648039, 44.539799>,  <27.431824, 28.878366, 44.454784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747610, 28.648039, 44.539799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567291, -0.552305, 0.610852,
		-0.234354, -0.602819, -0.762684,
		0.789467, -0.575820, 0.212539,
		27.984449, 28.475292, 44.603561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298681, 28.209013, 44.284004>,  <27.431824, 28.878366, 44.454784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298681, 28.209013, 44.284004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.568518, 28.230129, 44.578526>,  <27.730419, 28.242800, 44.755238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.568518, 28.230129, 44.578526>,  <27.298681, 28.209013, 44.284004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568518, 28.230129, 44.578526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634948, -0.467256, 0.615234,
		0.376519, -0.882545, -0.281688,
		0.674592, 0.052790, 0.736300,
		27.770895, 28.245966, 44.799416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161667, 27.692553, 44.780815>,  <27.298681, 28.209013, 44.284004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161667, 27.692553, 44.780815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.403557, 27.893696, 45.027859>,  <27.548691, 28.014381, 45.176086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.403557, 27.893696, 45.027859>,  <27.161667, 27.692553, 44.780815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403557, 27.893696, 45.027859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324932, -0.552219, 0.767772,
		0.727136, -0.664972, -0.170546,
		0.604726, 0.502859, 0.617609,
		27.584974, 28.044554, 45.213142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262196, 27.172813, 45.152321>,  <27.161667, 27.692553, 44.780815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262196, 27.172813, 45.152321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.413874, 27.485474, 45.350403>,  <27.504881, 27.673071, 45.469254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.413874, 27.485474, 45.350403>,  <27.262196, 27.172813, 45.152321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413874, 27.485474, 45.350403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356925, -0.370199, 0.857646,
		0.853706, -0.501967, 0.138614,
		0.379196, 0.781653, 0.495207,
		27.527632, 27.719969, 45.498966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675579, 26.933352, 45.773438>,  <27.262196, 27.172813, 45.152321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675579, 26.933352, 45.773438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.596155, 27.316133, 45.858112>,  <27.548500, 27.545803, 45.908916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.596155, 27.316133, 45.858112>,  <27.675579, 26.933352, 45.773438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596155, 27.316133, 45.858112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328137, -0.268434, 0.905687,
		0.923526, 0.110370, 0.367313,
		-0.198560, 0.956954, 0.211690,
		27.536587, 27.603220, 45.921619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948265, 27.080688, 46.466850>,  <27.675579, 26.933352, 45.773438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948265, 27.080688, 46.466850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.700743, 27.391113, 46.418179>,  <27.552229, 27.577368, 46.388977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.700743, 27.391113, 46.418179>,  <27.948265, 27.080688, 46.466850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700743, 27.391113, 46.418179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281212, -0.074218, 0.956771,
		0.733482, 0.626275, 0.264165,
		-0.618808, 0.776061, -0.121679,
		27.515100, 27.623932, 46.381676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068291, 27.393950, 47.095490>,  <27.948265, 27.080688, 46.466850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068291, 27.393950, 47.095490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.716551, 27.516485, 46.949669>,  <27.505507, 27.590006, 46.862175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.716551, 27.516485, 46.949669>,  <28.068291, 27.393950, 47.095490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716551, 27.516485, 46.949669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440723, -0.233738, 0.866677,
		0.180287, 0.922780, 0.340549,
		-0.879352, 0.306338, -0.364551,
		27.452745, 27.608387, 46.840305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670406, 27.750944, 47.524303>,  <28.068291, 27.393950, 47.095490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670406, 27.750944, 47.524303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.356302, 27.675774, 47.288319>,  <27.167839, 27.630671, 47.146729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.356302, 27.675774, 47.288319>,  <27.670406, 27.750944, 47.524303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356302, 27.675774, 47.288319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520179, -0.316567, 0.793221,
		-0.335828, 0.929768, 0.150832,
		-0.785260, -0.187926, -0.589958,
		27.120724, 27.619396, 47.111332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177359, 27.994328, 47.914352>,  <27.670406, 27.750944, 47.524303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177359, 27.994328, 47.914352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.018185, 27.729183, 47.660656>,  <26.922680, 27.570097, 47.508438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.018185, 27.729183, 47.660656>,  <27.177359, 27.994328, 47.914352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018185, 27.729183, 47.660656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628019, -0.307136, 0.715024,
		-0.668760, 0.682850, -0.294068,
		-0.397935, -0.662860, -0.634243,
		26.898804, 27.530325, 47.470383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276245, 28.558565, 47.533909>,  <27.177359, 27.994328, 47.914352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276245, 28.558565, 47.533909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.075485, 28.829214, 47.749416>,  <26.955029, 28.991604, 47.878723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.075485, 28.829214, 47.749416>,  <27.276245, 28.558565, 47.533909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075485, 28.829214, 47.749416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382146, 0.732291, -0.563661,
		-0.775924, -0.077012, -0.626107,
		-0.501902, 0.676623, 0.538773,
		26.924915, 29.032202, 47.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077415, 29.007294, 47.085648>,  <27.276245, 28.558565, 47.533909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077415, 29.007294, 47.085648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.045738, 29.206825, 47.430878>,  <27.026731, 29.326544, 47.638016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.045738, 29.206825, 47.430878>,  <27.077415, 29.007294, 47.085648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045738, 29.206825, 47.430878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175648, 0.859229, -0.480492,
		-0.981262, 0.113545, -0.155665,
		-0.079195, 0.498831, 0.863074,
		27.021980, 29.356474, 47.689800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752533, 29.674341, 46.900475>,  <27.077415, 29.007294, 47.085648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752533, 29.674341, 46.900475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.924936, 29.726068, 47.257687>,  <27.028379, 29.757105, 47.472015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.924936, 29.726068, 47.257687>,  <26.752533, 29.674341, 46.900475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924936, 29.726068, 47.257687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353579, 0.886331, -0.298998,
		-0.830188, 0.444629, 0.336293,
		0.431010, 0.129319, 0.893033,
		27.054239, 29.764864, 47.525597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570257, 30.424419, 47.202484>,  <26.752533, 29.674341, 46.900475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570257, 30.424419, 47.202484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.895779, 30.302513, 47.400410>,  <27.091091, 30.229370, 47.519165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.895779, 30.302513, 47.400410>,  <26.570257, 30.424419, 47.202484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895779, 30.302513, 47.400410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387747, 0.918972, -0.071707,
		-0.432865, 0.250218, 0.866036,
		0.813806, -0.304763, 0.494813,
		27.139921, 30.211084, 47.548855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858517, 30.995468, 47.606037>,  <26.570257, 30.424419, 47.202484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858517, 30.995468, 47.606037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.181128, 30.760302, 47.581154>,  <27.374695, 30.619202, 47.566223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.181128, 30.760302, 47.581154>,  <26.858517, 30.995468, 47.606037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181128, 30.760302, 47.581154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557122, 0.791030, -0.252759,
		0.197807, 0.169201, 0.965528,
		0.806528, -0.587914, -0.062206,
		27.423086, 30.583927, 47.562492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534126, 31.467682, 47.788322>,  <26.858517, 30.995468, 47.606037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534126, 31.467682, 47.788322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.675467, 31.147739, 47.594261>,  <27.760271, 30.955774, 47.477825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.675467, 31.147739, 47.594261>,  <27.534126, 31.467682, 47.788322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675467, 31.147739, 47.594261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715156, 0.565286, -0.411099,
		0.603072, -0.201701, 0.771765,
		0.353349, -0.799855, -0.485156,
		27.781471, 30.907784, 47.448715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212837, 31.568867, 47.747269>,  <27.534126, 31.467682, 47.788322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212837, 31.568867, 47.747269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.097689, 31.319103, 47.456821>,  <28.028599, 31.169245, 47.282555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.097689, 31.319103, 47.456821>,  <28.212837, 31.568867, 47.747269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097689, 31.319103, 47.456821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429769, 0.593344, -0.680619,
		0.855820, -0.507993, 0.097544,
		-0.287872, -0.624409, -0.726115,
		28.011328, 31.131781, 47.238987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920933, 31.428679, 47.979942>,  <28.212837, 31.568867, 47.747269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920933, 31.428679, 47.979942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.157980, 31.549761, 48.278519>,  <29.300209, 31.622410, 48.457664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.157980, 31.549761, 48.278519>,  <28.920933, 31.428679, 47.979942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157980, 31.549761, 48.278519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254246, -0.809025, 0.529942,
		0.764305, -0.503832, -0.402481,
		0.592618, 0.302708, 0.746439,
		29.335766, 31.640574, 48.502449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237946, 30.880993, 48.128807>,  <28.920933, 31.428679, 47.979942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237946, 30.880993, 48.128807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.291477, 31.076799, 48.473473>,  <29.323597, 31.194284, 48.680271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.291477, 31.076799, 48.473473>,  <29.237946, 30.880993, 48.128807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291477, 31.076799, 48.473473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013180, -0.868528, 0.495465,
		0.990917, -0.077664, -0.109782,
		0.133828, 0.489518, 0.861663,
		29.331625, 31.223654, 48.731972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428898, 30.366739, 48.587807>,  <29.237946, 30.880993, 48.128807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428898, 30.366739, 48.587807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.375242, 30.665152, 48.848709>,  <29.343048, 30.844198, 49.005253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.375242, 30.665152, 48.848709>,  <29.428898, 30.366739, 48.587807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375242, 30.665152, 48.848709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337628, -0.653235, 0.677710,
		0.931673, -0.129313, 0.339506,
		-0.134141, 0.746031, 0.652261,
		29.335001, 30.888962, 49.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655357, 30.128860, 49.192413>,  <29.428898, 30.366739, 48.587807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655357, 30.128860, 49.192413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.414526, 30.422617, 49.317741>,  <29.270027, 30.598871, 49.392937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.414526, 30.422617, 49.317741>,  <29.655357, 30.128860, 49.192413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414526, 30.422617, 49.317741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273751, -0.558500, 0.783032,
		0.750040, 0.385676, 0.537302,
		-0.602079, 0.734392, 0.313318,
		29.233902, 30.642935, 49.411736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787151, 30.247887, 49.924885>,  <29.655357, 30.128860, 49.192413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787151, 30.247887, 49.924885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.413805, 30.357182, 49.831787>,  <29.189796, 30.422758, 49.775928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.413805, 30.357182, 49.831787>,  <29.787151, 30.247887, 49.924885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413805, 30.357182, 49.831787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352578, -0.576565, 0.737063,
		0.067205, 0.770008, 0.634484,
		-0.933366, 0.273239, -0.232740,
		29.133795, 30.439154, 49.761967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466455, 30.458897, 50.620785>,  <29.787151, 30.247887, 49.924885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466455, 30.458897, 50.620785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.179752, 30.375341, 50.354664>,  <29.007730, 30.325209, 50.194992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.179752, 30.375341, 50.354664>,  <29.466455, 30.458897, 50.620785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179752, 30.375341, 50.354664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315285, -0.753914, 0.576376,
		-0.621978, 0.622881, 0.474514,
		-0.716756, -0.208886, -0.665302,
		28.964725, 30.312675, 50.155071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933525, 30.457651, 51.001301>,  <29.466455, 30.458897, 50.620785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933525, 30.457651, 51.001301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.811256, 30.234200, 50.692886>,  <28.737896, 30.100128, 50.507839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.811256, 30.234200, 50.692886>,  <28.933525, 30.457651, 51.001301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811256, 30.234200, 50.692886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242803, -0.737290, 0.630437,
		-0.920659, 0.379916, 0.089731,
		-0.305671, -0.558630, -0.771037,
		28.719555, 30.066610, 50.461575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387451, 30.055201, 51.273815>,  <28.933525, 30.457651, 51.001301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387451, 30.055201, 51.273815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.474112, 29.853437, 50.939476>,  <28.526108, 29.732380, 50.738873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.474112, 29.853437, 50.939476>,  <28.387451, 30.055201, 51.273815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474112, 29.853437, 50.939476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062510, -0.861590, 0.503741,
		-0.974246, -0.056887, -0.218196,
		0.216652, -0.504407, -0.835845,
		28.539106, 29.702116, 50.688725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952816, 29.506479, 51.339176>,  <28.387451, 30.055201, 51.273815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952816, 29.506479, 51.339176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.247108, 29.402334, 51.089085>,  <28.423683, 29.339848, 50.939030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.247108, 29.402334, 51.089085>,  <27.952816, 29.506479, 51.339176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247108, 29.402334, 51.089085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135586, -0.847845, 0.512616,
		-0.663563, -0.461920, -0.588485,
		0.735732, -0.260362, -0.625228,
		28.467829, 29.324226, 50.901516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.404156, 36.511360, 37.138828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600178, 36.163223, 37.119423>,  <34.717789, 35.954342, 37.107780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600178, 36.163223, 37.119423>,  <34.404156, 36.511360, 37.138828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600178, 36.163223, 37.119423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691652, -0.422107, 0.586040,
		-0.530536, -0.253633, -0.808828,
		0.490051, -0.870343, -0.048517,
		34.747192, 35.902119, 37.104870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905090, 35.892960, 36.898510>,  <34.404156, 36.511360, 37.138828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905090, 35.892960, 36.898510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213181, 35.764221, 37.118752>,  <34.398037, 35.686977, 37.250896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213181, 35.764221, 37.118752>,  <33.905090, 35.892960, 36.898510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213181, 35.764221, 37.118752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636466, -0.443071, 0.631347,
		0.040759, -0.836721, -0.546110,
		0.770227, -0.321847, 0.550604,
		34.444248, 35.667667, 37.283932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679016, 35.101215, 37.073788>,  <33.905090, 35.892960, 36.898510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679016, 35.101215, 37.073788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959156, 35.223442, 37.331821>,  <34.127239, 35.296780, 37.486641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959156, 35.223442, 37.331821>,  <33.679016, 35.101215, 37.073788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959156, 35.223442, 37.331821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543136, -0.358272, 0.759371,
		0.463158, -0.882195, -0.084948,
		0.700348, 0.305571, 0.645088,
		34.169262, 35.315113, 37.525349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721455, 34.556870, 37.540882>,  <33.679016, 35.101215, 37.073788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721455, 34.556870, 37.540882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862087, 34.884186, 37.722778>,  <33.946468, 35.080574, 37.831917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862087, 34.884186, 37.722778>,  <33.721455, 34.556870, 37.540882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862087, 34.884186, 37.722778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298393, -0.362460, 0.882941,
		0.887327, -0.446121, 0.116736,
		0.351586, 0.818290, 0.454740,
		33.967564, 35.129673, 37.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958439, 34.358257, 38.197319>,  <33.721455, 34.556870, 37.540882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958439, 34.358257, 38.197319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909122, 34.752426, 38.244202>,  <33.879532, 34.988930, 38.272331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909122, 34.752426, 38.244202>,  <33.958439, 34.358257, 38.197319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909122, 34.752426, 38.244202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290339, -0.148755, 0.945291,
		0.948948, 0.082518, 0.304448,
		-0.123292, 0.985425, 0.117203,
		33.872135, 35.048054, 38.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260044, 34.476219, 38.833485>,  <33.958439, 34.358257, 38.197319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260044, 34.476219, 38.833485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017284, 34.787460, 38.768703>,  <33.871628, 34.974205, 38.729836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017284, 34.787460, 38.768703>,  <34.260044, 34.476219, 38.833485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017284, 34.787460, 38.768703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413818, -0.135397, 0.900234,
		0.678548, 0.613369, 0.404166,
		-0.606899, 0.778104, -0.161950,
		33.835217, 35.020893, 38.720119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401901, 35.062828, 39.293602>,  <34.260044, 34.476219, 38.833485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401901, 35.062828, 39.293602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023335, 35.147694, 39.196217>,  <33.796192, 35.198612, 39.137787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023335, 35.147694, 39.196217>,  <34.401901, 35.062828, 39.293602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023335, 35.147694, 39.196217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244420, 0.022128, 0.969417,
		0.211063, 0.976983, 0.030915,
		-0.946420, 0.212164, -0.243465,
		33.739407, 35.211342, 39.123177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182331, 35.420090, 39.867569>,  <34.401901, 35.062828, 39.293602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182331, 35.420090, 39.867569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842800, 35.318066, 39.682339>,  <33.639080, 35.256851, 39.571201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842800, 35.318066, 39.682339>,  <34.182331, 35.420090, 39.867569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842800, 35.318066, 39.682339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521544, 0.260689, 0.812424,
		-0.086497, 0.931122, -0.354304,
		-0.848829, -0.255058, -0.463072,
		33.588150, 35.241547, 39.543419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629662, 35.913303, 40.075039>,  <34.182331, 35.420090, 39.867569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629662, 35.913303, 40.075039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429558, 35.586071, 39.961555>,  <33.309494, 35.389732, 39.893467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429558, 35.586071, 39.961555>,  <33.629662, 35.913303, 40.075039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429558, 35.586071, 39.961555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470353, -0.018349, 0.882287,
		-0.726984, 0.574817, -0.375606,
		-0.500262, -0.818076, -0.283706,
		33.279480, 35.340649, 39.876442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999229, 36.018028, 40.341805>,  <33.629662, 35.913303, 40.075039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999229, 36.018028, 40.341805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031868, 35.627670, 40.260838>,  <33.051449, 35.393456, 40.212257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031868, 35.627670, 40.260838>,  <32.999229, 36.018028, 40.341805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031868, 35.627670, 40.260838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455547, -0.217157, 0.863319,
		-0.886464, 0.021771, -0.462284,
		0.081593, -0.975894, -0.202420,
		33.056347, 35.334904, 40.200111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265549, 35.678120, 40.404160>,  <32.999229, 36.018028, 40.341805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265549, 35.678120, 40.404160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530872, 35.381248, 40.442505>,  <32.690067, 35.203125, 40.465511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530872, 35.381248, 40.442505>,  <32.265549, 35.678120, 40.404160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530872, 35.381248, 40.442505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458414, -0.301726, 0.835954,
		-0.591505, -0.598439, -0.540363,
		0.663309, -0.742181, 0.095860,
		32.729866, 35.158596, 40.471264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897411, 35.187744, 40.645290>,  <32.265549, 35.678120, 40.404160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897411, 35.187744, 40.645290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250664, 35.019005, 40.727383>,  <32.462616, 34.917759, 40.776638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250664, 35.019005, 40.727383>,  <31.897411, 35.187744, 40.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250664, 35.019005, 40.727383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348615, -0.297399, 0.888832,
		-0.313929, -0.856497, -0.409709,
		0.883129, -0.421860, 0.205225,
		32.515602, 34.892448, 40.788952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638166, 34.600143, 40.236916>,  <31.897411, 35.187744, 40.645290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638166, 34.600143, 40.236916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303675, 34.453266, 40.073994>,  <31.102980, 34.365139, 39.976242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303675, 34.453266, 40.073994>,  <31.638166, 34.600143, 40.236916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303675, 34.453266, 40.073994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267338, 0.375527, -0.887417,
		0.478803, -0.850971, -0.215862,
		-0.836228, -0.367191, -0.407300,
		31.052807, 34.343109, 39.951805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798775, 34.351173, 39.521065>,  <31.638166, 34.600143, 40.236916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798775, 34.351173, 39.521065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401953, 34.396458, 39.542999>,  <31.163858, 34.423630, 39.556160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401953, 34.396458, 39.542999>,  <31.798775, 34.351173, 39.521065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401953, 34.396458, 39.542999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031381, 0.199436, -0.979408,
		-0.121820, -0.973349, -0.194299,
		-0.992056, 0.113215, 0.054840,
		31.104336, 34.430424, 39.559452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488102, 34.004383, 38.955154>,  <31.798775, 34.351173, 39.521065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488102, 34.004383, 38.955154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228073, 34.280010, 39.083275>,  <31.072056, 34.445385, 39.160149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228073, 34.280010, 39.083275>,  <31.488102, 34.004383, 38.955154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228073, 34.280010, 39.083275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259812, 0.194562, -0.945856,
		-0.714074, -0.698096, 0.052547,
		-0.650074, 0.689063, 0.320305,
		31.033051, 34.486729, 39.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980288, 34.040794, 38.422035>,  <31.488102, 34.004383, 38.955154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980288, 34.040794, 38.422035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912571, 34.384090, 38.615845>,  <30.871941, 34.590069, 38.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912571, 34.384090, 38.615845>,  <30.980288, 34.040794, 38.422035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912571, 34.384090, 38.615845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272024, 0.431836, -0.859954,
		-0.947282, -0.277385, 0.160356,
		-0.169291, 0.858240, 0.484526,
		30.861784, 34.641563, 38.761204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198833, 34.292175, 38.318367>,  <30.980288, 34.040794, 38.422035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198833, 34.292175, 38.318367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436728, 34.601414, 38.406559>,  <30.579464, 34.786957, 38.459473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436728, 34.601414, 38.406559>,  <30.198833, 34.292175, 38.318367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436728, 34.601414, 38.406559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304032, 0.470181, -0.828549,
		-0.744216, 0.425733, 0.514679,
		0.594733, 0.773098, 0.220480,
		30.615147, 34.833344, 38.472702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790131, 34.929276, 38.117439>,  <30.198833, 34.292175, 38.318367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790131, 34.929276, 38.117439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176859, 35.031357, 38.122066>,  <30.408895, 35.092606, 38.124844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176859, 35.031357, 38.122066>,  <29.790131, 34.929276, 38.117439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176859, 35.031357, 38.122066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102441, 0.428790, -0.897577,
		-0.234025, 0.866609, 0.440705,
		0.966819, 0.255202, 0.011572,
		30.466904, 35.107918, 38.125538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832512, 35.501221, 37.689068>,  <29.790131, 34.929276, 38.117439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832512, 35.501221, 37.689068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226028, 35.448910, 37.738148>,  <30.462137, 35.417522, 37.767593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226028, 35.448910, 37.738148>,  <29.832512, 35.501221, 37.689068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226028, 35.448910, 37.738148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167301, 0.423038, -0.890533,
		0.064555, 0.896625, 0.438060,
		0.983790, -0.130776, 0.122697,
		30.521166, 35.409676, 37.774956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177029, 36.175156, 37.591896>,  <29.832512, 35.501221, 37.689068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177029, 36.175156, 37.591896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441271, 35.882519, 37.524525>,  <30.599817, 35.706936, 37.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441271, 35.882519, 37.524525>,  <30.177029, 36.175156, 37.591896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441271, 35.882519, 37.524525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269001, 0.440128, -0.856695,
		0.700882, 0.520632, 0.487552,
		0.660608, -0.731594, -0.168427,
		30.639454, 35.663040, 37.473995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568916, 36.572006, 37.250755>,  <30.177029, 36.175156, 37.591896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568916, 36.572006, 37.250755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642315, 36.187901, 37.166641>,  <30.686354, 35.957436, 37.116173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642315, 36.187901, 37.166641>,  <30.568916, 36.572006, 37.250755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642315, 36.187901, 37.166641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076514, 0.227225, -0.970832,
		0.980038, 0.162054, 0.115169,
		0.183497, -0.960264, -0.210290,
		30.697365, 35.899822, 37.103554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097010, 36.630974, 36.823513>,  <30.568916, 36.572006, 37.250755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097010, 36.630974, 36.823513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949087, 36.262459, 36.775379>,  <30.860332, 36.041351, 36.746498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949087, 36.262459, 36.775379>,  <31.097010, 36.630974, 36.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949087, 36.262459, 36.775379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052039, 0.149847, -0.987339,
		0.927650, -0.358864, -0.103358,
		-0.369808, -0.921283, -0.120330,
		30.838144, 35.986073, 36.739281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495777, 36.258537, 36.249702>,  <31.097010, 36.630974, 36.823513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495777, 36.258537, 36.249702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140928, 36.077610, 36.286407>,  <30.928019, 35.969055, 36.308430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140928, 36.077610, 36.286407>,  <31.495777, 36.258537, 36.249702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140928, 36.077610, 36.286407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094342, -0.016899, -0.995396,
		0.451788, -0.891696, -0.027681,
		-0.887123, -0.452319, 0.091759,
		30.874792, 35.941914, 36.313934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528831, 35.673912, 35.806923>,  <31.495777, 36.258537, 36.249702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528831, 35.673912, 35.806923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137123, 35.743172, 35.848965>,  <30.902098, 35.784725, 35.874191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137123, 35.743172, 35.848965>,  <31.528831, 35.673912, 35.806923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137123, 35.743172, 35.848965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144170, -0.231345, -0.962130,
		-0.142275, -0.957340, 0.251512,
		-0.979271, 0.173148, 0.105106,
		30.843342, 35.795116, 35.880497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087952, 35.856548, 35.305355>,  <31.528831, 35.673912, 35.806923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087952, 35.856548, 35.305355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032932, 35.508209, 35.494122>,  <31.999922, 35.299206, 35.607380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032932, 35.508209, 35.494122>,  <32.087952, 35.856548, 35.305355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032932, 35.508209, 35.494122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307339, -0.490452, -0.815475,
		0.941607, 0.032872, 0.335106,
		-0.137547, -0.870848, 0.471916,
		31.991669, 35.246956, 35.635696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573036, 35.441231, 35.137627>,  <32.087952, 35.856548, 35.305355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573036, 35.441231, 35.137627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266308, 35.210369, 35.249969>,  <32.082272, 35.071854, 35.317375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266308, 35.210369, 35.249969>,  <32.573036, 35.441231, 35.137627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266308, 35.210369, 35.249969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150748, -0.587263, -0.795234,
		0.623906, -0.567465, 0.537331,
		-0.766822, -0.577153, 0.280852,
		32.036263, 35.037224, 35.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654568, 34.761127, 34.929790>,  <32.573036, 35.441231, 35.137627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654568, 34.761127, 34.929790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257908, 34.806549, 34.954216>,  <32.019913, 34.833801, 34.968872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257908, 34.806549, 34.954216>,  <32.654568, 34.761127, 34.929790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257908, 34.806549, 34.954216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112208, -0.526764, -0.842573,
		-0.063510, -0.842393, 0.535109,
		-0.991653, 0.113555, 0.061069,
		31.960411, 34.840614, 34.972538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130268, 34.198196, 34.926395>,  <32.654568, 34.761127, 34.929790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130268, 34.198196, 34.926395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255985, 34.246201, 34.549713>,  <33.331413, 34.275005, 34.323704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255985, 34.246201, 34.549713>,  <33.130268, 34.198196, 34.926395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255985, 34.246201, 34.549713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948236, 0.087234, -0.305351,
		0.045502, 0.988932, 0.141219,
		0.314291, 0.120015, -0.941710,
		33.350273, 34.282204, 34.267200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156593, 33.501659, 34.557964>,  <33.130268, 34.198196, 34.926395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156593, 33.501659, 34.557964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248974, 33.117233, 34.618641>,  <33.304401, 32.886578, 34.655048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248974, 33.117233, 34.618641>,  <33.156593, 33.501659, 34.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248974, 33.117233, 34.618641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499415, 0.016709, 0.866202,
		-0.835013, -0.275808, -0.476112,
		0.230950, -0.961067, 0.151695,
		33.318260, 32.828915, 34.664150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560459, 33.167683, 34.908134>,  <33.156593, 33.501659, 34.557964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560459, 33.167683, 34.908134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900887, 32.978535, 34.999416>,  <33.105145, 32.865047, 35.054184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900887, 32.978535, 34.999416>,  <32.560459, 33.167683, 34.908134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900887, 32.978535, 34.999416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321503, -0.125715, 0.938526,
		-0.415111, -0.872119, -0.259021,
		0.851069, -0.472869, 0.228203,
		33.156208, 32.836674, 35.067879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373180, 32.602478, 35.321247>,  <32.560459, 33.167683, 34.908134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373180, 32.602478, 35.321247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768707, 32.567230, 35.369385>,  <33.006023, 32.546082, 35.398266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768707, 32.567230, 35.369385>,  <32.373180, 32.602478, 35.321247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768707, 32.567230, 35.369385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147437, -0.455322, 0.878034,
		-0.022579, -0.885955, -0.463221,
		0.988813, -0.088121, 0.120342,
		33.065350, 32.540794, 35.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520184, 31.895012, 35.471581>,  <32.373180, 32.602478, 35.321247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520184, 31.895012, 35.471581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758774, 32.179642, 35.620106>,  <32.901928, 32.350418, 35.709221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758774, 32.179642, 35.620106>,  <32.520184, 31.895012, 35.471581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758774, 32.179642, 35.620106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168563, -0.341249, 0.924735,
		0.784728, -0.614176, -0.083603,
		0.596479, 0.711574, 0.371315,
		32.937717, 32.393112, 35.731499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016411, 31.560621, 35.837299>,  <32.520184, 31.895012, 35.471581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016411, 31.560621, 35.837299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992935, 31.934355, 35.977909>,  <32.978848, 32.158596, 36.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992935, 31.934355, 35.977909>,  <33.016411, 31.560621, 35.837299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992935, 31.934355, 35.977909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009032, -0.351623, 0.936098,
		0.998235, 0.058116, 0.012198,
		-0.058692, 0.934336, 0.351527,
		32.975327, 32.214657, 36.083366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383896, 31.521677, 36.374962>,  <33.016411, 31.560621, 35.837299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383896, 31.521677, 36.374962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161678, 31.848984, 36.434040>,  <33.028347, 32.045368, 36.469486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161678, 31.848984, 36.434040>,  <33.383896, 31.521677, 36.374962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161678, 31.848984, 36.434040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073053, -0.224974, 0.971622,
		0.828274, 0.528986, 0.184759,
		-0.555540, 0.818267, 0.147696,
		32.995018, 32.094463, 36.478348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584946, 31.855146, 36.951122>,  <33.383896, 31.521677, 36.374962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584946, 31.855146, 36.951122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227589, 32.034569, 36.940968>,  <33.013172, 32.142223, 36.934875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227589, 32.034569, 36.940968>,  <33.584946, 31.855146, 36.951122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227589, 32.034569, 36.940968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086023, -0.115318, 0.989597,
		0.440960, 0.886285, 0.141611,
		-0.893395, 0.448555, -0.025391,
		32.959572, 32.169136, 36.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452549, 32.273701, 37.513718>,  <33.584946, 31.855146, 36.951122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452549, 32.273701, 37.513718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060997, 32.251930, 37.434887>,  <32.826065, 32.238869, 37.387589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060997, 32.251930, 37.434887>,  <33.452549, 32.273701, 37.513718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060997, 32.251930, 37.434887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201319, 0.088491, 0.975520,
		-0.035650, 0.994589, -0.097578,
		-0.978877, -0.054422, -0.197075,
		32.767334, 32.235603, 37.375763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171223, 32.609367, 38.091362>,  <33.452549, 32.273701, 37.513718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171223, 32.609367, 38.091362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862949, 32.426113, 37.914200>,  <32.677986, 32.316162, 37.807903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862949, 32.426113, 37.914200>,  <33.171223, 32.609367, 38.091362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862949, 32.426113, 37.914200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467909, -0.064956, 0.881387,
		-0.432565, 0.886505, -0.164306,
		-0.770681, -0.458137, -0.442901,
		32.631744, 32.288673, 37.781330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544594, 33.026043, 38.232838>,  <33.171223, 32.609367, 38.091362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544594, 33.026043, 38.232838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439159, 32.656387, 38.122215>,  <32.375896, 32.434593, 38.055843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439159, 32.656387, 38.122215>,  <32.544594, 33.026043, 38.232838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439159, 32.656387, 38.122215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466170, -0.128961, 0.875246,
		-0.844516, 0.359627, -0.396814,
		-0.263588, -0.924141, -0.276557,
		32.360085, 32.379147, 38.039249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833305, 32.907494, 38.459827>,  <32.544594, 33.026043, 38.232838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833305, 32.907494, 38.459827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004456, 32.546986, 38.432617>,  <32.107147, 32.330681, 38.416290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004456, 32.546986, 38.432617>,  <31.833305, 32.907494, 38.459827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004456, 32.546986, 38.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556916, -0.322172, 0.765539,
		-0.711875, -0.289674, -0.639784,
		0.427877, -0.901274, -0.068022,
		32.132820, 32.276604, 38.412212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352598, 32.421814, 38.692337>,  <31.833305, 32.907494, 38.459827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352598, 32.421814, 38.692337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687881, 32.204311, 38.709007>,  <31.889051, 32.073811, 38.719009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687881, 32.204311, 38.709007>,  <31.352598, 32.421814, 38.692337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687881, 32.204311, 38.709007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404746, -0.569063, 0.715785,
		-0.365497, -0.616844, -0.697076,
		0.838208, -0.543756, 0.041675,
		31.939344, 32.041183, 38.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054314, 31.704262, 38.756676>,  <31.352598, 32.421814, 38.692337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054314, 31.704262, 38.756676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437473, 31.723139, 38.869953>,  <31.667370, 31.734465, 38.937920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437473, 31.723139, 38.869953>,  <31.054314, 31.704262, 38.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437473, 31.723139, 38.869953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176297, -0.681833, 0.709946,
		0.226596, -0.729984, -0.644808,
		0.957901, 0.047194, 0.283195,
		31.724844, 31.737297, 38.954910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234621, 30.985950, 38.767014>,  <31.054314, 31.704262, 38.756676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234621, 30.985950, 38.767014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487005, 31.183792, 39.006096>,  <31.638435, 31.302498, 39.149548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487005, 31.183792, 39.006096>,  <31.234621, 30.985950, 38.767014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487005, 31.183792, 39.006096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196795, -0.643192, 0.739983,
		0.750442, -0.584525, -0.308492,
		0.630958, 0.494605, 0.597710,
		31.676292, 31.332174, 39.185410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575680, 30.484201, 39.230022>,  <31.234621, 30.985950, 38.767014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575680, 30.484201, 39.230022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610640, 30.835924, 39.417290>,  <31.631615, 31.046957, 39.529652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610640, 30.835924, 39.417290>,  <31.575680, 30.484201, 39.230022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610640, 30.835924, 39.417290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208990, -0.443324, 0.871658,
		0.974004, -0.174023, 0.145021,
		0.087398, 0.879306, 0.468169,
		31.636858, 31.099716, 39.557739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852234, 30.310266, 39.814579>,  <31.575680, 30.484201, 39.230022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852234, 30.310266, 39.814579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693108, 30.668371, 39.894825>,  <31.597631, 30.883234, 39.942974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693108, 30.668371, 39.894825>,  <31.852234, 30.310266, 39.814579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693108, 30.668371, 39.894825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225717, -0.307446, 0.924407,
		0.889265, 0.322463, 0.324384,
		-0.397818, 0.895262, 0.200616,
		31.573763, 30.936951, 39.955009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109543, 30.490660, 40.447933>,  <31.852234, 30.310266, 39.814579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109543, 30.490660, 40.447933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789928, 30.730209, 40.426434>,  <31.598160, 30.873940, 40.413532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789928, 30.730209, 40.426434>,  <32.109543, 30.490660, 40.447933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789928, 30.730209, 40.426434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166903, -0.135024, 0.976684,
		0.577651, 0.789380, 0.207843,
		-0.799038, 0.598873, -0.053753,
		31.550217, 30.909870, 40.410309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050697, 30.928772, 40.994705>,  <32.109543, 30.490660, 40.447933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050697, 30.928772, 40.994705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673042, 30.905832, 40.864891>,  <31.446451, 30.892069, 40.787003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673042, 30.905832, 40.864891>,  <32.050697, 30.928772, 40.994705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673042, 30.905832, 40.864891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300520, -0.254404, 0.919221,
		-0.135280, 0.965396, 0.222956,
		-0.944133, -0.057350, -0.324536,
		31.389803, 30.888628, 40.767529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684298, 31.265686, 41.596947>,  <32.050697, 30.928772, 40.994705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684298, 31.265686, 41.596947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433676, 31.049467, 41.372360>,  <31.283302, 30.919737, 41.237610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433676, 31.049467, 41.372360>,  <31.684298, 31.265686, 41.596947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433676, 31.049467, 41.372360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478827, -0.301431, 0.824539,
		-0.614943, 0.785462, -0.069965,
		-0.626554, -0.540545, -0.561463,
		31.245710, 30.887304, 41.203922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972643, 31.372374, 41.813076>,  <31.684298, 31.265686, 41.596947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972643, 31.372374, 41.813076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899897, 31.040855, 41.601406>,  <30.856249, 30.841944, 41.474403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899897, 31.040855, 41.601406>,  <30.972643, 31.372374, 41.813076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899897, 31.040855, 41.601406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794641, -0.193104, 0.575549,
		-0.579197, 0.525175, -0.623476,
		-0.181868, -0.828796, -0.529171,
		30.845337, 30.792217, 41.442654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283594, 31.271183, 41.902824>,  <30.972643, 31.372374, 41.813076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283594, 31.271183, 41.902824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424311, 30.916557, 41.782661>,  <30.508741, 30.703781, 41.710564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424311, 30.916557, 41.782661>,  <30.283594, 31.271183, 41.902824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424311, 30.916557, 41.782661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719590, -0.461382, 0.518957,
		-0.598693, 0.033609, -0.800273,
		0.351790, -0.886565, -0.300412,
		30.529848, 30.650587, 41.692539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676641, 30.840263, 41.840683>,  <30.283594, 31.271183, 41.902824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676641, 30.840263, 41.840683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978054, 30.580273, 41.880123>,  <30.158901, 30.424278, 41.903786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978054, 30.580273, 41.880123>,  <29.676641, 30.840263, 41.840683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978054, 30.580273, 41.880123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525007, -0.504696, 0.685310,
		-0.395674, -0.568166, -0.721547,
		0.753532, -0.649976, 0.098596,
		30.204113, 30.385281, 41.909702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338039, 30.217527, 41.906490>,  <29.676641, 30.840263, 41.840683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338039, 30.217527, 41.906490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709322, 30.119329, 42.018326>,  <29.932091, 30.060410, 42.085426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709322, 30.119329, 42.018326>,  <29.338039, 30.217527, 41.906490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709322, 30.119329, 42.018326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371544, -0.651563, 0.661379,
		0.019803, -0.717773, -0.695996,
		0.928204, -0.245496, 0.279587,
		29.987783, 30.045681, 42.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414564, 29.524759, 41.800400>,  <29.338039, 30.217527, 41.906490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414564, 29.524759, 41.800400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691566, 29.618643, 42.073265>,  <29.857767, 29.674973, 42.236984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691566, 29.618643, 42.073265>,  <29.414564, 29.524759, 41.800400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691566, 29.618643, 42.073265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350064, -0.717477, 0.602231,
		0.630787, -0.655849, -0.414692,
		0.692504, 0.234711, 0.682164,
		29.899319, 29.689056, 42.277916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831467, 28.938768, 42.005482>,  <29.414564, 29.524759, 41.800400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831467, 28.938768, 42.005482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853239, 29.173647, 42.328526>,  <29.866302, 29.314573, 42.522354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853239, 29.173647, 42.328526>,  <29.831467, 28.938768, 42.005482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853239, 29.173647, 42.328526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171082, -0.791367, 0.586915,
		0.983752, -0.170114, 0.057385,
		0.054430, 0.587197, 0.807612,
		29.869568, 29.349806, 42.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290686, 28.608519, 42.560154>,  <29.831467, 28.938768, 42.005482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290686, 28.608519, 42.560154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039658, 28.869936, 42.729404>,  <29.889040, 29.026787, 42.830956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039658, 28.869936, 42.729404>,  <30.290686, 28.608519, 42.560154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039658, 28.869936, 42.729404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238717, -0.678824, 0.694415,
		0.741060, 0.334785, 0.582021,
		-0.627570, 0.653542, 0.423131,
		29.851387, 29.065998, 42.856342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602697, 28.398378, 43.105854>,  <30.290686, 28.608519, 42.560154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602697, 28.398378, 43.105854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596340, 27.998497, 43.098446>,  <30.592525, 27.758568, 43.094002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596340, 27.998497, 43.098446>,  <30.602697, 28.398378, 43.105854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596340, 27.998497, 43.098446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484566, 0.008500, -0.874714,
		0.874611, -0.022874, 0.484286,
		-0.015892, -0.999702, -0.018518,
		30.591572, 27.698586, 43.092892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267927, 28.227634, 42.824028>,  <30.602697, 28.398378, 43.105854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267927, 28.227634, 42.824028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045422, 27.900509, 42.765034>,  <30.911919, 27.704233, 42.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045422, 27.900509, 42.765034>,  <31.267927, 28.227634, 42.824028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045422, 27.900509, 42.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569122, -0.245588, -0.784721,
		0.605534, -0.520450, 0.602047,
		-0.556264, -0.817813, -0.147488,
		30.878542, 27.655165, 42.720787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759817, 27.738010, 42.650925>,  <31.267927, 28.227634, 42.824028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759817, 27.738010, 42.650925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404747, 27.607689, 42.520767>,  <31.191704, 27.529497, 42.442673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404747, 27.607689, 42.520767>,  <31.759817, 27.738010, 42.650925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404747, 27.607689, 42.520767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392086, -0.164265, -0.905144,
		0.241448, -0.931058, 0.273557,
		-0.887677, -0.325803, -0.325393,
		31.138443, 27.509949, 42.423149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861660, 27.087214, 42.438236>,  <31.759817, 27.738010, 42.650925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861660, 27.087214, 42.438236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530397, 27.200912, 42.245007>,  <31.331640, 27.269133, 42.129070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530397, 27.200912, 42.245007>,  <31.861660, 27.087214, 42.438236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530397, 27.200912, 42.245007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467537, -0.125019, -0.875088,
		-0.309137, -0.950564, -0.029362,
		-0.828157, 0.284250, -0.483072,
		31.281950, 27.286188, 42.100086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803450, 26.608997, 41.899532>,  <31.861660, 27.087214, 42.438236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803450, 26.608997, 41.899532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588839, 26.918482, 41.764767>,  <31.460072, 27.104172, 41.683907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588839, 26.918482, 41.764767>,  <31.803450, 26.608997, 41.899532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588839, 26.918482, 41.764767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572267, 0.040165, -0.819083,
		-0.620201, -0.632265, -0.464319,
		-0.536527, 0.773711, -0.336914,
		31.427881, 27.150595, 41.663692>
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
